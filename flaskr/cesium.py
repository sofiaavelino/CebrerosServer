import datetime
import math
import spiceypy as sp

from flask import Blueprint
from flask import flash
from flask import g
from flask import redirect
from flask import render_template
from flask import request
from flask import url_for
from werkzeug.exceptions import abort
from flask import current_app

from flaskr.cspice import setup_kernels, get_positions, get_ground_station_data, get_ground_station_idle
from flaskr.czml import generate_antenna, generate_buildings, generate_pine, generate_spacecraft, generate_document, generate_tree
from flaskr.db import Contact


bp = Blueprint("czml", __name__)

def spacecraft(name, mission, acronym, times, ets, step_size):
    return generate_spacecraft(name, mission, acronym, times, get_positions(name, ets), step_size)

def contact_adapter(contact: Contact, start_date: datetime.datetime, end_date: datetime.datetime, step_size: int):
    contact_start = contact.start if start_date < contact.start else start_date
    contact_end = contact.end if end_date > contact.end else end_date
    nsteps = math.floor((contact_end - contact_start).total_seconds() / step_size)
    return to_iso_format(contact_start), to_iso_format(contact_end), nsteps, contact.mission

def idle_adapter(idle_start: datetime.datetime, idle_end: datetime.datetime, step_size: int):
    if idle_start >= idle_end:
        return False, None, None

    corr_idle_start = idle_start + datetime.timedelta(minutes=10) 
    corr_idle_end = idle_end + datetime.timedelta(minutes=-10) 

    nsteps = math.floor((corr_idle_end - corr_idle_start).total_seconds() / step_size)
    return True, to_iso_format(corr_idle_start), nsteps

ISOC_FORMAT = "%Y-%m-%dT%H:%M:%SZ"

def from_iso_format(date_str: str):
    return datetime.datetime.strptime(date_str, ISOC_FORMAT)

def to_iso_format(date: datetime.datetime):
    return datetime.datetime.strftime(date, ISOC_FORMAT)

@bp.route("/cesium", defaults={'coded_date': '20230817'})
@bp.route("/cesium/<coded_date>")
def index(coded_date):

    start = f'{coded_date[0:4]}-{coded_date[4:6]}-{coded_date[6:8]}T00:00:00Z'
    step_size = 60

    metakernel = '/kernel_repo/mk/cebreros.tm'
    if 'METAKERNEL' in current_app.config:
        metakernel = current_app.config['METAKERNEL']

    setup_kernels(metakernel)

    start_date = from_iso_format(start)
    end_date = start_date + datetime.timedelta(days=1)
    contacts = Contact.select(Contact).where(
        ((start_date < Contact.start) & ( Contact.start < end_date)) |
        ((start_date < Contact.end) & ( Contact.end < end_date)) )

    
    antenna_times = []
    azimuths = []
    elevations = []
    missions = set()
    contact_list = []
    idle_start = start_date

    for contact in contacts:
        needs_idle, idle_start_str, nsteps = idle_adapter(idle_start, contact.start, step_size)
        if needs_idle:
            ctimes, cazimuths, celevations, cets = get_ground_station_idle(idle_start_str, nsteps, step_size)
            antenna_times.extend(ctimes)
            azimuths.extend(cazimuths)
            elevations.extend(celevations)

        cstart, cend, nsteps, mission = contact_adapter(contact, start_date, end_date, step_size)
        ctimes, cazimuths, celevations, cets = get_ground_station_data(
            mission.spacecraft, 'CEBREROS', cstart, nsteps, step_size, 0)
        antenna_times.extend(ctimes)
        azimuths.extend(cazimuths)
        elevations.extend(celevations)
        missions.add(mission),
        contact_list.append((mission.spacecraft, ctimes))
        idle_start =from_iso_format(cend)

    needs_idle, idle_start_str, nsteps = idle_adapter(idle_start, end_date, step_size)
    if needs_idle:
        ctimes, cazimuths, celevations, cets = get_ground_station_idle(idle_start_str, nsteps, step_size)
        antenna_times.extend(ctimes)
        azimuths.extend(cazimuths)
        elevations.extend(celevations)

    et0 = sp.utc2et(start)
    ets = [et0 + index for index in range(0, (24 * 3600) +1, step_size)]
    times = list(map(lambda et: sp.et2utc(et, 'ISOC', 0) + 'Z', ets))
    doc = generate_document(times[0], times[-1])

    for mission in missions:
        doc.append(spacecraft(mission.spacecraft, mission.name, mission.acronym, times, ets, step_size))

    antenna_times = list(map(lambda time: time + 'Z', antenna_times))
    doc.append(generate_antenna(antenna_times, azimuths, elevations, contact_list))
    doc.append(generate_tree())

    forest = [
        [4846711.204019667, -370121.1108207368, 4116791.696321259],
        [4846718.695467973, -370103.28018400486, 4116786.9941352853],
        [4846726.532585254, -370144.4413170291, 4116773.8443657653],
        [4846738.765663157, -370098.4695823803, 4116767.035485312],
        [4846692.1947613815, -370135.86826339446, 4116811.682952247],
        [4846696.57821438, -370115.6363086223, 4116808.364046761],
        [4846679.336034891, -370120.2971812803, 4116826.083192371]
    ]
    for index, coords in enumerate(forest):
        doc.append(generate_pine(index, coords))

    return doc

if __name__ == "__main__":
    index(20250113)

#index(20250113)