import os

from flask import Flask
from flask import g
from flask import send_from_directory
from flask import redirect
from flask import Response
from flask_cors import CORS
from flaskr.db import database, Mission, Contact
from playhouse.shortcuts import model_to_dict, dict_to_model
import json
from flaskr.serializer import date_serializer, contact_serializer
import requests
import datetime
import os
from html.parser import HTMLParser
import html

class WebcamPageParser(HTMLParser):

    def __init__(self, *, convert_charrefs: bool = True) -> None:
        super().__init__(convert_charrefs=convert_charrefs)
        self.data = ''
    def handle_data(self, data):
        self.data += data


def create_app(test_config=None):
    # create and configure the app
    app = Flask(__name__, instance_relative_config=True)
    app.config.from_prefixed_env()
    app.config.from_mapping(
        SECRET_KEY='dev',
        MODELS_FOLDER=os.path.join(os.path.dirname(__file__), '..', 'models')
    )

    if test_config is None:
        # load the instance config, if it exists, when not testing
        app.config.from_pyfile('config.py', silent=True)
    else:
        # load the test config if passed in
        app.config.from_mapping(test_config)

    # ensure the instance folder exists
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    # Request handlers -- these two hooks are provided by flask and we will use them
    # to create and tear down a database connection on each request.
    @app.before_request
    def before_request():
        g.db = database
        g.db.connect()

    @app.after_request
    def after_request(response):
        g.db.close()
        return response


    from flaskr import cesium

    app.register_blueprint(cesium.bp)


    @app.route('/cesium/models/<path:path>')
    def send_model(path):
        return send_from_directory(app.config['MODELS_FOLDER'], path)


    @app.route('/missions/')
    def get_missions():
        missions = Mission.select()
        return json.loads(json.dumps([model_to_dict(m) for m in missions], default=date_serializer))

    @app.route("/contacts", defaults={'coded_date': '20230817'})
    @app.route('/contacts/<coded_date>')
    def get_contact(coded_date):
        date_string = f'{coded_date[0:4]}-{coded_date[4:6]}-{coded_date[6:8]}T00:00:00Z'
        date = datetime.datetime.strptime(date_string, "%Y-%m-%dT%H:%M:%SZ")
        start_date = date + datetime.timedelta(days=0)
        end_date = date + datetime.timedelta(days=1)
        contacts = Contact.select(Contact).where(
            ((start_date < Contact.start) & ( Contact.start < end_date)) |
            ((start_date < Contact.end) & ( Contact.end < end_date)) 
        )
        return json.loads(json.dumps([contact_serializer(c) for c in contacts], default=date_serializer))

    @app.route('/stations/')
    def get_stations():
        r = requests.get('http://estracknow.esa.int/stations')
        return r.json()

    @app.route('/webcam/epoch')
    def get_webcam_epoch():
        r = requests.get('https://tethys.ejr-quartz.com/cebreros/epoch.html')
        parser = WebcamPageParser()
        parser.feed(html.unescape(r.text))
        data = { 'epoch': parser.data.strip()}
        return data

    return app

app = create_app()
CORS(app)