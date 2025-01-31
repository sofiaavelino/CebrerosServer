KPL/FK

BepiColombo MTM Spacecraft Frames Kernel
=============================================================================

   This frame kernel contains complete set of frame definitions for the
   BepiColombo Mercury Transfer Module Spacecraft (MTM) including
   definitions for the MTM fixed and MTM instrument frames. This
   kernel also contains NAIF ID/name mapping for the MTM science instruments
   and S/C structures (see the last section of the file).


Version and Date
-----------------------------------------------------------------------------

   Version 1.2 -- April 26, 2023 -- Ricardo Valles Blanco, ESAC/ESA

     Corrected minor typos in MTM Solar Arrays reference frames diagram.

   Version 1.1 -- February 1, 2023 -- Ricardo Valles Blanco, ESAC/ESA
                                      Marc Costa Sitja, ESAC/ESA
   
      Fixed typos for PDS4 Bundle release version 1.0.
      
      Removed MTM_SPACECRAFT_CRUISE frame.

   Version 1.0 -- January 4, 2023 -- Alfredo Escalante Lopez, ESAC/ESA

     Corrected MTM Solar Arrays reference frames diagram.

   Version 0.9 -- February 4, 2022 -- Emanuele Simioni, INAF
                                      Alfredo Escalante Lopez, ESAC/ESA

      Corrected MCAM reference frames from Earth, Venus and Mercury
      fly-bys data.

   Version 0.8 -- June 10, 2021 -- Ricardo Valles Blanco, ESAC/ESA

      Updated MTM_SEP frame SCLK Id to the current SCLK Fict Id.

   Version 0.7 -- August 24, 2020 -- Marc Costa Sitja, ESAC/ESA

      Corrected minor typos.

   Version 0.6 -- July 13, 2020 -- Marc Costa Sitja, ESAC/ESA
                                   Alfredo Escalante Lopez, ESAC/ESA

      Added ID for MCAM suite. Updated SA+Y and SA-Y Gimbal NAIF Name/IDs.
      Corrected MCAM reference frames from Earth Flyby ESOC report.
      Added MCAM IDs for FOV used by Flight Dynamics.
      Corrected Solar Arrays frames euler angles so to meet description.
      Added description for Solar Electric Propulsion frame usage.

   Version 0.5 -- April 6, 2020 -- Marc Costa Sitja, ESAC/ESA

      Corrected MCAM reference frames from Earth Flyby ESOC report.
      Updated SA+Y and SA-Y Gimbal NAIF Name/IDs.
      Added MCAM IDs for FOV used by Flight Dynamics.

   Version 0.4 -- May 29, 2019 -- Marc Costa Sitja, ESAC/ESA
                                  Joe Zender, ESTEC/ESA

      MCAM reference frames updated with boresights cross checked with
      Flight Dynamics (Frank Budnik).
      Corrected Solar Array reference frames definitions and added SA IDs.

   Version 0.3 -- December 7, 2018 -- Marc Costa Sitja, ESAC/ESA

      Updated typo in MTM frames description.

   Version 0.2 -- December 4, 2018 -- Marc Costa Sitja, ESAC/ESA

      Updated MTM SCLK: MTM uses MPO to send the Housekeeping Telemetry and
      therefore uses the MPO SCLK. Corrected MTM Solar Arrays frames.

   Version 0.1 -- September 6, 2018 -- Marc Costa Sitja, ESAC/ESA

      Updated MTM ID, corrected several typos and added SEP frame.
      Added MTM diagrams. Removed MTM_MCAM_MU frame.

   Version 0.0 -- October 2, 2017 -- Michele Zusi, INAF
                                     James Windsor, ESTEC/ESA
                                     Marc Costa Sitja, ESAC/ESA

      Initial prototype release.


References
-----------------------------------------------------------------------------

   1. ``Frames Required Reading'', NAIF.

   2. ``Kernel Pool Required Reading'', NAIF.

   3. ``C-Kernel Required Reading'', NAIF.

   4. ``BepiColombo - System Design Description'', BC-ASD-DD-00004,
      Airbus DS GmbH, Issue 2, 29th November 2014

   5. ``AOCS Study Assumptions for BepiColombo'', BC-ASD-TN-00051,
      Issue 11, Revision 1, Airbus DS GmbH, 3rd June 2016

   6. ``CAM HEAD Assembly'', BC-ASD-DW-00912,  Airbus DS GmbH,
      9th September 2016

   7. ``BepiColombo Earth Swing-By attitude definition'', BC-ESC-TN-50021,
      A. Martinez de Albeniz Ausin, ESOC/ESA, Issue 1, Revision 1,
      30th January 2020

   8. ``BepiColombo - SfC Monitoring Camera System Operations Overview'',
      BC-ASD-MA-00036, Issue 2, 9th March 2018

   9. ``Alignment measurement test report'', BC-ALS-TR-00096,
      V. Cuarto, Thales Alenia Space, 12th February 2018.

   10. ``BepiColombo MCAM Channels Spice Kernels Optimization'',
       E. Simioni, M. Zusi, V. Galluzzi, G. Cremonese, 25th January 2022.


Contact Information
-----------------------------------------------------------------------------

   If you have any questions regarding this file contact the
   ESA SPICE Service (ESS) at ESAC:

           Alfredo Escalante Lopez
           (+34) 91-8131-429
           spice@sciops.esa.int

   or the MCAM Principal Investigator at ESTEC:

           Joe Zender
           (+31) 71-565-4919
           joe.zender@esa.int

   or NAIF at JPL:

           Boris Semenov
           +1 (818) 354-8136
           Boris.Semenov@jpl.nasa.gov


