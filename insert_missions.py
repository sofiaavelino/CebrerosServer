from datetime import datetime
from flaskr.db import Mission, database  # Assuming flaskr.db contains the Peewee models

# Data to insert (manually structured based on your input)
missions_data = [
    {
        "name": "BepiColombo",
        "acronym": "BEPI",
        "spacecraft": "MPO",
        "description": "Launched in 2018, BepiColombo is Europe's first mission to Mercury. When it arrives in late 2025, it will begin work studying the composition, geophysics, atmosphere, magnetosphere and history of the smallest and least explored terrestrial planet in our Solar System.",
        "launch_date": "2018-10-20 02:00:00",
    },
    {
        "name": "Euclid",
        "acronym": "EUCL",
        "spacecraft": "EUCLID",
        "description": "ESA's Euclid mission is designed to explore the composition and evolution of the dark Universe. The space telescope will explore how the Universe has expanded and how structure has formed over cosmic history, revealing more about the role of gravity and the nature of dark energy and dark matter.",
        "launch_date": "2023-07-01 02:00:00",
    },
    {
        "name": "ExoMars",
        "acronym": "EXMO",
        "spacecraft": "TGO",
        "description": "The 2016 ExoMars Trace Gas Orbiter orbits Mars gaining a better understanding of methane and other atmospheric gases that could be evidence for possible biological or geological activity. It is also providing crucial data relay.",
        "launch_date": "2016-03-14 00:00:00",  # No time given, assume midnight
    },
    {
        "name": "Gaia",
        "acronym": "GAIA",
        "spacecraft": "GAIA",
        "description": "Gaia is an ambitious mission to chart the largest, most precise three-dimensional map of our Galaxy, the Milky Way. In the process, the space observatory is revealing the composition, formation, and evolution of the Galaxy, by measuring the positions and distances of a billion stars with unprecedented precision.",
        "launch_date": "2013-12-19 01:00:00",
    },
    {
        "name": "JUICE",
        "acronym": "JUIC",
        "spacecraft": "JUICE",
        "description": "Launched in 2023 and set to arrive at Jupiter in 2031, ESA’s Jupiter Icy Moons Explorer, Juice, is the first ‘large-class’ mission in ESA’s Cosmic Vision 2015-2025 programme. Juice’s goal is to answer questions about the conditions required for planet formation and the emergence of life, and how our Solar System works.",
        "launch_date": "2023-04-14 02:00:00",
    },
    {
        "name": "Mars Express",
        "acronym": "MEX",
        "spacecraft": "MEX",
        "description": "Mars Express has been in orbit around Mars and gathering science data since 2004, giving scientists an entirely new view of Earth's intriguing neighbour. The orbiter is helping to answer fundamental questions about the geology, atmosphere, surface environment, history of water, and potential for life on Mars.",
        "launch_date": "2003-06-02 02:00:00",
    },
    {
        "name": "Solar Orbiter",
        "acronym": "SOLO",
        "spacecraft": "SOLO",
        "description": "Solar Orbiter will address big questions in Solar System science to help us understand how our star creates and controls the giant bubble of plasma that surrounds the whole Solar System and influences the planets within it. Solar Orbiter will make a close approach to the Sun every six months. Its distance from the Sun varies from within the orbit of Mercury to close to the orbit of Earth.",
        "launch_date": "2020-02-10 01:00:00",
    },
    {
        "name": "Hera",
        "acronym": "HERA",
        "spacecraft": "HERA",
        "description": "Hera",
        "launch_date": "2024-10-08 00:00:00",  # No time given, assume midnight
    },
]

# Insert data into database
with database.atomic():  # Ensures transaction safety
    for mission in missions_data:
        Mission.create(
            name=mission["name"],
            acronym=mission["acronym"],
            spacecraft=mission["spacecraft"],
            description=mission["description"],
            launch_date=datetime.strptime(mission["launch_date"], "%Y-%m-%d %H:%M:%S"),
        )

print("Missions inserted successfully!")
