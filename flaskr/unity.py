import datetime
import math
import spiceypy as sp
import json
import numpy as np
from scipy.spatial.transform import Rotation as R
from flask import Flask, request, jsonify
from flask_cors import CORS


app = Flask(__name__)
CORS(app)

## ------------- cspice.py ---------------

def get_ground_station_idle(utc, nsteps, step_size):
    et = sp.utc2et(utc)
    azimuths = []
    elevations = []
    times = []
    ets = []
    for step in range(0, nsteps):
        ct = et + (step * step_size)
        az = 0
        el = 90
        azimuths.append(az)
        elevations.append(el)
        times.append(sp.et2utc(ct, 'ISOC', 0))
        ets.append(ct)

    return times, azimuths, elevations, ets



def get_ground_station_data(sc_id, gs_name, utc, nsteps, step_size, min_elev=0):

    et = sp.utc2et(utc)
    azimuths = []
    elevations = []
    times = []
    ets = []


    for step in range(0, nsteps):
        ct = et + (step * step_size)
        pos, lt = sp.spkpos(sc_id, ct, gs_name + '_TOPO', 'NONE', gs_name)
        r, lat, lon = sp.reclat(pos)
        lat *= sp.dpr()
        lon *= sp.dpr()
        azimuths.append(lat)
        elevations.append(max(lon, min_elev))
        #print(lon)
        times.append(sp.et2utc(ct, 'ISOC', 0))
        ets.append(ct)

    return times, azimuths, elevations, ets


def get_positions(name, ets):
    # Get spacecraft positions in ECEF (relative to Earth)
    positions, _ = sp.spkpos(name, ets, 'IAU_EARTH', 'NONE', 'EARTH')

    # Unity origin in ECEF
    unity_origin_ecef = np.array([4846725, -370172.3, 4116859])

    # Unity up vector at the origin (pointing along the local radius)
    unity_up = unity_origin_ecef / np.linalg.norm(unity_origin_ecef)

    # ECEF up vector (aligned with Earth's North Pole)
    ecef_up = np.array([0, 0, 1])

    ecef_x = np.array([1,0,0])

    unity_east = np.cross(ecef_up, unity_up)
    unity_east = unity_east / np.linalg.norm(unity_east)

    unity_north = np.cross(unity_up, unity_east)
    unity_north = unity_north / np.linalg.norm(unity_north)

    base_change_matrix = np.array([unity_east, unity_north, unity_up])

    relative_positions = positions - unity_origin_ecef
    rotated_positions = np.dot(relative_positions, base_change_matrix.T)

    rotated_positions = rotated_positions[:, [0, 2, 1]]

    return rotated_positions


    # Compute the axis of rotation (cross product)
    rotation_axis = np.cross(ecef_up, unity_up)
    if np.linalg.norm(rotation_axis) != 0:
        rotation_axis = rotation_axis / np.linalg.norm(rotation_axis)  # Normalize the axis

    # Compute the angle between the vectors (ensure numerical stability)
    angle = np.arccos(np.dot(unity_up, ecef_up))
    #print(angle)

    # Create the rotation matrix (Rodrigues' rotation formula)
    rotation_matrix = R.from_rotvec(rotation_axis * angle).as_matrix()

    # Convert positions to numpy array
    positions = np.array(positions)

    # Compute relative positions (Subtract Unity's ECEF origin)
    relative_positions = positions - unity_origin_ecef

    # Apply the rotation **before** swapping Y and Z
    rotated_positions = np.dot(relative_positions, rotation_matrix.T)

    rotated_ecef_x = np.dot(ecef_x, rotation_matrix.T)
    #print(rotation_matrix)

    angle_x = np.arccos(np.dot(rotated_ecef_x, rotation_axis))

     # Create the rotation matrix (Rodrigues' rotation formula)
    rotation_matrix_x = R.from_rotvec(unity_up * angle_x).as_matrix()
    #print(rotation_matrix_x)

    # Apply the rotation **before** swapping Y and Z
    rotated_positions = np.dot(rotated_positions, rotation_matrix_x.T)

    # Swap Y and Z components **after** rotation to match Unity’s coordinate system
    rotated_positions = rotated_positions[:, [0, 2, 1]]
    
    return rotated_positions