Implementation Notes
-----------------------------------------------------------------------------

   This file is used by the SPICE system as follows: programs that make use
   of this frame kernel must "load" the kernel normally during program
   initialization. Loading the kernel associates the data items with
   their names in a data structure called the "kernel pool". The SPICELIB
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

   * SPICEYPY is a non-official, community developed Python wrapper for the
     NAIF SPICE toolkit. Its development is managed on Github.
     It is available at: https://github.com/AndrewAnnex/SpiceyPy


BepiColombo MTM Mission NAIF ID Codes
-----------------------------------------------------------------------------

   The following names and NAIF ID codes are assigned to the MTM spacecraft,
   its structures and science instruments (the keywords implementing these
   definitions are located in the section ``BepiColombo Mission NAIF ID
   Codes -- Definition Section'' at the end of this file):

      MTM Spacecraft and Spacecraft Structures names/IDs:

         MTM                         -652     (synonyms: BEPICOLOMBO MTM,
                                               MERCURY TRANSFER MODULE)

         MTM_SPACECRAFT              -652000  (synonym: MTM_SC)

         MTM_SA+X_GIMBAL             -652010
         MTM_SA+X                    -652011
         MTM_SA+X_P-1                -652111
         MTM_SA+X_P-2                -652112
         MTM_SA+X_P-3                -652113
         MTM_SA+X_P-4                -652114

         MTM_SA-X_GIMBAL             -652012
         MTM_SA-X                    -652013
         MTM_SA-X_P-1                -652121
         MTM_SA-X_P-2                -652122
         MTM_SA-X_P-3                -652123
         MTM_SA-X_P-4                -652124

         MTM_SEP                     -652020
         MTM_SEPT-1                  -652021
         MTM_SEPT-2                  -652022
         MTM_SEPT-3                  -652023
         MTM_SEPT-4                  -652024

      M-CAM names/ID:

         MTM_MCAM                     -652900

         MTM_MCAM1                    -652950
         MTM_MCAM1_APERTURE           -652951

         MTM_MCAM2                    -652960
         MTM_MCAM2_APERTURE           -652961

         MTM_MCAM3                    -652970
         MTM_MCAM3_APERTURE           -652971


BepiColombo MTM Mission Frames
-----------------------------------------------------------------------------

   The following MTM frames are defined in this kernel file:

           Name                  Relative to           Type          NAIF ID
      ======================  =====================  ============   =========
   Spacecraft frames:
   ------------------
      MTM_SPACECRAFT           MPO_SPACECRAFT         CK              -652000

      MTM_SA+X_ZERO            MTM_SPACECRAFT         FIXED           -652010
      MTM_SA+X                 MTM_SA+X_ZERO          CK              -652011
      MTM_SA-Y_ZERO            MTM_SPACECRAFT         FIXED           -652012
      MTM_SA-X                 MTM_SA-X_ZERO          CK              -652013

      MTM_SEP                  J2000                  CK              -652020
      MTM_SEPT-1               MTM_SPACECRAFT         FIXED           -652021
      MTM_SEPT-2               MTM_SPACECRAFT         FIXED           -652022
      MTM_SEPT-3               MTM_SPACECRAFT         FIXED           -652023
      MTM_SEPT-4               MTM_SPACECRAFT         FIXED           -652024

   MCAM Frames:
   ------------------
      MTM_MCAM1                MTM_SPACECRAFT         FIXED           -652950
      MTM_MCAM2                MTM_SPACECRAFT         FIXED           -652960
      MTM_MCAM3                MTM_SPACECRAFT         FIXED           -652970

   SPICE 'Built-in' PCK frames in use by BepiColombo (3):
   ------------------------------------------------------
      IAU_MERCURY             J2000                  PCK            built-in
      IAU_EARTH               J2000                  PCK            built-in
      IAU_VENUS               J2000                  PCK            built-in

      (3) Data for these frames is loaded using either the PCK file
          "pckVVVVV.tpc" (VVVVV is the version number)


BepiColombo MTM Frames Hierarchy
-----------------------------------------------------------------------------

   The diagram below shows the BepiColombo MTM spacecraft and its structures
   frame hierarchy:


                                   "J2000" INERTIAL
                             +-------------------------+
                             |                         |
                             |<-ck                     |<-ck
                             |                         |
                             v                         v
                         "MPO_SPACECRAFT"          "MTM_SEP"
                         ----------------          ---------       
                                |              
                                |<-ck(*)              
                                |              
                                v              
                         "MTM_SPACECRAFT"           
           +---------------------------------------------------------------+
           |              |                |   |   |           |   |   |   |
           |<-fixed       |<-fixed  fixed->|   |   |    fixed->|   |   |   |
           |              |                |   |   |           |   |   |   |
           v              |                v   |   |           v   |   |   |
   "MTM_SA+X_ZERO"        |       "MTM_MCAM1"  |   |  "MTM_SEPT-1" |   |   |
   ---------------        |       -----------  |   |  ------------ |   |   |
           |              |                    |   |               |   |   |
           |<-ck          v             fixed->|   |        fixed->|   |   |
           |      "MTM_SA-X_ZERO"              |   |               |   |   |
           v      ---------------              v   |               v   |   |
      "MTM_SA+X"          |           "MTM_MCAM2"  |      "MTM_SEPT-2" |   |
      ----------          |<-ck       -----------  |      -----------  |   |
                          |                        |                   |   |
                          v                 fixed->|            fixed->|   |
                     "MTM_SA-X"                    |                   |   |
                     ----------                    v                   v   |
                                          "MTM_MCAM3"        "MTM_SEPT-3"  |
                                          -----------         -----------  |
                                                                           |
                                                                           v
                                                                  "MTM_SEPT-4"
                                                                  ------------

   (*)   In these cases transformation is fixed but it has to be
         stored in a CK in such a way that the coverage of the 
         frame is appropriate: no MTM information will be available
         after separation from MPO at the end of the Cruise Phase.


