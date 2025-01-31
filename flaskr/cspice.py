import spiceypy as sp


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
        print(lon)
        times.append(sp.et2utc(ct, 'ISOC', 0))
        ets.append(ct)

    return times, azimuths, elevations, ets


def get_positions(name, ets):
    positions, _ = sp.spkpos(name, ets, 'IAU_EARTH', 'NONE', 'EARTH')
    return positions


def setup_kernels(metakernel):
    sp.kclear()
    sp.furnsh(metakernel)