
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
    print([az for az in azimuths])
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
            "cartesian": [4846681.926246771, -370171.3318040333, 4116823.607359195]
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