MTM Spacecraft and Spacecraft Structures Frames
-----------------------------------------------------------------------------

   This section of the file contains the definitions of the spacecraft
   and spacecraft structures frames.

   WARNING: The origin of the frames specified in the following
   definitions are not implemented. The ``true'' origin of all frames
   is in the center of the MTM_SPACECRAFT frame, the center of which
   is defined by the position given by the SPK (ephemeris) kernel in
   use.


MTM Spacecraft Bus Frame
-----------------------------------------------------------------------------

   The MTM spacecraft frame -- MTM_SPACECRAFT --, is defined by the S/C
   design as follows [4]:

      -  +Z axis is perpendicular to the launch vehicle interface 
         plane and points toward the payload side; it is also parallel 
         to MPO's +Z axis;

      -  +X axis is parallel to the Solar Arrays hinges axes and is 
         parallel to MPO's +X axis;

      -  +Y axis completes the right-handed frame;

      -  the origin of this frame is the Mercury Transfer Module/MPO 
         interface point on the separation plane.


   These diagrams illustrate the MTM_SPACECRAFT frame:


   +Z S/C side view:
   -----------------
                                     ()
                                     ||
                                     -- +X Solar Array
                                     __
                                     ||
                                     ||
                                .    ||
                               /   '  |
                              /          '  .
                             /         ^ +Xsc  '  .
                            /       __ | __         '
                           /       /  \|/  \        |
                          /  +Ysc  \__/|\__/        |
                          \    <-------o __         |
                           \       /  \+Zsc\        |
                            \      \__/ \__/        .
                             \                    .
                              \              .  '
                               \       .  '
                                '  '  |
                                     ||                      +Zsc is out of
                                     ||                       the page.
                                     ||
                                     --

                                     --
                                     ||
                                     () -X Solar Array


   -Y S/C side view:
   -----------------
                             .------------.
                             |            |
                             '/\/\/\/\/\/\'

                              /\/\/\/\/\/\
                             |            |
                             |            | -X Solar Array
                            ================
                                \\    //
                          .------\\--//--.
                          |       \\//   |\
                          |        ()    | \
                          |              |  \
                          |--------------|   \
                          |             +Ysc |
                          |              |x------------> +Zsc
                          |              ||  |
                          |--------------||  /
                          |              || /
                          |        ()    ||/                +Ysc is into
                          |       //\\   ||                  the page.
                          '------//--\\--'v
                                //    \\  +Xsc
                            ================
                             |            |
                             |            | +X Solar Array
                              \/\/\/\/\/\/

                             /\/\/\/\/\/\/\
                             |            |
                             '------------'


   +X S/C side view:
   -----------------

                           V            V
                          .--------------.
                          |              |
                          |              |
                          |              |
                          |              |
                          |              |
                          |          +Xsc o------------> +Zsc
                          |              ||
                          | =======()=======
                          |              ||                 +Xsc is out
                          |              ||                  of the page.
                          |              ||'.
                          '--------------'|--'
                                          v
                                         +Ysc


   Since the S/C bus attitude with respect to an inertial frame is provided
   by a C-kernel (see [3] for more information), this frame is defined as
   a CK-based frame.

   \begindata

      FRAME_MTM_SPACECRAFT           = -652000
      FRAME_-652000_NAME             = 'MTM_SPACECRAFT'
      FRAME_-652000_CLASS            =  3
      FRAME_-652000_CLASS_ID         = -652000
      FRAME_-652000_CENTER           = -652000
      CK_-652000_SCLK                = -121
      CK_-652000_SPK                 = -652

   \begintext


