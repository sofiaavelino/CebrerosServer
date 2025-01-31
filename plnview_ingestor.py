from flaskr.db import Contact, Mission, database
import argparse
import xml.etree.ElementTree as ET
import datetime


def ingest(plnview_file, ground_station):
    events = parse_xml(plnview_file, ground_station)
    for session in events:
        satellite_id = session.find('satellite_id').text
        start = session.find('activity_start').text
        end = session.find('activity_end').text

        mission = Mission.get_or_none(Mission.acronym == satellite_id)
        if mission:
            Contact.insert({
                Contact.mission: mission,
                Contact.content: session.find('osg_dn').text,
                Contact.start : datetime.datetime.strptime(start, '%Y-%m-%dT%H:%M:%S.%fZ'),
                Contact.end : datetime.datetime.strptime(end, '%Y-%m-%dT%H:%M:%S.%fZ')
            }).execute()



def parse_xml(plnview_file, ground_station):
    tree = ET.parse(plnview_file)
    root = tree.getroot()
    return root.findall(f".//service_session/[ground_station='{ground_station}']")



if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='')
    parser.add_argument('-gs', '--ground_station', default='CEB')
    parser.add_argument('plnview_file')
    

    args = parser.parse_args()
    ingest(args.plnview_file, args.ground_station)
    
'''


from flaskr.db import Contact, Mission, database
import argparse
import json
import datetime

def ingest(json_file, ground_station):
    events = parse_json(json_file, ground_station)
    for session in events:
        spacecraft = session.get('spacecraft')
        start = session.get('activity_start')
        end = session.get('activity_end')
        content = session.get('info')
        if content == None:
            content = 'No info available'

        # Assuming 'Mission' model has an 'acronym' field to match 'spacecraft'
        mission = Mission.get_or_none(Mission.acronym == spacecraft)
        if mission:

            # Convert timestamps to the format without microseconds
            standardized_start = convert_to_no_microseconds_format(start)
            standardized_end = convert_to_no_microseconds_format(end)

            # Ensure that start and end are datetime objects
            print(f"Standardized start: {standardized_start}, type: {type(standardized_start)}")  # Debugging print
            print(f"Standardized end: {standardized_end}, type: {type(standardized_end)}")  # Debugging print

            # Ensure that start and end are datetime objects
            assert isinstance(standardized_start, datetime.datetime), f"Expected datetime object, got {type(standardized_start)}"
            assert isinstance(standardized_end, datetime.datetime), f"Expected datetime object, got {type(standardized_end)}"

            Contact.insert({
                Contact.mission: mission,
                Contact.content: content,
                Contact.start: standardized_start,
                Contact.end: standardized_end
            }).execute()

def parse_json(json_file, ground_station):
    with open(json_file, 'r') as f:
        data = json.load(f)
    # Filter events by matching groundstation field
    return [event for event in data if event.get('groundstation') == ground_station]

def convert_to_no_microseconds_format(datetime_str):
    print(f"Attempting to parse datetime: {datetime_str}")  # Debugging print
    try:
        # Try parsing with microseconds
        dt = datetime.datetime.strptime(datetime_str, '%Y-%m-%dT%H:%M:%S.%fZ')
        print(f"Parsed datetime with microseconds: {dt}")  # Debugging print
        return dt.replace(microsecond=0)  # Remove microseconds
    except ValueError:
        # If it fails, it's already in the correct format without microseconds
        dt = datetime.datetime.strptime(datetime_str, '%Y-%m-%dT%H:%M:%SZ')
        print(f"Parsed datetime without microseconds: {dt}")  # Debugging print
        return dt  # Return as datetime object without microseconds


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='')
    parser.add_argument('-gs', '--ground_station', default='CEB')
    parser.add_argument('json_file')

    args = parser.parse_args()
    ingest(args.json_file, args.ground_station)
'''