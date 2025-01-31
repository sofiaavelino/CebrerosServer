KPL/FK

Hera Spacecraft Frames Kernel
=============================================================================

   This frame kernel contains complete set of frame definitions for the
   Hera (named after the Greek goddess of marriage) including definitions
   for the Hera fixed and Hera science instrument frames. This kernel
   also contains NAIF ID/name mapping for the Hera science instruments
   and s/c structures (see the last section of the file).


Version and Date
-----------------------------------------------------------------------------

   Version 1.1 -- May 22, 2024 -- Ricardo Valles, ESAC/ESA
                                  Rafael Andres Blasco, ESAC/ESA

      Updated Asteroid Framing Cameras reference frames and removed filters.

      Added body/ID definitions for cubesat interface points with HERA
      HERA_JUVENTAS_IFP and HERA_MILANI_IFP.

      Defined DIMORPHOS_CK as a dynamic frame representing Dimorphos' rotation
      after DART impact.

   Version 1.0 -- September 29, 2023 -- Alfredo Escalante Lopez, ESAC/ESA

      Defined HERA_SPACECRAFT as a switch frame and added HERA_SPACECRAFT_PLAN
      and HERA_SPACECRAFT_MEAS.

   Version 0.9 -- September 21, 2023 -- Ricardo Valles, ESAC/ESA

      Updated Hera ID according to one provided by DSN and confirmed by FDy:
      from -999 to -91.

   Version 0.8 -- June 26, 2023 -- Ricardo Valles, ESAC/ESA
                                   Alfredo Escalante Lopez, ESAC/ESA
                                   Rafael Andres Blasco, ESAC/ESA

      Updated contact information, corrected typos, and
      corrected text format.

      Added Star Trackers and SMC reference frames alignment.

      Added NAIF body/ID associations for SA+Y, SA-Y, LGA+X, LGA-X, STR_OH1
      and STR-OH2.

      Added Hera Solar Array Frames.

      Added Didymos geometric center.

   Version 0.7 -- November 8, 2021 -- Alfredo Escalante Lopez, ESAC/ESA

      Updated Thermal Infrared Instrument name from TIRA to TIRI.

      Added HyperScout Hyperspectral HERA_HSH reference frame.

   Version 0.6 -- March 17, 2021 -- Alfredo Escalante Lopez, ESAC/ESA

      Added DIMORPHOS_SHM frame for locating Dart impact site.

      Updated contact information.

   Version 0.5 -- July 30, 2020 -- Marc Costa Sitja, ESAC/ESA

      Updated NAIF Body Names and IDs for the binary asteroid system
      as follows:

            DIDYMOS_BARYCENTER          2065802  (synonyms: DIDYMOS_BC,
                                                  DIDYMOS BARYCENTER)
            DIDYMOS                     -658030  (synonym: DIDYMAIN)
            DIMORPHOS                   -658031  (synonym: DIDYMOON)
            DART_IMPACT_SITE            -91900   (synonyms:
                                                  DIMORPHOS_IMPACT_SITE,
                                                  DIDYMOON_IMPACT_SITE)

      Updated Frame names accordingly: DIDYMOS_FIXED and DIMORPHOS_FIXED.
      Added Topographic frame for DART impact site DIMORPHOS_IMPACT_TOPO.

   Version 0.4 -- September 6, 2019 -- Marc Costa Sitja, ESAC/ESA

      Updated Hera ID according to standard ESOC provisional numbering:
      from -667 to -999. Changed DIDYMOS to DIDYMAIN and added the IDs.
      Added HGA, TIRA and FLAT frame definitions.

   Version 0.3 -- March 2, 2019 -- Marc Costa Sitja, ESAC/ESA

      Updated definitions of DIDYMOS and DIDYMOON reference frames.
      Minor corrections.

   Version 0.2 -- January 22, 2019 -- Marc Costa Sitja, ESAC/ESA

      Added AFC-2 on top of AFC.

   Version 0.1 -- December 3, 2018 -- Marc Costa Sitja, ESAC/ESA

      Added Frame Camera IDs, reference frames and enhanced outline.

   Version 0.0 -- September 21, 2018 -- Marc Costa Sitja, ESAC/ESA

      Preliminary Version. Only basic ID and frame definitions.


References
-----------------------------------------------------------------------------

   1.   ``Frames Required Reading''

   2.   ``Kernel Pool Required Reading''

   3.   ``C-Kernel Required Reading''

   4.   Hera Mechanical Drawings and CAD model for external structures,
        May 2023.


Contact Information
-----------------------------------------------------------------------------

   If you have any questions regarding this file contact the
   ESA SPICE Service at ESAC:

           Alfredo Escalante Lopez
           (+34) 91-8131-429
           spice@sciops.esa.int

   or NAIF at JPL:

           Boris Semenov
           +1 (818) 354-8136
           Boris.Semenov@jpl.nasa.gov


Implementation Notes
-----------------------------------------------------------------------------

   This file is used by the SPICE system as follows: programs that make use
   of this frame kernel must "load" the kernel normally during program
   initialization. Loading the kernel associates the data items with
   their names in a data structure called the "kernel pool".  The SPICELIB
   routine FURNSH loads a kernel into the pool as shown below:

     FORTRAN: (SPICELIB)

       CALL FURNSH ( frame_kernel_name )

     C: (CSPICE)

       furnsh_c ( frame_kernel_name );

     IDL: (ICY)

       cspice_furnsh, frame_kernel_name

     MATLAB: (MICE)

       cspice_furnsh ( 'frame_kernel_name' )

     PYTHON: (SPICEYPY)*

       furnsh( frame_kernel_name )

   In order for a program or routine to extract data from the pool, the
   SPICELIB routines GDPOOL, GIPOOL, and GCPOOL are used.  See [2] for
   more details.

   This file was created and may be updated with a text editor or word
   processor.

   * SPICEPY is a non-official, community developed Python wrapper for the
     NAIF SPICE toolkit. Its development is managed on Github.
     It is available at: https://github.com/AndrewAnnex/SpiceyPy