MTM Solar Array Frames
-----------------------------------------------------------------------------

   MTM solar arrays are articulated (having one degree of freedom),
   therefore the Solar Array frames, MTM_SA+X and MTM_SA-X, are
   defined as CK frames with their orientation given relative to
   MTM_SA+X_ZERO and MTM_SA-X_ZERO respectively.

   MTM_SA+X_ZERO and MTM_SA-X_ZERO are two ``fixed-offset'' frames,
   defined with respect to MTM_SPACECRAFT, as follows:

      -  +X is parallel to the longest side of the array, positively
         oriented from the yoke to the end of the wing for SA+X and
         negatively for SA-X;

      -  +Y is anti-parallel to the S/C bus +Zsc;

      -  +Z completes the right-handed frame.

      -  the origin of the frame is located at the yoke geometric
         center.


   Both Solar Array frames (MTM_SA+X and MTM_SA-X) are defined as
   follows:

      -  +X is parallel to the longest side of the array, positively
         oriented from the yoke to the end of the wing for SA+X and
         negatively for SA-X;

      -  +Z is normal to the solar array plane, the solar cells facing +Ysc;

      -  +Y completes the right-handed frame;

      -  the origin of the frame is located at the yoke geometric center.


   The axis of rotation is parallel to the X axis of the spacecraft and the
   solar array frames.

   This diagram illustrates the MTM_SA+X_ZERO, MTM_SA+X, MTM_SA-X_ZERO
   and MTM_SA-X frames:


   -Y S/C side view:
   -----------------
                             .------------.
                             |            | -X Solar Array
                             '/\/\/\/\/\/\'

                              /\/\/\/\/\/\
                             |            |
                             |            |
                            ================
                                \\    //
                          .---- +Zsa-x0 -.
                          |      +Zsa-x  |\
                +Ysa-x0 <----------x     | \
                +Ysa-x    |        |     |  \
                          |--------|-----|   \
                           +Xsa-x0 |    +Ysc |
                           +Xsa-x  v     |x-------> +Zsc
                          |              ||  |
                          |---- +Zsa+x0 -||  /
                          |     +Zsa+x   |v +Xsc
                +Ysa+x0 <----------x     | /         +Ysc, +Zsa+x0, +Zsa+x,
                +Ysa+x    |       /|\\   |/          +Zsa-x0 and +Zsa-x are
                          '------//|-\\--'           into the page.
                                // |  \\
                            =======|========
                           +Xsa+x0 v      |
                           +Xsa+x         |
                              \/\/\/\/\/\/

                             /\/\/\/\/\/\/\
                             |            | +X Solar Array
                             '------------'

   These sets of keywords define solar array frames:

   \begindata

      FRAME_MTM_SA+X_ZERO             = -652010
      FRAME_-652010_NAME              = 'MTM_SA+X_ZERO'
      FRAME_-652010_CLASS             =  4
      FRAME_-652010_CLASS_ID          = -652010
      FRAME_-652010_CENTER            = -652011
      TKFRAME_-652010_RELATIVE        = 'MTM_SPACECRAFT'
      TKFRAME_-652010_SPEC            = 'ANGLES'
      TKFRAME_-652010_UNITS           = 'DEGREES'
      TKFRAME_-652010_AXES            = (   3,      2,       1   )
      TKFRAME_-652010_ANGLES          = (   0.0,    0.0,    90.0 )

      FRAME_MTM_SA+X                  = -652011
      FRAME_-652011_NAME              = 'MTM_SA+X'
      FRAME_-652011_CLASS             =  3
      FRAME_-652011_CLASS_ID          = -652011
      FRAME_-652011_CENTER            = -652011
      CK_-652011_SCLK                 = -121
      CK_-652011_SPK                  = -652

      FRAME_MTM_SA-X_ZERO             = -652012
      FRAME_-652012_NAME              = 'MTM_SA-X_ZERO'
      FRAME_-652012_CLASS             =  4
      FRAME_-652012_CLASS_ID          = -652012
      FRAME_-652012_CENTER            = -652013
      TKFRAME_-652012_RELATIVE        = 'MTM_SPACECRAFT'
      TKFRAME_-652012_SPEC            = 'ANGLES'
      TKFRAME_-652012_UNITS           = 'DEGREES'
      TKFRAME_-652012_AXES            = (    3,      2,      1   )
      TKFRAME_-652012_ANGLES          = (    0.0,    0.0,   90.0 )

      FRAME_MTM_SA-X                  = -652013
      FRAME_-652013_NAME              = 'MTM_SA-X'
      FRAME_-652013_CLASS             =  3
      FRAME_-652013_CLASS_ID          = -652013
      FRAME_-652013_CENTER            = -652013
      CK_-652013_SCLK                 = -121
      CK_-652013_SPK                  = -652

   \begintext


