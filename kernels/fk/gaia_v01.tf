KPL/FK

Gaia Spacecraft Frames Kernel
=============================================================================

   This frame kernel contains complete set of frame definitions for
   Gaia including definitions for the Gaia fixed and Gaia science
   instrument frames. This kernel also contains NAIF ID/name mapping for the
   Gaia science instruments and s/c structures (see the last section of
   the file).


Version and Date
-----------------------------------------------------------------------------

   Version 0.1 -- May 9, 2023 -- Ricardo Valles Blanco, ESAC/ESA

      Corrected typos and updated contact information.

   Version 0.0 -- October 23, 2019 -- Marc Costa Sitja, ESAC/ESA

      Preliminary Version. Only basic ID and frame definitions.


References
-----------------------------------------------------------------------------

   1.   ``Frames Required Reading''

   2.   ``Kernel Pool Required Reading''

   3.   ``C-Kernel Required Reading''


Contact Information
-----------------------------------------------------------------------------

   If you have any questions regarding this file contact the
   ESA SPICE Service (ESS) at ESAC:

           Alfredo Escalante Lopez
           (+34) 91-8131-429
           spice@sciops.esa.int


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


Gaia Mission NAIF ID Codes
-----------------------------------------------------------------------------

   The following names and NAIF ID codes are assigned to the Gaia
   spacecraft, its structures and science instruments (the keywords
   implementing these definitions are located in the section "Gaia
   Mission NAIF ID Codes -- Definition Section" at the end of this file):

      Gaia Spacecraft and Spacecraft Structures names/IDs:

            GAIA                        -123

            GAIA_SPACECRAFT             -123000  (synonym: GAIA_SC)


Gaia Mission Frames
-----------------------------------------------------------------------------

   The following Gaia frames are defined in this kernel file:

           Name                  Relative to               Type       NAIF ID
      ======================  ========================  ==========   =========

    Spacecraft frames:
    ------------------
      GAIA_SPACECRAFT            J2000                      CK       -123000


   SPICE 'Built-in' PCK frames in use by Gaia (3):
   ------------------------------------------------------
      IAU_EARTH                  J2000                     PCK       built-in

      (3) Data for these frames is loaded using either the PCK file
          "pckVVVVV.tpc" (VVVVV is the version number)


Gaia Frames Hierarchy
-----------------------------------------------------------------------------

  The diagram below shows the Gaia spacecraft and its structures frame
  hierarchy (not including science instrument frames.)

                                 "J2000" INERTIAL
           +------------------------------------+
           |                            |
           |<-pck                       |
           |                            |
           V                            |
      "EARTH_FIXED"                     |
      -------------                     |
                                        |
                                        |<-ck
                                        |
                                        V
                                 "GAIA_SPACECRAFT"
                                 -----------------
                                        .
                                        .
                                        .
                                        .
                                        V
                   Individual instrument frame trees are provided
                     in the corresponding sections of this file


Gaia Spacecraft and Spacecraft Structures Frames
========================================================================

   This section of the file contains the definitions of the spacecraft
   and spacecraft structures frames.


Gaia Spacecraft Frame
--------------------------------------

   The Gaia spacecraft frame is defined as follows:

      -  +Z axis is along the nominal boresight direction of the science
         deck;

      -  +X axis is along the nominal boresight direction of the HGA;

      -  +Y axis completes the right-hand frame;

      -  the origin of this frame is the launch vehicle interface point.


   Since the orientation of the GAIA_SPACECRAFT frame is computed
   on-board, sent down in telemetry, and stored in the s/c CK files, it
   is defined as a CK-based frame.

   \begindata

      FRAME_GAIA_SPACECRAFT            = -123000
      FRAME_-123000_NAME               = 'GAIA_SPACECRAFT'
      FRAME_-123000_CLASS              =  3
      FRAME_-123000_CLASS_ID           = -123000
      FRAME_-123000_CENTER             = -123
      CK_-123000_SCLK                  = -123
      CK_-123000_SPK                   = -123

   \begintext


Gaia NAIF ID Codes to Name Mapping
------------------------------------------------------------------------------

   This section contains name to NAIF ID mappings for the Gaia
   mission. Once the contents of this file is loaded into the KERNEL POOL,
   these mappings become available within SPICE, making it possible to use
   names instead of ID code in the high level SPICE routine calls.

  Spacecraft:
  ----------------------------------------------------------------

      This table presents the Gaia Spacecraft and its main
      structures' names.

      ---------------------  -------  --------------------------
       Name                   ID       Synonyms
      ---------------------  -------  --------------------------
       GAIA                  -123
       GAIA_SPACECRAFT       -123000   GAIA_SC
      ---------------------  -------  --------------------------

      Notes:

         -- 'GAIA_SC' and 'GAIA_SPACECRAFT' are synonyms and all map
            to the Gaia S/C bus structure ID (-123000);

     \begindata

        NAIF_BODY_NAME += ( 'GAIA'                            )
        NAIF_BODY_CODE += ( -123                              )

        NAIF_BODY_NAME += ( 'GAIA_SC'                         )
        NAIF_BODY_CODE += ( -123000                           )

        NAIF_BODY_NAME += ( 'GAIA_SPACECRAFT'                 )
        NAIF_BODY_CODE += ( -123000                           )

     \begintext


End of FK file.