def setup_kernels(metakernel):
    sp.kclear()
    sp.furnsh(metakernel)


## ------------- czml.py ---------------

import functools
import operator


def generate_cartesians(positions, step=None):
    scale = 1E3
    cartesians = []
    for index, position in enumerate(positions):
        if step:
            ct = index * step
            cartesians.append(ct)
        cartesians.append(position[0] * scale)
        cartesians.append(position[1] * scale)
        cartesians.append(position[2] * scale)
    return cartesians


def zip_concat(list1, list2):
    return functools.reduce(operator.iconcat, list(zip(list1, list2)), [])

def generate_document(start, end):
    return [
      {
        "id": "document",
        "name": "CZML Model",
        "version": "1.0",
        "clock": {
          "interval": f"{start}/{end}",
          "currentTime": f"{start}",
          "multiplier": 60,
          "range": "LOOP_STOP",
          "step": "SYSTEM_CLOCK_MULTIPLIER"
        }
      }]

def generate_buildings():
    return {
        "id": "building",
        "name": "building_1",
        "position": {
            "cartographicDegrees":  [-4.36780, 40.45150, 0]
            
        },
        "model": {
            "gltf": "./models/RUMAH_3.glb",
            "scale": 1.0,
            "runAnimations": False,
            "heightReference" : "CLAMP_TO_GROUND"
        }
    }

def generate_tree():
    return {
        "id": "tree",
        "name": "tree_1",
        "position": {
            "cartesian": [4846708.079765416, -370150.23472867056, 4116793.3639995074]
            
        },
        "model": {
            "gltf": "./models/fir_tree.glb",
            "scale": 4.0,
            "runAnimations": False,
            "heightReference" : "CLAMP_TO_GROUND"
        }
    }

def generate_pine(index, cartesian):
    return {
        "id": f"tree_{index}",
        "name":f"tree_{index}",
        "position": {
            "cartesian": cartesian
            
        },
        "model": {
            "gltf": "./models/umbrella_pine.glb",
            "scale": 1.5,
            "runAnimations": False,
            "heightReference" : "CLAMP_TO_GROUND"
        }
    }


def generate_tracking(contact_map):
    
    return list(map(lambda interval: 
                    {
                        "interval": f'{interval[1][0]}Z/{interval[1][-1]}Z',
                        "string": interval[0]
                    }
                    , contact_map))


def generate_antenna(times, azimuths, elevations, contact_map):

    #antenna_elevations = list(map(lambda el : ((90 - el) * (79/90)) - 34, elevations))
    #antenna_azimuths = list(map(lambda az :  360 - ((270 - az ) if az > 0 else -1 * (az + 90)), azimuths))
    antenna_elevations = list(map(lambda el : - (90 - el), elevations))
    antenna_azimuths = list(map(lambda az :  (az if az > 0 else az + 360), azimuths))
    #print( zip_concat(times, antenna_azimuths))
    azimuths_file = open('azimuths.txt', 'w')
    elevations_file = open('elevations.txt', 'w')

    for t in range(len(times)):
        azimuths_file.write(f'{times[t]} {antenna_azimuths[t]}\n')
        elevations_file.write(f'{times[t]} {antenna_elevations[t]}\n')

    azimuths_file.close()
    elevations_file.close()

    return {
        "id": "test model",
        "name": "Cebreros",
        "properties": {
        "antenna": {
          "string": "CEB"
        },
        "tracking_intervals": generate_tracking(contact_map)
        },
        "position": {
            "cartesian": [4846681.0, -370171.3318040333, 4116823.607359195]
            ,
            "heightReference" : "CLAMP_TO_GROUND"
        },
        "model": {
            "gltf": "./models/DSA2.gltf",
            "scale": 1.0,
            "runAnimations": False,
             "heightReference" : "CLAMP_TO_GROUND",
            "articulations": {
                "AntennaAzimuth AzimuthRotation": {
                    "number": zip_concat(times, antenna_azimuths)
                },
                "AntennaElevation ElevationRotation": {
                    "number": zip_concat(times, antenna_elevations)
                },
                "Azimuths": { 
                    "number": zip_concat(times, azimuths)
                },
                "Elevations": { 
                    "number": zip_concat(times, elevations)
                }
            }
        }
    }