Solar Electrical Propulsion Frames
-----------------------------------------------------------------------------

   This section describes several frames for the Solar Electrical Propulsion
   System.

   The Solar Electrical Propulsion frame -- MTM_SEP -- is aimed to provide
   a mechanism to obtain the time intervals during which the Solar Electrical
   Propulsion (SEP) thrusters are activated. This frame is defined as follows:

      -  MTM_SEP is co-aligned with the S/C reference frame
         -- MTM_SPACECRAFT -- if the Thrusters are off.

      -  MTM_SEP +Z axis is anti-parallel to the +Z axis of the S/C reference
         frame -- MTM_SPACECRAFT -- if the Thrusters are on.


   Two examples of how to use the MTM_SEP frame are provided at the end of
   this file in the section ``Solar Electric Propulsion Event Code Example''

   In addition a reference frame is defined for each Solar Electrical
   Propulsion Thruster: MTM_SEPT-1, MTM_SEPT-2, MTM_SEPT-3. Each thruster
   is mounted individually on its own Thruster Pointing Mechanism (TPM), with
   four thrusters in total, each located at the corner of a square centred on
   the MTM_SPACECRAFT +Z axis.

   MTM_SEPT-1 is co-aligned with the MTM_SPACECRAFT reference frame whilst
   the others are rotated around the +Z axis as follows:

      SEPT-1 = 90  deg
      SEPT-3 = 180 deg
      SEPT-4 = 270 deg


   The following diagram illustrates the Solar Electrical Propulsion Frames:


   -Z S/C side view:
   -----------------
                                     ()
                                     ||
                                     -- -X Solar Array
                                     __
                                     ||
                                     ||
                                .    ||
                               / +Ys4 |    +Xs3
                              /    ^     ' ^.
                             /     |       |   ' .
                            /      |__   __|       '
                          +Xs4 <---x 4\ /3 x--> +Ys3
                          /  +Ysc  \__/ \__/        |
                          \    <-------x __         |
                           \       /2 \|/1 \        |
                           +Ys2 <---x_/|\_x---> +Xs1
                             \      |  |  |       .
                              \     |  v  |  .  '
                               +Xs2 v+Xsc v +Ys1
                                '  '  |
                                     ||                   +Zsc and +Zsi are
                                     ||                   into the page.
                                     ||
                                     --

                                     --
                                     ||
                                     () +X Solar Array


   These sets of keywords define Solar Electrical Propulsion frames:

   \begindata

      FRAME_MTM_SEP                   = -652020
      FRAME_-652020_NAME              = 'MTM_SEP'
      FRAME_-652020_CLASS             =  3
      FRAME_-652020_CLASS_ID          = -652020
      FRAME_-652020_CENTER            = -652020
      CK_-652020_SCLK                 = -121999
      CK_-652020_SPK                  = -652020

      FRAME_MTM_SEPT-1                = -652021
      FRAME_-652021_NAME              = 'MTM_SEPT-1'
      FRAME_-652021_CLASS             =  4
      FRAME_-652021_CLASS_ID          = -652021
      FRAME_-652021_CENTER            = -652
      TKFRAME_-652021_RELATIVE        = 'MTM_SPACECRAFT'
      TKFRAME_-652021_SPEC            = 'ANGLES'
      TKFRAME_-652021_UNITS           = 'DEGREES'
      TKFRAME_-652021_AXES            = (   3,      1,     2   )
      TKFRAME_-652021_ANGLES          = ( -90.0,    0.0,   0.0 )

      FRAME_MTM_SEPT-2                = -652022
      FRAME_-652022_NAME              = 'MTM_SEPT-2'
      FRAME_-652022_CLASS             =  4
      FRAME_-652022_CLASS_ID          = -652022
      FRAME_-652022_CENTER            = -652
      TKFRAME_-652022_RELATIVE        = 'MTM_SPACECRAFT'
      TKFRAME_-652022_SPEC            = 'ANGLES'
      TKFRAME_-652022_UNITS           = 'DEGREES'
      TKFRAME_-652022_AXES            = (   3,      1,     2   )
      TKFRAME_-652022_ANGLES          = (   0.0,    0.0,   0.0 )

      FRAME_MTM_SEPT-3                = -652023
      FRAME_-652023_NAME              = 'MTM_SEPT-3'
      FRAME_-652023_CLASS             =  4
      FRAME_-652023_CLASS_ID          = -652023
      FRAME_-652023_CENTER            = -652
      TKFRAME_-652023_RELATIVE        = 'MTM_SPACECRAFT'
      TKFRAME_-652023_SPEC            = 'ANGLES'
      TKFRAME_-652023_UNITS           = 'DEGREES'
      TKFRAME_-652023_AXES            = (   3,      1,     2   )
      TKFRAME_-652023_ANGLES          = ( 180.0,    0.0,   0.0 )

      FRAME_MTM_SEPT-4                = -652024
      FRAME_-652024_NAME              = 'MTM_SEPT-4'
      FRAME_-652024_CLASS             =  4
      FRAME_-652024_CLASS_ID          = -652024
      FRAME_-652024_CENTER            = -652
      TKFRAME_-652024_RELATIVE        = 'MTM_SPACECRAFT'
      TKFRAME_-652024_SPEC            = 'ANGLES'
      TKFRAME_-652024_UNITS           = 'DEGREES'
      TKFRAME_-652024_AXES            = (   3,      1,     2   )
      TKFRAME_-652024_ANGLES          = (  90.0,    0.0,   0.0 )

   \begintext


Miniaturised Micro-Cameras Frames
-----------------------------------------------------------------------------

   The MCAM frames -- MTM_MCAM1, MTM_MCAM2 and MTM_MCAM3 -- are defined as
   follows:

      -  +Z axis points along the MCAM boresight;

      -  +X axis is parallel to the mounting alignment of the MCAM in the MTM
         lower tanker floor;

      -  +Y axis completes the right handed frame;

      -  the origin of the frame is located at the camera focal point.


   The following diagram illustrates the MCAM imager boresights:

   -Y S/C side view:
   -----------------
                              /\/\/\/\/\/\
                            +Zmcam2 +Zmcam1
                             |   <.  ^   | -X Solar Array
                            ======='. \====
                                \\   '.\
                          .------\\--/ '\.
                          |       \\// xx|\
                          |        ()    | \
                          |              |  \
                          |--------------|   \
                          |              |   |
                          |              |x------------> +Zsc
                          |              ||  |
                          |--------------||  /
                          |              || /
                          |        ()    ||/                +Ysc is into
                          |       //\\  x||                  the page.
                          '------//--\\/-'v
                                //    /\  +Xsc
                            =========/======
                             |      V     |
                             |   +Zmcam3  | +X Solar Array
                              \/\/\/\/\/\/


   The MCAM orientation in the MTM S/C frame (MTM_SPACECRAFT) are defined in
   [7] as rotation matrices that are implemented hereafter. The MCAM rotation
   matrices have been corrected in [10] based on the images from Earth, Venus
   and Mercury fly-bys.

   \begindata

      FRAME_MTM_MCAM1                   = -652950
      FRAME_-652950_NAME                = 'MTM_MCAM1'
      FRAME_-652950_CLASS               =  4
      FRAME_-652950_CLASS_ID            = -652950
      FRAME_-652950_CENTER              = -652950
      TKFRAME_-652950_RELATIVE          = 'MTM_SPACECRAFT'
      TKFRAME_-652950_SPEC              = 'MATRIX'
      TKFRAME_-652950_MATRIX            = (
                                -0.11372575, -0.99350904,  0.00249610,
                                -0.16332419,  0.02117362,  0.98634522,
                                -0.97999575,  0.11176518, -0.16467204
                                          )

      FRAME_MTM_MCAM2                   = -652960
      FRAME_-652960_NAME                = 'MTM_MCAM2'
      FRAME_-652960_CLASS               =  4
      FRAME_-652960_CLASS_ID            = -652960
      FRAME_-652960_CENTER              = -652960
      TKFRAME_-652960_RELATIVE          = 'MTM_SPACECRAFT'
      TKFRAME_-652960_SPEC              = 'MATRIX'
      TKFRAME_-652960_MATRIX            = (
                                 0.40206989, -0.91558868,  0.006097533,
                                -0.68966452, -0.29846419,  0.659759030,
                                -0.60224800, -0.26947449, -0.751452490
                                          )

      FRAME_MTM_MCAM3                   = -652970
      FRAME_-652970_NAME                = 'MTM_MCAM3'
      FRAME_-652970_CLASS               =  4
      FRAME_-652970_CLASS_ID            = -652970
      FRAME_-652970_CENTER              = -652970
      TKFRAME_-652970_RELATIVE          = 'MTM_SPACECRAFT'
      TKFRAME_-652970_SPEC              = 'MATRIX'
      TKFRAME_-652970_MATRIX            = (
                                 0.69300337,  0.72093433, -0.00012424122,
                                 0.55198883, -0.53049241,  0.64333983,
                                 0.46373986, -0.44590525, -0.76558073
                                          )

   \begintext


