from flaskr.db import Contact, Mission, database
import argparse
import requests
import datetime

def get_data(url: str):

    response = requests.get(url)
    if response.status_code != 200:
        return

    missions_json = response.json()
    print(missions_json)

    for mission in Mission.select():
        mission_json = list(filter(lambda item, m = mission: item.get('code') == m.acronym, missions_json))
        if len(mission_json) > 0:
            mission_json = mission_json[0]
            description = ' '.join([item.strip() for item in mission_json.get('description')])
            launch_date_number = mission_json.get('launchDate')
            launch_date = datetime.datetime.fromtimestamp(launch_date_number / 1000)
            print(launch_date)

            mission.launch_date = launch_date
            mission.save()


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='')
    parser.add_argument('-u', '--url', default='http://estracknow.esa.int/missions')

    args = parser.parse_args()
    get_data(args.url)
   