def generate_spacecraft(name, mission, acronym, times, positions, step):

    return  {
    "name": name,
    "description": f"{name}",
    "availability": f"{times[0]}/{times[-1]}",
    "properties": {
      "spacecraft": {
        "string": f"{name}"
      },
      "mission": {
        "string": f"{mission}"
      },
      "acronym": {
        "string": f"{acronym}"
      }
    },
    "position": {
      "epoch":  f"{times[0]}",
      "interpolationAlgorithm": "LAGRANGE",
      "interpolationDegree": 5,
      "referenceFrame": "FIXED",
      "cartesian": generate_cartesians(positions, step)},
    "label": {
      "horizontalOrigin": "LEFT",
      "verticalOrigin": "CENTER",
      "showBackground": False,
      "distanceDisplayCondition":  {
            "distanceDisplayCondition": [1, 1e15]
        },
      
      "show": True,
      "text": f"{name}",
      "font": "12pt Helvetica",
      "style": "FILL_AND_OUTLINE",
      "fillColor": {
        "rgba": [135, 206, 235, 255]
      },
      "outlineColor": {
        "rgba": [0, 0, 0, 255]
      },
      "outlineWidth": 2
    }
    }


## ------------- db.py ---------------

from peewee import *

DATABASE = '/Users/sofia.avelino/Documents/github/cebreros-web/develop/spice-cebreros/cebreros.db'

# create a peewee database instance -- our models will use this database to
# persist information
database = SqliteDatabase(DATABASE)

# model definitions -- the standard "pattern" is to define a base model class
# that specifies which database to use.  then, any subclasses will automatically
# use the correct storage. for more information, see:
# https://charlesleifer.com/docs/peewee/peewee/models.html#model-api-smells-like-django
class BaseModel(Model):
    class Meta:
        database = database

# the mission model specifies its fields (or columns) declaratively, like django
class Mission(BaseModel):
    name = CharField(unique=True)
    acronym = CharField()
    spacecraft = CharField()
    description = CharField()
    launch_date = DateTimeField()


# a dead simple one-to-many relationship: one user has 0..n messages, exposed by
# the foreign key.  because we didn't specify, a users messages will be accessible
# as a special attribute, User.message_set
class Contact(BaseModel):
    mission = ForeignKeyField(Mission, backref='contacts')
    content = TextField()
    start = DateTimeField()
    end = DateTimeField()


# simple utility function to create tables
def create_tables():
    with database:
        database.create_tables([Mission, Contact])

create_tables()


## ------------- cesium.py ---------------

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

@app.route('/index', methods=['POST'])
def index(coded_date):
    data = request.json

    coded_data = data.get("coded_data")

    start = f'{coded_date[0:4]}-{coded_date[4:6]}-{coded_date[6:8]}T00:00:00Z'
    step_size = 60

    metakernel = '/Users/sofia.avelino/Documents/kernels/mk/cebreros.tm'
    #if 'METAKERNEL' in current_app.config:
     #   metakernel = current_app.config['METAKERNEL']

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
        print(type(contact.start))
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

        print(mission.spacecraft)
        print(contact.start)
        print(contact.end)
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
    fileno = 0

    for mission in missions:
        doc.append(spacecraft(mission.spacecraft, mission.name, mission.acronym, times, ets, step_size))
        #print(mission.spacecraft, times)

        #sc_file = open(f'sc_{mission.spacecraft}_{coded_date}.json', 'w')
        sc_file = open(f'sc_{mission.spacecraft}.json', 'w')
        json.dump(spacecraft(mission.spacecraft, mission.name, mission.acronym, times, ets, step_size), sc_file, indent=4)
        sc_file.close()
        fileno +=1
        #sc_file.write(f"{spacecraft(mission.spacecraft, mission.name, mission.acronym, times, ets, step_size)}")

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
    app.run(host='0.0.0.0', port=5000)

    #index('20250130')

    '''# Start and end dates
    start_date = datetime.datetime(2025, 1, 1)
    end_date = datetime.datetime(2026, 1, 1)

    # Iterate over all dates
    current_date = start_date
    while current_date < end_date:
        date_str = current_date.strftime('%Y%m%d')  # Format date as 'YYYYMMDD'
        index(date_str)  # Call the index function with the formatted date
        current_date += datetime.timedelta(days=1)  # Move to the next day'''