BEPICOLOMBO MTM NAIF ID Codes to Name Mapping
-----------------------------------------------------------------------------

   This section contains name to NAIF ID mappings for the BepiColombo MTM
   mission. Once the contents of this file is loaded into the KERNEL POOL,
   these mappings become available within SPICE, making it possible to use
   names instead of ID code in the high level SPICE routine calls.

   Spacecraft:
   ----------------------------------------------------------------

      This table presents the BepiColombo Spacecraft and its main
      structures' names and

      ---------------------  -------  --------------------------
       Name                   ID       Synonyms
      ---------------------  -------  --------------------------
       MTM                      -652   BEPICOLOMBO MTM,
                                       MERCURY TRANSFER MODULE
       MTM_SPACECRAFT        -652000   MTM_SC

       MTM_SA+X_GIMBAL       -652010
       MTM_SA+X              -652011
       MTM_SA+X_P-1          -652111
       MTM_SA+X_P-2          -652112
       MTM_SA+X_P-3          -652113
       MTM_SA+X_P-4          -652114

       MTM_SA-X_GIMBAL       -652012
       MTM_SA-X              -652013
       MTM_SA-X_P-1          -652121
       MTM_SA-X_P-2          -652122
       MTM_SA-X_P-3          -652123
       MTM_SA-X_P-4          -652124


       MTM_SEP               -652020
       MTM_SEPT-1            -652021
       MTM_SEPT-2            -652022
       MTM_SEPT-3            -652023
       MTM_SEPT-4            -652024
      ---------------------  -------  --------------------------

      Notes:

         -- 'MTM', 'BEPICOLOMBO MTM' and 'MERCURY TRANSFER MODULE' are
            synonyms and all map to the BepiColombo MTM spacecraft ID (-652);

         -- 'MTM_SC' and 'MTM_SPACECRAFT' are synonyms and all map to the
            BepiColombo MTM S/C bus structure ID (-652000);

      \begindata

         NAIF_BODY_NAME += ( 'BEPICOLOMBO MTM'                 )
         NAIF_BODY_CODE += ( -652                              )

         NAIF_BODY_NAME += ( 'MERCURY TRANSFER MODULE'         )
         NAIF_BODY_CODE += ( -652                              )

         NAIF_BODY_NAME += ( 'MTM'                             )
         NAIF_BODY_CODE += ( -652                              )

         NAIF_BODY_NAME += ( 'MTM_SC'                          )
         NAIF_BODY_CODE += ( -652000                           )

         NAIF_BODY_NAME += ( 'MTM_SPACECRAFT'                  )
         NAIF_BODY_CODE += ( -652000                           )

         NAIF_BODY_NAME += ( 'MTM_SA+X_GIMBAL'                 )
         NAIF_BODY_CODE += ( -652010                           )

         NAIF_BODY_NAME += ( 'MTM_SA+X'                        )
         NAIF_BODY_CODE += ( -652011                           )

         NAIF_BODY_NAME += ( 'MTM_SA+X_P-1'                    )
         NAIF_BODY_CODE += ( -652111                           )

         NAIF_BODY_NAME += ( 'MTM_SA+X_P-2'                    )
         NAIF_BODY_CODE += ( -652112                           )

         NAIF_BODY_NAME += ( 'MTM_SA+X_P-3'                    )
         NAIF_BODY_CODE += ( -652113                           )

         NAIF_BODY_NAME += ( 'MTM_SA+X_P-4'                    )
         NAIF_BODY_CODE += ( -652114                           )

         NAIF_BODY_NAME += ( 'MTM_SA-X_GIMBAL'                 )
         NAIF_BODY_CODE += ( -652012                           )

         NAIF_BODY_NAME += ( 'MTM_SA-X'                        )
         NAIF_BODY_CODE += ( -652013                           )

         NAIF_BODY_NAME += ( 'MTM_SA-X_P-1'                    )
         NAIF_BODY_CODE += ( -652121                           )

         NAIF_BODY_NAME += ( 'MTM_SA-X_P-2'                    )
         NAIF_BODY_CODE += ( -652122                           )

         NAIF_BODY_NAME += ( 'MTM_SA-X_P-3'                    )
         NAIF_BODY_CODE += ( -652123                           )

         NAIF_BODY_NAME += ( 'MTM_SA-X_P-4'                    )
         NAIF_BODY_CODE += ( -652124                           )

         NAIF_BODY_NAME += ( 'MTM_SEP'                         )
         NAIF_BODY_CODE += ( -652020                           )

         NAIF_BODY_NAME += ( 'MTM_SEPT-1'                      )
         NAIF_BODY_CODE += ( -652021                           )

         NAIF_BODY_NAME += ( 'MTM_SEPT-2'                      )
         NAIF_BODY_CODE += ( -652022                           )

         NAIF_BODY_NAME += ( 'MTM_SEPT-3'                      )
         NAIF_BODY_CODE += ( -652023                           )

         NAIF_BODY_NAME += ( 'MTM_SEPT-4'                      )
         NAIF_BODY_CODE += ( -652024                           )

      \begintext

   MCAM:
   ----------------------------------------------------------------

      This table summarizes MCAMs IDs:

      -------------------------   --------
       Name                        ID
      -------------------------   --------
       MTM_MCAM                    -652900
       MTM_MCAM1                   -652950
       MTM_MCAM1_APERTURE          -652951
       MTM_MCAM2                   -652960
       MTM_MCAM2_APERTURE          -652961
       MTM_MCAM3                   -652970
       MTM_MCAM3_APERTURE          -652971
      -------------------------   --------

   Name-ID Mapping keywords:

      \begindata

         NAIF_BODY_NAME   += ( 'MTM_MCAM'                  )
         NAIF_BODY_CODE   += ( -652900                     )

         NAIF_BODY_NAME   += ( 'MTM_MCAM1'                 )
         NAIF_BODY_CODE   += ( -652950                     )

         NAIF_BODY_NAME   += ( 'MTM_MCAM1_APERTURE'        )
         NAIF_BODY_CODE   += ( -652951                     )

         NAIF_BODY_NAME   += ( 'MTM_MCAM2'                 )
         NAIF_BODY_CODE   += ( -652960                     )

         NAIF_BODY_NAME   += ( 'MTM_MCAM2_APERTURE'        )
         NAIF_BODY_CODE   += ( -652961                     )

         NAIF_BODY_NAME   += ( 'MTM_MCAM3'                 )
         NAIF_BODY_CODE   += ( -652970                     )

         NAIF_BODY_NAME   += ( 'MTM_MCAM3_APERTURE'        )
         NAIF_BODY_CODE   += ( -652971                     )

      \begintext


