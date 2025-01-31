from flaskr.db import Contact, Mission, database
import argparse
import xml.etree.ElementTree as ET
import datetime


def ingest(fecs_file, mission):
    events = parse_xml(fecs_file)
    mission = Mission.select().where(Mission.name == mission).get()

    for aos in events:
        Contact.insert({
            Contact.mission: mission,
            Contact.content: aos.attrib.get('id'),
            Contact.date : datetime.datetime.strptime(aos.attrib.get('time'), '%Y-%jT%H:%M:%S.%fZ')
        }
        ).execute()
        print(mission.acronym)


def parse_xml(fecs_file):
    tree = ET.parse(fecs_file)
    root = tree.getroot()
    ns_map = {'ns': 'http://esa.esoc.events'}
    return root.findall(".//ns:aos[@id='A83H']", ns_map)



if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='')
    parser.add_argument('-m', '--mission', default='JUICE')
    parser.add_argument('fecs_file')
    

    args = parser.parse_args()
    ingest(args.fecs_file, args.mission)
   