Hera Mission NAIF ID Codes
-----------------------------------------------------------------------------

   The following names and NAIF ID codes are assigned to the Hera spacecraft,
   its structures and science instruments (the keywords implementing these
   definitions are located in the section "Hera Mission NAIF ID
   Codes -- Definition Section" at the end of this file):

      Hera Spacecraft and Spacecraft Structures names/IDs:

            HERA                        -91

            HERA_SPACECRAFT             -91000  (synonym: HERA_SC)

            HERA_HGA                    -91070

            HERA_LGA+X                  -91071
            HERA_LGA-X                  -91072

            HERA_SA+Y                   -91011
            HERA_SA-Y                   -91015

            HERA_STR-OH1                -91061
            HERA_STR-OH2                -91062

            HERA_JUVENTAS_IFP           -91063
            HERA_MILANI_IFP             -91064

      Asteroid Framing Cameras 1 and 2 names/IDs:

            HERA_AFC-1                  -91110
            HERA_AFC-2                  -91120

      Thermal InfraRed Imager names/IDs:

            HERA_TIRI                   -91200

      Planetary Altimeter names/IDs:

            HERA_PALT                   -91300
            HERA_PALT_MIN               -91301

      HyperScout Hyperspectral Imager names/IDs:

            HERA_HSH                    -91400

      Small Monitoring Camera names/IDs:

            HERA_SMC                    -91500

      Asteroid Binary System names/IDs:

            DIDYMOS_BARYCENTER          2065803  (synonyms: DIDYMOS_BC,
                                                  DIDYMOS BARYCENTER)
            DIDYMOS                     -658030  (synonym: DIDYMAIN)
            DIMORPHOS                   -658031  (synonym: DIDYMOON)
            DART_IMPACT_SITE            -91900   (synonyms:
                                                  DIMORPHOS_IMPACT_SITE,
                                                  DIDYMOON_IMPACT_SITE)
            DIDYMOS_GEOMETRIC_CENTER    -658032


Hera Mission Frames
-----------------------------------------------------------------------------

   The following Hera frames are defined in this kernel file:

           Name                  Relative to               Type       NAIF ID
      ======================  ========================  ==========   =========

    Spacecraft frames:
    ------------------
      HERA_SPACECRAFT           J2000                    SWITCH       -91000
      HERA_SPACECRAFT_PLAN      J2000                    CK           -91001
      HERA_SPACECRAFT_MEAS      J2000                    CK           -91002

      HERA_HGA                  HERA_SPACECRAFT          FIXED        -91070

      HERA_LGA+X                HERA_SPACECRAFT          FIXED        -91071
      HERA_LGA-X                HERA_SPACECRAFT          FIXED        -91072

      HERA_SA+Y_ZERO            HERA_SPACECRAFT          FIXED        -91010
      HERA_SA+Y                 HERA_SA+Y_ZERO           SWITCH       -91011
      HERA_SA+Y_PLAN            HERA_SA+Y_ZERO           CK           -91012
      HERA_SA+Y_MEAS            HERA_SA+Y_ZERO           CK           -91013
      HERA_SA-Y_ZERO            HERA_SPACECRAFT          FIXED        -91014
      HERA_SA-Y                 HERA_SA-Y_ZERO           SWITCH       -91015
      HERA_SA-Y_PLAN            HERA_SA-Y_ZERO           CK           -91016
      HERA_SA-Y_MEAS            HERA_SA-Y_ZERO           CK           -91017

      HERA_STR-OH1              HERA_SPACECRAFT          FIXED        -91061
      HERA_STR-OH2              HERA_SPACECRAFT          FIXED        -91062


    Asteroid Framing Camera Frames:
    -------------------------------
      HERA_AFC-1                HERA_SPACECRAFT          FIXED        -91110
      HERA_AFC-2                HERA_SPACECRAFT          FIXED        -91120


    Thermal InfraRed Imager Frames:
    -------------------------------

      HERA_TIRI                 HERA_SPACECRAFT          FIXED        -91210


    Planetary Altimeter Frames:
    ---------------------------

      HERA_PALT                 HERA_SPACECRAFT          FIXED        -91310


    HyperScout Hyperspectral Imager Frames:
    ---------------------------------------

      HERA_HSH                  HERA_SPACECRAFT          FIXED        -91410


    Small Monitoring Camera Frames:
    -------------------------------

      HERA_SMC                  HERA_SPACECRAFT          FIXED        -91500


   In addition, the following frames, in use by the BepiColombo mission, are
   defined in other kernels or `built into' the SPICE system:


  Hera mission specific science frame:
   -------------------------------------------
      DIDYMOS_FIXED             J2000                      PCK    -658030000
      DIMORPHOS_FIXED           DIDYMOS_FIXED          DYNAMIC    -658031000
      DIMORPHOS_IMPACT_TOPO     DIMORPHOS_FIXED        DYNAMIC        -91900
      DIMORPHOS_CK              J2000                       CK    -658031001

   SPICE 'Built-in' PCK frames in use by BepiColombo (3):
   ------------------------------------------------------
      IAU_EARTH                J2000                     PCK        built-in

      (3) Data for these frames is loaded using either the PCK file
          "pckVVVVV.tpc" (VVVVV is the version number)


Hera Frames Hierarchy
-----------------------------------------------------------------------------

  The diagram below shows the Hera spacecraft and its structures frame
  hierarchy (not including science instrument frames.)

                          "J2000" INERTIAL
         +-----------------------------------+-------------------+
         |          |                        |                   |
         |<-pck     |                        |<-pck              |
         |          |                        |                   |
         V          |                        V                   |
   "EARTH_FIXED"    |                 "DIDYMOS_FIXED"            |<-ck
   -------------    |                 ---------------            |
                    |                        |                   |
                    |<-ck                    |<-dynamic          |
                    |                        |                   |
                    V                        V                   V
            "HERA_SPACECRAFT"         "DIMORPHOS_FIXED"     "DIMORPHOS_CK"
      +------------------------+      -----------------     --------------
      |                        .            |
      |<-fixed                 .            |<-dynamic
      |                        .            |
      V                        .            V
   "HERA_HGA"                  .   "DIMORPHOS_IMPACT_TOPO"
   ----------                  .   -----------------------
                               .
                               V
         Individual instrument frame trees are provided
         in the corresponding sections of this file


Hera Target Frames
========================================================================

   This section of the file contains the body-fixed frame definition
   for one of the Hera mission targets: asteroid Didymos and Dimorphos.

   A body-fixed frame is defined for Didymos using standard body-fixed,
   PCK-based frame formation rules:

      -  +Z axis is toward the North pole;

      -  +X axis is toward the prime meridian;

      -  +Y axis completes the right hand frame;

      -  the origin of this frame is at the center of the body.

   The orientation of this frame is computed by evaluating
   corresponding rotation constants provided in the PCK file(s).

   \begindata

      FRAME_DIDYMOS_FIXED        = -658030
      FRAME_-658030_NAME         = 'DIDYMOS_FIXED'
      FRAME_-658030_CLASS        =  2
      FRAME_-658030_CLASS_ID     = -658030
      FRAME_-658030_CENTER       = -658030
      OBJECT_-658030_FRAME       = 'DIDYMOS_FIXED'

   \begintext


   For Dimorphos we use a preliminary dynamic reference frame and we assume
   that the spin is equivalent to the orbital period for Dimorphos.

   \begindata

      FRAME_DIMORPHOS_FIXED         = -658031
      FRAME_-658031_NAME            = 'DIMORPHOS_FIXED'
      FRAME_-658031_CLASS           =  5
      FRAME_-658031_CLASS_ID        = -658031
      FRAME_-658031_CENTER          = -658031
      FRAME_-658031_RELATIVE        = 'J2000'
      FRAME_-658031_DEF_STYLE       = 'PARAMETERIZED'
      FRAME_-658031_FAMILY          = 'TWO-VECTOR'
      FRAME_-658031_PRI_AXIS        = 'X'
      FRAME_-658031_PRI_VECTOR_DEF  = 'OBSERVER_TARGET_POSITION'
      FRAME_-658031_PRI_OBSERVER    = 'DIMORPHOS'
      FRAME_-658031_PRI_TARGET      = 'DIDYMOS'
      FRAME_-658031_PRI_ABCORR      = 'NONE'
      FRAME_-658031_SEC_AXIS        = 'Y'
      FRAME_-658031_SEC_VECTOR_DEF  = 'OBSERVER_TARGET_VELOCITY'
      FRAME_-658031_SEC_OBSERVER    = 'DIMORPHOS'
      FRAME_-658031_SEC_TARGET      = 'DIDYMOS'
      FRAME_-658031_SEC_ABCORR      = 'NONE'
      FRAME_-658031_SEC_FRAME       = 'J2000'

   \begintext

   Dimorphos Shape Model reference frame is a rotated frame from its
   body-fixed frame. It is used for the crater position by GMV.

   \begindata

      FRAME_DIMORPHOS_SHM               = -6580310
      FRAME_-6580310_NAME               = 'DIMORPHOS_SHM'
      FRAME_-6580310_CLASS              =  4
      FRAME_-6580310_CLASS_ID           = -6580310
      FRAME_-6580310_CENTER             = -658031
      TKFRAME_-6580310_RELATIVE         = 'DIMORPHOS_FIXED'
      TKFRAME_-6580310_SPEC             = 'ANGLES'
      TKFRAME_-6580310_UNITS            = 'DEGREES'
      TKFRAME_-6580310_AXES             = ( 1,   2,  3 )
      TKFRAME_-6580310_ANGLES           = ( 0, 180,  0 )

   \begintext


   For the Dimorphos impact site (DART impact site) we use a preliminary
   dynamic reference frame for the generation of a topographic frame with
   the PINPOINT utility is not possible due to a non equal equatorial radii.

   \begindata

      FRAME_DIMORPHOS_IMPACT_TOPO  = -91900
      FRAME_-91900_NAME            = 'DIMORPHOS_IMPACT_TOPO'
      FRAME_-91900_CLASS           =  5
      FRAME_-91900_CLASS_ID        = -91900
      FRAME_-91900_CENTER          = -91900
      FRAME_-91900_RELATIVE        = 'DIMORPHOS_FIXED'
      FRAME_-91900_DEF_STYLE       = 'PARAMETERIZED'
      FRAME_-91900_FAMILY          = 'TWO-VECTOR'
      FRAME_-91900_PRI_AXIS        = 'Z'
      FRAME_-91900_PRI_VECTOR_DEF  = 'CONSTANT'
      FRAME_-91900_PRI_FRAME       = 'DIMORPHOS_FIXED'
      FRAME_-91900_PRI_SPEC        = 'RECTANGULAR'
      FRAME_-91900_PRI_VECTOR      = ( 1, 0, 0 )
      FRAME_-91900_PRI_ABCORR      = 'NONE'
      FRAME_-91900_SEC_AXIS        = 'X'
      FRAME_-91900_SEC_VECTOR_DEF  = 'CONSTANT'
      FRAME_-91900_SEC_FRAME       = 'DIMORPHOS_FIXED'
      FRAME_-91900_SEC_SPEC        = 'RECTANGULAR'
      FRAME_-91900_SEC_VECTOR      = ( 0, 0, 1 )
      FRAME_-91900_SEC_ABCORR      = 'NONE'

   \begintext

   Because the orientation of Dimorphos after DART impact cannot be represented
   over long periods of time using the standard IAU body rotation formulation,
   an additional body-fixed CK-based frame, DIMORPHOS_CK, is defined for the
   asteroid.

   The orientation of this  frame is computed using data provided in CK files
   for ID -658031001, tagged encoded ticks of the artificial SCLK with
   ID -658031. The SCLK data supporting conversions between these ticks and
   Ephemeris Time are provided next to the DIMORPHOS_CK frame definition
   below.

   \begindata

      FRAME_DIMORPHOS_CK               = -658031001
      FRAME_-658031001_NAME            = 'DIMORPHOS_CK'
      FRAME_-658031001_CLASS           =  3
      FRAME_-658031001_CLASS_ID        = -658031001
      FRAME_-658031001_CENTER          = -658031
      CK_-658031001_SCLK               = -658031
      CK_-658031001_SPK                = -658031

      SCLK_KERNEL_ID                   = ( @2023-10-26 )
      SCLK_DATA_TYPE_658031            = ( 1 )
      SCLK01_TIME_SYSTEM_658031        = ( 2 )
      SCLK01_N_FIELDS_658031           = ( 2 )
      SCLK01_MODULI_658031             = ( 4294967296 65536 )
      SCLK01_OFFSETS_658031            = ( 0 0 )
      SCLK01_OUTPUT_DELIM_658031       = ( 2 )

      SCLK_PARTITION_START_658031      = ( 0 )
      SCLK_PARTITION_END_658031        = ( 2.8147497671065E+14 )

      SCLK01_COEFFICIENTS_658031       = (
            0.0000000000000E+00     @2022-SEP-26-23:14:24.183        1
                                         )

   \begintext


Hera Spacecraft and Spacecraft Structures Frames
========================================================================

   This section of the file contains the definitions of the spacecraft
   and spacecraft structures frames.


Hera Spacecraft Frame
--------------------------------------

   The Hera spacecraft frame is defined as follows:

      -  +Z axis is along the nominal boresight direction of the asteroid
         framing camera;

      -  +X axis is along the nominal boresight direction of the HGA;

      -  +Y axis completes the right-hand frame;

      -  the origin of this frame is the launch vehicle interface point.

   These diagrams illustrate the HERA_SPACECRAFT frame:


   +X s/c side (HGA side) view:
   ----------------------------

                                      ^
                                      | toward asteroid
                                      |

                                 Science Deck

   .__  __..___________.     .__________________    .___________..__  ___.
   |  / / ||           |\   |        ____      |   /|           ||  / /  |
   |  / / ||           | \  .      .'    `.    .  / |           ||  \ \  |
   |  \ \ ||           |  \ |     /    |   \   | /  |           ||  / /  |
   |  / / ||           |   o|     |  _ O   |   |o   |           ||  \ \  |
   |  \ \ ||           |  / |    +Zsc ^ \  /   | \  |           ||  / /  |
   |  / / ||           | /  |      `._|__.'    |  \ |           ||  / /  |
   .__\ \_..___________./   ._________|________.   \.___________..__\ \__.
                                   /\ | /\
                                      o-------> +Ysc
                                     +Xsc
                                                       +Xsc is out of
                                                        the page.


   +Z s/c side (science deck side) view:
   -------------------------------------

                             .________________.
                             |                |
                             |           +Ysc |
   o==/ /==-=============---o|   +Zsc o-----> |o---===============-=/ /==o
       -Y Solar Array        |        |       |               +Y Solar Array
                             .________|_______.
                                   .--V +Xsc
                            HGA  .'       `.
                                /___________\
                                    `.|.'                 +Zsc is out
                                                           of the page.


   The s/c bus attitude with respect to an inertial frame is provided
   by a Switch Frame (see [1] for more information) aligned with one of
   the different CK-based base frames (HERA_SPACECRAFT_MEAS or
   HERA_SPACECRAFT_PLAN) depending on coverage. HERA_SPACECRAFT_MEAS
   has priority over HERA_SPACECRAFT_PLAN whenever coverage for both
   is available.

   \begindata

      FRAME_HERA_SPACECRAFT        = -91000
      FRAME_-91000_NAME            = 'HERA_SPACECRAFT'
      FRAME_-91000_CLASS           =  6
      FRAME_-91000_CLASS_ID        = -91000
      FRAME_-91000_CENTER          = -91000
      FRAME_-91000_ALIGNED_WITH    = (
                                       'HERA_SPACECRAFT_PLAN'
                                       'HERA_SPACECRAFT_MEAS'
                                      )

   \begintext


   The HERA spacecraft planning reference frame -- HERA_SPACECRAFT_PLAN --
   is defined in order to accommodate the C-kernels that have been generated
   with a fictional SCLK kernel. These CK kernels contain predicted and test
   data and are used for planning purposes.

   The before-mentioned CKs are generated with a fictional SCLK kernel due to
   the fact that successive updates of the real SCLK kernel would lead to
   erroneous results for the predicted data provided by those kernels after
   the last Time Correlation Packet offered by the real SCLK.

   Since the s/c bus predicted attitude is defined with respect to an inertial
   frame and provided by a C-kernel (see [3] for more information), this frame
   is defined as a CK-based frame. These sets of keywords define the
   HERA_SPACECRAFT_PLAN frame.

   \begindata

      FRAME_HERA_SPACECRAFT_PLAN      = -91001
      FRAME_-91001_NAME               = 'HERA_SPACECRAFT_PLAN'
      FRAME_-91001_CLASS              =  3
      FRAME_-91001_CLASS_ID           = -91001
      FRAME_-91001_CENTER             = -91000
      CK_-91001_SCLK                  = -91999
      CK_-91001_SPK                   = -91

   \begintext


   The HERA spacecraft measured reference frame -- HERA_SPACECRAFT_MEAS --
   is defined in order to accommodate the C-kernels that have been generated
   with a real SCLK kernel. These C-kernels contain measured data from the
   housekeeping telemetry (commanded or as-flown) and are mainly used for
   data analysis.

   Since the s/c bus measured attitude is defined with respect to an inertial
   frame and provided by a C-kernel (see [3] for more information), this frame
   is defined as a CK-based frame.

   \begindata

      FRAME_HERA_SPACECRAFT_MEAS    = -91002
      FRAME_-91002_NAME             = 'HERA_SPACECRAFT_MEAS'
      FRAME_-91002_CLASS            =  3
      FRAME_-91002_CLASS_ID         = -91002
      FRAME_-91002_CENTER           = -91000
      CK_-91002_SCLK                = -91
      CK_-91002_SPK                 = -91

   \begintext


Hera High Gain Antenna Frame
--------------------------------------

   The Hera High Gain Antenna is rigidly attached to the +X side of the
   S/C bus. Therefore, the Hera HGA frame, HERA_HGA, is defined as a fixed
   offset frame with its orientation given relative to the HERA_SPACECRAFT
   frame and is defined as follows:

      -  +Z axis is in the antenna boresight direction (nominally
         5 degrees off the S/C -X axis towards the S/C +Z axis);

      -  +Y axis is in the direction of the S/C +Y axis ;

      -  +X completes the right hand frame;

      -  the origin of the frame is located at the geometric center of the
         HGA dish outer rim circle.

   This diagram illustrates the HERA_HGA frame:


   +Z s/c side (science deck side) view:
   -------------------------------------

                             .________________.
                             |                |
                             |           +Ysc |
   o==/ /==-=============---o|   +Zsc o-----> |o---===============-=/ /==o
       -Y Solar Array        |        |       |               +Y Solar Array
                             .________|_______.
                                   .--V +Xsc
                            HGA  +Xhga    `.
                                /_____o----->
                                    `.|.'     +Yhga      +Zsc and +Xhga are
                                      |                   out of the page.
                                      |
                                      V
                                    +Zhga


   Nominally a single rotation of 90 degrees about the +Y axis is needed to
   co-align the S/C frame with the HGA frame.

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_HERA_HGA                  = -91070
      FRAME_-91070_NAME               = 'HERA_HGA'
      FRAME_-91070_CLASS              =  4
      FRAME_-91070_CLASS_ID           = -91070
      FRAME_-91070_CENTER             = -91
      TKFRAME_-91070_RELATIVE         = 'HERA_SPACECRAFT'
      TKFRAME_-91070_SPEC             = 'ANGLES'
      TKFRAME_-91070_UNITS            = 'DEGREES'
      TKFRAME_-91070_AXES             = ( 1,     2,   3   )
      TKFRAME_-91070_ANGLES           = ( 0.0, -90.0, 0.0 )

   \begintext


Hera Solar Array Frames Tree
--------------------------------------------------------------------------

   The diagram below shows the Hera Solar Array frames hierarchy:

                                 "HERA_SPACECRAFT"
                     +---------------------------------------+
                     |                                       |
              fixed->|                                       |<-fixed
                     |                                       |
                     v                                       v
              "HERA_SA+Y_ZERO"                        "HERA_SA-Y_ZERO"
           +-------------------+                   +-------------------+
           |                   |                   |                   |
       ck->|               ck->|               ck->|               ck->|
           |                   |                   |                   |
           v                   v                   v                   v
   "HERA_SA+Y_PLAN"    "HERA_SA+Y_MEAS"    "HERA_SA-Y_PLAN"    "HERA_SA-Y_MEAS"
   ----------------    ----------------    ----------------    ----------------
           |                   |                   |                   |
           |                   |                   |                   |
           |                   |                   |                   |
           v                   v                   v                   v
           +-------------------+                   +-------------------+
                     |                                       |
             switch->|                               switch->|
                     |                                       |
                     v                                       v
                "HERA_SA+Y"                            "HERA_SA-Y"
                -----------                            -----------


   HERA_SA+Y_ZERO and HERA_SA-Y_ZERO are two ``fixed-offset'' frames,
   defined with respect to HERA_SPACECRAFT as follows:

      -  +Y is parallel to the longest side of the array, positively
         oriented from the yoke to the end of the wing;

      -  +Z is aligned to the spacecraft bus +Z, pointing on the
         nominal direction of nadir;

      -  +X completes the right-handed frame.

      -  the origin of the frame is located at the yoke geometric
         center.


   The rest of Solar Array frames -- HERA_SA+Y, HERA_SA+Y_PLAN,
   HERA_SA+Y_MEAS, HERA_SA-Y, HERA_SA-Y_PLAN, HERA_SA-Y_MEAS -- are
   defined as follows:

      -  +Y is parallel to the longest side of the array, positively oriented
         from the yoke to the end of the wing;

      -  +Z is normal to the solar array plane, the solar cells facing +Z;

      -  +X completes the right-handed frame;

      -  the origin of the frame is located at the yoke geometric center.


   The axis of rotation is parallel to the Y axis of the spacecraft and the
   solar array frames. Please note that in all the diagrams of this file the
   Solar Arrays are rotated 90 degrees.

   The solar array frames HERA_SA-Y and HERA_SA+Y are implemented as
   Switch frame and their orientation is provided by either HERA_SA+Y_MEAS
   and HERA_SA-Y_MEAS when measured orientation is available or otherwise, by
   HERA_SA+Y_PLAN and HERA_SA-Y_PLAN when predicted orientation is available
   (see Section ``Hera Spacecraft Frame'' and [1] for more information).

   This diagram illustrates the HERA_SA+Y and HERA_SA-Y frames:


   +X s/c side (HGA side) view:
   ----------------------------


                                      ^
                                      | toward asteroid
                                      |

                                 Science Deck
                 +Zsa-y_zero ^                    ^ +Zsa+y_zero
   .__  __.._____________.   | ._________________.|   ._____________..__  ___.
   |  / / ||             |\  ||        ____      ||  /|             ||  / /  |
   |  / / ||             | \ |.      .'    `.    .| / |             ||  \ \  |
   |  \ \ || +Ysa-y_zero |  \||     /    |   \   ||/  |             ||  / /  |
   |  / / ||        <--------x|     |  _ O   |   |o------->         ||  \ \  |
   |  \ \ ||             |  / |    +Zsc ^ \  /   | \  | +Ysa+y_zero ||  / /  |
   |  / / ||             | /  |      `._|__.'    |  \ |             ||  / /  |
   .__\ \_.._____________./   ._________|________.   \._____________..__\ \__.
                                     /\ | /\
                                        o-------> +Ysc
                                        +Xsc
                                                 +Xsc is out of the page.
                                                 +Xsa-y_zero is into the page
                                                 +Xsa+y_zero is out of the page


   These sets of keywords define solar array frames:

   \begindata

      FRAME_HERA_SA+Y_ZERO            = -91010
      FRAME_-91010_NAME               = 'HERA_SA+Y_ZERO'
      FRAME_-91010_CLASS              =  4
      FRAME_-91010_CLASS_ID           = -91010
      FRAME_-91010_CENTER             = -91011
      TKFRAME_-91010_RELATIVE         = 'HERA_SPACECRAFT'
      TKFRAME_-91010_SPEC             = 'ANGLES'
      TKFRAME_-91010_UNITS            = 'DEGREES'
      TKFRAME_-91010_AXES             = (    3,      2,     1   )
      TKFRAME_-91010_ANGLES           = (    0.0,    0.0,   0.0 )

      FRAME_HERA_SA+Y                 = -91011
      FRAME_-91011_NAME               = 'HERA_SA+Y'
      FRAME_-91011_CLASS              =  6
      FRAME_-91011_CLASS_ID           = -91011
      FRAME_-91011_CENTER             = -91011
      FRAME_-91011_ALIGNED_WITH       = (
                                         'HERA_SA+Y_PLAN'
                                         'HERA_SA+Y_MEAS'
                                        )

      FRAME_HERA_SA+Y_PLAN            = -91012
      FRAME_-91012_NAME               = 'HERA_SA+Y_PLAN'
      FRAME_-91012_CLASS              =  3
      FRAME_-91012_CLASS_ID           = -91012
      FRAME_-91012_CENTER             = -91011
      CK_-91012_SCLK                  = -91999
      CK_-91012_SPK                   = -91011

      FRAME_HERA_SA+Y_MEAS            = -91013
      FRAME_-91013_NAME               = 'HERA_SA+Y_MEAS'
      FRAME_-91013_CLASS              =  3
      FRAME_-91013_CLASS_ID           = -91013
      FRAME_-91013_CENTER             = -91011
      CK_-91013_SCLK                  = -91
      CK_-91013_SPK                   = -91011

      FRAME_HERA_SA-Y_ZERO            = -91014
      FRAME_-91014_NAME               = 'HERA_SA-Y_ZERO'
      FRAME_-91014_CLASS              =  4
      FRAME_-91014_CLASS_ID           = -91014
      FRAME_-91014_CENTER             = -91015
      TKFRAME_-91014_RELATIVE         = 'HERA_SPACECRAFT'
      TKFRAME_-91014_SPEC             = 'ANGLES'
      TKFRAME_-91014_UNITS            = 'DEGREES'
      TKFRAME_-91014_AXES             = (   3,      2,       1   )
      TKFRAME_-91014_ANGLES           = (   0.0,  180.0,   180.0 )

      FRAME_HERA_SA-Y                 = -91015
      FRAME_-91015_NAME               = 'HERA_SA-Y'
      FRAME_-91015_CLASS              =  6
      FRAME_-91015_CLASS_ID           = -91015
      FRAME_-91015_CENTER             = -91015
      FRAME_-91015_ALIGNED_WITH       = (
                                         'HERA_SA-Y_PLAN'
                                         'HERA_SA-Y_MEAS'
                                        )

      FRAME_HERA_SA-Y_PLAN            = -91016
      FRAME_-91016_NAME               = 'HERA_SA-Y_PLAN'
      FRAME_-91016_CLASS              =  3
      FRAME_-91016_CLASS_ID           = -91016
      FRAME_-91016_CENTER             = -91015
      CK_-91016_SCLK                  = -91999
      CK_-91016_SPK                   = -91015

      FRAME_HERA_SA-Y_MEAS            = -91017
      FRAME_-91017_NAME               = 'HERA_SA-Y_MEAS'
      FRAME_-91017_CLASS              =  3
      FRAME_-91017_CLASS_ID           = -91017
      FRAME_-91017_CENTER             = -91015
      CK_-91017_SCLK                  = -91
      CK_-91017_SPK                   = -91015

\begintext


Hera Star Trackers Frames
--------------------------------------------------------------------------

   There are two Star Trackers Optical Heads (STR-OHs) mounted in the
   +Z s/c Panel (Instrument Deck). The STRs are nominally oriented with
   their boresights with a given azimuth and elevation angles with respect
   to the s/c reference frame as follows from [4]:


                   | Azimuth (degrees) | Elevation (degrees)
         ----------+-------------------+--------------------
          STR-OH1  |       90.0        |       63.0
          STR-OH2  |      270.0        |       63.0


   The X and Y axis of the STR frames are aligned with the sensors
   Active Pixel Sensor (APS) rows and columns respectively.

   The Star Tracker STR-OH1 and STR-OH2 frames -- JUICE_STR-OH1 and
   JUICE_STR-OH2 -- are defined as follows:

      -  +Z axis points along the Star Tracker boresight;

      -  +X axis is nominally parallel to the APS sensor rows;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the Star Tracker focal
         point.

   Nominally, the following rotations, first about +X, then about +Y
   and then about +Z, are required in order to align each of the
   HERA_STR-OHx frames to the s/c frame.


                            Rotation     Rotation      Rotation
           `To' frame       about +Z     about +Y      about +X
          --------------    ---------    ---------     ---------
           HERA_STR-OH1     -63.0 deg     0.0 deg       0.0 deg
           HERA_STR-OH2      63.0 deg     0.0 deg     180.0 deg


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_HERA_STR-OH1               = -91061
      FRAME_-91061_NAME                = 'HERA_STR-OH1'
      FRAME_-91061_CLASS               =  4
      FRAME_-91061_CLASS_ID            = -91061
      FRAME_-91061_CENTER              = -91061
      TKFRAME_-91061_RELATIVE          = 'HERA_SPACECRAFT'
      TKFRAME_-91061_SPEC              = 'ANGLES'
      TKFRAME_-91061_UNITS             = 'DEGREES'
      TKFRAME_-91061_AXES              = (   1,     2,     3   )
      TKFRAME_-91061_ANGLES            = ( -63.0,   0.0,   0.0 )

      FRAME_HERA_STR-OH2               = -91062
      FRAME_-91062_NAME                = 'HERA_STR-OH2'
      FRAME_-91062_CLASS               =  4
      FRAME_-91062_CLASS_ID            = -91062
      FRAME_-91062_CENTER              = -91062
      TKFRAME_-91062_RELATIVE          = 'HERA_SPACECRAFT'
      TKFRAME_-91062_SPEC              = 'ANGLES'
      TKFRAME_-91062_UNITS             = 'DEGREES'
      TKFRAME_-91062_AXES              = (   1,     2,     3   )
      TKFRAME_-91062_ANGLES            = (  63.0,   0.0, 180.0 )

   \begintext


AFC Frames
========================================================================

   This section of the file contains the definitions of the Asteroid Framing
   Cameras (AFC-1 and AFC-2) frames.


AFC Frame Tree
--------------------------------------

   The diagram below shows the AFC frame hierarchy.

                                 "J2000" INERTIAL
           +-----------------------------------------------------+
           |                            |                        |
           |<-pck                       |                        |<-fixed
           |                            |                        |
           V                            |                        V
      "EARTH_FIXED"                     |                  "DIDYMOS_FIXED"
      -------------                     |                  ---------------
                                        |
                                        |<-ck
                                        |
                                        V
                                "HERA_SPACECRAFT"
                             +---------------------+
                             |                     |
                             |<-fixed              |<-fixed
                             |                     |
                             V                     V
                         "HERA_AFC-1"          "HERA_AFC-2"
                         ------------          ------------


AFC Frames
--------------------------------------

   The Asteroid Framing Camera frames -- HERA_AFC-1 and HERA_AFC-2 --
   are defined as follows:

      -  +Z axis points along the camera boresight;

      -  +X axis is parallel to the apparent image lines; it is
         nominally co-aligned with the s/c +X axis for the HERA_AFC-1,
         while for HERA_AFC-2 the +X axis is anti-parallel to the s/c +X axis;

      -  +Y axis completes the right handed frame; it is nominally
         parallel to the apparent image columns and co-aligned with
         the s/c +Y axis;

      -  the origin of the frame is located at the camera focal point.

   This diagram illustrates the AFC-1 and AFC-2 camera frames:


   +Z s/c side (science deck side) view:
   -------------------------------------

                                ^ +Xafc2
                                |
                             .__|____________.
                   +Yafc2 <-----o------> +Yafc1
                             |  |       +Ysc |
   o==/ /==-=============---o|  |    o-----> |o---===============-=/ /==o
       -Y Solar Array        |  V    |       |               +Y Solar Array
                             ._+Xafc1|_______.
                                  .--V +Xsc
                           HGA  .'       `.
                               /___________\
                                   `.|.'           +Zsc, +Zafc1 and +Zafc2 are
                                                    out of the page.


   Nominally, the AFC frames are co-aligned with the s/c frame:

   \begindata

      FRAME_HERA_AFC-1                = -91110
      FRAME_-91110_NAME               = 'HERA_AFC-1'
      FRAME_-91110_CLASS              =  4
      FRAME_-91110_CLASS_ID           = -91110
      FRAME_-91110_CENTER             = -91
      TKFRAME_-91110_RELATIVE         = 'HERA_SPACECRAFT'
      TKFRAME_-91110_SPEC             = 'ANGLES'
      TKFRAME_-91110_UNITS            = 'DEGREES'
      TKFRAME_-91110_AXES             = ( 1,   2,   3   )
      TKFRAME_-91110_ANGLES           = ( 0.0, 0.0, 0.0 )

      FRAME_HERA_AFC-2                = -91120
      FRAME_-91120_NAME               = 'HERA_AFC-2'
      FRAME_-91120_CLASS              =  4
      FRAME_-91120_CLASS_ID           = -91120
      FRAME_-91120_CENTER             = -91
      TKFRAME_-91120_RELATIVE         = 'HERA_SPACECRAFT'
      TKFRAME_-91120_SPEC             = 'ANGLES'
      TKFRAME_-91120_UNITS            = 'DEGREES'
      TKFRAME_-91120_AXES             = ( 1,   2,     3   )
      TKFRAME_-91120_ANGLES           = ( 0.0, 0.0, 180.0 )

   \begintext


TIRI Frames
========================================================================

   This section of the file contains the definitions of the Thermal
   InfraRed Imager (TIRI) frames.


TIRI Frame Tree
--------------------------------------

   The diagram below shows the TIRI frame hierarchy.

                                 "J2000" INERTIAL
           +-----------------------------------------------------+
           |                            |                        |
           |<-pck                       |                        |<-pck
           |                            |                        |
           V                            |                        V
      "EARTH_FIXED"                     |                  "DIDYMOS_FIXED"
      -------------                     |                  ---------------
                                        |
                                        |<-ck
                                        |
                                        V
                                "HERA_SPACECRAFT"
                                -----------------
                                        |
                                        |<-fixed
                                        |
                                        V
                                    "HERA_TIRI"
                                    -----------


TIRI Frames
--------------------------------------

   The the Thermal InfraRed Imager frame -- HERA_TIRI -- is defined as
   follows:

      -  +Z axis points along the camera boresight;

      -  +X axis is parallel to the apparent image lines; it is
         nominally co-aligned with the s/c +X axis;

      -  +Y axis completes the right handed frame; it is nominally
         parallel to the apparent image columns and co-aligned with
         the s/c +Y axis;

      -  the origin of the frame is located at the camera focal point.


   This diagram illustrates the TRA camera frames:


   +Z s/c side (science deck side) view:
   -------------------------------------

                             .________________.
                             |   o------> +Ytiri
                             |   |       +Ysc |
   o==/ /==-=============---o|   |    o-----> |o---===============-=/ /==o
       -Y Solar Array        |   V    |       |               +Y Solar Array
                             . +Xtiri |_______.
                                   .--V +Xsc
                            HGA  .'       `.
                                /___________\
                                    `.|.'                 +Zsc and +Ztiri are
                                                           out of the page.


   Nominally, the TIRI frames are co-aligned with the s/c frame:

   \begindata

      FRAME_HERA_TIRI                 = -91210
      FRAME_-91210_NAME               = 'HERA_TIRI'
      FRAME_-91210_CLASS              =  4
      FRAME_-91210_CLASS_ID           = -91210
      FRAME_-91210_CENTER             = -91
      TKFRAME_-91210_RELATIVE         = 'HERA_SPACECRAFT'
      TKFRAME_-91210_SPEC             = 'ANGLES'
      TKFRAME_-91210_UNITS            = 'DEGREES'
      TKFRAME_-91210_AXES             = ( 1,   2,   3   )
      TKFRAME_-91210_ANGLES           = ( 0.0, 0.0, 0.0 )

   \begintext


PALT Frames
========================================================================

   This section of the file contains the definitions of the Planetary
   Altimeter (PALT) frames.


PALT Frame Tree
--------------------------------------

   The diagram below shows the PALT frame hierarchy.

                                 "J2000" INERTIAL
           +-----------------------------------------------------+
           |                            |                        |
           |<-pck                       |                        |<-pck
           |                            |                        |
           V                            |                        V
      "EARTH_FIXED"                     |                  "DIDYMOS_FIXED"
      -------------                     |                  ---------------
                                        |
                                        |<-ck
                                        |
                                        V
                                "HERA_SPACECRAFT"
                                -----------------
                                        |
                                        |<-fixed
                                        |
                                        V
                                    "HERA_PALT"
                                    -----------


PALT Frames
--------------------------------------

   The Planetary Altimeter frame -- HERA_PALT -- is defined as follows:

      -  +Z axis points along the camera boresight;

      -  +X axis is parallel to the apparent image lines; it is
         nominally co-aligned with the s/c +X axis;

      -  +Y axis completes the right handed frame; it is nominally
         parallel to the apparent image columns and co-aligned with
         the s/c +Y axis;

      -  the origin of the frame is located at the camera focal point.


   This diagram illustrates the PALT camera frames:


   +Z s/c side (science deck side) view:
   -------------------------------------

                             .________________.
                             |   o------> +Ypalt
                             |   |       +Ysc |
   o==/ /==-=============---o|   |    o-----> |o---===============-=/ /==o
       -Y Solar Array        |   V    |       |               +Y Solar Array
                             . +Xpalt |_______.
                                   .--V +Xsc
                            HGA  .'       `.
                                /___________\
                                    `.|.'                 +Zsc and +Zpalt are
                                                           out of the page.


   Nominally, the PALT frames are co-aligned with the s/c frame:

   \begindata

      FRAME_HERA_PALT                 = -91310
      FRAME_-91310_NAME               = 'HERA_PALT'
      FRAME_-91310_CLASS              =  4
      FRAME_-91310_CLASS_ID           = -91310
      FRAME_-91310_CENTER             = -91
      TKFRAME_-91310_RELATIVE         = 'HERA_SPACECRAFT'
      TKFRAME_-91310_SPEC             = 'ANGLES'
      TKFRAME_-91310_UNITS            = 'DEGREES'
      TKFRAME_-91310_AXES             = ( 1,   2,   3   )
      TKFRAME_-91310_ANGLES           = ( 0.0, 0.0, 0.0 )

   \begintext


HSH Frames
========================================================================

   This section of the file contains the definitions of the HyperScout
   Hyperspectral Imager (HSH) frames.


HSH Frame Tree
--------------------------------------

   The diagram below shows the HSH frame hierarchy.

                                 "J2000" INERTIAL
           +-----------------------------------------------------+
           |                            |                        |
           |<-pck                       |                        |<-pck
           |                            |                        |
           V                            |                        V
      "EARTH_FIXED"                     |                  "DIDYMOS_FIXED"
      -------------                     |                  ---------------
                                        |
                                        |<-ck
                                        |
                                        V
                                "HERA_SPACECRAFT"
                                -----------------
                                        |
                                        |<-fixed
                                        |
                                        V
                                    "HERA_HSH"
                                    ----------


HSH Frames
--------------------------------------

   The HyperScout Hyperspectral frame -- HERA_HSH -- is defined as follows:

      -  +Z axis points along the camera boresight;

      -  +X axis is parallel to the apparent image lines; it is
         nominally co-aligned with the s/c +X axis;

      -  +Y axis completes the right handed frame; it is nominally
         parallel to the apparent image columns and co-aligned with
         the s/c +Y axis;

      -  the origin of the frame is located at the camera focal point.


   This diagram illustrates the HSH frames:


   +Z s/c side (science deck side) view:
   -------------------------------------

                             .________________.
                             |   o------> +Yhsh
                             |   |       +Ysc |
   o==/ /==-=============---o|   |    o-----> |o---===============-=/ /==o
       -Y Solar Array        |   V    |       |               +Y Solar Array
                             . +Xhsh  |_______.
                                   .--V +Xsc
                            HGA  .'       `.
                                /___________\
                                    `.|.'                 +Zsc and +Zhsh are
                                                           out of the page.


   Nominally, the HSH frames are co-aligned with the s/c frame:

   \begindata

      FRAME_HERA_HSH                  = -91410
      FRAME_-91410_NAME               = 'HERA_HSH'
      FRAME_-91410_CLASS              =  4
      FRAME_-91410_CLASS_ID           = -91410
      FRAME_-91410_CENTER             = -91
      TKFRAME_-91410_RELATIVE         = 'HERA_SPACECRAFT'
      TKFRAME_-91410_SPEC             = 'ANGLES'
      TKFRAME_-91410_UNITS            = 'DEGREES'
      TKFRAME_-91410_AXES             = ( 1,   2,   3   )
      TKFRAME_-91410_ANGLES           = ( 0.0, 0.0, 0.0 )

   \begintext


SMC Frames
========================================================================

   This section of the file contains the definitions of the Small Monitoring
   Camera (SMC) frames.


SMC Frame Tree
--------------------------------------

   The diagram below shows the SMC frame hierarchy.

                                 "J2000" INERTIAL
           +-----------------------------------------------------+
           |                            |                        |
           |<-pck                       |                        |<-pck
           |                            |                        |
           V                            |                        V
      "EARTH_FIXED"                     |                  "DIDYMOS_FIXED"
      -------------                     |                  ---------------
                                        |
                                        |<-ck
                                        |
                                        V
                                "HERA_SPACECRAFT"
                                -----------------
                                        |
                                        |<-fixed
                                        |
                                        V
                                    "HERA_SMC"
                                    ----------


SMC Frames
--------------------------------------

   The Small Monitoring Camera frame -- HERA_SMC -- is defined as follows:

      -  +Z axis points along the camera boresight;

      -  +X axis is parallel to the apparent image lines; it is
         nominally co-aligned with the s/c +X axis;

      -  +Y axis completes the right handed frame; it is nominally
         parallel to the apparent image columns and co-aligned with
         the s/c +Y axis;

      -  the origin of the frame is located at the camera focal point.


   This diagram illustrates the SMC frames:


   +Z s/c side (science deck side) view:
   -------------------------------------

                             .________________.
                             |   o------> +Ysmc
                             |   |       +Ysc |
   o==/ /==-=============---o|   |    o-----> |o---===============-=/ /==o
       -Y Solar Array        |   V    |       |               +Y Solar Array
                             . +Xsmc  |_______.
                                   .--V +Xsc
                            HGA  .'       `.
                                /___________\
                                    `.|.'                 +Zsc and +Zsmc are
                                                           out of the page.


   Nominally, the following rotations, first about +X, then about +Y
   and then about +Z, are required in order to align the HERA_SMC frame
   to the s/c frame.

                            Rotation     Rotation      Rotation
           `To' frame       about +Z     about +Y      about +X
          --------------    ---------    ---------     ---------
           HERA_SMC        -40.02 deg    49.24 deg     42.05 deg

   \begindata

      FRAME_HERA_SMC              = -91500
      FRAME_-91500_NAME           = 'HERA_SMC'
      FRAME_-91500_CLASS          =  4
      FRAME_-91500_CLASS_ID       = -91500
      FRAME_-91500_CENTER         = -91
      TKFRAME_-91500_RELATIVE     = 'HERA_SPACECRAFT'
      TKFRAME_-91500_SPEC         = 'ANGLES'
      TKFRAME_-91500_UNITS        = 'DEGREES'
      TKFRAME_-91500_AXES         = (   1,           2,           3         )
      TKFRAME_-91500_ANGLES       = ( -40.01923108  49.23842601  42.0522522 )

   \begintext


Hera NAIF ID Codes to Name Mapping
------------------------------------------------------------------------------

   This section contains name to NAIF ID mappings for the Hera mission.
   Once the contents of this file is loaded into the KERNEL POOL,
   these mappings become available within SPICE, making it possible to use
   names instead of ID code in the high level SPICE routine calls.

  Spacecraft:
  ----------------------------------------------------------------

      This table presents the Hera Spacecraft and its main
      structures' names.

      ---------------------  -------  --------------------------
       Name                   ID       Synonyms
      ---------------------  -------  --------------------------
       HERA                      -91
       HERA_SPACECRAFT        -91000   HERA_SC

       HERA_HGA               -91070

       HERA_LGA+X             -91071
       HERA_LGA-X             -91072

       HERA_SA+Y              -91011
       HERA_SA-Y              -91015

       HERA_STR-OH1           -91061
       HERA_STR-OH2           -91062

       HERA_JUVENTAS_IFP      -91063
       HERA_MILANI_IFP        -91064
      ---------------------  -------  --------------------------

      Notes:

         -- 'HERA_SC' and 'HERA_SPACECRAFT' are synonyms and all map to the
            Hera s/c bus structure ID (-91000);

     \begindata

        NAIF_BODY_NAME += ( 'HERA'                            )
        NAIF_BODY_CODE += ( -91                               )

        NAIF_BODY_NAME += ( 'HERA_SC'                         )
        NAIF_BODY_CODE += ( -91000                            )

        NAIF_BODY_NAME += ( 'HERA_SPACECRAFT'                 )
        NAIF_BODY_CODE += ( -91000                            )

        NAIF_BODY_NAME += ( 'HERA_HGA'                        )
        NAIF_BODY_CODE += ( -91070                            )

        NAIF_BODY_NAME += ( 'HERA_LGA+X'                      )
        NAIF_BODY_CODE += ( -91071                            )

        NAIF_BODY_NAME += ( 'HERA_LGA-X'                      )
        NAIF_BODY_CODE += ( -91072                            )

        NAIF_BODY_NAME += ( 'HERA_SA+Y'                       )
        NAIF_BODY_CODE += ( -91011                            )

        NAIF_BODY_NAME += ( 'HERA_SA-Y'                       )
        NAIF_BODY_CODE += ( -91015                            )

        NAIF_BODY_NAME += ( 'HERA_STR-OH1'                    )
        NAIF_BODY_CODE += ( -91061                            )

        NAIF_BODY_NAME += ( 'HERA_STR-OH2'                    )
        NAIF_BODY_CODE += ( -91062                            )

        NAIF_BODY_NAME += ( 'HERA_JUVENTAS_IFP'               )
        NAIF_BODY_CODE += ( -91063                            )

        NAIF_BODY_NAME += ( 'HERA_MILANI_IFP'                 )
        NAIF_BODY_CODE += ( -91064                            )

     \begintext


  AFC:
  ----

    This table summarizes AFCs IDs:

      ----------------------  --------
       Name                    ID
      ----------------------  --------
      HERA_AFC-1                -91110
      HERA_AFC-2                -91120
      ----------------------  --------

    Name-ID Mapping keywords:

   \begindata

       NAIF_BODY_NAME += ( 'HERA_AFC-1'                       )
       NAIF_BODY_CODE += ( -91110                             )

       NAIF_BODY_NAME += ( 'HERA_AFC-2'                       )
       NAIF_BODY_CODE += ( -91120                             )

   \begintext


  Thermal InfraRed Imager:
  ----------------------------------------------------------------

      This table summarizes TIRI IDs:

      ---------------------  -------  --------------------------
       Name                   ID       Synonyms
      ---------------------  -------  --------------------------
       HERA_TIRI              -91200

      Name-ID Mapping keywords:

     \begindata

        NAIF_BODY_NAME += ( 'HERA_TIRI'                       )
        NAIF_BODY_CODE += ( -91200                            )

     \begintext


  Planetary Altimeter:
  ----------------------------------------------------------------

      This table summarizes PALT IDs:

      ---------------------  -------  --------------------------
       Name                   ID       Synonyms
      ---------------------  -------  --------------------------
       HERA_PALT              -91300
       HERA_PALT_MIN          -91301

      Name-ID Mapping keywords:

     \begindata

        NAIF_BODY_NAME += ( 'HERA_PALT'                       )
        NAIF_BODY_CODE += ( -91300                            )

        NAIF_BODY_NAME += ( 'HERA_PALT_MIN'                   )
        NAIF_BODY_CODE += ( -91301                            )

     \begintext


  HyperScout Hyperspectral Imager:
  ----------------------------------------------------------------

      This table summarizes HSH IDs:

      ---------------------  -------  --------------------------
       Name                   ID       Synonyms
      ---------------------  -------  --------------------------
       HERA_HSH               -91400

      Name-ID Mapping keywords:

     \begindata

        NAIF_BODY_NAME += ( 'HERA_HSH'                        )
        NAIF_BODY_CODE += ( -91400                            )

     \begintext


  Small Monitoring Camera:
  ----------------------------------------------------------------

      This table summarizes SMC IDs:

      ---------------------  -------  --------------------------
       Name                   ID       Synonyms
      ---------------------  -------  --------------------------
       HERA_SMC               -91500

      Name-ID Mapping keywords:

     \begindata

        NAIF_BODY_NAME += ( 'HERA_SMC'                        )
        NAIF_BODY_CODE += ( -91500                            )

     \begintext


  Asteroid Binary System:
  ----------------------------------------------------------------

      This table presents the Hera target names.

      -------------------------  -------  --------------------------
       Name                       ID       Synonyms
      -------------------------  -------  --------------------------
       DIDYMOS_BARYCENTER        2065803   DIDYMOS_BC,
                                           DIDYMOS BARYCENTER
       DIDYMOS                   -658030   DIDYMAIN
       DIMORPHOS                 -658031   DIDYMOON
       DART_IMPACT_SITE           -91900   DIDYMOON_IMPACT_SITE,
                                           DIMORPHOS_IMPACT_SITE
       DIDYMOS_GEOMETRIC_CENTER  -658032
      -------------------------  -------  --------------------------

     \begindata

        NAIF_BODY_NAME += ( 'DIDYMOS BARYCENTER'              )
        NAIF_BODY_CODE += ( 2065803                           )

        NAIF_BODY_NAME += ( 'DIDYMOS_BC'                      )
        NAIF_BODY_CODE += ( 2065803                           )

        NAIF_BODY_NAME += ( 'DIDYMOS_BARYCENTER'              )
        NAIF_BODY_CODE += ( 2065803                           )

        NAIF_BODY_NAME += ( 'DIDYMAIN'                        )
        NAIF_BODY_CODE += ( -658030                           )

        NAIF_BODY_NAME += ( 'DIDYMOS'                         )
        NAIF_BODY_CODE += ( -658030                           )

        NAIF_BODY_NAME += ( 'DIDYMOON'                        )
        NAIF_BODY_CODE += ( -658031                           )

        NAIF_BODY_NAME += ( 'DIMORPHOS'                       )
        NAIF_BODY_CODE += ( -658031                           )

        NAIF_BODY_NAME += ( 'DIDYMOON_IMPACT_SITE'            )
        NAIF_BODY_CODE += ( -91900                            )

        NAIF_BODY_NAME += ( 'DIMORPHOS_IMPACT_SITE'           )
        NAIF_BODY_CODE += ( -91900                            )

        NAIF_BODY_NAME += ( 'DART_IMPACT_SITE'                )
        NAIF_BODY_CODE += ( -91900                            )

        NAIF_BODY_NAME += ( 'DIDYMOS_GEOMETRIC_CENTER'        )
        NAIF_BODY_CODE += ( -658032                           )

   \begintext


End of FK file.