Solar Electric Propulsion Event Code Example
---------------------------------------------------------------------------

   This section contains a WebGeocalc usage guideline and an example code in
   Python illustrating how to use the MTM Solar Electric Propulsion frame
   MTM_SEP to compute the time windows when the Solar Electric Propulsion
   is activated (propulsion arc), this allows the user to compute other
   quantities during these events.


WebGeocalc example
~~~~~~~~~~~~~~~~~~

   Access either the ESA SPICE Service or the NAIF WebGeocalc (WGC) instance:

      http://spice.esac.esa.int/webgeocalc
      https://wgc.jpl.nasa.gov:8443/webgeocalc/

   Choose the ``Angular Separation Finder'' from the Geometric Event Finder
   Calculations. Alternatively you can directly access the calculation:

      http://spice.esac.esa.int/webgeocalc/#AngularSeparationFinder
      https://wgc.jpl.nasa.gov:8443/webgeocalc/#AngularSeparationFinder

   In kernel select the appropriate BepiColombo meta-kernel (note that the
   operational and/or archived kernels will be available depending on the
   WGC instance used).

   and select the appropriate BepiColombo meta-kernel.
   Using WebGeocalc the following input values need to be provided to the
   Calculation type ``Angular Separation Event Finder'':

       Input            |   Value
      -------------------------------------------
      Target 1          |  MTM_SEP
      Target 1 shape    |  Point
      Target 2          |  MPO_SPACECRAFT
      Target 2 shape    |  Point
      Observer          |  MTM_SPACECRAFT
      Light propagation |  No correction
      Time system       |  Preferred by the user
      Time format       |  Preferred by the user
      Time range        |  Preferred by the user
      Step              |  1 hours (recommended)
      Event condition   |  is greater than 1


   These inputs will result into Result Windows that can then be saved as a
   Saved Value which can be used as input for a Time range for any other
   calculation.

   Please note that you can also use the WGC API, available for the
   following WGC instances:

      http://spice.esac.esa.int/webgeocalc
      https://wgc2.jpl.nasa.gov:8443/webgeocalc/

   More details on how to use the API are provided in the following link:

      http://spice.esac.esa.int/webgeocalc/documents/api-info.html


