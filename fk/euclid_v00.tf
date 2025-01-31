KPL/FK

Euclid Spacecraft Frames Kernel
=============================================================================

   This kernel contains NAIF ID/name mapping for the Euclid S/C.


Version and Date
-----------------------------------------------------------------------------

   Version 0.0 -- July 7, 2023 -- Alfredo Escalante Lopez, ESAC/ESA

      Preliminary Version. Only basic ID and frame definitions.


References
-----------------------------------------------------------------------------

   1.   ``Frames Required Reading''

   2.   ``Kernel Pool Required Reading''

   3.   ``C-Kernel Required Reading''


Contact Information
-----------------------------------------------------------------------------

   If you have any questions regarding this file contact the ESA SPICE
   Service at ESAC:

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


Euclid Mission NAIF ID Codes
-----------------------------------------------------------------------------

   The following names and NAIF ID codes are assigned to the Euclid
   spacecraft, its structures and science instruments (the keywords
   implementing these definitions are located in the section "Euclid
   Mission NAIF ID Codes -- Definition Section" at the end of this file):

      Euclid Spacecraft and Spacecraft Structures names/IDs:

            EUCLID                        -680


Euclid NAIF ID Codes to Name Mapping
------------------------------------------------------------------------------

   This section contains name to NAIF ID mappings for the EUCLID
   mission. Once the contents of this file is loaded into the KERNEL POOL,
   these mappings become available within SPICE, making it possible to use
   names instead of ID code in the high level SPICE routine calls.

  Spacecraft:
  ----------------------------------------------------------------

      This table presents the EUCLID Spacecraft and its main
      structures' names.

      ---------------------  -------  --------------------------
       Name                   ID       Synonyms
      ---------------------  -------  --------------------------
       EUCLID                -680
      ---------------------  -------  --------------------------



     \begindata

        NAIF_BODY_NAME += ( 'EUCLID'                          )
        NAIF_BODY_CODE += ( -680                              )

     \begintext

  Spacecraft frames:
  ------------------
  EUCLID_SPACECRAFT            J2000          CK       -680000

   \begindata

      FRAME_EUCLID_SPACECRAFT            = -680000
      FRAME_-680000_NAME               = 'EUCLID_SPACECRAFT'
      FRAME_-680000_CLASS              =  3
      FRAME_-680000_CLASS_ID           = -680000
      FRAME_-680000_CENTER             = -680
      CK_-680000_SCLK                  = -680
      CK_-680000_SPK                   = -680

      NAIF_BODY_NAME += ( 'EUCLID_SPACECRAFT'               )
      NAIF_BODY_CODE += ( -680000                           )

   \begintext


End of FK file.