Python example
~~~~~~~~~~~~~~

   What follows is an example of a Python script to compute the SEP intervals
   for the time interval 2018-11-19 - 2019-05-01:

   import spiceypy
   import spiceypy.utils.support_types as stypes

   #
   # We load the appropriate meta-kernel
   #
   spiceypy.furnsh('BEPICOLOMBO/kernels/mk/bc_ops_local.tm')

   #
   # Initialize the "confinement" window with the interval
   # over which we'll conduct the search.
   #
   interval = [spiceypy.utc2et('2018-11-19T00:00:00'),
               spiceypy.utc2et('2019-05-01T00:00:00')]

   #
   # We define the parameters for the "confinement" window
   #
   MAXIVL = 10000
   MAXWIN = 2 * MAXIVL
   TDBFMT = 'YYYY MON DD HR:MN:SC.### (TDB) ::TDB'

   cnfine = stypes.SPICEDOUBLE_CELL(2)
   spiceypy.wninsd(interval[0], interval[1], cnfine)

   #
   # In the call below, the maximum number of window
   # intervals gfsep can store internally is set to MAXIVL.
   # We set the cell size to MAXWIN to achieve this.
   #
   riswin = stypes.SPICEDOUBLE_CELL(MAXWIN)


   #
   #   We will use the Geometry Function GFSEP to compute time intervals when
   #   the angular separation between the position vectors of two target
   #   bodies relative to an observer satisfies a numerical relationship.
   #
   #   Variable  I/O  Description
   #   --------  ---  --------------------------------------------------
   #   SPICE_GF_CNVTOL
   #              P   Convergence tolerance.
   #   targ1      I   Name of first body
   #   shape1     I   Name of shape model describing the first body
   #   frame1     I   The body-fixed reference frame of the first body
   #   targ2      I   Name of second body
   #   shape2     I   Name of the shape model describing the second body
   #   frame2     I   The body-fixed reference frame of the second body
   #   abcorr     I   Aberration correction flag
   #   obsrvr     I   Name of the observing body
   #   relate     I   Operator that either looks for an extreme value
   #                  (max, min, local, absolute) or compares the
   #                  angular separation value and refval
   #   refval     I   Reference value
   #   adjust     I   Absolute extremum adjustment value
   #   step       I   Step size in seconds for finding angular separation
   #                  events
   #   nintvls    I   Workspace window interval count
   #   cnfine    I-O  SPICE window to which the search is restricted
   #   result     O   SPICE window containing results
   targ1 = 'MTM_SEP'
   shape1 = 'POINT'
   frame1 = 'MTM_SEP'
   targ2 = 'MPO_SPACECRAFT'
   shape2 = 'POINT'
   frame2 = 'MPO_SPACECRAFT'
   abcorr = 'NONE'
   obsrvr = 'MTM_SPACECRAFT'
   relate = '>'
   refval = 1
   step = 60 * 60
   nintvls = 1000
   adjust = 0.0

   spiceypy.gfsep(targ1, shape1, frame1, targ2, shape2, frame2, abcorr, obsrvr,
                  relate, refval, adjust, step, nintvls, cnfine, riswin)

   #
   # The function wncard returns the number of intervals
   # in a SPICE window.
   #
   winsiz = spiceypy.wncard(riswin)

   dist_list = []

   x, y, z = [], [], []

   if winsiz == 0:
       print('No events were found.')
   else:

       for i in range(winsiz):
           #
           # Fetch the start and stop times of the ith interval from the
           # search result window riswin.
           #
           sep_time = spiceypy.wnfetd(riswin, i)

           #
           # Generate a Time Window with the rise and set times
           #
           utc_start = spiceypy.et2utc(sep_time[0], 'ISOC', 3)
           utc_finish = spiceypy.et2utc(sep_time[1], 'ISOC', 3)

           #
           # We print the resulting intervals
           #
           print(f'SEP interval {i} from {utc_start} to {utc_finish}')


   The result of the script using the meta-kernel available on July 14, 2020
   is as follows:

      SEP interval 0 from 2018-11-19T11:41:30.000 to 2018-11-19T16:43:10.000
      SEP interval 1 from 2018-11-20T11:37:56.000 to 2018-11-20T16:39:36.000
      SEP interval 2 from 2018-11-21T11:34:24.000 to 2018-11-21T16:36:04.000
      SEP interval 3 from 2018-11-29T11:07:12.000 to 2018-11-29T19:09:30.000
      SEP interval 4 from 2018-11-30T11:03:58.000 to 2018-11-30T19:04:41.000
      SEP interval 5 from 2018-12-01T11:00:44.000 to 2018-12-01T19:04:53.000
      SEP interval 6 from 2018-12-02T10:57:33.000 to 2018-12-02T19:02:39.000
      SEP interval 7 from 2018-12-07T10:42:03.000 to 2018-12-07T18:52:14.000
      SEP interval 8 from 2018-12-17T12:41:09.000 to 2018-12-27T04:04:58.000
      SEP interval 9 from 2018-12-27T18:27:39.000 to 2019-01-03T03:39:13.000
      SEP interval 10 from 2019-01-03T18:15:40.000 to 2019-01-10T03:18:52.000
      SEP interval 11 from 2019-01-10T19:12:47.000 to 2019-01-17T17:26:00.000
      SEP interval 12 from 2019-01-18T09:20:54.000 to 2019-01-24T02:43:47.000
      SEP interval 13 from 2019-01-24T18:50:56.000 to 2019-01-31T02:33:22.000
      SEP interval 14 from 2019-01-31T18:38:16.000 to 2019-02-07T02:27:47.000
      SEP interval 15 from 2019-02-07T18:22:23.000 to 2019-02-14T02:22:50.000
      SEP interval 16 from 2019-02-28T23:32:35.000 to 2019-03-05T21:54:26.000


End of FK file.


