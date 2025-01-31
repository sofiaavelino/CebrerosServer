KPL/FK

JUpiter ICy moons Explorer (JUICE) Frames Kernel
==============================================================================

   This frame kernel contains complete set of frame definitions for the
   Jupiter Icy Moons Explorer (JUICE) spacecraft, its structures and science
   instruments. This frame kernel also contains name - to - NAIF ID mappings
   for JUICE science instruments and s/c structures (see the last section of
   the file.)


Version and Date
-----------------------------------------------------------------------------

   Version 3.9 -- January 26, 2024 -- Alfredo Escalante Lopez, ESAC/ESA

      Updated description IDs for PEP_JOEE sensors.

   Version 3.8 -- December 20, 2023 -- Alfredo Escalante Lopez, ESAC/ESA

      Updated JUICE_RADEM IDs and descriptions for ops frames.

   Version 3.7 -- December 4, 2023 -- Ricardo Valles Blanco, ESAC/ESA
                                      Rafael Andres Blasco, ESAC/ESA
                                      Alfredo Escalante Lopez, ESAC/ESA

      Improved MGA diagrams. Corrected JUICE_JMAG_MAGSCA_PLAN and
      JUICE_JMAG_MAGSCA_MEAS frame centers.

      Added JUICE_RIME+X and JUICE_RIME-X reference frames.

      Updated Euler angles for JUICE_RPWI_SCM_U and JUICE_RPWI_SCM_W
      based on [30].

      Corrected reference frames centers for PEP frames.

   Version 3.6 -- September 6, 2023 -- Marc Costa Sitja, ESAC/ESA
                                       Alfredo Escalante Lopez, ESAC/ESA

      Updated definition of JUICE_JMAG_MAGSCA reference frame and added
      JUICE_JMAG_MAGSCA_SCI, JUICE_JMAG_MAGOBS_SCI, and JUICE_JMAG_MAGIBS_SCI
      reference frames.

      Updated alignment of JUICE_GALA_BASE and JUICE_SPACECRAFT_NADIR
      reference frames from last alignment report before launch [27].

      Renamed JUICE_RPWI_RWI_EX, JUICE_RPWI_RWI_EY, JUICE_RPWI_RWI_EZ to
      JUICE_RPWI_RWI_U, JUICE_RPWI_RWI_V, JUICE_RPWI_RWI_W respectively.

      Renamed JUICE_RPWI_SCM_EX, JUICE_RPWI_SCM_EY, JUICE_RPWI_SCM_EZ to
      JUICE_RPWI_SCM_U, JUICE_RPWI_SCM_V, JUICE_RPWI_SCM_W respectively.

   Version 3.5 -- May 31, 2023 -- Alfredo Escalante Lopez, ESAC/ESA

      Updated rotation angles for JUICE_JMC-1 frame corrected from
      CAD model and first JMC images.

      Added comments on Langmuir Probes and RWI dipoles deployment dates.

      Added spacecraft charging model reference frame and body/ID association
      JUICE_SPACECRAFT_CHARGING.

   Version 3.4 -- May 5, 2023 -- Alfredo Escalante Lopez, ESAC/ESA

      Added JUICE_SWI_SCANNER_PLAN, JUICE_SWI_SCANNER_MEAS,
      JUICE_MAJIS_SCAN_PLAN, JUICE_MAJIS_SCAN_MEAS and defined
      JUICE_SWI_SCANNER and JUICE_MAJIS_SCAN as switch frames.

      Added JUICE_RPWI_LPBx_PLAN, JUICE_RPWI_LPBx_MEAS and defined
      JUICE_RPWI_LPBx as switch frames.

   Version 3.3 -- May 4, 2023 -- Alfredo Escalante Lopez, ESAC/ESA

      Added JUICE_MAG_BOOM_PLAN, JUICE_MAG_BOOM_MEAS, JUICE_JMAG_MAGSCA_PLAN,
      JUICE_JMAG_MAGSCA_MEAS and defined JUICE_MAG_BOOM and JUICE_JMAG_MAGSCA
      as switch frames.

   Version 3.2 -- February 22, 2023 -- Marc Costa Sitja, ESAC/ESA
                                       Luca Penasa, INAF
                                       Ricardo Valles Blanco, ESAC/ESA

      Added Nadir direction definition from [26] through the
      JUICE_SPACECRAFT_NADIR reference frame.

      Added JANUS filters body names and IDs.

      Corrected several formatting issues.

   Version 3.1 -- December 13, 2022 -- Alfredo Escalante Lopez, ESAC/ESA

      Implemented instrument misalignment measured after mechanical tests.

   Version 3.0 -- December 3, 2022 -- Alfredo Escalante Lopez, ESAC/ESA
                                      Marc Costa Sitja, ESAC/ESA

      Added definitions for JUICE_RPWI_RWI and JUICE_RPWI_SCM dipoles frames.

      Merged JUICE_UVS_AP and JUICE_UVS_HP into JUICE_UVS_AP_HP,
      and removed NARROW and WIDE bodies. Updated UVS diagram.

   Version 2.9 -- November 7, 2022 --  Ricardo Valles Blanco, ESAC/ESA
                                       Alfredo Escalante Lopez, ESAC/ESA
                                       Marc Costa Sitja, ESAC/ESA

      Corrected JUICE_JMC-2 fixed frame rotation.

      Added body name/ID for JUICE_RPWI_RWI and JUICE_RPWI_SCM dipoles tips.
      Fixed typos for RPWI Langmuir Probes.

   Version 2.8 -- October 20, 2022 --  Marc Costa Sitja, ESAC/ESA
                                       Patrick Brown, IMPERIAL/RPWI
                                       Ricardo Valles Blanco, ESAC/ESA
                                       Alfredo Escalante Lopez, ESAC/ESA

      This version requires SPICE Toolkit version N0067 due to several
      Switch frame implementations.

      Fixed typo in JUICE_MAG_BOOM definition and diagram. Updated JMAG
      reference and JUICE_JMAG_MAGOBS and JUICE_JMAG_MAGIBS frames
      accordingly.

      Updated JUICE_RPWI_SCM and JUICE_RPWI_RWI reference frames.

      Decoupled JUICE_JACS from JMAG and frames definitions.

      Updated GALA reference frames and IDs in accordance to IK updates.

      Added JUICE_MAJIS_RAD frame and body name/ID.

      Added JACS-X and JACS-Y reference frames and corners bodies name/ID.

      Corrected Langmuir probes booms reference frames orientation.

      Removed unused NAIF body/ID associations.

      Implemented switch frame type for JUICE_SPACECRAFT reference frame,
      defined JUICE_SPACECRAFT_MEAS and updated JUICE_SPACECRAFT_PLAN.
      Implemented switch frame type for JUICE_SA+Y, JUICE_SA-Y, JUICE_MGA_AZ,
      and JUICE_MGA_EL reference frames. Defined corresponding _MEAS and _PLAN
      frames.

   Version 2.7 -- July 20, 2022 --  Marc Costa Sitja, ESAC/ESA

      Fixed typo in JUICE_RPWI_RWI definitions.

      Updated JUICE_MAG_BOOM and all JMAG reference frames definitions
      (from [24]).

      Removed Natural Bodies and Models ID definitions -- which
      are now included in the JUICE Science FK.

   Version 2.6 -- February 14, 2022 --  Alfredo Escalante Lopez, ESAC/ESA

      Added NAIF body/ID association for MGA X and Ka bands phase center.

   Version 2.5 -- December 21, 2021 --  Ricardo Valles Blanco, ESAC/ESA
                                        Alfredo Escalante Lopez, ESAC/ESA

      Added JUICE_SPACECRAFT_PLAN reference frame and updated contact
      information.

      Added JUICE_JUP_HALO_RING, JUICE_JUP_MAIN_RING, JUICE_JUP_AMALTHEA_RING
      and JUICE_JUP_THEBE_RING body/ID associations.

   Version 2.4 -- October 7, 2021 -- Alfredo Escalante Lopez, ESAC/ESA
                                     Ricardo Valles Blanco, ESAC/ESA

      Added JUICE_EUROPA_PLASMA_TORUS body/ID association.

      Corrected typos in descriptions and updated contact information.
      Applied misalignments for MGA frames from JUI-ADST-SYS-RP-000591_01 [21]
      and ``Schulte vector.xls'' [22].

   Version 2.3 -- June 1, 2021 -- Alfredo Escalante Lopez, ESAC/ESA

      Added NAIF ID/body association for HGA bands X and Ka.

   Version 2.2 -- April 8, 2021 -- Alfredo Escalante Lopez, ESAC/ESA

      Corrected JMC reference frame orientation.

   Version 2.1 -- Jan 4, 2021 -- Alfredo Escalante Lopez, ESAC/ESA
                                 Elias Roussos, MPS

      Corrected PEP JNA frame orientation.

      Corrected PEP JoEE frame orientation and introduce misalignment.

      Corrected PEP JENI frame orientation.

   Version 2.0 -- May 11, 2020 -- Alfredo Escalante Lopez, ESAC/ESA

      Define all sensors as ephemeris objects. Frames centers have been
      changed to the corresponding instrument ephemeris object.

   Version 1.9 -- March 3, 2020 -- Marc Costa Sitja, ESAC/ESA

      Updated PEP-NIM NEUION sector names.

   Version 1.8 -- November 13, 2019 -- Marc Costa Sitja, ESAC/ESA

      Added auxiliary FOV name and ID for SWI.

   Version 1.7 -- October 29, 2019 -- Marc Costa Sitja, ESAC/ESA
                                     Vincent Hue, UVS/SRI

      Updated centres of the MAG Boom, Solar Array and s/c frames in order
      to be able to use the JUICE SC SA DSK.
      Updated PEP NIM reference frames for PEP NIM FoV obstruction study.
      Corrected typo in the UVS reference frames diagram.
      Updated Solar Array Zero frames definition.

   Version 1.6 -- October 16, 2018 -- Marc Costa Sitja, ESAC/ESA

      Added JUICE_IO_PLASMA_TORUS ID. Modified center of JUICE_SPACECRAFT
      in order to be able to use the JUICE SC BUS DSK.

   Version 1.5 -- October 10, 2018 -- Marc Costa Sitja, ESAC/ESA

      Corrected JUICE_MGA frame and IDs.

   Version 1.4 -- November 6, 2017 -- Marc Costa Sitja, ESAC/ESA

      Updated PEP NIM IDs.

   Version 1.3 -- October 23, 2017 -- Marc Costa Sitja, ESAC/ESA

      Added PEP JEI references.

   Version 1.2 -- February 13, 2017 -- Marc Costa Sitja, ESAC/ESA

      Added diagram for the PEP Nadir Unit frames definition.
      Added PEP NIM Thermal and Neutral/ion references, corrected PEP JNA
      reference frame. Added JUICE_<CENTRALBODY>_RAM frames references.

      The full list of PEP IDs is now included in the PEP IK (from version
      05) and only a reference is provided in this FK. This has been done
      in order to avoid overloading of this FK.

   Version 1.1 -- November 30, 2016 -- Marc Costa Sitja, ESAC/ESA

      Corrected SWI frame definitions and added Channel 1 and Channel 2
      definitions.

      Added references [14], [15], [16], [17] and [18].

   Version 1.0 -- November 3, 2016 -- Marc Costa Sitja, ESAC/ESA

      Updated JUICE PEP frames and NAIF IDs and JUICE SWI sensor field-
      of-view definitions. Added Star Trackers, Monitoring Cameras,
      NavCams and Medium and Low Gain Antenna frames and corresponding
      NAIF IDs. Corrected minor typos and text layout.
      Updated JUICE_SA+Y_ZERO and JUICE_SA-Y_ZERO definitions.

      Added references [14], [15], [16], [17] and [18].

   Version 0.9 -- August 15, 2016 -- Marc Costa Sitja, ESAC/ESA
                                     Jorge Diaz del Rio, ODC Space

      Updated JUICE Mission frames with frames from juice_sci_v05.tf
      frames kernel.

      Added JUICE_SA+Y and JUICE_SA-Y name/ID mappings.

      Minor edits to comments and frame descriptions to correct typos
      and missing information.

   Version 0.8 -- July 19, 2016 -- Marc Costa Sitja, ESAC/ESA

      Updated JUICE Mission frames with frames from juice_sci_v03.tf
      frames kernel and missing instrument frames.

      Corrected deployment angle of the MAG Boom in stowed configuration
      Angle of +Zmagb w.r.t +Xsc changed from 45 to 51 degrees as
      indicated by Ignacio Torralba (ESTEC/ESA).

      Added JUICE_RIME_BASE instrument ID and updated the JUICE_RIME
      instrument ID.

      Corrected typo in RPWI Frame Tree and in MAJIS frame definition.

   Version 0.7 -- June 22, 2016 -- Marc Costa Sitja, ESAC/ESA

      Corrected definition of JUICE_PEP_* frames.

   Version 0.6 -- June 10, 2016 -- Jorge Diaz del Rio, ODC Space

      Corrected definition of JUICE_RIME_BASE frame. Corrected comments on
      the JUICE spacecraft NAME/ID mapping section.

   Version 0.5 -- June 04, 2016 -- Marc Costa Sitja, ESAC/ESA

      Updated all NAIF ID codes from -907* to -28* since the JUICE
      spacecraft NAIF ID has been updated from -907 to -28.

   Version 0.4 -- May 11, 2016 -- Jorge Diaz del Rio, ODC Space

      Corrected Name/ID code mappings for J-MAG. Updated MAG_BOOM-H and
      MAG_BOOM frame descriptions. Corrected typos in text. Corrected
      JUICE_HGA frame definition. Added JUICE_IO_NPO to the list of frames.
      Added J-MAG sensor's frames diagram.

   Version 0.3 -- April 25, 2016 -- Jorge Diaz del Rio, ODC Space

      Preliminary Version. Updated to include frames for RIME, J-MAG, PEP
      and RPWI.

   Version 0.2 -- March 06, 2016 -- Jorge Diaz del Rio, ODC Space

      Preliminary Version. Updated to include frames for GALA, JANUS, MAJIS
      SWI and UVS.

   Version 0.1 -- January 19, 2016 --  Marc Costa Sitja, ESAC/ESA

      Preliminary Version. Updated to use Cosmographia based on initial
      release for SOLab.

   Version 0.0 -- November 23, 2015 -- Jorge Diaz del Rio, ODC Space

      Initial Release: very preliminary draft for its use in WGC.

   Version 0.0-draft -- March 15, 2012 -- Marc Costa Sitja, ESAC/ESA

      Draft release for use in SOLab.


References
-----------------------------------------------------------------------------

    1. ``Frames Required Reading'', NAIF

    2. ``Kernel Pool Required Reading'', NAIF

    3. ``C-Kernel Required Reading'', NAIF

    4. ``JUICE - Jupiter Icy Moons Explorer. Experiment Interface Document
       part A,'' JUI-EST-SYS-EID-001, Issue 2.5, 18/06/2015

    5. ``JUICE - Jupiter Icy Moons Explorer. Exploring the emergence of
       habitable worlds around gas giants. Definition Study report,''
       ESA/SRE(2014)1, September 2014 (JUICE Red book v1.0)

    6. ``JUICE - JUpiter Icy Moons Explorer SWI - Submillimetre Wave
       Instrument. Experiment Interface Document EID-B,'' JUI-MPS-SWI-EID-001
       Issue 4.3, 17 July 2015

    7. ``JUICE - JUpiter Icy Moons Explorer MAJIS - Moons And Jupiter Imaging
       Spectrometer Experiment Interface Document - Part B,''
       JUI-IAS-MAJ-EID-001 Issue 1.2, 30 January 2014

    8. ``JANUS - Camera for the ESA JUICE mission Experiment Interface
       Document - Part B,'' JUI-JAC-JAN-EID-B-001, Issue 0.7, 10 November
       2015

    9. ``Radar for Icy Moon Exploration (RIME) - Experiment Interface Document
         Part B,'' JUI-UTR-RIM-EID-001, Issue 5.2, 1 December 2014

   10. ``JUICE - JUpiter ICy moons Explorer J-MAG (Magnetometer) Experiment
       Interface Document - Part B,'' JUICE-ICL-MAG-EID-B, Issue 2.4, 7
       February 2016

   11. ``JUICE - JUpiter Icy Moons Explorer RPWI (Radio & Plasma Waves
       Investigation) Experiment Interface Document - Part B,''
       JUICE-IRF-RPWI-EID-003, Issue 2.1, 16 June 2013

   12. ``JUICE - JUpiter Icy Moons Explorer PEP (Particle Environment Package)
       Experiment Interface Document - Part B,'' JUI-UBE-PEP-EID-001,
       Issue 2.1, 3 May 2013

   13. JUICE Spacecraft Structures SPK and comments, latest version.

   14. ``AOCS Analyses Report'', JUI-ADST-SYS-RP-000130, Issue 1,
       Airbus Defense and Space, 4 December 2015

   15. ``JUICE Spacecraft Design Report'', JUI-ADST-SYS-DD-000122, Issue 1,
       Airbus Defense and Space, 4 December 2015

   16. ``JUICE - JUpiter Icy Moons Explorer PEP (Particle Environment Package)
       Experiment Interface Document - Part B,'' JUI-UBE-PEP-EID-001,
       Issue 4.3, 29 April 2016

   17. ``PEP sensor fields of view obstructions by s/c elements'',
       JUI-ADST-SYS-TN-000159, Issue 1, Airbus Defence and Space SAS,
       27 May 2016

   18. ``JUICE Medium Gain Antenna Main Assembly'', JUI-SEN-MGA-OF-0002,
       Revision 1, SENER, 25 January 2016

   19. ``PEP Sensors Field of View'', JUI-IRF-PEP-DD-0XX, Issue 0, Revision 2,
       Gabriella Stenberg Wieser, 8th February 2017.

   20. ``JUICE Alignment Measurement Overview'', JUl-ADSF-SYS-PR000567, Issue 1,
       Revision 1, Airbus Defense and Space, 7th May 2021.

   21. ``JUICE Spacecraft Alignment Budget Report'', JUI-ADST-SYS-RP-000591,
       Issue 1, Revision 1, Airbus Defense and Space, 7th July 2021.

   22. ``Schulte vector.xls'' from Dr. Nicolas Altobelli email with subject
       'DCCM: JUI-ADST-SYS-RP-000591 -JUICE Spacecraft Alignment Budget Report'
       27th August 2021.

   23. ``Qualification of the RADEM instrument for the ESA JUICE mission'',
       P. Socha, 2021. doi.org/10.3929/ethz-b-000489155.

   24. ``JMAG Boom Mechanical Interface Drawing,'' JUI-SEN-JMAG-ICD-1001,
       Issue 8, 3 March 2020.

   25. ``LP-PWI Mechanical Interface Control Document,''
       JUI-RPWI-AST-LPPWI-ICD-014, Issue 3.3, 2 July 2021.

   26. ``JUICE Spacecraft Alignment Budget Report'', JUI-ADST-SYS-RP-000591,
       Issue 4, Revision 1, Airbus Defense and Space, 18th November 2022.

   27. ``JUICE Spacecraft Alignment Budget Report'', JUI-ADST-SYS-RP-000591,
       Issue 5, Revision 1, Airbus Defense and Space, 1st June 2023.

   28. ``J-MAG MAGNETOMETER INSTRUMENT - INSTRUMENT USER MANUAL (SE-26)'',
       JUI-ICL-MAG-UM, R. Baughen, P. Brown, Imperial College London

   29. ``RWI as built measurement report'', JUI-RPWI-AST-RWI-RP-593,
       Issue 1, Revision 1, Astronika, 2nd March 2021.

   30. ``SCM coordinates'', JUICE-1476A, Airbus, 13th March 2021.


Contact Information
-----------------------------------------------------------------------------

   If you have any questions regarding this file contact the
   ESA SPICE Service (ESS) at ESAC:

           Alfredo Escalante Lopez
           (+34) 91-8131-429
           spice@sciops.esa.int

   or the JUICE Science Operations Center at ESAC:

           Marc Costa Sitja
           (+34) 646-746-711
           Marc.Costa@ext.esa.int


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

   * SPICEYPY is a non-official, community developed Python wrapper for the
     NAIF SPICE toolkit. Its development is managed on Github.
     It is available at: https://github.com/AndrewAnnex/SpiceyPy


JUICE Mission NAIF ID Codes
-----------------------------------------------------------------------------

   The following names and NAIF ID codes are assigned to the JUICE
   spacecraft, its structures and science instruments (the keywords
   implementing these definitions are located in the section "JUICE
   Mission NAIF ID Codes -- Definition Section" at the end of this
   file):

      JUICE Spacecraft and Spacecraft Structures names/IDs:

            JUICE                     -28     (synonym:
                                                  JUPITER ICY MOONS EXPLORER)
            JUICE_SPACECRAFT          -28000  (synonym: JUICE_SC)
            JUICE_SPACECRAFT_CHARGING -28004

            JUICE_SA+Y                -28011
            JUICE_SA-Y                -28015

            JUICE_HGA                 -28020
            JUICE_HGA_X               -28021
            JUICE_HGA_KA              -28022

            JUICE_MAG_BOOM            -28031

            JUICE_MGA_APM             -28040
            JUICE_MGA                 -28048

            JUICE_MGA_KA_BAND         -28948
            JUICE_MGA_X_BAND          -28949
            JUICE_SCHULTE_KA_BAND     -28075
            JUICE_SCHULTE_X_BAND      -28076

            JUICE_LGA+X               -28071
            JUICE_LGA-X               -28072

            JUICE_NAVCAM-1            -28051
            JUICE_NAVCAM-2            -28052

            JUICE_STR-OH1             -28061
            JUICE_STR-OH2             -28062
            JUICE_STR-OH3             -28063

            JUICE_JMC-1               -28081
            JUICE_JMC-2               -28082

            JUICE_JACS-X              -28380
            JUICE_JACS-X_1            -28381
            JUICE_JACS-X_2            -28382
            JUICE_JACS-X_3            -28383
            JUICE_JACS-X_4            -28384
            JUICE_JACS-X_5            -28385
            JUICE_JACS-X_6            -28386
            JUICE_JACS-X_7            -28387
            JUICE_JACS-X_8            -28388
            JUICE_JACS-Y              -28390
            JUICE_JACS-Y_1            -28391
            JUICE_JACS-Y_2            -28392
            JUICE_JACS-Y_3            -28393
            JUICE_JACS-Y_4            -28394
            JUICE_JACS-Y_5            -28395
            JUICE_JACS-Y_6            -28396
            JUICE_JACS-Y_7            -28397
            JUICE_JACS-Y_8            -28398

      GALA names/IDs:

            JUICE_GALA                -28100
            JUICE_GALA_TXL            -28110
            JUICE_GALA_TXL_MAIN       -28111
            JUICE_GALA_TXL_RED        -28112
            JUICE_GALA_RXT            -28120

      HAA names/IDs:

            JUICE_HAA_UOAF            -28880
            JUICE_HAA                 -28881
            JUICE_SCHULTE_ORIGIN      -28882

      JANUS names/IDs:

            JUICE_JANUS               -28200
            JUICE_JANUS_PAN           -28211
            JUICE_JANUS_BLUE          -28212
            JUICE_JANUS_GREEN         -28213
            JUICE_JANUS_RED           -28214
            JUICE_JANUS_CMT_MEDIUM    -28215
            JUICE_JANUS_NA            -28216
            JUICE_JANUS_MT_STRONG     -28217
            JUICE_JANUS_CMT_STRONG    -28218
            JUICE_JANUS_MT_MEDIUM     -28219
            JUICE_JANUS_VIOLET        -28220
            JUICE_JANUS_NIR_1         -28221
            JUICE_JANUS_NIR_2         -28222
            JUICE_JANUS_HALPHA        -28223


      J-MAG names/IDs:

            JUICE_JMAG_MAGIBS         -28300
            JUICE_JMAG_MAGIBS_SCI     -28301
            JUICE_JMAG_MAGOBS         -28310
            JUICE_JMAG_MAGOBS_SCI     -28311
            JUICE_JMAG_MAGSCA         -28320
            JUICE_JMAG_MAGSCA_SCI     -28323

      MAJIS names/IDs:

            JUICE_MAJIS               -28400
            JUICE_MAJIS_VISNIR        -28410
            JUICE_MAJIS_VISNIR_B2     -28412
            JUICE_MAJIS_VISNIR_B4     -28414
            JUICE_MAJIS_IR            -28420
            JUICE_MAJIS_IR_B2         -28422
            JUICE_MAJIS_IR_B4         -28424
            JUICE_MAJIS_RAD           -28430
            JUICE_MAJIS_ENVELOPE      -28440

      PEP names/IDs:

            JUICE_PEP_JDC             -28510
            JUICE_PEP_JNA             -28520
            JUICE_PEP_NIM             -28530
            JUICE_PEP_NIM_NEUION_S1   -28531
            JUICE_PEP_NIM_NEUION_S2   -28532
            JUICE_PEP_NIM_NEUION_S3   -28533
            JUICE_PEP_NIM_NEUION_S4   -28534
            JUICE_PEP_NIM_NEUION_S5   -28535
            JUICE_PEP_NIM_NEUION_S6   -28536
            JUICE_PEP_JEI             -28540
            JUICE_PEP_JOEE            -28550
            JUICE_PEP_JENI            -28560
            JUICE_PEP_JDC_PIXEL_NNN   -2851NNN*
            JUICE_PEP_JNA_SECTOR_NN   -2852NN**
            JUICE_PEP_JEI_NN_M        -2854NN***
            JUICE_PEP_JOEE_SNN        -2855NN****

         * There are NNN NAIF ID codes for the JUICE_PEP_JDC_PIXEL elements.
           NNN is the pixel number and ranges from 000 to 191.

         ** There are NN NAIF ID codes for the JUICE_PEP_JNA_SECTOR elements.
            NN is the sector number and ranges from 00 to 11.

         *** For each M (L, M and H) there are NN NAIF ID codes for the
             JUICE_PEP_JEI elements. NN is the azimuthal sector number and
             ranges from 00 to 15.

         **** There are NN NAIF ID codes for the JUICE_PEP_JOEE_SENSOR
              elements. NN is the sector number and ranges from 00 to 08.

      RIME names/IDs:

            JUICE_RIME_BASE           -28600
            JUICE_RIME+X              -28601
            JUICE_RIME-X              -28602

      RPWI names/IDs:

            JUICE_RPWI_LPB1           -28701
            JUICE_RPWI_LP1            -28705
            JUICE_RPWI_LPB2           -28711
            JUICE_RPWI_LP2            -28715
            JUICE_RPWI_LPB3           -28721
            JUICE_RPWI_LP3            -28725
            JUICE_RPWI_LPB4           -28731
            JUICE_RPWI_LP4            -28735
            JUICE_RPWI_RWI            -28740
            JUICE_RPWI_RWI_U          -28741
            JUICE_RPWI_RWI_U_P        -28744
            JUICE_RPWI_RWI_U_M        -28745
            JUICE_RPWI_RWI_V          -28742
            JUICE_RPWI_RWI_V_P        -28746
            JUICE_RPWI_RWI_V_M        -28747
            JUICE_RPWI_RWI_W          -28743
            JUICE_RPWI_RWI_W_P        -28748
            JUICE_RPWI_RWI_W_M        -28749
            JUICE_RPWI_SCM            -28750
            JUICE_RPWI_SCM_U          -28751
            JUICE_RPWI_SCM_U_P        -28754
            JUICE_RPWI_SCM_U_M        -28755
            JUICE_RPWI_SCM_V          -28752
            JUICE_RPWI_SCM_V_P        -28756
            JUICE_RPWI_SCM_V_M        -28757
            JUICE_RPWI_SCM_W          -28753
            JUICE_RPWI_SCM_W_P        -28758
            JUICE_RPWI_SCM_W_M        -28759

      SWI names/IDs:

            JUICE_SWI_FULL            -28800
            JUICE_SWI_FULL_GCO500     -28801
            JUICE_SWI_CH1             -28810
            JUICE_SWI_CH2             -28820

      UVS names/IDs:

            JUICE_UVS                 -28850
            JUICE_UVS_AP_HP           -28860
            JUICE_UVS_SP              -28870

      RADEM names/IDs:

            JUICE_RADEM               -28085
            JUICE_RADEM_ESD           -28086
            JUICE_RADEM_PSD           -28087
            JUICE_RADEM_HISD          -28088
            JUICE_RADEM_DD            -28089


JUICE Mission Frames
-----------------------------------------------------------------------------

   The following JUICE frames are defined in this kernel file:

           Name                  Relative to           Type          NAIF ID
      ======================  =====================  ============   =========

   Spacecraft frames:
   -----------------
      JUICE_SPACECRAFT           J2000                  SWITCH          -28000
      JUICE_SPACECRAFT_PLAN      J2000                  CK              -28001
      JUICE_SPACECRAFT_MEAS      J2000                  CK              -28002

      JUICE_SPACECRAFT_NADIR     J2000                  FIXED           -28003
      JUICE_SPACECRAFT_CHARGING  JUICE_SPACECRAFT       FIXED           -28004

      JUICE_SA+Y_ZERO            JUICE_SPACECRAFT       FIXED           -28010
      JUICE_SA+Y                 JUICE_SA+Y_ZERO        SWITCH          -28011
      JUICE_SA+Y_PLAN            JUICE_SA+Y_ZERO        CK              -28012
      JUICE_SA+Y_MEAS            JUICE_SA+Y_ZERO        CK              -28013
      JUICE_SA-Y_ZERO            JUICE_SPACECRAFT       FIXED           -28014
      JUICE_SA-Y                 JUICE_SA-Y_ZERO        SWITCH          -28015
      JUICE_SA-Y_PLAN            JUICE_SA-Y_ZERO        CK              -28016
      JUICE_SA-Y_MEAS            JUICE_SA-Y_ZERO        CK              -28017

      JUICE_HGA                  JUICE_SPACECRAFT       FIXED           -28020
      JUICE_HGA_X                JUICE_HGA              FIXED           -28021
      JUICE_HGA_KA               JUICE_HGA              FIXED           -28022

      JUICE_MAG_BOOM-H           JUICE_SPACECRAFT       FIXED           -28030
      JUICE_MAG_BOOM             JUICE_MAG_BOOM-H       SWITCH          -28031
      JUICE_MAG_BOOM_MEAS        JUICE_MAG_BOOM-H       CK              -28032
      JUICE_MAG_BOOM_PLAN        JUICE_MAG_BOOM-H       CK              -28033

      JUICE_MGA_APM              JUICE_SPACECRAFT       FIXED           -28040
      JUICE_MGA_AZ               JUICE_MGA_APM          SWITCH          -28041
      JUICE_MGA_AZ_PLAN          JUICE_MGA_APM          CK              -28042
      JUICE_MGA_AZ_MEAS          JUICE_MGA_APM          CK              -28043
      JUICE_MGA_EL_ZERO          JUICE_MGA_AZ           FIXED           -28044
      JUICE_MGA_EL               JUICE_MGA_EL_ZERO      SWITCH          -28045
      JUICE_MGA_EL_PLAN          JUICE_MGA_EL_ZERO      CK              -28046
      JUICE_MGA_EL_MEAS          JUICE_MGA_EL_ZERO      CK              -28047
      JUICE_MGA                  JUICE_MGA_EL           FIXED           -28048

      JUICE_LGA+X                JUICE_SPACECRAFT       FIXED           -28071
      JUICE_LGA-X                JUICE_SPACECRAFT       FIXED           -28072

      JUICE_NAVCAM-1             JUICE_SPACECRAFT       FIXED           -28051
      JUICE_NAVCAM-2             JUICE_SPACECRAFT       FIXED           -28052

      JUICE_STR-OH1              JUICE_SPACECRAFT       FIXED           -28061
      JUICE_STR-OH2              JUICE_SPACECRAFT       FIXED           -28062
      JUICE_STR-OH3              JUICE_SPACECRAFT       FIXED           -28063

      JUICE_JMC-1                JUICE_SPACECRAFT       FIXED           -28081
      JUICE_JMC-2                JUICE_SPACECRAFT       FIXED           -28082

   GALA frames:
   ------------
      JUICE_GALA_BASE            JUICE_SPACECRAFT       FIXED           -28100
      JUICE_GALA_TXL_MAIN        JUICE_GALA_BASE        FIXED           -28111
      JUICE_GALA_TXL_RED         JUICE_GALA_BASE        FIXED           -28112
      JUICE_GALA_RXT             JUICE_GALA_BASE        FIXED           -28120

   HAA frames:
   -----------
      JUICE_HAA_ADA              JUICE_SPACECRAFT       FIXED           -28880
      JUICE_HAA_UOAF             JUICE_SPACECRAFT       FIXED           -28881

   JANUS frames:
   -------------
      JUICE_JANUS                JUICE_SPACECRAFT       FIXED           -28200

   J-MAG frames:
   -------------
      JUICE_JMAG_MAGIBS          JUICE_MAG_BOOM         FIXED           -28300
      JUICE_JMAG_MAGIBS_SCI      JUICE_JMAG_MAGIBS      FIXED           -28301
      JUICE_JMAG_MAGOBS          JUICE_MAG_BOOM         FIXED           -28310
      JUICE_JMAG_MAGOBS_SCI      JUICE_JMAG_MAGOBS      FIXED           -28311
      JUICE_JMAG_MAGSCA_MEAS     JUICE_MAG_BOOM         CK              -28321
      JUICE_JMAG_MAGSCA_PLAN     JUICE_MAG_BOOM         CK              -28322
      JUICE_JMAG_MAGSCA          JUICE_MAG_BOOM         SWITCH          -28320
      JUICE_JMAG_MAGSCA_SCI      JUICE_JMAG_MAGSCA      FIXED           -28323

   JACS frames:
   ------------
      JUICE_JACS-X               JUICE_SPACECRAFT       FIXED           -28380
      JUICE_JACS-X_1             JUICE_JACS-X           FIXED           -28381
      JUICE_JACS-X_2             JUICE_JACS-X           FIXED           -28382
      JUICE_JACS-X_3             JUICE_JACS-X           FIXED           -28383
      JUICE_JACS-X_4             JUICE_JACS-X           FIXED           -28384
      JUICE_JACS-X_5             JUICE_JACS-X           FIXED           -28385
      JUICE_JACS-X_6             JUICE_JACS-X           FIXED           -28386
      JUICE_JACS-X_7             JUICE_JACS-X           FIXED           -28387
      JUICE_JACS-X_8             JUICE_JACS-X           FIXED           -28388
      JUICE_JACS-Y               JUICE_SPACECRAFT       FIXED           -28390
      JUICE_JACS-Y_1             JUICE_JACS-Y           FIXED           -28391
      JUICE_JACS-Y_2             JUICE_JACS-Y           FIXED           -28392
      JUICE_JACS-Y_3             JUICE_JACS-Y           FIXED           -28393
      JUICE_JACS-Y_4             JUICE_JACS-Y           FIXED           -28394
      JUICE_JACS-Y_5             JUICE_JACS-Y           FIXED           -28395
      JUICE_JACS-Y_6             JUICE_JACS-Y           FIXED           -28396
      JUICE_JACS-Y_7             JUICE_JACS-Y           FIXED           -28397
      JUICE_JACS-Y_8             JUICE_JACS-Y           FIXED           -28398

   MAJIS frames:
   -------------
      JUICE_MAJIS_BASE           JUICE_SPACECRAFT       FIXED           -28400
      JUICE_MAJIS_SCAN           JUICE_MAJIS_BASE       SWITCH          -28401
      JUICE_MAJIS_SCAN_MEAS      JUICE_MAJIS_BASE       CK              -28402
      JUICE_MAJIS_SCAN_PLAN      JUICE_MAJIS_BASE       CK              -28403
      JUICE_MAJIS_VISNIR         JUICE_MAJIS_SCAN       FIXED           -28410
      JUICE_MAJIS_IR             JUICE_MAJIS_SCAN       FIXED           -28420
      JUICE_MAJIS_RAD            JUICE_SPACECRAFT       FIXED           -28430

   PEP frames:
   ------------
      JUICE_PEP_NU               JUICE_SPACECRAFT       FIXED           -28500
      JUICE_PEP_JDC              JUICE_PEP_NU           FIXED           -28510
      JUICE_PEP_JNA              JUICE_PEP_NU           FIXED           -28520
      JUICE_PEP_NIM              JUICE_PEP_NU           FIXED           -28530
      JUICE_PEP_NIM_S1           JUICE_PEP_NIM          FIXED           -28531
      JUICE_PEP_NIM_S2           JUICE_PEP_NIM          FIXED           -28532
      JUICE_PEP_NIM_S3           JUICE_PEP_NIM          FIXED           -28533
      JUICE_PEP_NIM_S4           JUICE_PEP_NIM          FIXED           -28534
      JUICE_PEP_NIM_S5           JUICE_PEP_NIM          FIXED           -28535
      JUICE_PEP_NIM_S6           JUICE_PEP_NIM          FIXED           -28536
      JUICE_PEP_JEI              JUICE_SPACECRAFT       FIXED           -28540
      JUICE_PEP_JOEE             JUICE_SPACECRAFT       FIXED           -28550
      JUICE_PEP_JENI             JUICE_SPACECRAFT       FIXED           -28560

   RIME frames:
   ------------
      JUICE_RIME_BASE            JUICE_SPACECRAFT       FIXED           -28600
      JUICE_RIME                 JUICE_RIME_BASE        CK              -28601
      JUICE_RIME+X               JUICE_SPACECRAFT       FIXED           -28602
      JUICE_RIME-X               JUICE_SPACECRAFT       FIXED           -28603
      JUICE_RIME_NADC            JUICE_RIME_BASE        DYNAMIC         -28610
      JUICE_RIME_NADE            JUICE_RIME_BASE        DYNAMIC         -28611
      JUICE_RIME_NADG            JUICE_RIME_BASE        DYNAMIC         -28612
      JUICE_RIME_NADJ            JUICE_RIME_BASE        DYNAMIC         -28613

   RPWI frames:
   ------------
      JUICE_RPWI_LPB1-H          JUICE_SPACECRAFT       FIXED           -28700
      JUICE_RPWI_LPB1            JUICE_RPWI_LPB1-H      SWITCH          -28701
      JUICE_RPWI_LPB1_MEAS       JUICE_RPWI_LPB1-H      CK              -28702
      JUICE_RPWI_LPB1_PLAN       JUICE_RPWI_LPB1-H      CK              -28703
      JUICE_RPWI_LP1             JUICE_RPWI_LPB1        FIXED           -28705
      JUICE_RPWI_LPB2-H          JUICE_SPACECRAFT       FIXED           -28710
      JUICE_RPWI_LPB2            JUICE_RPWI_LPB2-H      SWITCH          -28711
      JUICE_RPWI_LPB2_MEAS       JUICE_RPWI_LPB2-H      CK              -28712
      JUICE_RPWI_LPB2_PLAN       JUICE_RPWI_LPB2-H      CK              -28713
      JUICE_RPWI_LP2             JUICE_RPWI_LPB2        FIXED           -28715
      JUICE_RPWI_LPB3-H          JUICE_SPACECRAFT       FIXED           -28720
      JUICE_RPWI_LPB3            JUICE_RPWI_LPB3-H      SWITCH          -28721
      JUICE_RPWI_LPB3_MEAS       JUICE_RPWI_LPB3-H      CK              -28722
      JUICE_RPWI_LPB3_PLAN       JUICE_RPWI_LPB3-H      CK              -28723
      JUICE_RPWI_LP3             JUICE_RPWI_LPB3        FIXED           -28725
      JUICE_RPWI_LPB4-H          JUICE_SPACECRAFT       FIXED           -28730
      JUICE_RPWI_LPB4            JUICE_RPWI_LPB4-H      SWITCH          -28731
      JUICE_RPWI_LPB4_MEAS       JUICE_RPWI_LPB4-H      CK              -28732
      JUICE_RPWI_LPB4_PLAN       JUICE_RPWI_LPB4-H      CK              -28733
      JUICE_RPWI_LP4             JUICE_RPWI_LPB4        FIXED           -28735
      JUICE_RPWI_RWI             JUICE_MAG_BOOM         FIXED           -28740
      JUICE_RPWI_RWI_U           JUICE_RPWI_RWI         FIXED           -28741
      JUICE_RPWI_RWI_V           JUICE_RPWI_RWI         FIXED           -28742
      JUICE_RPWI_RWI_W           JUICE_RPWI_RWI         FIXED           -28743
      JUICE_RPWI_SCM             JUICE_MAG_BOOM         FIXED           -28750
      JUICE_RPWI_SCM_U           JUICE_RPWI_SCM         FIXED           -28751
      JUICE_RPWI_SCM_V           JUICE_RPWI_SCM         FIXED           -28752
      JUICE_RPWI_SCM_W           JUICE_RPWI_SCM         FIXED           -28753

   SWI frames:
   -----------
      JUICE_SWI_BASE             JUICE_SPACECRAFT       FIXED           -28800
      JUICE_SWI_SCANNER          JUICE_SWI_BASE         SWITCH          -28810
      JUICE_SWI_SCANNER_MEAS     JUICE_SWI_BASE         CK              -28811
      JUICE_SWI_SCANNER_PLAN     JUICE_SWI_BASE         CK              -28812

   UVS frames:
   -----------
      JUICE_UVS                  JUICE_SPACECRAFT       FIXED           -28850
      JUICE_UVS_SP               JUICE_UVS              FIXED           -28870

   RADEM frames:
   -------------
      JUICE_RADEM                JUICE_RADEM            FIXED           -28085


   In addition, the following frames, in use by the JUICE mission, are
   defined in other kernels or `built into' the SPICE system:

           Name                     Relative to            Type       NAIF ID
      ==========================   =====================  ========   =========

   JUICE mission science operations frames (1):
   --------------------------------------------
      JUICE_EARTH_COMMS            J2000                  DYNAMIC      -28900

      JUICE_SA+Y_DEFAULT           J2000                  DYNAMIC      -28901
      JUICE_SA-Y_DEFAULT           J2000                  DYNAMIC      -28902

      JUICE_VENUS_NOA              J2000                  DYNAMIC      -28910
      JUICE_JUPITER_NOA            J2000                  DYNAMIC      -28911
      JUICE_CALLISTO_NOA           J2000                  DYNAMIC      -28912
      JUICE_EUROPA_NOA             J2000                  DYNAMIC      -28913
      JUICE_GANYMEDE_NOA           J2000                  DYNAMIC      -28914
      JUICE_IO_NOA                 J2000                  DYNAMIC      -28915
      JUICE_EARTH_NOA              J2000                  DYNAMIC      -28916
      JUICE_MOON_NOA               J2000                  DYNAMIC      -28917

      JUICE_JUPITER_NPO            J2000                  DYNAMIC      -28920
      JUICE_CALLISTO_NPO           J2000                  DYNAMIC      -28921
      JUICE_EUROPA_NPO             J2000                  DYNAMIC      -28922
      JUICE_GANYMEDE_NPO           J2000                  DYNAMIC      -28923
      JUICE_IO_NPO                 J2000                  DYNAMIC      -28924
      JUICE_EARTH_NPO              J2000                  DYNAMIC      -28925
      JUICE_MOON_NPO               J2000                  DYNAMIC      -28926
      JUICE_VENUS_NPO              J2000                  DYNAMIC      -28927

      JUICE_JUPITER_RAM            J2000                  DYNAMIC      -28930
      JUICE_CALLISTO_RAM           J2000                  DYNAMIC      -28931
      JUICE_EUROPA_RAM             J2000                  DYNAMIC      -28932
      JUICE_GANYMEDE_RAM           J2000                  DYNAMIC      -28933
      JUICE_IO_RAM                 J2000                  DYNAMIC      -28934
      JUICE_EARTH_RAM              J2000                  DYNAMIC      -28935
      JUICE_MOON_RAM               J2000                  DYNAMIC      -28936
      JUICE_VENUS_RAM              J2000                  DYNAMIC      -28937


      (1) These frames are defined in the frame kernel file
          "juice_ops_vVV.tf" In order to use them with this frames kernel,
          additional fixed-offset frames kernel(s) need to be loaded. See the
          section ``Using these frames'' in the "juice_ops_vVV.tf" comment
          area for further details (VV is the version number).


   JUICE mission specific science frames (2):
   ------------------------------------------
      JUICE_JUPITER_IF_J2000       J2000                   FIXED        -28970
      JUICE_JUPITER_MAG_S3RH1965   JUPITER_SYSTEM3RH_1965  FIXED        -28971
      JUICE_JUPITER_MAG_S3RH2009   JUPITER_SYSTEM3RH_2009  FIXED        -28972

      JUICE_JSEQ                   J2000                   DYNAMIC      -28973
      JUICE_JUPITER_BSM            J2000                   DYNAMIC      -28974
      JUICE_JUPITER_SJC            J2000                   DYNAMIC      -28975
      JUICE_JSM                    J2000                   DYNAMIC      -28976
      JUICE_JSW                    JUPITER_SUN_ORB         FIXED        -28977
      JUICE_JSWM                   JUICE_JUPITER_BSM       FIXED        -28978

      JUICE_CALLISTO_PHI_ORB       J2000                   DYNAMIC      -28980
      JUICE_EUROPA_PHI_ORB         J2000                   DYNAMIC      -28981
      JUICE_GANYMEDE_PHI_ORB       J2000                   DYNAMIC      -28982

      JUICE_HGRTN                  J2000                   DYNAMIC      -28990
      JUICE_SUN_RTN                J2000                   DYNAMIC      -28991
      JUICE_JUPITER_DM             J2000                   DYNAMIC      -28992
      JUICE_JUPITER_RTP            J2000                   DYNAMIC      -28993


   Jupiter System generic frames (2):
   ----------------------------------
      JUPITER_SYSTEM3RH_1965       J2000                   PCK          -28999
      JUPITER_SYSTEM3RH_2009       J2000                   PCK          -28998
      JUPITER_MAG_VIP4             IAU_JUPITER             FIXED        -28997

      JUPITER_MEQUD                J2000                   DYNAMIC   500599000
      JUPITER_SUN_EQU              J2000                   DYNAMIC   500599001
      JUPITER_SUN_ORB              J2000                   DYNAMIC   500599002

      JUPITER_CALLISTO_BCSF        J2000                   DYNAMIC   500599006
      JUPITER_EUROPA_BCSF          J2000                   DYNAMIC   500599004
      JUPITER_GANYMEDE_BCSF        J2000                   DYNAMIC   500599005

      CALLISTO_JUPITER_ORB         J2000                   DYNAMIC   500504000
      EUROPA_JUPITER_ORB           J2000                   DYNAMIC   500502000
      GANYMEDE_JUPITER_ORB         J2000                   DYNAMIC   500503000

      (2) These frames are defined in the frame kernel file
          "juice_sci_vVV.tf" (VV is the version number)


   SPICE 'Built-in' PCK frames in use by JUICE (3):
   ------------------------------------------------
      IAU_CALLISTO                 J2000                   PCK        built-in
      IAU_EUROPA                   J2000                   PCK        built-in
      IAU_JUPITER                  J2000                   PCK        built-in
      IAU_GANYMEDE                 J2000                   PCK        built-in

      (3) Data for these frames is loaded using either the PCK file
          "pckVVVVV.tpc" or one of the mission specific PCK files
          "juice_jupVVV.tpc" (VVV is the version number)


JUICE Frames Hierarchy
-----------------------------------------------------------------------------

   The diagram below shows the JUICE frames hierarchy (except the science
   operations frames):

                                                                  "JUICE_HGRTN"
                                                                  -------------
                                                                              ^
                                                                              |
                                                                         dyn->|
                                                                              |
                                                           "JUICE_JUPITER_DM" |
                                                           ------------------ |
                                                                           ^  |
                                                                           |  |
                                                                      dyn->|  |
                                                                           |  |
                                                     "JUICE_JUPITER_BEQXS" |  |
                                                     --------------------- |  |
                                                                        ^  |  |
                             "JUICE_JUPITER_MAGS_3RH2009"               |  |  |
                             ----------------------------          dyn->|  |  |
                                                ^                       |  |  |
                                                |   "JUICE_JUPITER_SJC" |  |  |
                                         fixed->|   ------------------- |  |  |
                                                |                    ^  |  |  |
                                "JUICE_JSW"     |                    |  |  |  |
                                -----------     |               dyn->|  |  |  |
    "JUPITER_MAG_VIP4"                ^         |                    |  |  |  |
    ------------------                |         |    "JUICE_SUN_RTN" |  |  |  |
           ^                   fixed->|         |    --------------- |  |  |  |
           |                          |         |                 ^  |  |  |  |
    fixed->| "IAU_EUROPA"   "JUPITER_SUN_ORB"   |                 |  |  |  |  |
           | ------------   -----------------   |            dyn->|  |  |  |  |
           |      ^                  ^          |                 |  |  |  |  |
   "IAU_JUPITER"  |  "IAU_GANYMEDE"  |   "JUPITER_SYSTEM3RH_2009" |  |  |  |  |
   -------------  |  --------------  |   ------------------------ |  |  |  |  |
        ^         |         ^        |                          ^ |  |  |  |  |
        |         |         |        | "JUICE_JUPITER_IF_J2000" | |  |  |  |  |
        |         |         |        | ------------------------ | |  |  |  |  |
        |         |         |        |  ^                       | |  |  |  |  |
        |    pck->|         |   dyn->|  |                fixed->| |  |  |  |  |
        |         |    pck->|        |  |<-fixed                | |  |  |  |  |
        |<-pck    |         |        |  |                       | |  |  |  |  |
        |         |         |        |  |    "J2000" Inertial   | |  |  |  |  |
   +--------------------------------------------------------------------------+
   |           |    |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
   |<-pck      |    |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
   |           |    |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
   |      pck->|    |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
   v           |    |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
   "IAU_EARTH" |    |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
   ----------- |    |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
               v    |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
     "IAU_CALLISTO" |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
     -------------- |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
                    |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
               dyn->|    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
                    |    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
                    v    |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
     "JUICE_JUPITER_RTP" |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
     ------------------- |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
                         |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
                  fixed->|    |   |    |   |   |   |   |   |  |  |  |  |  | | |
                         |    |   |    |   |   |   |   |   |  |  |  |  |  | | |
                         v    |   |    |   |   |   |   |   |  |  |  |  |  | | |
     "JUPITER_SYSTEM3RH_1965" |   |    |   |   |   |   |   |  |  |  |  |  | | |
     ------------------------ |   |    |   |   |   |   |   |  |  |  |  |  | | |
          |                   |   |    |   |   |   |   |   |  |  |  |  |  | | |
          |                   |   |    |   |   |   |   |   |  |  |  |  |  | | |
          |              dyn->|   |    |   |   |   |   |   |  |  |  |  |  | | |
          |                   |   |    |   |   |   |   |   |  |  |  |  |  | | |
          |                   v   |    |   |   |   |   |   |  |  |  |  |  | | |
          |           "JUICE_JSM" |    |   |   |   |   |   |  |  |  |  |  | | |
          |           ----------- |    |   |   |   |   |   |  |  |  |  |  | | |
          |                       |    |   |   |   |   |   |  |  |  |  |  | | |
          |                  dyn->|    |   |   |   |   |   |  |  |  |  |  | | |
          |                       |    |   |   |   |   |   |  |  |  |  |  | | |
          |                       v    |   |   |   |   |   |  |  |  |  |  | | |
          |       "JUICE_JUPITER_BSM"  |   |   |   |   |   |  |  |  |  |  | | |
          |       -------------------  |   |   |   |   |   |  |  |  |  |  | | |
          |             |              |   |   |   |   |   |  |  |  |  |  | | |
          |             |         dyn->|   |   |   |   |   |  |  |  |  |  | | |
          |             |              |   |   |   |   |   |  |  |  |  |  | | |
          |             |              v   |   |   |   |   |  |  |  |  |  | | |
          |      fixed->|  "JUPITER_MEQUD" |   |   |   |   |  |  |  |  |  | | |
          |             |  --------------- |   |   |   |   |  |  |  |  |  | | |
          |             v                  |   |   |   |   |  |  |  |  |  | | |
          |       "JUICE_JSWM"        dyn->|   |   |   |   |  |  |  |  |  | | |
          |       ------------             |   |   |   |   |  |  |  |  |  | | |
          |                                v   |   |   |   |  |  |  |  |  | | |
          |<-fixed          "JUPITER_SUN_EQU"  |   |   |   |  |  |  |  |  | | |
          |                 -----------------  |   |   |   |  |  |  |  |  | | |
          V                                    |   |   |   |  |  |  |  |  | | |
     "JUICE_JUPITER_MAG_S3RH1965"         dyn->|   |   |   |  |  |  |  |  | | |
     ----------------------------              |   |   |   |  |  |  |  |  | | |
                                               v   |   |   |  |  |  |  |  | | |
                          "JUPITER_GANYMEDE_BCSF"  |   |   |  |  |  |  |  | | |
                          -----------------------  |   |   |  |  |  |  |  | | |
                                                   |   |   |  |  |  |  |  | | |
                                              dyn->|   |   |  |  |  |  |  | | |
                                                   |   |   |  |  |  |  |  | | |
                                                   v   |   |  |  |  |  |  | | |
                                "JUPITER_EUROPA_BCSF"  |   |  |  |  |  |  | | |
                                ---------------------  |   |  |  |  |  |  | | |
                                                       |   |  |  |  |  |  | | |
                                                  dyn->|   |  |  |  |  |  | | |
                                                       |   |  |  |  |  |  | | |
                                                       v   |  |  |  |  |  | | |
                                  "JUPITER_CALLISTO_BCSF"  |  |  |  |  |  | | |
                                  -----------------------  |  |  |  |  |  | | |
                                                           |  |  |  |  |  | | |
                                                      dyn->|  |  |  |  |  | | |
                                                           |  |  |  |  |  | | |
                                                           v  |  |  |  |  | | |
                                       "GANYMEDE_JUPITER_ORB" |  |  |  |  | | |
                                       ---------------------- |  |  |  |  | | |
                                                              |  |  |  |  | | |
                                                         dyn->|  |  |  |  | | |
                                                              |  |  |  |  | | |
                                                              v  |  |  |  | | |
                                            "EUROPA_JUPITER_ORB" |  |  |  | | |
                                            -------------------- |  |  |  | | |
                                                                 |  |  |  | | |
                                                            dyn->|  |  |  | | |
                                                                 |  |  |  | | |
                                                                 v  |  |  | | |
                                             "CALLISTO_JUPITER_ORB" |  |  | | |
                                             ---------------------- |  |  | | |
                                                                    |  |  | | |
                                                               dyn->|  |  | | |
                                                                    |  |  | | |
                                                                    v  |  | | |
                                              "JUICE_CALLISTO_PHI_ORB" |  | | |
                                              ------------------------ |  | | |
                                                                       |  | | |
                                                                  dyn->|  | | |
                                                                       |  | | |
                                                                       v  | | |
                                                   "JUICE_EUROPA_PHI_ORB" | | |
                                                   ---------------------- | | |
                                                                          | | |
                                                                     dyn->| | |
                                                                          | | |
                                                                          v | |
                                                    "JUICE_GANYMEDE_PHI_ORB"| |
                                                     ---------------------- | |
                                                                            | |
                                                                        ck->| |
                                                                            v |
                                                      "JUICE_SPACECRAFT_PLAN" |
                                                      ----------------------- |
                                                                            | |
                                                                            | |
                                                                            | |
                                                                        ck--->|
                                                                            | |
                                                                            | v
                                                        "JUICE_SPACECRAFT_MEAS"
                                                        -----------------------
                  "JUICE_HGA_KA"                                            | |
                  --------------                                            | |
                        ^                                                   | |
                        |                                                   | |
   "JUICE_HGA_X"        |                                                   | |
   -------------        |                                                   | |
      ^                 |<-fixed                                            | |
      |                 |                   "JUICE_LGA+X"                   | |
      |<-fixed          |                   -------------                   | |
      |                 |                         ^                         | |
      | "JUICE_HGA"     |                         |     "JUICE_LGA-X"       | |
      +-----------------+                         |     -------------       v v
            ^                              fixed->|           ^             +-+
            |                                     |           |              |
            |                                     |    fixed->|              |
            |<-fixed                              |           |    switch--->|
            |             "JUICE_SPACECRAFT"      |           |              v
            +-----------------------------------------------------------------+
            |         |  |      .           |        |  |  |          |       |
     fixed->|  fixed->|  |      .    fixed->| fixed->|  |  |   fixed->|       |
            |         |  |      .           |        |  |  |          |       |
            v         |  |      .           v        |  |  |          v       |
   "JUICE_MAG_BOOM-H" |  |      .  "JUICE_NAVCAM-1"  |  |  | "JUICE_STR-OH3"  |
   ------------------ |  |      .  ----------------  |  |  | ---------------  |
           |          |  |      .                    |  |  |                  |
           |<-ck      |  |      .                    v  |  |                  |
           |          |  |      .      "JUICE_NAVCAM-2" |  |                  |
           v          |  |      .      ---------------- |  |                  |
     "JUICE_MAG_BOOM" |  |      .                       |  |                  |
     ---------------- |  |      .                fixed->|  |                  |
                      |  |      .                       |  |                  |
                      |  |      .                       v  |                  |
                      v  |      .          "JUICE_STR-OH1" |                  |
          "JUICE_JMC-1"  |      .          --------------- |                  |
         --------------  |      .                          |                  |
                         |      .                   fixed->|                  |
                  fixed->|      .                          |                  |
                         v      .                          v                  |
             "JUICE_JMC-2"      .             "JUICE_STR-OH2"          fixed->|
            --------------      .             ---------------                 |
                                .                                             v
                                .                      "JUICE_SPACECRAFT_NADIR"
                                .                      ------------------------
                                .                                             |
                                .                                      fixed->|
                                .                                             |
                                .                                             v
                                .                   "JUICE_SPACECRAFT_CHARGING"
                                .                   ---------------------------
                                v
        Individual instrument, solar arrays and MGA frame trees
        are provided in the corresponding sections of this file


JUICE Spacecraft Bus Frame
--------------------------------------------------------------------------

   The spacecraft frame is defined by the s/c design as follows [4]:

      -  +Z is perpendicular to the launch vehicle interface plane
         and points toward the payload side, through the spacecraft
         in the launch direction;

      -  -X axis is perpendicular to the HGA mounting plane and points
         in the direction of the nominal HGA boresight;

      -  +Y axis completes the right-handed frame.

      -  the origin of this frame is the launch vehicle interface point,
         located at the separation plane between the spacecraft and the
         launch adapter, in the centre of the launch adapter.


   These diagrams illustrate the JUICE_SPACECRAFT frame:

   +X s/c side (opposite to HGA side) view:
   ----------------------------------------

                                       ^
          .---------.                  | Nadir            .---------.
          |         |                  |                  |         |
          |         |             Science Deck            |         |
          '----.----'              .-------.              '----.----'
   /----. .----'----. .---------._ |       | _.---------. .----'----. .-----\
   \    |_|         |_|         | \|       |/ |         |_|         |_|     /
   /    | |         | |         |_/|   ^   |\_|         | |         | |     \
   \----' '----.----' '---------'  |   |+Zsc  '---------' '----.----' '-----/
          .----'----.              '---|---'              .----'----.
          |         |                / | \   +Ysc         |         |
          |         |                '-o------>           |         |
          '---------'                +Xsc                 '---------'
                                      (out of the page)


   -Y s/c side view:
   -----------------
                              ^
                          ~~  |
                          ||  | Nadir direction
                          ||  |
                          oo  |
              .    .------||------.
              |`.  | Science Deck |
          HGA |  \ |      ||      |
              |   \|      ||      |
              |    |      ||      |
              |    |     /||\     |
              |    x     \||/     |
              |    |      ||      |
              |    |      |'^     |
              |   /|      |'|+Zsc |
              |  / |      |'|     |
              |.'  |      |'|     |
                   '------|'|-----'  +Xsc
                       /__oox---------->
                          || +Ysc
                          ||  (into the page)
                          ~~


   The s/c bus attitude with respect to an inertial frame is provided
   by a Switch Frame (see [1] for more information) aligned with one of
   the different CK-based base frames (JUICE_SPACECRAFT_MEAS or
   JUICE_SPACECRAFT_PLAN) depending on coverage. JUICE_SPACECRAFT_MEAS
   has priority over JUICE_SPACECRAFT_PLAN whenever coverage for both
   is available.

   \begindata

      FRAME_JUICE_SPACECRAFT        = -28000
      FRAME_-28000_NAME             = 'JUICE_SPACECRAFT'
      FRAME_-28000_CLASS            =  6
      FRAME_-28000_CLASS_ID         = -28000
      FRAME_-28000_CENTER           = -28000
      FRAME_-28000_ALIGNED_WITH     = (
                                       'JUICE_SPACECRAFT_PLAN'
                                       'JUICE_SPACECRAFT_MEAS'
                                      )

   \begintext

   The JUICE spacecraft planning reference frame -- JUICE_SPACECRAFT_PLAN --
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
   JUICE_SPACECRAFT_PLAN frame.

   \begindata

      FRAME_JUICE_SPACECRAFT_PLAN     = -28001
      FRAME_-28001_NAME               = 'JUICE_SPACECRAFT_PLAN'
      FRAME_-28001_CLASS              =  3
      FRAME_-28001_CLASS_ID           = -28001
      FRAME_-28001_CENTER             = -28000
      CK_-28001_SCLK                  = -28999
      CK_-28001_SPK                   = -28

   \begintext

   The JUICE spacecraft measured reference frame -- JUICE_SPACECRAFT_MEAS --
   is defined in order to accommodate the C-kernels that have been generated
   with a real SCLK kernel. These C-kernels contain measured data from the
   housekeeping telemetry (commanded or as-flown) and are mainly used for
   data analysis.

   Since the s/c bus measured attitude is defined with respect to an inertial
   frame and provided by a C-kernel (see [3] for more information), this frame
   is defined as a CK-based frame.

   \begindata

      FRAME_JUICE_SPACECRAFT_MEAS   = -28002
      FRAME_-28002_NAME             = 'JUICE_SPACECRAFT_MEAS'
      FRAME_-28002_CLASS            =  3
      FRAME_-28002_CLASS_ID         = -28002
      FRAME_-28002_CENTER           = -28000
      CK_-28002_SCLK                = -28
      CK_-28002_SPK                 = -28

   \begintext


JUICE Spacecraft Nadir Frame
--------------------------------------------------------------------------

   The spacecraft nadir frame is defined by the ``Nadir'' direction.
   The Nadir direction has been tuned to provide the best pointing budgets.
   It has been calculated using the barycenter of the boresight of the
   relevant instruments -- JANUS, UVS, SWI, GALA -- except for MAJIS due
   to its large internal alignment error (from [25]).

      -  +Z is the barycenter of the boresight of JANUS, UVS, SWI, and GALA;

      -  -X axis is in the perpendicular plane to the HGA mounting plane and
         points in the direction of the nominal HGA boresight;

      -  +Y axis completes the right-handed frame.

      -  the origin of this frame is the launch vehicle interface point,
         located at the separation plane between the spacecraft and the
         launch adapter, in the centre of the launch adapter.

   The diagrams above illustrate the JUICE_SPACECRAFT_NADIR frame with the
   Nadir direction.

   The alignment is introduced as three rotations expressed in arcseconds
   from spacecraft to nadir reference frames from [26]:

     Rotation = (     0.0,    -121.0,     -119.0  )
       SC -> NADIR       Rz        Ry         Rx

   These values were updated in the last alignment campaign before launch
   in Kourou [27]:

     Rotation = (     0.0,    -160.0,      -67.0  )
       SC -> NADIR       Rz        Ry         Rx

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_SPACECRAFT_NADIR    = -28003
      FRAME_-28003_NAME               = 'JUICE_SPACECRAFT_NADIR'
      FRAME_-28003_CLASS              =  4
      FRAME_-28003_CLASS_ID           = -28003
      FRAME_-28003_CENTER             = -28000
      TKFRAME_-28003_RELATIVE         = 'JUICE_SPACECRAFT'
      TKFRAME_-28003_SPEC             = 'ANGLES'
      TKFRAME_-28003_UNITS            = 'DEGREES'
      TKFRAME_-28003_AXES             = ( 3,    2,            1            )
      TKFRAME_-28003_ANGLES           = ( 0.0,  0.0444444444, 0.0186111111 )

   \begintext


JUICE Spacecraft Charging Frame
--------------------------------------------------------------------------

   The spacecraft charging frame is nominally aligned with the``Nadir'' frame
   -- JUICE_SPACECRAFT_NADIR -- and is used for the charging model of the
   spacecraft.

      -  +Z is the barycenter of the boresight of JANUS, UVS, SWI, and GALA;

      -  -X axis is in the perpendicular plane to the HGA mounting plane and
         points in the direction of the nominal HGA boresight;

      -  +Y axis completes the right-handed frame.

      -  the origin of this frame is the intersection between the line aligned
         with the boresight of the HGA and the line going through the center
         of the +Z panel (parallel to the spacecraft Z axis).


   This diagram illustrates the JUICE_SPACECRAFT_CHARGING frame:

   -Y s/c side view:
   -----------------
                              ^
                          ~~  |
                          ||  | Nadir direction
                          ||  |
                          oo  |
              .    .------||------.
              |`.  |      ||^     |
          HGA |  \ |      |||+Zcharg
              |   \|      |||     |
              |    |      |||     |
              |    |     /|||     |  +Xcharg
              |    x     \||x---------->
              |    |      ||      |
              |    |      |'^     |
              |   /|      |'|+Zsc |
              |  / |      |'|     |
              |.'  |      |'|     |
                   '------|'|-----'  +Xsc
                       /__oox---------->
                          || +Ysc
                          ||
                          ~~            +Ysc and +Ycharg are
                                        into the page.


   \begindata

      FRAME_JUICE_SPACECRAFT_CHARGING = -28004
      FRAME_-28004_NAME               = 'JUICE_SPACECRAFT_CHARGING'
      FRAME_-28004_CLASS              =  4
      FRAME_-28004_CLASS_ID           = -28004
      FRAME_-28004_CENTER             = -28004
      TKFRAME_-28004_RELATIVE         = 'JUICE_SPACECRAFT_NADIR'
      TKFRAME_-28004_SPEC             = 'ANGLES'
      TKFRAME_-28004_UNITS            = 'DEGREES'
      TKFRAME_-28004_AXES             = ( 3,    2,    1   )
      TKFRAME_-28004_ANGLES           = ( 0.0,  0.0,  0.0 )

   \begintext


JUICE Solar Array Frames
--------------------------------------------------------------------------

   JUICE solar arrays are articulated (having one degree of freedom),
   therefore the Solar Array frames, JUICE_SA+Y and JUICE_SA-Y, are
   defined as Switch Frames (see [1] for more information) aligned with
   one of the different CK-based base frames -- JUICE_SA+Y_PLAN,
   JUICE_SA-Y_PLAN or JUICE_SA+Y_MEAS, JUICE_SA-Y_MEAS -- depending on
   coverage and their orientation is given relative to JUICE_SA+Y_ZERO
   and JUICE_SA-Y_ZERO respectively.


JUICE Solar Array Frames Tree
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   The diagram below shows the JUICE Solar Array frames hierarchy:

                                 "JUICE_SPACECRAFT"
                     +---------------------------------------+
                     |                                       |
              fixed->|                                       |<-fixed
                     |                                       |
                     v                                       v
             "JUICE_SA+Y_ZERO"                       "JUICE_SA-Y_ZERO"
           +-------------------+                   +-------------------+
           |                   |                   |                   |
       ck->|               ck->|               ck->|               ck->|
           |                   |                   |                   |
           v                   v                   v                   v
  "JUICE_SA+Y_PLAN"   "JUICE_SA+Y_MEAS"   "JUICE_SA-Y_PLAN"   "JUICE_SA-Y_MEAS"
  -----------------   -----------------   -----------------   -----------------
           |                   |                   |                   |
           |                   |                   |                   |
           |                   |                   |                   |
           v                   v                   v                   v
           +-------------------+                   +-------------------+
                     |                                       |
             switch->|                               switch->|
                     |                                       |
                     v                                       v
                "JUICE_SA+Y"                            "JUICE_SA-Y"
                ------------                            ------------


   JUICE_SA+Y_ZERO and JUICE_SA-Y_ZERO are two ``fixed-offset'' frames,
   defined with respect to JUICE_SPACECRAFT, as follows:

      -  +Y is parallel to the longest side of the array, positively
         oriented from the yoke to the end of the wing;

      -  +Z is aligned to the spacecraft bus +Z, pointing on the
         nominal direction of nadir;

      -  +X completes the right-handed frame.

      -  the origin of the frame is located at the yoke geometric
         center.


   The rest of Solar Array frames -- JUICE_SA+Y, JUICE_SA+Y_PLAN,
   JUICE_SA+Y_MEAS, JUICE_SA-Y, JUICE_SA-Y_PLAN, JUICE_SA-Y_MEAS -- are
   defined as follows:

      -  +Y is parallel to the longest side of the array, positively oriented
         from the yoke to the end of the wing;

      -  +Z is normal to the solar array plane, the solar cells facing +Z;

      -  +X completes the right-handed frame;

      -  the origin of the frame is located at the yoke geometric center.


   The axis of rotation is parallel to the Y axis of the spacecraft and the
   solar array frames. Please note that in all the diagrams of this file the
   Solar Arrays are rotated 90 degrees.

   The solar array frames JUICE_SA-Y and JUICE_SA+Y are implemented as
   Switch frame and their orientation is provided by either JUICE_SA+Y_MEAS
   and JUICE_SA-Y_MEAS when measured orientation is available or by
   JUICE_SA+Y_PLAN and JUICE_SA-Y_PLAN when predicted orientation is
   available (see Section ``JUICE Spacecraft Bus Frame'' and [1] for more
   information).

   This diagram illustrates the JUICE_SA+Y and JUICE_SA-Y frames:


   -X s/c side (HGA side) view:
   ----------------------------


   \--------.                       ^                        .--------/
   /        |                       | Nadir                  |        \
   \        |                       |                        |        /
   /        |     +Zsa+y_zero ^.---------.^ +Zsa-y_zero      |        \
   \-.------'                 ||         ||                  '------.-/
   /-"------. .-------------. ||  .---.  ||  .-------------. .------"-\
   \        | | +Ysa+y_zero |-||/ HGA   \||,-|             | |        /
   /        |=|       <-------x|    x    |o------->        |=|        \
   \        | |             |_/|\       /| \_|   +Ysa-y_zero |        /
   /-.------' '-------------'  | '.___.' |   '-------------' '------.-\
   \-"------.                  '---------'                   .------"-/
   /        |                     /   \                      |        \
   \        |                     '---'                      |        /
   /        |      ^ +Zsc      Main Engine                   |        \
   \--------'      |                                         '--------/
                   |
          +Ysc     |
          <--------x                           +Xsc is into the page
                    +Xsc                       +Xsa+y_zero is into the page
                                               +Zsa-y_zero is out of the page


   These sets of keywords define solar array frames:

   \begindata

      FRAME_JUICE_SA+Y_ZERO           = -28010
      FRAME_-28010_NAME               = 'JUICE_SA+Y_ZERO'
      FRAME_-28010_CLASS              =  4
      FRAME_-28010_CLASS_ID           = -28010
      FRAME_-28010_CENTER             = -28011
      TKFRAME_-28010_RELATIVE         = 'JUICE_SPACECRAFT'
      TKFRAME_-28010_SPEC             = 'ANGLES'
      TKFRAME_-28010_UNITS            = 'DEGREES'
      TKFRAME_-28010_AXES             = (    3,      2,     1   )
      TKFRAME_-28010_ANGLES           = (    0.0,    0.0,   0.0 )

      FRAME_JUICE_SA+Y                = -28011
      FRAME_-28011_NAME               = 'JUICE_SA+Y'
      FRAME_-28011_CLASS              =  6
      FRAME_-28011_CLASS_ID           = -28011
      FRAME_-28011_CENTER             = -28011
      FRAME_-28011_ALIGNED_WITH       = (
                                         'JUICE_SA+Y_PLAN'
                                         'JUICE_SA+Y_MEAS'
                                        )

      FRAME_JUICE_SA+Y_PLAN           = -28012
      FRAME_-28012_NAME               = 'JUICE_SA+Y_PLAN'
      FRAME_-28012_CLASS              =  3
      FRAME_-28012_CLASS_ID           = -28012
      FRAME_-28012_CENTER             = -28011
      CK_-28012_SCLK                  = -28999
      CK_-28012_SPK                   = -28011

      FRAME_JUICE_SA+Y_MEAS           = -28013
      FRAME_-28013_NAME               = 'JUICE_SA+Y_MEAS'
      FRAME_-28013_CLASS              =  3
      FRAME_-28013_CLASS_ID           = -28013
      FRAME_-28013_CENTER             = -28011
      CK_-28013_SCLK                  = -28
      CK_-28013_SPK                   = -28011

      FRAME_JUICE_SA-Y_ZERO           = -28014
      FRAME_-28014_NAME               = 'JUICE_SA-Y_ZERO'
      FRAME_-28014_CLASS              =  4
      FRAME_-28014_CLASS_ID           = -28014
      FRAME_-28014_CENTER             = -28015
      TKFRAME_-28014_RELATIVE         = 'JUICE_SPACECRAFT'
      TKFRAME_-28014_SPEC             = 'ANGLES'
      TKFRAME_-28014_UNITS            = 'DEGREES'
      TKFRAME_-28014_AXES             = (   3,      2,       1   )
      TKFRAME_-28014_ANGLES           = (   0.0,  180.0,   180.0 )

      FRAME_JUICE_SA-Y                = -28015
      FRAME_-28015_NAME               = 'JUICE_SA-Y'
      FRAME_-28015_CLASS              =  6
      FRAME_-28015_CLASS_ID           = -28015
      FRAME_-28015_CENTER             = -28015
      FRAME_-28015_ALIGNED_WITH       = (
                                         'JUICE_SA-Y_PLAN'
                                         'JUICE_SA-Y_MEAS'
                                        )

      FRAME_JUICE_SA-Y_PLAN           = -28016
      FRAME_-28016_NAME               = 'JUICE_SA-Y_PLAN'
      FRAME_-28016_CLASS              =  3
      FRAME_-28016_CLASS_ID           = -28016
      FRAME_-28016_CENTER             = -28015
      CK_-28016_SCLK                  = -28999
      CK_-28016_SPK                   = -28015

      FRAME_JUICE_SA-Y_MEAS           = -28017
      FRAME_-28017_NAME               = 'JUICE_SA-Y_MEAS'
      FRAME_-28017_CLASS              =  3
      FRAME_-28017_CLASS_ID           = -28017
      FRAME_-28017_CENTER             = -28015
      CK_-28017_SCLK                  = -28
      CK_-28017_SPK                   = -28015

   \begintext


JUICE High Gain Antenna Frames
--------------------------------------------------------------------------

   JUICE spacecraft has a 2.4m diameter High Gain Antenna in X- and Ka-bands
   for nominal operations, Science data download and Radio Science
   Experiments. It is used as a sunshield during the cruise phase when close
   to the Sun.

   The JUICE High Gain Antenna, HGA, is rigidly attached to
   the -X side of the spacecraft bus. Therefore, the JUICE High Antenna
   frame, JUICE_HGA, is defined as a fixed offset frame with its orientation
   given relative to the JUICE_SPACECRAFT frame.

   The JUICE_HGA frame is defined as follows:

      -  +Z axis is in the antenna boresight direction (nominally
         co-aligned to the spacecraft -X axis);

      -  +Y axis is in the direction of the spacecraft +Y axis;

      -  +X completes the right hand frame;

      -  the origin of the frame is located at the geometric center of the
         HGA dish outer rim circle.

   X- and Ka-band antenna frames are defined such that their axes are
   nominally co-aligned with the axes of the JUICE_HGA frame and their
   origins are at the geometric centre of the HGA dish outer rim circle.
   These frames are introduced in order to include any possible misalignments
   between the X- and Ka-band pointing direction (maximum radiation power
   direction and gain).

   This diagram illustrates the JUICE High Gain Antenna frames:


   -Y s/c side view:
   -----------------
                                   ^
                               ~~  |
             +Xhga_ka          ||  | Nadir direction
             +Xhga_x           ||  |
             +Xhga             oo  |
                 ^ .    .------||------.
                 | |`.  | Science Deck |
                 | |  \ |      ||      |
    +Zhga_ka     | |   \|      ||      |
    +Zhga_x      | |    |      ||      |
    +Zhga        |/|    |     /||\     |
     <-----------x |    |     \||/     |
            +Yhga  |    |      ||      |
          +Yhga_x  |    |      |'^     |
         +Yhga_ka  |   /|      |'|+Zsc |
                   |  / |      |'|     |
                   |.'  |      |'|     |
                        '------|'|-----'  +Xsc
                            /__oox---------->
                               || +Ysc
                               ||  (into the page)
                               ~~                      +Ysc is into the page
                                                       +Yhga is into the page


   Nominally a single rotation of -90 degrees about the +Y axis is needed to
   co-align the spacecraft frame with the High Gain Antenna frame.

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_HGA                 = -28020
      FRAME_-28020_NAME               = 'JUICE_HGA'
      FRAME_-28020_CLASS              =  4
      FRAME_-28020_CLASS_ID           = -28020
      FRAME_-28020_CENTER             = -28020
      TKFRAME_-28020_RELATIVE         = 'JUICE_SPACECRAFT'
      TKFRAME_-28020_SPEC             = 'ANGLES'
      TKFRAME_-28020_UNITS            = 'DEGREES'
      TKFRAME_-28020_AXES             = ( 1,      3,      2   )
      TKFRAME_-28020_ANGLES           = ( 0.0,    0.0,   90.0 )

      FRAME_JUICE_HGA_X               = -28021
      FRAME_-28021_NAME               = 'JUICE_HGA_X'
      FRAME_-28021_CLASS              =  4
      FRAME_-28021_CLASS_ID           = -28021
      FRAME_-28021_CENTER             = -28020
      TKFRAME_-28021_RELATIVE         = 'JUICE_HGA'
      TKFRAME_-28021_SPEC             = 'ANGLES'
      TKFRAME_-28021_UNITS            = 'DEGREES'
      TKFRAME_-28021_AXES             = ( 1,      3,      2   )
      TKFRAME_-28021_ANGLES           = ( 0.0,    0.0,    0.0 )

      FRAME_JUICE_HGA_KA              = -28022
      FRAME_-28022_NAME               = 'JUICE_HGA_KA'
      FRAME_-28022_CLASS              =  4
      FRAME_-28022_CLASS_ID           = -28022
      FRAME_-28022_CENTER             = -28020
      TKFRAME_-28022_RELATIVE         = 'JUICE_HGA'
      TKFRAME_-28022_SPEC             = 'ANGLES'
      TKFRAME_-28022_UNITS            = 'DEGREES'
      TKFRAME_-28022_AXES             = ( 1,      3,      2   )
      TKFRAME_-28022_ANGLES           = ( 0.0,    0.0,    0.0 )

   \begintext


JUICE Medium Gain Antenna Frames
--------------------------------------------------------------------------

   The Medium Gain Antenna (MGA) provides communication during cruise when the
   HGA is used as sunshield. At Jupiter, the MGA support the Radio Science
   Experiment (RSE) in parallel to observation by other instruments
   (in nadir pointing). It also supports emergency up- and downlink in safe
   mode. To provide a maximum coverage, the MGA is mounted on a steerable
   boom with two pointing mechanisms.

   The MGA Main Assembly (MGAMA) is accommodated at the -X/-Y/+Z corner of the
   spacecraft. Its Antenna Pointing Mechanism (APM) with two degrees of
   freedom provides a full spherical articulation range.

   To incorporate rotations in the antenna pointing mechanisms gimbals with
   respect to the medium gain antenna the MGA frame chain includes the
   following frames: JUICE_MGA_APM, JUICE_MGA_AZ, JUICE_MGA_EL_ZERO,
   JUICE_MGA_EL and JUICE_MGA.


JUICE Medium Gain Antenna Frames Tree
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   The diagram below shows the JUICE Medium Gain Antenna frames hierarchy:

                                 "JUICE_SPACECRAFT"
                                 ------------------
                                          |
                                   fixed->|
                                          |
                                          v
                                   "JUICE_MGA_APM"
                               +---------------------+
                               |                     |
                           ck->|                 ck->|
                               |                     |
                               v                     v
                     "JUICE_MGA_AZ_PLAN"     "JUICE_MGA_AZ_MEAS"
                     -------------------     -------------------
                               |                     |
                               |                     |
                               |                     |
                               v                     v
                               +---------------------+
                                          |
                                  switch->|
                                          |
                                          v
                                    "JUICE_MGA_AZ"
                                    --------------
                                          |
                                   fixed->|
                                          |
                                          v
                                  "JUICE_MGA_EL_ZERO"
                                +---------------------+
                                |                     |
                            ck->|                 ck->|
                                |                     |
                                v                     v
                      "JUICE_MGA_EL_PLAN"     "JUICE_MGA_EL_MEAS"
                      -------------------     -------------------
                                |                     |
                                |                     |
                                |                     |
                                v                     v
                                +---------------------+
                                           |
                                   switch->|
                                           |
                                           v
                                     "JUICE_MGA_EL"
                                     --------------
                                           |
                                    fixed->|
                                           |
                                           v
                                       "JUICE_MGA"
                                       -----------


   The Medium Gain Antenna Pointing Mechanisms frame -- JUICE_MGA_APM -- is
   defined as a fixed-offset frame with respect to the JUICE_SPACECRAFT frame
   as follows (from [18]):

      -  +Z is parallel to the JUICE s/c +Z axis;

      -  +X is anti-parallel to the JUICE s/c +X axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the APM yoke geometric
         center.


   The JUICE Medium Gain Antenna Azimuth frame -- JUICE_MGA_AZ -- is a
   Switch Frame (see Section ``JUICE Spacecraft Bus Frame'' and [1] for more
   information) aligned with one of the different CK-based base frames
   -- JUICE_MGA_AZ_MEAS or JUICE_MGA_AZ_PLAN -- depending on the available
   orientation data or coverage of these data. The orientation of these
   CK-based base frames are relative to the JUICE_MGA_APM frame and are
   rotated an Azimuth Angle about the JUICE_MGA_APM +Z axis. They are
   defined as follows:

      - +Y axis is rotated an Azimuth Angle from the JUICE_MGA_APM frame +Y
        axis around the JUICE_MGA_APM frame +Z axis;

      - +Z axis is parallel to the JUICE_MGA_APM frame +Z axis;

      - +X completes the right hand frame;

      -  the origin of the frame is located at the APM yoke geometric
         center.


   The JUICE Medium Gain Antenna Elevation Zero frame -- JUICE_MGA_EL_ZERO --
   is defined as a fixed-offset frame with respect to the JUICE_MGA_AZ frame
   as follows:

      - +Z axis is anti-parallel to the JUICE_MGA_AZ frame +Z axis;

      - +X axis is anti-parallel to the JUICE_MGA_AZ frame +X axis;

      - +Y completes the right hand frame;

      -  the origin of the frame is located at the APM yoke geometric
         center.

   The JUICE Medium Gain Antenna Elevation frame -- JUICE_MGA_EL -- is a
   Switch Frame (see Section ``JUICE Spacecraft Bus Frame'' and [1] for more
   information) aligned with one of the different CK-based base frames
   -- JUICE_MGA_EL_MEAS or JUICE_MGA_EL_PLAN -- depending on the available
   orientation data or coverage of these data. The orientation of these
   CK-based base frames are relative to the JUICE_MGA_EL_ZERO frame and is
   rotated an Elevation Angle about the JUICE_MGA_EL_ZERO +Y axis. They are
   defined as follows:

      - +X axis is rotated an Elevation Angle from the JUICE_MGA_EL_ZERO frame
        +X axis around the JUICE_MGA_EL_ZERO frame +Yaxis;

      - +Y axis is parallel to the JUICE_MGA_EL_ZERO frame +Y axis;

      - +Z completes the right hand frame;

      -  the origin of the frame is located at the APM yoke geometric
         center.


   The JUICE Medium Gain Antenna -- JUICE_MGA -- frame is defined a fixed
   offset frame relative to the JUICE_MGA_EL as follows:

      -  +Y axis points from the gimbal toward the antenna dish
         symmetry axis;

      -  +Z axis is in the antenna boresight direction;

      -  +X axis completes the right hand frame;

      -  the origin of the frame is located at the geometric center of
         the MGA dish outer rim circle.


   The MGA stowed position is at Azimuth = -180 deg and Elevation = 180 deg.
   After release, it is driven to a nominal position of Azimuth = 0 deg
   and Elevation = 0 deg. The rotations of the Azimuth and Elevation angles
   are stored in separated segments in CK files.

   In order to implement the misalignments from [21] the following calculations
   have been performed:

      -  JUICE_MGA_APM is defined by the rotation matrix 'AZRF > SCRF' from
         [22], in addition a rotation of 90 degrees is applied around Y axis
         in order to nominally align the azimuth axis from [22] with the
         spacecraft Z axis.

      -  JUICE_MGA_EL_ZERO is defined by the rotation matrix
         'SCRF > ELRF (for AZ rot 180 degrees EL 180 degrees)' from [22]
         introducing the misalignment in the elevation axis. In addition two
         rotations of -90 degrees around X axis and 90 degrees around Z axis
         are performed to nominally coaling the elevation axis and the Y-axis
         of the azimuth frame for elevation equal to 0 degrees. The resulting
         matrix is multiplied by the rotation matrix to transform from
         JUICE_SPACECRAFT to JUICE_MGA_APM so to obtain the rotation matrix
         to transform from JUICE_MGA_EL_ZERO to JUICE_MGA_AZ (equivalent to
         JUICE_MGA_APM for azimuth equal to 0 degrees).

      -  The correction of the positions of the APM Center and Phase Centers
         has been obtained by iterating the process of correcting first the
         APM Center applying the error calculated by comparing the average
         point of all the azimuth range with elevation equal to 0 for both
         SPICE data and [22] data. The position correction is then applied to
         the phase center by obtaining the average point for one elevation
         revolution for both SPICE data and [22] data.


   These diagrams illustrate the JUICE Medium Gain Antenna Frames:


   -X s/c side (HGA, MGA side) view (MGA in stowed position):
   ----------------------------------------------------------

                                       +Zmga_apm
   \--------.                       ^   ^                    .--------/
   /        |               Nadir   |   |                    |        \
   \        |                       |   |                    |        /
   /        |                  .--------|.                   |        \
   \-.------'              MGA (o)======o------> +Ymga_apm   '------.-/
   /-"------. .-------------.  |  .---.  ||  .-------------. .------"-\
   \        | |             |-.|/ HGA   \||,-|             | |        /
   /        |=|               o|    x    |o------->        |=|        \
   \        | |             |_/|\       /| \_|             | |        /
   /-.------' '-------------'  | '.___.' |   '-------------' '------.-\
   \-"------.                  '---------'                   .------"-/
   /        |                     /   \                      |        \
   \        |                     '---'                      |        /
   /        |      ^ +Zsc      Main Engine                   |        \
   \--------'      |                                         '--------/
                   |
          +Ysc     |
          <--------x                           +Xsc is into the page
                    +Xsc                       +Xmga_apm and +Ymga are
                                                out of the page


   +Z s/c side view (MGA):
   -----------------------

                        +Xmga_apm
                +Ymga_az     ^
                       ^     |
                        \    |
                   MGA -)\   |            +Xmga_az
                          \  |          .>
               - Azimuth / \ |  ___ . '___ HGA
                 Angle  |   \|  . '      /
      \ +Ymga_apm <----------o'_`._____.'__.                      \
      /              +Zmga_az,             |                      /
      \              +Zmga_apm             |                      \
      /                      |   +Zsc    +Ysc                     /
      \=>o<===============>o-|      o------->o<===============>o<=\
      /    -Y Solar Array    |      |      |    +Y Solar Array    /
      \                      |      |      |                      \
      /                      .______|______.                      /
      \                             |                             \
                                    V
                                      +Xsc

                                                       +Zsc, +Zmga_az and
                                                       +Zmga_apm are out of
                                                       the page


   +Y MGA Azimuth frame side view:
   -------------------------------


                                 +Zmga_az,
                                 +Zmga_apm   +Xmga_el
                                     ^      ^
                                     |     /   ,^ +Zmga
                        Elevation    |_   /  ,'
                           angle  . '|''./ ,'
                    +Xmga < .   /    |  / ,
                              ' .    | /.
                               | ' . |/  \  81.5 degrees
          +Xmga_el_zero <------------x----|-------> +Xmga_az
                            +Ymga_az,| ' / .
                            +Ymga_el,|        ' - > +Zmga_el
                       +Ymga_el_zero,|
                               -Ymga |
                                     |
                                     |
                                     |
                                     v
                                 +Zmga_el_zero

                                                       +Ymga_az, +Ymga_el and
                                                       +Ymga_el_zero are into
                                                       the page. +Ymga is out
                                                       of the page


   -X s/c side (HGA, MGA side) view (MGA in nominal position):
   ----------------------------------------------------------


   \--------.                       ^                        .--------/
   /        |               Nadir   |                        |        \
   \        |                       |                        |        /
   /        |                  .---------.      +Zmga      +Ymga      \
   \-.------'                  |         o======(o---------> '------.-/
   /-"------. .-------------.  |  .---.  ||  .-- | ---------. .------"-\
   \        | |             |-.|/ HGA   \||,-|   |          | |        /
   /        |=|               o|    x    |o      |          |=|        \
   \        | |             |_/|\       /| \_|   v          | |        /
   /-.------' '-------------'  | '.___.' |   '- +Xmga ------' '------.-\
   \-"------.                  '---------'                   .------"-/
   /        |                     /   \                      |        \
   \        |                     '---'                      |        /
   /        |      ^ +Zsc      Main Engine                   |        \
   \--------'      |                                         '--------/
                   |
          +Ysc     |
          <--------x                           +Xsc is into the page
                    +Xsc                       +Zmga is out of the page


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_MGA_APM             = -28040
      FRAME_-28040_NAME               = 'JUICE_MGA_APM'
      FRAME_-28040_CLASS              =  4
      FRAME_-28040_CLASS_ID           = -28040
      FRAME_-28040_CENTER             = -28040
      TKFRAME_-28040_RELATIVE         = 'JUICE_SPACECRAFT'
      TKFRAME_-28040_SPEC             = 'MATRIX'
      TKFRAME_-28040_MATRIX           = (
                             -9.99998311e-01, -3.05704882e-13, -1.83767025e-03,
                              9.61822213e-07, -9.99999863e-01, -5.23391116e-04,
                             -1.83767000e-03, -5.23392000e-04,  9.99998175e-01
                                        )

      FRAME_JUICE_MGA_AZ              = -28041
      FRAME_-28041_NAME               = 'JUICE_MGA_AZ'
      FRAME_-28041_CLASS              =  6
      FRAME_-28041_CLASS_ID           = -28041
      FRAME_-28041_CENTER             = -28040
      FRAME_-28041_ALIGNED_WITH       = (
                                          'JUICE_MGA_AZ_PLAN'
                                          'JUICE_MGA_AZ_MEAS'
                                         )

      FRAME_JUICE_MGA_AZ_PLAN         = -28042
      FRAME_-28042_NAME               = 'JUICE_MGA_AZ_PLAN'
      FRAME_-28042_CLASS              =  3
      FRAME_-28042_CLASS_ID           = -28042
      FRAME_-28042_CENTER             = -28040
      CK_-28042_SCLK                  = -28999
      CK_-28042_SPK                   = -28040

      FRAME_JUICE_MGA_AZ_MEAS         = -28043
      FRAME_-28043_NAME               = 'JUICE_MGA_AZ_MEAS'
      FRAME_-28043_CLASS              =  3
      FRAME_-28043_CLASS_ID           = -28043
      FRAME_-28043_CENTER             = -28040
      CK_-28043_SCLK                  = -28
      CK_-28043_SPK                   = -28040

      FRAME_JUICE_MGA_EL_ZERO         = -28044
      FRAME_-28044_NAME               = 'JUICE_MGA_EL_ZERO'
      FRAME_-28044_CLASS              =  4
      FRAME_-28044_CLASS_ID           = -28044
      FRAME_-28044_CENTER             = -28048
      TKFRAME_-28044_RELATIVE         = 'JUICE_MGA_AZ'
      TKFRAME_-28044_SPEC             = 'MATRIX'
      TKFRAME_-28044_MATRIX           = (
                              9.89019073e-01,  7.83025322e-05, -1.47787910e-01,
                             -4.27301180e-04,  9.99997195e-01, -2.32973784e-03,
                              1.47787313e-01,  2.36730427e-03,  9.89016332e-01
                                        )

      FRAME_JUICE_MGA_EL              = -28045
      FRAME_-28045_NAME               = 'JUICE_MGA_EL'
      FRAME_-28045_CLASS              =  6
      FRAME_-28045_CLASS_ID           = -28045
      FRAME_-28045_CENTER             = -28048
      FRAME_-28045_ALIGNED_WITH       = (
                                          'JUICE_MGA_EL_PLAN'
                                          'JUICE_MGA_EL_MEAS'
                                         )

      FRAME_JUICE_MGA_EL_PLAN         = -28046
      FRAME_-28046_NAME               = 'JUICE_MGA_EL_PLAN'
      FRAME_-28046_CLASS              =  3
      FRAME_-28046_CLASS_ID           = -28046
      FRAME_-28046_CENTER             = -28048
      CK_-28046_SCLK                  = -28999
      CK_-28046_SPK                   = -28048

      FRAME_JUICE_MGA_EL_MEAS         = -28047
      FRAME_-28047_NAME               = 'JUICE_MGA_EL_MEAS'
      FRAME_-28047_CLASS              =  3
      FRAME_-28047_CLASS_ID           = -28047
      FRAME_-28047_CENTER             = -28048
      CK_-28047_SCLK                  = -28
      CK_-28047_SPK                   = -28048

      FRAME_JUICE_MGA                 = -28048
      FRAME_-28048_NAME               = 'JUICE_MGA'
      FRAME_-28048_CLASS              =  4
      FRAME_-28048_CLASS_ID           = -28048
      FRAME_-28048_CENTER             = -28048
      TKFRAME_-28048_RELATIVE         = 'JUICE_MGA_EL'
      TKFRAME_-28048_SPEC             = 'ANGLES'
      TKFRAME_-28048_UNITS            = 'DEGREES'
      TKFRAME_-28048_AXES             = (   3,     1,      2    )
      TKFRAME_-28048_ANGLES           = (   0.0,   0.0,  -81.5  )

   \begintext


JUICE Low Gain Antenna Frames
--------------------------------------------------------------------------

   The low gain antenna is an essential component of the spacecraft in an
   emergency case. The three main phases from the communication perspective
   are the Launch and Early Orbit Phase (LEOP), the commissioning and cruise
   phase, and the operational phase at Jupiter. During and after separation,
   full antenna coverage is necessary before a stable attitude is achieved,
   requiring two antennas with spherical coverage. In case of spacecraft
   survival mode, the LGAs provide the communication capability for recovery
   by ground operation.

   The optimum location of the LGAs providing maximum coverage is found on -X
   and +X side of the s/c, thus looking into HGA direction, respectively
   into the opposite direction of the HGA.

   The LGA installed in the +X panel of the JUICE Spacecraft frame
   -- JUICE_LGA+X -- is a  ``fixed-offset'', defined with respect to the
   JUICE_SPACECRAFT frame as follows (from [15]):

      -  +Z axis is in the antenna boresight direction (nominally
         co-aligned to the spacecraft +X axis);

      -  +Y axis is in the direction of the spacecraft +X axis;

      -  +X completes the right hand frame;

      -  the origin of the frame is located at the geometric center of the
         LGA dish outer rim circle.


   The LGA installed in the -X panel of the JUICE Spacecraft frame
   -- JUICE_LGA-X -- is a  ``fixed-offset'', defined with respect to the
   JUICE_SPACECRAFT frame as follows (from [15]):

      -  +Z axis is in the antenna boresight direction (nominally
         co-aligned to the spacecraft +X axis);

      -  +Y axis is in the direction of the spacecraft +X axis;

      -  +X completes the right hand frame;

      -  the origin of the frame is located at the geometric center of the
         LGA dish outer rim circle.


   This diagram illustrate the JUICE Low Gain Antennas frames:


   +X s/c side (opposite to HGA side) view:
   ----------------------------------------

                                       ^
          .---------.                  | Nadir            .---------.
          |         |                  |                  |         |
          |         |             Science Deck            |         |
          '----.----'              .-------.              '----.----'
   /----. .----'----. .---------._ |^+Ylga+x  .---------. .----'----. .-----\
   \    |_|         |_|         | \||      |/ |         |_|         |_|     /
   /    | |         | |         |_/||  ^   |\_|         | |         | |     \
   \----' '----.----' '---------'  ||  |+Zsc  +Xlga+x --' '----.----' '-----/
          .----'----.              'o--|------>           .----'----.
          |         |          +Zlga+x | \   +Ysc         |         |
          |         |                '-o------>           |         |
          '---------'                +Xsc                 '---------'


                                                      +Xsc and +Zlga+x are
                                                       out of the page


   -X s/c side (HGA side) view:
   ----------------------------

                                       +Ylga-x
   \--------.                 Nadir ^   ^                   .--------/
   /        |                       |   |                   |        \
   \        |                       |   |                   |        /
   /        |                  .--------|.                  |        \
   \-.------'                  |        o-------> +Xlga-x   '------.-/
   /-"------. .-------------.  | . +Zlga-x  .-------------. .------"-\
   \        | |             |-.|/ HGA   \|,-|             | |        /
   /        |=|             |  |    x    |  |             |=|        \
   \        | |             |_/|\       /|\_|             | |        /
   /-.------' '-------------'  | '.___.' |  '-------------' '------.-\
   \-"------.                  '---------'                  .------"-/
   /        |                     /   \                     |        \
   \        |                     '---'                     |        /
   /        |      ^ +Zsc                                   |        \
   \--------'      |                                        '--------/
                   |
          +Ysc     |
          <--------x                           +Xsc is into the page
                    +Xsc                       +Zlga-x is out of the page


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_LGA+X                = -28071
      FRAME_-28071_NAME                = 'JUICE_LGA+X'
      FRAME_-28071_CLASS               =  4
      FRAME_-28071_CLASS_ID            = -28071
      FRAME_-28071_CENTER              = -28071
      TKFRAME_-28071_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28071_SPEC              = 'ANGLES'
      TKFRAME_-28071_UNITS             = 'DEGREES'
      TKFRAME_-28071_AXES              = (   3,     1,       2   )
      TKFRAME_-28071_ANGLES            = (   0.0, -90.0,   -90.0 )


      FRAME_JUICE_LGA-X                = -28072
      FRAME_-28072_NAME                = 'JUICE_LGA-X'
      FRAME_-28072_CLASS               =  4
      FRAME_-28072_CLASS_ID            = -28072
      FRAME_-28072_CENTER              = -28072
      TKFRAME_-28072_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28072_SPEC              = 'ANGLES'
      TKFRAME_-28072_UNITS             = 'DEGREES'
      TKFRAME_-28072_AXES              = (   3,       1,      2   )
      TKFRAME_-28072_ANGLES            = (  00.0,   -90.0,   90.0 )

   \begintext


JUICE Magnetometer Boom Frames
--------------------------------------------------------------------------

   This section contains the definition of the Magnetometer Boom (MAG Boom)
   frames.

   The Magnetometer Boom (MAG Boom) is one of the Instrument Supporting
   structures of the JUICE spacecraft. The MAG Boom is attached to the
   -X/-Z corner of the spacecraft main body and supports toward its outer
   end the J-MAG Inboard, Outboard and Scalar magnetometer sensors, and
   the Radio Wave Instrument and the Search Coil Magnetometer of the
   Radio and Plasma Wave Instrument (RPWI) experiments.

   The MAG Boom is a deployable structure comprising that ranges from
   3.6m long in stowed configuration at launch (along +Zsc axis), up to
   10.6m long in deployed configuration (in the -Xc, -Zsc quadrant).


Magnetometer Boom Frames Tree
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   The diagram below shows the Magnetometer Boom Frames frame hierarchy:


                    "JUICE_SPACECRAFT"
                    ------------------
                            |
                            |<-fixed
                            |
                            v
                    "JUICE_MAG_BOOM-H"
                +------------------------+
                |                        |
                |<-ck                    |<-ck
                |                        |
                v                        v
      "JUICE_MAG_BOOM_PLAN"    "JUICE_MAG_BOOM_MEAS"
      ---------------------    ---------------------
                |                        |
                |                        |
                |                        |
                v                        v
                +------------------------+
                            |
                            |<-switch
                            |
                            V
                    "JUICE_MAG_BOOM"
                    ----------------


MAG Boom Hinge frame
~~~~~~~~~~~~~~~~~~~~

   The Magnetometer's boom hinge  -- JUICE_MAG_BOOM-H -- which is at the
   interface of the boom to the s/c -- not to be confused with the two
   hinges in the boom -- is defined as follows (from [24]):

      -  +X axis is nominally co-aligned with the s/c +Z mechanical
         axis; and co-aligned with the boom's third segment where the
         sensors are mounted such this axis points from the inboard
         magnetometer sensor towards the scalar magnetometer.

      -  +Z axis is nominally co-aligned with the s/c +X mechanical
         axis, pointing opposite the HGA;

      -  +Y axis completes the right hand frame; and its nominally co-aligned
         with the Magnetometer boom's hinge rotation axis;

      -  the origin of the frame is located at the boom's hinge geometrical
         center.


   These diagram illustrates the JUICE MAG Boom Hinge frame:


   +X s/c side (opposite to HGA side) view:
   ----------------------------------------

                                       ^
          .---------.                  | Nadir            .---------.
          |         |                  |                  |         |
          |         |             Science Deck            |         |
          '----.----'              .-------.              '----.----'
   /----. .----'----. .---------._ |^+Xmagb-h .---------. .----'----. .-----\
   \    |_|         |_|         | \||      |/ |         |_|         |_|     /
   /    | |         | |         |_/||  ^   |\_|         | |         | |     \
   \----' '----.----' '---------'  ||  |+Zsc  '---------' '----.----' '-----/
          .----'- +Ymagb-h <--------o--|---'              .----'----.
          |         |                / | \   +Ysc         |         |
          |         |                '-o------>           |         |
          '---------'                +Xsc                 '---------'


                                                      +Xsc and +Zmagb-h are
                                                       out of the page


   -Y s/c side view (with MAG Boom in stowed configuration):
   ---------------------------------------------------------
                              ^
                          ~~  |
                          ||  | Nadir direction
                          ||  |
                          oo  |
              .    .------||------.
              |`.  | Science Deck |o
          HGA |  \ |      ||      |||# MAGSCA
              |   \|      ||      ||||
              |    |      ||      |||# MAGOBS
              |    |     /||\     |||\ SCM
              |    x     \||/     |||\ RWI       +Xmagb-h
              |    |      ||      ||||         ^
              |    |      |'^     ||||         |
              |   /|      |'|+Zsc |||# MAGIBS  |
              |  / |      |'|     ||||         |
              |.'  |      |'|     ||o          |       +Zmagb-h
                   '------|'|-----'o           o-------->
                       /__oox---------->
                          || +Ysc      +Xsc             +Ysc is into the page
                          ||                            +Ymagb-h is out of the
                          ~~                             page


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_MAG_BOOM-H           = -28030
      FRAME_-28030_NAME                = 'JUICE_MAG_BOOM-H'
      FRAME_-28030_CLASS               =  4
      FRAME_-28030_CLASS_ID            = -28030
      FRAME_-28030_CENTER              = -28031
      TKFRAME_-28030_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28030_SPEC              = 'ANGLES'
      TKFRAME_-28030_UNITS             = 'DEGREES'
      TKFRAME_-28030_AXES              = ( 2,      1,     3   )
      TKFRAME_-28030_ANGLES            = ( 90.0, 180.0,   0.0 )

   \begintext


MAG Boom frame
~~~~~~~~~~~~~~

   Since both, pre- and post- deployment orientation of the Magnetometer
   Boom could be required for J-MAG and RPWI data analysis, the boom's frame
   is defined as a CK-based frame with its orientation provided in CK files.
   This frame is describing the time dependent relationship between the
   Magnetometer Boom hinge and JUICE spacecraft fixed frames.

   Nominally the boom deploys from the boom hinge +X direction, making an angle
   of 141 deg from the spacecraft +Z axis after deployment.

   The Magnetometer Boom frame is defined as follows (from [24]):

      -  +X axis is parallel to the boom and points from the boom
         deployment hinge toward its tip; and in stowed configuration
         is nominally co-aligned with the s/c +Z axis;

      -  +Y axis is parallel to the Magnetometer boom's hinge rotation axis;

      -  +Z axis completes the right hand frame;

      -  the origin of the frame is located at the boom's hinge geometrical
         center.


   The following diagram illustrates the JUICE MAG Boom frame:

   -Y s/c side view (with MAG Boom in stowed configuration):
   ---------------------------------------------------------
                              ^
                          ~~  |
                          ||  | Nadir direction
                          ||  |
                          oo  |
              .    .------||------.
              |`.  | Science Deck |
          HGA |  \ |      ||      |
              |   \|      ||      |
              |    |      ||      |
              |    |     /||\     |
              |    x     \||/     |                          +Xmagb-h
              |    |      ||      |                        ^
              |    |      |'^     |                        |
              |   /|      |'|+Zsc |                        |
              |  / |      |'|     | - .                    |
              |.'  |      |'| +Ymagb    '                  |       +Zmagb-h
                   '------|'|-----'o     .                 o-------->
                      +Ysc x-----> `. .' 141 degrees
                          ||    +Xsc  `.                +Ysc is into the page,
                          || .'         `. +Xmagb       +Ymagb is out of the
                          ~.'             v.             page.
                         .'                 `o
                       v'                     `.
                        +Zmagb                  `.
                                                  `.
                                                    `o     |  /
                                             MAGIBS   `#   | /
                                                        `. |/ RWI
                                                    ------`.--------
                                                          /='.= SCM
                                                         / |  `# MAGOBS
                                                        /  |    `# MAGSCA


   These sets of keywords define the Magnetometer's boom frame as a Switch
   Frame (see [1] for more information) aligned with one of the different
   CK-based base frames -- JUICE_MAG_BOOM_PLAN or JUICE_MAG_BOOM_MEAS
   -- depending on coverage and their orientation is given relative to
   JUICE_MAG_BOOM-H:

   \begindata

      FRAME_JUICE_MAG_BOOM_MEAS        = -28032
      FRAME_-28032_NAME                = 'JUICE_MAG_BOOM_MEAS'
      FRAME_-28032_CLASS               =  3
      FRAME_-28032_CLASS_ID            = -28032
      FRAME_-28032_CENTER              = -28031
      CK_-28032_SCLK                   = -28
      CK_-28032_SPK                    = -28

      FRAME_JUICE_MAG_BOOM_PLAN        = -28033
      FRAME_-28033_NAME                = 'JUICE_MAG_BOOM_PLAN'
      FRAME_-28033_CLASS               =  3
      FRAME_-28033_CLASS_ID            = -28033
      FRAME_-28033_CENTER              = -28031
      CK_-28033_SCLK                   = -28999
      CK_-28033_SPK                    = -28

      FRAME_JUICE_MAG_BOOM            = -28031
      FRAME_-28031_NAME               = 'JUICE_MAG_BOOM'
      FRAME_-28031_CLASS              =  6
      FRAME_-28031_CLASS_ID           = -28031
      FRAME_-28031_CENTER             = -28031
      FRAME_-28031_ALIGNED_WITH       = (
                                          'JUICE_MAG_BOOM_PLAN'
                                          'JUICE_MAG_BOOM_MEAS'
                                         )

   \begintext


JUICE Star Trackers Frames
--------------------------------------------------------------------------

   There are three Star Trackers Optical Heads (STR-OHs) mounted in the
   +X s/c Panel (Opposite side of the HGA panel). The STRs are nominally
   oriented with their boresights with a given azimuth and elevation angles
   with respect to the s/c reference frame as follows from [14]:


                   | Azimuth (degrees) | Elevation (degrees)
         ----------+-------------------+--------------------
          STR-OH1  |      -51.1        |      -40.2
          STR-OH2  |      -15.0        |        5.0
          STR-OH3  |       58.2        |      -44.8


   The X and Y axis of the STR frames are aligned with the sensors
   Active Pixel Sensor (APS) rows and columns respectively.

   The Star Tracker STR-OH1, STR-OH2 and STR-OH3 frames -- JUICE_STR-OH1,
   JUICE_STR-OH2 and JUICE_STR-OH3 -- are defined as follows:

      -  +Z axis points along the Star Tracker boresight;

      -  +X axis is nominally parallel to the APS sensor rows;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the Star Tracker focal
         point.

   Nominally, the following rotations, first about +Y, then about +Z
   and then about +Y, are required in order to align each of the
   JUICE_STR-OHx frames to the s/c frame.


                             Rotation     Rotation      Rotation
           `To' frame        about +Y     about +Z      about +Y
          --------------     --------     ---------     ---------
           JUICE_STR-OH1     90.0 deg     -51.1 deg      40.2 deg
           JUICE_STR-OH2     90.0 deg     -15.0 deg      -5.0 deg
           JUICE_STR-OH3     90.0 deg      58.2 deg      44.8 deg


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_STR-OH1              = -28061
      FRAME_-28061_NAME                = 'JUICE_STR-OH1'
      FRAME_-28061_CLASS               =  4
      FRAME_-28061_CLASS_ID            = -28061
      FRAME_-28061_CENTER              = -28061
      TKFRAME_-28061_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28061_SPEC              = 'ANGLES'
      TKFRAME_-28061_UNITS             = 'DEGREES'
      TKFRAME_-28061_AXES              = (   2,     3,     2   )
      TKFRAME_-28061_ANGLES            = ( -40.2,  51.1, -90.0 )

      FRAME_JUICE_STR-OH2              = -28062
      FRAME_-28062_NAME                = 'JUICE_STR-OH2'
      FRAME_-28062_CLASS               =  4
      FRAME_-28062_CLASS_ID            = -28062
      FRAME_-28062_CENTER              = -28062
      TKFRAME_-28062_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28062_SPEC              = 'ANGLES'
      TKFRAME_-28062_UNITS             = 'DEGREES'
      TKFRAME_-28062_AXES              = (   2,    3,     2    )
      TKFRAME_-28062_ANGLES            = ( 5.0,   15.0, -90.0  )

      FRAME_JUICE_STR-OH3              = -28063
      FRAME_-28063_NAME                = 'JUICE_STR-OH3'
      FRAME_-28063_CLASS               =  4
      FRAME_-28063_CLASS_ID            = -28063
      FRAME_-28063_CENTER              = -28063
      TKFRAME_-28063_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28063_SPEC              = 'ANGLES'
      TKFRAME_-28063_UNITS             = 'DEGREES'
      TKFRAME_-28063_AXES              = (   2,      3,      2   )
      TKFRAME_-28063_ANGLES            = ( -44.8,  -58.2,  -90.0 )

   \begintext


JUICE Navigation Cameras Frames
--------------------------------------------------------------------------

   The two JUICE Navigation Cameras (NavCam) are accommodated on the optical
   bench close to the STR-OH providing high pointing accuracy and stability
   to all the units.

   The Jupiter NavCam frames -- JUICE_NAVCAM-1 and JUICE_NAVCAM-2 --
   are defined as follows:

      -  +Z axis points along the Camera boresight;

      -  +X axis is nominally parallel to the CCD sensor lines;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the Camera focal
         point.

   The JUICE_NAVCAM-* are nominally co-aligned with the JUICE s/c frame.

   The instrument alignment has been measured after mechanical tests
   during the fourth alignment campaign as reported in [26]. The following
   misalignment is introduced as three rotations expressed in arcseconds from
   spacecraft to NAVCAM-* instrument reference frames:

     Rotation = (     0.0,    757.0,      23.0  )
       SC -> NAVCAM-1    Rz        Ry         Rx

     Rotation = (     0.0,   -605.0,    1691.0  )
       SC -> NAVCAM-2    Rz        Ry         Rx

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_NAVCAM-1        = -28051
      FRAME_-28051_NAME           = 'JUICE_NAVCAM-1'
      FRAME_-28051_CLASS          =  4
      FRAME_-28051_CLASS_ID       = -28051
      FRAME_-28051_CENTER         = -28051
      TKFRAME_-28051_RELATIVE     = 'JUICE_SPACECRAFT'
      TKFRAME_-28051_SPEC         = 'ANGLES'
      TKFRAME_-28051_UNITS        = 'DEGREES'
      TKFRAME_-28051_AXES         = (  3,           2,          1         )
      TKFRAME_-28051_ANGLES       = (  0.00002344, -0.2102778, -0.0063888 )

      FRAME_JUICE_NAVCAM-2        = -28052
      FRAME_-28052_NAME           = 'JUICE_NAVCAM-2'
      FRAME_-28052_CLASS          =  4
      FRAME_-28052_CLASS_ID       = -28052
      FRAME_-28052_CENTER         = -28052
      TKFRAME_-28052_RELATIVE     = 'JUICE_SPACECRAFT'
      TKFRAME_-28052_SPEC         = 'ANGLES'
      TKFRAME_-28052_UNITS        = 'DEGREES'
      TKFRAME_-28052_AXES         = (  3,          2,          1         )
      TKFRAME_-28052_ANGLES       = ( -0.00137778, 0.1680612, -0.4697202 )

   \begintext


JUICE Monitoring Cameras Frames
--------------------------------------------------------------------------

   Two JUICE Monitoring Units (JMU) and two JUICE Monitoring Cameras (JMC) are
   accommodated to enhance the observability of the spacecraft and its
   instruments, at marginal impact on spacecraft design and its budgets
   (power, mass).

   The small size of the camera (100 x 100 x 100 mm) helps to accommodate it
   on the optimum position, here also without impact on spacecraft design. The
   first camera is accommodated on the bottom of the +X wall, looking in +Z/+Y
   direction toward RIME +X antenna and +Y solar wing. The second camera is
   accommodated on the top of the +Z/+Y edge, looking towards -X/-Y allowing to
   monitor the first hinges of RIME -X antenna. Both cameras thus benefit from
   the +X spacecraft face favourable environment (no direct Sun illumination).

   The JUICE Monitoring Cameras frames -- JUICE_JMC-1 and JUICE_JMC-2 --
   are defined as follows:

      -  +Z axis points along the Camera boresight;

      -  +X axis is nominally parallel to the CMOS sensor lines;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the Camera focal
         point.


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_JMC-1                = -28081
      FRAME_-28081_NAME                = 'JUICE_JMC-1'
      FRAME_-28081_CLASS               =  4
      FRAME_-28081_CLASS_ID            = -28081
      FRAME_-28081_CENTER              = -28081
      TKFRAME_-28081_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28081_SPEC              = 'ANGLES'
      TKFRAME_-28081_UNITS             = 'DEGREES'
      TKFRAME_-28081_AXES              = (  1,     2,    3   )
      TKFRAME_-28081_ANGLES            = ( 50.0, -30.0,  0.0 )

      FRAME_JUICE_JMC-2                = -28082
      FRAME_-28082_NAME                = 'JUICE_JMC-2'
      FRAME_-28082_CLASS               =  4
      FRAME_-28082_CLASS_ID            = -28082
      FRAME_-28082_CENTER              = -28082
      TKFRAME_-28082_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28082_SPEC              = 'ANGLES'
      TKFRAME_-28082_UNITS             = 'DEGREES'
      TKFRAME_-28082_AXES              = ( 3,     2,        1   )
      TKFRAME_-28082_ANGLES            = ( 0.0, -90.0,   -132.0 )

   \begintext


GALA Frames
--------------------------------------------------------------------------

   This section contains the definition of the GAnymede Laser Altimeter
   (GALA) instrument frames.


GALA Frame Tree
~~~~~~~~~~~~~~~

   The diagram below shows the GALA frame hierarchy:

                               "JUICE_SPACECRAFT"
                               ------------------
                                       |
                                       |<-fixed
                                       |
                                       v
                                "JUICE_GALA_BASE"
           +---------------------------------------------------------+
           |                            |                            |
           |                            |                            |
           |<-fixed                     |<-fixed                     |<-fixed
           |                            |                            |
           v                            v                            v
   "JUICE_GALA_TXL_MAIN"       "JUICE_GALA_TXL_RED"           "JUICE_GALA_RXT"
   ---------------------       --------------------           ----------------


GALA instrument Base frame
~~~~~~~~~~~~~~~~~~~~~~~~~~

   The GALA main unit is rigidly mounted on the spacecraft science deck.
   Therefore, the frame associated with it -- the GALA main unit base
   frame, JUICE_GALA_BASE --  is specified as a fixed offset frame relative
   with its orientation given relative to the JUICE_SPACECRAFT frame.

   The GALA main unit base frame is defined by the laser altimeter design
   and its mounting on the spacecraft as follows:

      -  +Z axis is along the nominal GALA laser head transmitter and
         receiver telescope boresights; it is nominally co-aligned with the
         spacecraft +Z axis;

      -  +Y axis is co-aligned with the +Y spacecraft axis;

      -  +X axis completes the right-handed frame;

      -  the origin of the frame is located at the center of the GALA
         reference hole (RH) at the instrument's interface plane, i.e. the
         unit mounting plane to the spacecraft.

   Any misalignment between the nominal and actual GALA mounting alignment
   measured pre-launch should be incorporated into the definition of this
   frame.


   This diagram illustrates nominal JUICE_GALA_BASE frame with respect to
   the spacecraft frame.

   +Z s/c side view:
   -----------------
                                                          direction
                                                          of flight
                               ___________ HGA        <-------------->
                               \         /
      \                      .__`._____.'__.                      \
      /                      |             |                      /
      \                      |             |                      \
      /                      |   +Zsc    +Ysc                     /
      \=>o<===============>o-|      o------->o<===============>o<=\
      /    -Y Solar Array    |___.  |      |    +Y Solar Array    /
      \                      | o------>    |                      \
      /                      ._|_|__|__+Ygala_base                /
      \                        |    |                             \
                               |    V +Xsc
                               V
                                +Xgala_base
                                             +Zsc and +Zgala_base are
                                                 out of page


   Nominally, the GALA base frame is co-aligned with the s/c frame.

   The instrument alignment has been measured after mechanical tests
   during the fourth alignment campaign as reported in [26]. The following
   misalignment is introduced as three rotations expressed in arcseconds from
   spacecraft to GALA instrument reference frames:

     Rotation = (     0.0,    -30.0,    -175.0  )
         SC -> GALA     Rz        Ry         Rx

   These values were updated in the last alignment campaign before launch
   in Kourou [27]:

     Rotation = (     0.0,   -183.0,      33.0  )
         SC -> GALA     Rz        Ry         Rx

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_GALA_BASE       = -28100
      FRAME_-28100_NAME           = 'JUICE_GALA_BASE'
      FRAME_-28100_CLASS          =  4
      FRAME_-28100_CLASS_ID       = -28100
      FRAME_-28100_CENTER         = -28100
      TKFRAME_-28100_RELATIVE     = 'JUICE_SPACECRAFT'
      TKFRAME_-28100_SPEC         = 'ANGLES'
      TKFRAME_-28100_UNITS        = 'DEGREES'
      TKFRAME_-28100_AXES         = (  3,        2,            1           )
      TKFRAME_-28100_ANGLES       = (  0.0,      0.050833333, -0.009166666 )

   \begintext


GALA Transmitter Laser frames
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   The GALA Transmitter laser (TXL) beam main laser JUICE_GALA_TXL_MAIN and
   redundant laser JUICE_GALA_TXL_RED frames, are defined exactly as, and is
   nominally co-aligned with, the GALA base frame JUICE_GALA_BASE. These frames
   are introduced to allow incorporating into the Laser Head Module (LHM) frame
   chain any misalignment between the instrument base and the main and redundant
   laser beams.

   \begindata

      FRAME_JUICE_GALA_TXL_MAIN        = -28111
      FRAME_-28111_NAME                = 'JUICE_GALA_TXL_MAIN'
      FRAME_-28111_CLASS               =  4
      FRAME_-28111_CLASS_ID            = -28111
      FRAME_-28111_CENTER              = -28100
      TKFRAME_-28111_RELATIVE          = 'JUICE_GALA_BASE'
      TKFRAME_-28111_SPEC              = 'ANGLES'
      TKFRAME_-28111_UNITS             = 'DEGREES'
      TKFRAME_-28111_AXES              = (  1,   2,   3   )
      TKFRAME_-28111_ANGLES            = (  0.0, 0.0, 0.0 )

      FRAME_JUICE_GALA_TXL_RED         = -28112
      FRAME_-28112_NAME                = 'JUICE_GALA_TXL_RED'
      FRAME_-28112_CLASS               =  4
      FRAME_-28112_CLASS_ID            = -28112
      FRAME_-28112_CENTER              = -28100
      TKFRAME_-28112_RELATIVE          = 'JUICE_GALA_BASE'
      TKFRAME_-28112_SPEC              = 'ANGLES'
      TKFRAME_-28112_UNITS             = 'DEGREES'
      TKFRAME_-28112_AXES              = (  1,   2,   3   )
      TKFRAME_-28112_ANGLES            = (  0.0, 0.0, 0.0 )

   \begintext


GALA Receiver Telescope frame
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   The GALA Receiver Telescope (RXT) frame, JUICE_GALA_RXT, is defined
   exactly as, and is nominally co-aligned with, the GALA base frame
   JUICE_GALA_BASE. This frame is introduced to allow incorporating into
   the Receiver Telescope frame chain any misalignment between the
   instrument base and the laser beam receiver telescope measured prior
   to delivering the camera for installation on the spacecraft.

   \begindata

      FRAME_JUICE_GALA_RXT             = -28120
      FRAME_-28120_NAME                = 'JUICE_GALA_RXT'
      FRAME_-28120_CLASS               =  4
      FRAME_-28120_CLASS_ID            = -28120
      FRAME_-28120_CENTER              = -28100
      TKFRAME_-28120_RELATIVE          = 'JUICE_GALA_BASE'
      TKFRAME_-28120_SPEC              = 'ANGLES'
      TKFRAME_-28120_UNITS             = 'DEGREES'
      TKFRAME_-28120_AXES              = (  1,   2,   3   )
      TKFRAME_-28120_ANGLES            = (  0.0, 0.0, 0.0 )

   \begintext


JANUS Frames
--------------------------------------------------------------------------

   This section contains the definition of the Jovis, Amorum ac Natorum
   Undique Scrutator (JANUS) camera system instrument frames.


JANUS Frame Tree
~~~~~~~~~~~~~~~~

   The diagram below shows the JANUS frame hierarchy:


                             "JUICE_SPACECRAFT"
                             ------------------
                                     |
                                     |<-fixed
                                     |
                                     v
                               "JUICE_JANUS"
                               -------------


JANUS Camera System Frame
~~~~~~~~~~~~~~~~~~~~~~~~~

   The JANUS camera frame -- JUICE_JANUS -- is defined as follows (see [8]):

      -  +Z axis points along the camera boresight;

      -  +Y axis is parallel to the apparent image columns; it is
         nominally co-aligned with the spacecraft +Y axis;

      -  +X axis completes the right hand frame; it is nominally
         parallel to the apparent image lines and co-aligned with
         the spacecraft +X axis;

      -  the origin of the frame is located at the camera focal point.

   This diagram illustrates the JANUS camera frame:


   +Z s/c side view:
   -----------------
                                                          direction
                                                          of flight
                               ___________ HGA        <-------------->
                               \         /
      \                      .__`._____.'__.                      \
      /                      |             |                      /
      \                      |             |                      \
      /                      |   +Zsc    +Ysc                     /
      \=>o<===============>o-|      o------->o<===============>o<=\
      /    -Y Solar Array    |___.  |      |    +Y Solar Array    /
      \                      | o------>    |                      \
      /                      ._|_|__|__+Yjanus                    /
      \                        |    |                             \
                               |    V +Xsc
                               V
                                +Xjanus
                                             +Zsc and +Zjanus are
                                                 out of page


   Nominally, the JANUS camera frame is co-aligned with the spacecraft
   frame.

   The instrument alignment has been measured after mechanical tests
   during the fourth alignment campaign as reported in [26]. The following
   misalignment is introduced as three rotations expressed in arcseconds from
   spacecraft to JANUS instrument reference frames:

     Rotation = (      0.0,   -375.0,    -172.0  )
         SC -> JANUS     Rz        Ry         Rx

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_JANUS               = -28200
      FRAME_-28200_NAME               = 'JUICE_JANUS'
      FRAME_-28200_CLASS              =  4
      FRAME_-28200_CLASS_ID           = -28200
      FRAME_-28200_CENTER             = -28200
      TKFRAME_-28200_RELATIVE         = 'JUICE_SPACECRAFT'
      TKFRAME_-28200_SPEC             = 'ANGLES'
      TKFRAME_-28200_UNITS            = 'DEGREES'
      TKFRAME_-28200_AXES             = (  3,         2,          1          )
      TKFRAME_-28200_ANGLES           = ( -0.000087,  0.1041666,  0.04777786 )

   \begintext


J-MAG Frames
--------------------------------------------------------------------------

   This section contains the definition of the JUICE Magnetometer (J-MAG)
   instrument frames.


J-MAG Frame Tree
~~~~~~~~~~~~~~~~

   The diagram below shows the J-MAG frame hierarchy:


                         "JUICE_SPACECRAFT"
                         ------------------
                                 |
                                 |<-fixed
                                 |
                                 v
                         "JUICE_MAG_BOOM-H"
                         ------------------
                                 |
                                 |<-ck
                                 |
                                 v
                          "JUICE_MAG_BOOM"
            +-----------------------------------------------------+
            |            |               |                        |
            |<-fixed     |<-fixed        |<-ck                    |<-ck
            |            |               |                        |
            v            |               v                        V
   "JUICE_JMAG_MAGIBS"   |  "JUICE_JMAG_MAGSCA_PLAN"  "JUICE_JMAG_MAGSCA_PLAN"
   -------------------   |  ------------------------  ------------------------
            |            |               |                        |
            |            V               |                        |
            |    "JUICE_JMAG_MAGOBS"     |                        |
            |    -------------------     v                        v
            |              |             +------------------------+
            v              |                          |
   "JUICE_JMAG_MAGIBS_SCI  |<-fixed           switch->|
   ----------------------  |                          |
                           v                          v
              "JUICE_JMAG_MAGOBS_SCI"         "JUICE_JMAG_MAGSCA"
              -----------------------         -------------------
                                                      |
                                                      |
                                               fixed->|
                                                      |
                                                      v
                                            "JUICE_JMAG_MAGSCA_SCI"
                                            -----------------------


J-MAG frames definitions
~~~~~~~~~~~~~~~~~~~~~~~~

   The J-MAG experiment comprises three sensors mounted in the JUICE
   Magnetometer Boom at different distances from the boom's hinge. The
   innermost is called the in-board sensor (MAGIBS) and it is a fluxgate
   magnetometer. A second fluxgate magnetometer, called  the out-board
   sensor (MAGOBS), is located approximately 3 meters away toward the end
   of the boom. A scalar magnetometer (MAGSCA) is located at the tip.

   The MAGIBS sensor frame -- JUICE_JMAG_MAGIBS -- is defined as follows
   (from [24]):

      -  +X axis is parallel to the boom and points from the boom
         deployment hinge toward the sensor;

      -  +Y axis is rotated 150 degrees around the +X axis from the
         boom +Y axis;

      -  +Z axis completes the right hand frame;

      -  the origin of the frame is located at the URF reference point
         hole -- located on one of the holes of the sensor baseplate.


   The MAGIBS sensor magnetic system science frame -- JUICE_JMAG_MAGOBS_SCI --
   is defined as follows (from [28]):

      -  +X axis is parallel to the boom and points from the boom deployment
         hinge toward the sensor (parallel to JUICE_JMAG_MAGIBS +X);

      -  +Y axis is rotated 150 degrees around the +X axis from the
         boom +Y axis (parallel to JUICE_JMAG_MAGIBS +Y);

      -  +Z axis completes the right hand frame;

      -  the origin of the frame is located at the geometric center of
         the sensor.


   The MAGOBS sensor frame -- JUICE_JMAG_MAGOBS -- is defined as follows
   (from [24]):

      -  +X axis is parallel to the boom's +Z axis;

      -  +Y axis is parallel to the boom and points from the sensor
         toward the boom deployment hinge;

      -  +Z axis completes the right hand frame;

      -  the origin of the frame is located at the geometric center of
         the sensor.


   The MAGOBS sensor magnetic system science frame -- JUICE_JMAG_MAGOBS_SCI --
   is defined as follows (from [28]):

      -  +Z axis is parallel to the boom and points from the sensor
         toward the boom deployment hinge (parallel to JUICE_JMAG_MAGOBS +Y);

      -  +X axis is parallel to the boom and points from the sensor
         toward the boom deployment hinge (parallel to JUICE_JMAG_MAGOBS +X);

      -  +Z axis completes the right hand frame;

      -  the origin of the frame is located at the geometric center of
         the sensor.


   The MAGSCA sensor frame -- JUICE_JMAG_MAGSCA -- is defined as follows
   (from [24]):

      -  +X axis is the optical axis and is co-aligned with the
         spacecraft +Z axis;

      -  +Y axis is co-aligned with the spacecraft +Y axis;

      -  +Z axis completes the right hand frame;

      -  the origin of the frame is located at the geometric center of
         the sensor.


   The MAGSCA sensor magnetic system science frame -- JUICE_JMAG_MAGSCA_SCI --
   is defined as follows (from [28]):

      -  +X axis is the optical axis and is co-aligned with the
         spacecraft +Z axis (parallel to JUICE_JMAG_MAGSCA +Z);

      -  +Y axis is co-aligned with the spacecraft +Y axis
         (parallel to JUICE_JMAG_MAGSCA +Y);

      -  +Z axis completes the right hand frame;

      -  the origin of the frame is located at the geometric center of
         the sensor.


   The JUICE_JMAG_MAGSCA and JUICE_JMAG_MAGSCA_SCI frame definitions assume
   that the spacecraft Magnetometer Boom is nominally deployed with an angle
   of 141 deg. In order to account for deviations, the frame is defined as a
   Switch Frame (see [1] for more information) aligned with one of the different
   CK-based base frames -- JUICE_JMAG_MAGSCA_PLAN or JUICE_JMAG_MAGSCA_MEAS
   -- depending on coverage and their orientation is given relative to
   JUICE_MAG_BOOM.


   This diagram illustrates the J-MAG sensors' frames:

   +X Magnetometer Boom side view:
   -------------------------------

                           .---.
                           |   |
                           | o +Ysca             J-MAG Scalar Magnetometer
                           .' '.  +Ysca_sci            (MAGSCA)
                         .''---''.
                       .'   | |   '.
                      v     | |     '>
                 +Zsca      | |      +Xsca
                 +Zsca_sci  | |      +Xsca_sci
                            | |
                            |^ +Zobs_sci
                            |||
                 +Xobs     .-|-.
                 +Xobs_sci | | +Zobs
                   <---------o +Yobs_sci             J-MAG Outboard Sensor
                           | | |                         (MAGOBS)
                           '-|-'
                            |||
                            |v +Yobs
                            ~~~
                            ~~~
                            | |
                            | |
                            | |
                            |^ +Xibs
                            || +Xibs_sci
                           .-|-.                  J-MAG Inboard Sensor
                           | | |                     (MAGIBS)
                       <-----.------>
                     +Yibs |   |  +Zibs
                 +Yibs_sci '---'  +Zibs_sci
                            | |
                            | |
                            ~~~
                            ~~~
                            | |
                            | |
                            |^ +Xmagb
                            |||
                            |||
             +Zmagb         |||
                   <---------x
                             +Ymagb
                                               +Ymagb and +Y0bs_sci are
                                               into the page, +Zobs, +Ysca,
                                               and +Ysca_sci are out of the
                                               page


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_JMAG_MAGIBS          = -28300
      FRAME_-28300_NAME                = 'JUICE_JMAG_MAGIBS'
      FRAME_-28300_CLASS               =  4
      FRAME_-28300_CLASS_ID            = -28300
      FRAME_-28300_CENTER              = -28300
      TKFRAME_-28300_RELATIVE          = 'JUICE_MAG_BOOM'
      TKFRAME_-28300_SPEC              = 'MATRIX'
      TKFRAME_-28300_MATRIX            = (  1,   0,        0,
                                            0,  -0.866025, 0.5,
                                            0,  -0.5,     -0.866025 )

      FRAME_JUICE_JMAG_MAGIBS_SCI      = -28301
      FRAME_-28301_NAME                = 'JUICE_JMAG_MAGIBS_SCI'
      FRAME_-28301_CLASS               =  4
      FRAME_-28301_CLASS_ID            = -28301
      FRAME_-28301_CENTER              = -28301
      TKFRAME_-28301_RELATIVE          = 'JUICE_JMAG_MAGIBS'
      TKFRAME_-28301_SPEC              = 'ANGLES'
      TKFRAME_-28301_UNITS             = 'DEGREES'
      TKFRAME_-28301_AXES              = (    3,   2,      1       )
      TKFRAME_-28301_ANGLES            = (  0.0, 0.0,      0.0     )

      FRAME_JUICE_JMAG_MAGOBS          = -28310
      FRAME_-28310_NAME                = 'JUICE_JMAG_MAGOBS'
      FRAME_-28310_CLASS               =  4
      FRAME_-28310_CLASS_ID            = -28310
      FRAME_-28310_CENTER              = -28310
      TKFRAME_-28310_RELATIVE          = 'JUICE_MAG_BOOM'
      TKFRAME_-28310_SPEC              = 'MATRIX'
      TKFRAME_-28310_MATRIX            = (   0,   0,       1,
                                            -1,   0,       0,
                                             0,  -1,       0        )

      FRAME_JUICE_JMAG_MAGOBS_SCI      = -28311
      FRAME_-28311_NAME                = 'JUICE_JMAG_MAGOBS_SCI'
      FRAME_-28311_CLASS               =  4
      FRAME_-28311_CLASS_ID            = -28311
      FRAME_-28311_CENTER              = -28311
      TKFRAME_-28311_RELATIVE          = 'JUICE_JMAG_MAGOBS'
      TKFRAME_-28311_SPEC              = 'ANGLES'
      TKFRAME_-28311_UNITS             = 'DEGREES'
      TKFRAME_-28311_AXES              = (    3,   2,      1       )
      TKFRAME_-28311_ANGLES            = (  0.0,   0.0,   90.0     )

      FRAME_JUICE_JMAG_MAGSCA_MEAS     = -28321
      FRAME_-28321_NAME                = 'JUICE_JMAG_MAGSCA_MEAS'
      FRAME_-28321_CLASS               =  3
      FRAME_-28321_CLASS_ID            = -28321
      FRAME_-28321_CENTER              = -28320
      CK_-28321_SCLK                   = -28
      CK_-28321_SPK                    = -28

      FRAME_JUICE_JMAG_MAGSCA_PLAN     = -28322
      FRAME_-28322_NAME                = 'JUICE_JMAG_MAGSCA_PLAN'
      FRAME_-28322_CLASS               =  3
      FRAME_-28322_CLASS_ID            = -28322
      FRAME_-28322_CENTER              = -28320
      CK_-28322_SCLK                   = -28999
      CK_-28322_SPK                    = -28

      FRAME_JUICE_JMAG_MAGSCA         = -28320
      FRAME_-28320_NAME               = 'JUICE_JMAG_MAGSCA'
      FRAME_-28320_CLASS              =  6
      FRAME_-28320_CLASS_ID           = -28320
      FRAME_-28320_CENTER             = -28320
      FRAME_-28320_ALIGNED_WITH       = (
                                          'JUICE_JMAG_MAGSCA_PLAN'
                                          'JUICE_JMAG_MAGSCA_MEAS'
                                         )

      FRAME_JUICE_JMAG_MAGSCA_SCI      = -28323
      FRAME_-28323_NAME                = 'JUICE_JMAG_MAGSCA_SCI'
      FRAME_-28323_CLASS               =  4
      FRAME_-28323_CLASS_ID            = -28323
      FRAME_-28323_CENTER              = -28323
      TKFRAME_-28323_RELATIVE          = 'JUICE_JMAG_MAGSCA'
      TKFRAME_-28323_SPEC              = 'ANGLES'
      TKFRAME_-28323_UNITS             = 'DEGREES'
      TKFRAME_-28323_AXES              = (    3,   2,     1       )
      TKFRAME_-28323_ANGLES            = (  0.0,   0.0,   0.0     )

   \begintext


JACS Frames
--------------------------------------------------------------------------

   This section contains the definition of the JUICE Magnetometer Alignment
   Calibration System (JACS) instrument frames.


JACS Frame Tree
~~~~~~~~~~~~~~~

   The diagram below shows the JACS frame hierarchy (where n is the ith
   element that goes from 1 to 8, one for each segment of JACS-X and JACS-Y):


                             "JUICE_SPACECRAFT"
                +-----------------------------------------+
                |                                         |
                |<-fixed                                  |<-fixed
                |                                         |
                v                                         v
          "JUICE_JACS-X"                            "JUICE_JACS-Y"
          --------------                            --------------
                |                                         |
                |<-fixed                                  |<-fixed
                |                                         |
                v                                         v
         "JUICE_JACS-X_n"                          "JUICE_JACS-Y_n"
         ----------------                          ----------------


JACS frames definitions
~~~~~~~~~~~~~~~~~~~~~~~

   The JACS is composed by two irregular octagon shaped coils, JACS-X
   contained in the -X s/c plane and JACS-Y contained in the -Y s/c plane.

   The JACS-X frame -- JUICE_JACS-X -- is defined as follows:

      -  +X axis is anti-parallel to s/c +Y axis;

      -  +Y axis is parallel to the s/c +Z axis;

      -  +Z axis completes the right hand frame and is anti-parallel to
         the s/c +X axis, normal to the octagon plane;

      -  the origin of the frame is located at the geometric center
         of the octagon.


   The JACS-Y frame -- JUICE_JACS-Y -- is defined as follows:

      -  +X axis is parallel to s/c +X axis;

      -  +Y axis is parallel to the s/c +Z axis;

      -  +Z axis completes the right hand frame and is anti-parallel to
         the s/c +Y axis, normal to the octagon plane;

      -  the origin of the frame is located at the geometric center
         of the octagon.


   For each segment of both JACS, the reference frame - JUICE_JACS-X_n and
   JUICE_JACS-Y_n - are defined as follows:

      -  +X axis is parallel to the segment, pointing from the corner n
         towards the next corner in a counter-clockwise direction;

      -  +Z axis is normal to the octagon plane;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the corner n of the octagon.


   The following diagrams show the location of each of the JACS-X and
   JACS-Y corners.

   JACS-X -X s/c side (opposite to HGA side) view:
   -----------------------------------------------

                              ^
                              | Nadir
                              |
                         Science Deck
                       .-------------.
              /-----.  | 3.______.2  |  .-----\
              \     |\ | /        \  | /|     /
              /     | \|4'  +Zsc  '1 |/ |     \
              \     | /| |    ^   |  |\ |     /
              /     |/ |5.    |   .8 | \|     \
              \-----'  |  \___|__.'  |  '-----/
                       '--6---|--7---'
                     +Ysc   / | \
                       <------o
                            -Xsc              +Xsc is into the page



   JACS-Y -Y s/c side view:
   ------------------------

                               ^
                           ~~  |
                           ||  | Nadir direction
                           ||  |
                     Science Deck
              .    .-------||-------.
              |`.  | 3._________.2  |
          HGA |  \ | /     ||    \  |
              |   .|4'    /||\   '1 |
              |    x |    \||/   |  |
              |   .| |     +Zsc  |  |
              |  / |5.     |'^   .8 |
              |.'  |  \______|__/   |
                   '--6----|'|--7---'  +Xsc
                        /__oox---------->
                           || +Ysc
                           ||                 +Ysc is into the page
                           ~~


   This diagram illustrates the JACS segments frames orientation with respect to
   the JACS-X and JACS-Y frames.

   +Z JACS side view:
   ------------------

                               +Xjacs2
                      o.          <----o
                     /.-'.-------------| +Xjacs1
                    //    V            V\^
           +Xjacs3 V/  +Yjacs3     +Yjacs2\
                   /                      \\
                 o.---->    +Yjacs        _.o
                 || +Yjacs4    ^  +Yjacs1' |
                 ||            |      <'   |
         +Xjacs4 V|            |   +Xjacs  |
                  |            o----->     |
                  |      +Zjacs            |^ +Xjacs8
                  | .> +Yjacs5     +Yjacs8 ||
                 o.'                  <----.o
                  \\ +Yjacs6     +Yjacs7  /
           +Xjacs5 V\ ^               ^  / .> +Xjacs7
                     '|________________\'.'
                      o---->            o
                        +Xjacs6
                                          +Zjacs and +Zjacs_n are
                                          out of the page


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_JACS-X               = -28380
      FRAME_-28380_NAME                = 'JUICE_JACS-X'
      FRAME_-28380_CLASS               =  4
      FRAME_-28380_CLASS_ID            = -28380
      FRAME_-28380_CENTER              = -28380
      TKFRAME_-28380_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28380_SPEC              = 'ANGLES'
      TKFRAME_-28380_UNITS             = 'DEGREES'
      TKFRAME_-28380_AXES              = (   2,     3,     1   )
      TKFRAME_-28380_ANGLES            = (  90.0,  90.0,   0.0 )

      FRAME_JUICE_JACS-X_1             = -28381
      FRAME_-28381_NAME                = 'JUICE_JACS-X_1'
      FRAME_-28381_CLASS               =  4
      FRAME_-28381_CLASS_ID            = -28381
      FRAME_-28381_CENTER              = -28381
      TKFRAME_-28381_RELATIVE          = 'JUICE_JACS-X'
      TKFRAME_-28381_SPEC              = 'ANGLES'
      TKFRAME_-28381_UNITS             = 'DEGREES'
      TKFRAME_-28381_AXES              = (    3,    2,     1   )
      TKFRAME_-28381_ANGLES            = ( -135.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-X_2             = -28382
      FRAME_-28382_NAME                = 'JUICE_JACS-X_2'
      FRAME_-28382_CLASS               =  4
      FRAME_-28382_CLASS_ID            = -28382
      FRAME_-28382_CENTER              = -28382
      TKFRAME_-28382_RELATIVE          = 'JUICE_JACS-X'
      TKFRAME_-28382_SPEC              = 'ANGLES'
      TKFRAME_-28382_UNITS             = 'DEGREES'
      TKFRAME_-28382_AXES              = (    3,    2,     1   )
      TKFRAME_-28382_ANGLES            = ( -180.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-X_3             = -28383
      FRAME_-28383_NAME                = 'JUICE_JACS-X_3'
      FRAME_-28383_CLASS               =  4
      FRAME_-28383_CLASS_ID            = -28383
      FRAME_-28383_CENTER              = -28383
      TKFRAME_-28383_RELATIVE          = 'JUICE_JACS-X'
      TKFRAME_-28383_SPEC              = 'ANGLES'
      TKFRAME_-28383_UNITS             = 'DEGREES'
      TKFRAME_-28383_AXES              = (    3,    2,     1   )
      TKFRAME_-28383_ANGLES            = ( -225.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-X_4             = -28384
      FRAME_-28384_NAME                = 'JUICE_JACS-X_4'
      FRAME_-28384_CLASS               =  4
      FRAME_-28384_CLASS_ID            = -28384
      FRAME_-28384_CENTER              = -28384
      TKFRAME_-28384_RELATIVE          = 'JUICE_JACS-X'
      TKFRAME_-28384_SPEC              = 'ANGLES'
      TKFRAME_-28384_UNITS             = 'DEGREES'
      TKFRAME_-28384_AXES              = (    3,    2,     1   )
      TKFRAME_-28384_ANGLES            = ( -270.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-X_5             = -28385
      FRAME_-28385_NAME                = 'JUICE_JACS-X_5'
      FRAME_-28385_CLASS               =  4
      FRAME_-28385_CLASS_ID            = -28385
      FRAME_-28385_CENTER              = -28385
      TKFRAME_-28385_RELATIVE          = 'JUICE_JACS-X'
      TKFRAME_-28385_SPEC              = 'ANGLES'
      TKFRAME_-28385_UNITS             = 'DEGREES'
      TKFRAME_-28385_AXES              = (    3,    2,     1   )
      TKFRAME_-28385_ANGLES            = ( -315.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-X_6             = -28386
      FRAME_-28386_NAME                = 'JUICE_JACS-X_6'
      FRAME_-28386_CLASS               =  4
      FRAME_-28386_CLASS_ID            = -28386
      FRAME_-28386_CENTER              = -28386
      TKFRAME_-28386_RELATIVE          = 'JUICE_JACS-X'
      TKFRAME_-28386_SPEC              = 'ANGLES'
      TKFRAME_-28386_UNITS             = 'DEGREES'
      TKFRAME_-28386_AXES              = (   3,    2,     1   )
      TKFRAME_-28386_ANGLES            = (   0.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-X_7             = -28387
      FRAME_-28387_NAME                = 'JUICE_JACS-X_7'
      FRAME_-28387_CLASS               =  4
      FRAME_-28387_CLASS_ID            = -28387
      FRAME_-28387_CENTER              = -28387
      TKFRAME_-28387_RELATIVE          = 'JUICE_JACS-X'
      TKFRAME_-28387_SPEC              = 'ANGLES'
      TKFRAME_-28387_UNITS             = 'DEGREES'
      TKFRAME_-28387_AXES              = (   3,    2,     1   )
      TKFRAME_-28387_ANGLES            = ( -40.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-X_8             = -28388
      FRAME_-28388_NAME                = 'JUICE_JACS-X_8'
      FRAME_-28388_CLASS               =  4
      FRAME_-28388_CLASS_ID            = -28388
      FRAME_-28388_CENTER              = -28388
      TKFRAME_-28388_RELATIVE          = 'JUICE_JACS-X'
      TKFRAME_-28388_SPEC              = 'ANGLES'
      TKFRAME_-28388_UNITS             = 'DEGREES'
      TKFRAME_-28388_AXES              = (   3,    2,     1   )
      TKFRAME_-28388_ANGLES            = ( -90.0,  0.0,   0.0 )


      FRAME_JUICE_JACS-Y               = -28390
      FRAME_-28390_NAME                = 'JUICE_JACS-Y'
      FRAME_-28390_CLASS               =  4
      FRAME_-28390_CLASS_ID            = -28390
      FRAME_-28390_CENTER              = -28390
      TKFRAME_-28390_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28390_SPEC              = 'ANGLES'
      TKFRAME_-28390_UNITS             = 'DEGREES'
      TKFRAME_-28390_AXES              = (   1,     3,     2   )
      TKFRAME_-28390_ANGLES            = ( -90.0,   0.0,   0.0 )

      FRAME_JUICE_JACS-Y_1             = -28391
      FRAME_-28391_NAME                = 'JUICE_JACS-Y_1'
      FRAME_-28391_CLASS               =  4
      FRAME_-28391_CLASS_ID            = -28391
      FRAME_-28391_CENTER              = -28391
      TKFRAME_-28391_RELATIVE          = 'JUICE_JACS-Y'
      TKFRAME_-28391_SPEC              = 'ANGLES'
      TKFRAME_-28391_UNITS             = 'DEGREES'
      TKFRAME_-28391_AXES              = (    3,    2,     1   )
      TKFRAME_-28391_ANGLES            = ( -135.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-Y_2             = -28392
      FRAME_-28392_NAME                = 'JUICE_JACS-Y_2'
      FRAME_-28392_CLASS               =  4
      FRAME_-28392_CLASS_ID            = -28392
      FRAME_-28392_CENTER              = -28392
      TKFRAME_-28392_RELATIVE          = 'JUICE_JACS-Y'
      TKFRAME_-28392_SPEC              = 'ANGLES'
      TKFRAME_-28392_UNITS             = 'DEGREES'
      TKFRAME_-28392_AXES              = (    3,    2,     1   )
      TKFRAME_-28392_ANGLES            = ( -180.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-Y_3             = -28393
      FRAME_-28393_NAME                = 'JUICE_JACS-Y_3'
      FRAME_-28393_CLASS               =  4
      FRAME_-28393_CLASS_ID            = -28393
      FRAME_-28393_CENTER              = -28393
      TKFRAME_-28393_RELATIVE          = 'JUICE_JACS-Y'
      TKFRAME_-28393_SPEC              = 'ANGLES'
      TKFRAME_-28393_UNITS             = 'DEGREES'
      TKFRAME_-28393_AXES              = (    3,    2,     1   )
      TKFRAME_-28393_ANGLES            = ( -225.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-Y_4             = -28394
      FRAME_-28394_NAME                = 'JUICE_JACS-Y_4'
      FRAME_-28394_CLASS               =  4
      FRAME_-28394_CLASS_ID            = -28394
      FRAME_-28394_CENTER              = -28394
      TKFRAME_-28394_RELATIVE          = 'JUICE_JACS-Y'
      TKFRAME_-28394_SPEC              = 'ANGLES'
      TKFRAME_-28394_UNITS             = 'DEGREES'
      TKFRAME_-28394_AXES              = (    3,    2,     1   )
      TKFRAME_-28394_ANGLES            = ( -270.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-Y_5             = -28395
      FRAME_-28395_NAME                = 'JUICE_JACS-Y_5'
      FRAME_-28395_CLASS               =  4
      FRAME_-28395_CLASS_ID            = -28395
      FRAME_-28395_CENTER              = -28395
      TKFRAME_-28395_RELATIVE          = 'JUICE_JACS-Y'
      TKFRAME_-28395_SPEC              = 'ANGLES'
      TKFRAME_-28395_UNITS             = 'DEGREES'
      TKFRAME_-28395_AXES              = (    3,    2,     1   )
      TKFRAME_-28395_ANGLES            = ( -310.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-Y_6             = -28396
      FRAME_-28396_NAME                = 'JUICE_JACS-Y_6'
      FRAME_-28396_CLASS               =  4
      FRAME_-28396_CLASS_ID            = -28396
      FRAME_-28396_CENTER              = -28396
      TKFRAME_-28396_RELATIVE          = 'JUICE_JACS-Y'
      TKFRAME_-28396_SPEC              = 'ANGLES'
      TKFRAME_-28396_UNITS             = 'DEGREES'
      TKFRAME_-28396_AXES              = (   3,    2,     1   )
      TKFRAME_-28396_ANGLES            = (   0.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-Y_7             = -28397
      FRAME_-28397_NAME                = 'JUICE_JACS-Y_7'
      FRAME_-28397_CLASS               =  4
      FRAME_-28397_CLASS_ID            = -28397
      FRAME_-28397_CENTER              = -28397
      TKFRAME_-28397_RELATIVE          = 'JUICE_JACS-Y'
      TKFRAME_-28397_SPEC              = 'ANGLES'
      TKFRAME_-28397_UNITS             = 'DEGREES'
      TKFRAME_-28397_AXES              = (   3,    2,     1   )
      TKFRAME_-28397_ANGLES            = ( -50.0,  0.0,   0.0 )

      FRAME_JUICE_JACS-Y_8             = -28398
      FRAME_-28398_NAME                = 'JUICE_JACS-Y_8'
      FRAME_-28398_CLASS               =  4
      FRAME_-28398_CLASS_ID            = -28398
      FRAME_-28398_CENTER              = -28398
      TKFRAME_-28398_RELATIVE          = 'JUICE_JACS-Y'
      TKFRAME_-28398_SPEC              = 'ANGLES'
      TKFRAME_-28398_UNITS             = 'DEGREES'
      TKFRAME_-28398_AXES              = (   3,    2,     1   )
      TKFRAME_-28398_ANGLES            = ( -90.0,  0.0,   0.0 )

   \begintext


MAJIS Frames
--------------------------------------------------------------------------

   This section contains the definition of the Moons And Jupiter
   Imaging Spectrometer (MAJIS) instrument frames.


MAJIS Frame Tree
~~~~~~~~~~~~~~~~

   The diagram below shows the MAJIS frame hierarchy:


                                      "JUICE_SPACECRAFT"
                          +---------------------------------------+
                          |                                       |
                          |<-fixed                                |<-fixed
                          |                                       |
                          v                                       v
                  "JUICE_MAJIS_BASE"                     "JUICE_MAJIS_RAD"
              +------------------------+                 -----------------
              |                        |
              |<-ck                    |<-ck
              |                        |
              v                        v
   "JUICE_MAJIS_SCAN_PLAN"   "JUICE_MAJIS_SCAN_MEAS"
   -----------------------   -----------------------
              |                        |
              |                        |
              |                        |
              v                        v
              +------------------------+
                          |
                          |<-switch
                          |
                          V
                 "JUICE_MAJIS_SCAN"
           +--------------------------+
           |                          |
           |<-fixed                   |<-fixed
           |                          |
           v                          v
  "JUICE_MAJIS_VISNIR"        "JUICE_MAJIS_IR"
  --------------------        ----------------


MAJIS frames definitions
~~~~~~~~~~~~~~~~~~~~~~~~

   Currently, there are four different frames defined for the Moons and
   Jupiter Imaging Spectrometer (MAJIS), each aiming at incorporating
   different possible misalignments:

      -  JUICE_MAJIS_BASE is a fixed-offset frame aiming at introducing
         any possible misalignment between the the instrument mirror
         rotation axis and the spacecraft +X axis. This misalignment is
         constant therefore this frame is defined as a fixed offset
         frame relative to the JUICE_SPACECRAFT frame.

      -  JUICE_MAJIS_SCAN is defined to capture orientation of the
         reflected instrument view direction due to the scan mirror
         motion. This frame is defined as a Switch Frame (see [1] for
         more information) aligned with one of the different CK-based
         base frames -- JUICE_MAJIS_SCAN_PLAN or JUICE_MAJIS_SCAN_MEAS
         -- depending on coverage.

      -  JUICE_MAJIS_VISNIR and JUICE_MAJIS_IR are defined to capture
         misalignments for each of the two instrument channels relative to
         the reflected view direction. These frames are defined as fixed
         offset frames relative to the JUICE_MAJIS_SCAN frame.


   Each of the MAJIS frames listed above is defined in the same way
   as follows (from [7]):

      -  +Z axis points along the boresight (for JUICE_MAJIS boresight
         is the nominal center pixel view direction for the scan mirror
         in "zero" position; for JUICE_MAJIS_SCAN boresight is the
         nominal center pixel view direction, "off-pointed" due to the
         scan mirror; for JUICE_MAJIS_VISNIR and JUICE_MAJIS_IR
         boresight is the particular detector center pixel view
         direction, "off-pointed" due to the scan mirror; adjusted for
         all known misalignments with the scan mirror in "zero" position)

      -  +X axis is parallel to the apparent spatial resolution
         direction; it is nominally co-aligned with the s/c +X axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the instrument focal
         point for JUICE_MAJIS_VISNIR and JUICE_MAJIS_IR frames and at
         the intersection of the nominal center pixel view direction
         and the scan mirror axis for JUICE_MAJIS and JUICE_MAJIS_SCAN
         frames.


   This diagram illustrates the MAJIS frames orientation (with MAJIS scan
   mirror in "zero" position) with respect to the spacecraft frame.

   +Z s/c side view:
   -----------------
                                                          direction
                                                          of flight
                               ___________ HGA        <-------------->
                               \         /
      \                      .__`._____.'__.                      \
      /                      |             |                      /
      \                      |             |                      \
      /                      |   +Zsc    +Ysc                     /
      \=>o<===============>o-|      o------->o<===============>o<=\
      /    -Y Solar Array    |      |      |    +Y Solar Array    /
      \                      |      |      |                      \
      /                      '._____|_.___.'                      /
      \                             | |o-|---->+Ymajis_scan       \
                                    V  |       +Ymajis_base
                                  +Xsc |       +Ymajis_visnir/ir
                                       |
                                       V
                                 +Xmajis_scan
                                 +Xmajis_base
                                 +Xmajis_visnir/ir


                                             +Zsc, +Zmajis_scan, +Zmajis_base
                                             +Zmajis_visnir and +Zmajis_ir are
                                              out of page



   Nominally, in "zero" scan mirror position all four MAJIS frames are
   co-aligned with each other and the s/c frame.

   The instrument alignment has been measured after mechanical tests
   during the fourth alignment campaign as reported in [26]. The following
   misalignment is introduced as three rotations expressed in arcseconds from
   spacecraft to MAJIS instrument reference frames:

     Rotation = (   2940.0,   -882.0,    1139.0  )
         SC -> MAJIS     Rz        Ry         Rx

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_MAJIS_BASE           = -28400
      FRAME_-28400_NAME                = 'JUICE_MAJIS_BASE'
      FRAME_-28400_CLASS               =  4
      FRAME_-28400_CLASS_ID            = -28400
      FRAME_-28400_CENTER              = -28400
      TKFRAME_-28400_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28400_SPEC              = 'ANGLES'
      TKFRAME_-28400_UNITS             = 'DEGREES'
      TKFRAME_-28400_AXES              = (  3,          2,         1         )
      TKFRAME_-28400_ANGLES            = ( -0.8153091,  0.249481, -0.3128677 )

      FRAME_JUICE_MAJIS_SCAN_MEAS      = -28402
      FRAME_-28402_NAME                = 'JUICE_MAJIS_SCAN_MEAS'
      FRAME_-28402_CLASS               =  3
      FRAME_-28402_CLASS_ID            = -28402
      FRAME_-28402_CENTER              = -28400
      CK_-28402_SCLK                   = -28
      CK_-28402_SPK                    = -28

      FRAME_JUICE_MAJIS_SCAN_PLAN      = -28403
      FRAME_-28403_NAME                = 'JUICE_MAJIS_SCAN_PLAN'
      FRAME_-28403_CLASS               =  3
      FRAME_-28403_CLASS_ID            = -28403
      FRAME_-28403_CENTER              = -28400
      CK_-28403_SCLK                   = -28999
      CK_-28403_SPK                    = -28

      FRAME_JUICE_MAJIS_SCAN           = -28401
      FRAME_-28401_NAME                = 'JUICE_MAJIS_SCAN'
      FRAME_-28401_CLASS               =  6
      FRAME_-28401_CLASS_ID            = -28401
      FRAME_-28401_CENTER              = -28400
      FRAME_-28401_ALIGNED_WITH        = (
                                           'JUICE_MAJIS_SCAN_PLAN'
                                           'JUICE_MAJIS_SCAN_MEAS'
                                          )

      FRAME_JUICE_MAJIS_VISNIR         = -28410
      FRAME_-28410_NAME                = 'JUICE_MAJIS_VISNIR'
      FRAME_-28410_CLASS               =  4
      FRAME_-28410_CLASS_ID            = -28410
      FRAME_-28410_CENTER              = -28400
      TKFRAME_-28410_RELATIVE          = 'JUICE_MAJIS_SCAN'
      TKFRAME_-28410_SPEC              = 'ANGLES'
      TKFRAME_-28410_UNITS             = 'DEGREES'
      TKFRAME_-28410_AXES              = ( 1,   2,   3   )
      TKFRAME_-28410_ANGLES            = ( 0.0, 0.0, 0.0 )

      FRAME_JUICE_MAJIS_IR             = -28420
      FRAME_-28420_NAME                = 'JUICE_MAJIS_IR'
      FRAME_-28420_CLASS               =  4
      FRAME_-28420_CLASS_ID            = -28420
      FRAME_-28420_CENTER              = -28400
      TKFRAME_-28420_RELATIVE          = 'JUICE_MAJIS_SCAN'
      TKFRAME_-28420_SPEC              = 'ANGLES'
      TKFRAME_-28420_UNITS             = 'DEGREES'
      TKFRAME_-28420_AXES              = ( 1,   2,   3   )
      TKFRAME_-28420_ANGLES            = ( 0.0, 0.0, 0.0 )

   \begintext


   The MAJIS cryogenic and standard radiators are accommodated above the
   optical head, towards s/c +X axis. The MAJIS radiator frame
   - JUICE_MAJIS_RAD - is defined as follows (from [15]):

      -  +Z axis is anti-parallel to the boresight of the scan mirror
         in "zero" position;

      -  +X axis is anti-parallel to the s/c +X axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the radiator mounting point
         above the optical head.


   This diagram illustrates the MAJIS radiator frame orientation with
   respect to the spacecraft frame.

   +Z s/c side view:
   -----------------
                                                          direction
                                                          of flight
                               ___________ HGA        <-------------->
                               \         /
      \                      .__`._____.'__.                      \
      /                      |             |                      /
      \                      |             |                      \
      /                      |   +Zsc    +Ysc                     /
      \=>o<===============>o-|      o------->o<===============>o<=\
      /    -Y Solar Array    |      |      |    +Y Solar Array    /
      \                      |      |      |                      \
      /                      '._____|+Xmajis_rad                  /
      \                             | |x-|----> +Ymajis_rad       \
                                    V  |
                                  +Xsc |
                                       V +Zmajis_rad

                                             +Zsc is out of the page and
                                             +Xmajis_rad is into the page


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_MAJIS_RAD            = -28430
      FRAME_-28430_NAME                = 'JUICE_MAJIS_RAD'
      FRAME_-28430_CLASS               =  4
      FRAME_-28430_CLASS_ID            = -28430
      FRAME_-28430_CENTER              = -28400
      TKFRAME_-28430_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28430_SPEC              = 'ANGLES'
      TKFRAME_-28430_UNITS             = 'DEGREES'
      TKFRAME_-28430_AXES              = ( 1,    2,    3   )
      TKFRAME_-28430_ANGLES            = ( 0.0, -90.0, 0.0 )

   \begintext


PEP Frames
--------------------------------------------------------------------------

   This section contains the definition of the Particle Environment Package
   (PEP) instrument and sensors frames.


PEP Frame Tree
~~~~~~~~~~~~~~~

   The diagram below show the PEP frame hierarchy:


                               "JUICE_SPACECRAFT"
                    +--------------------------------------------------+
                    |                        |           |             |
                    |<-fixed          fixed->|    fixed->|      fixed->|
                    |                        |           |             |
                    v                        v           |             v
              "JUICE_PEP_NU"         "JUICE_PEP_JENI"    |     "JUICE_PEP_JDC"
         +---------------------+     ----------------    |     ---------------
         |          |          |                         |
         |<-fixed   |<-fixed   |<-fixed                  v
         |          |          |                  "JUICE_PEP_JOEE"
         v          |          v                  ----------------
   "JUICE_PEP_JEI"  |   "JUICE_PEP_NIM"
   ---------------  |   ---------------
                    |
                    v
             "JUICE_PEP_JNA"
             ---------------


PEP Nadir Unit frames definitions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Currently, there are four different frames defined for the Particle
   Environment Package (PEP) Nadir Unit (NU) aiming at incorporating different
   possible misalignments between the spacecraft and the different sensors:

      -  JUICE_PEP_NU is a fixed-offset frame aiming at introducing
         any possible misalignment between the Nadir Unit base mounting
         plate and the spacecraft frame. This misalignment is
         constant therefore this frame is defined as a fixed offset
         frame relative to the JUICE_SPACECRAFT frame.

      -  JUICE_PEP_JEI, JUICE_PEP_JNA and JUICE_PEP_NIM are defined to
         capture misalignments for each of the sensors, the Jovian Electrons
         and Ions analyzer (JEI), the Jovian Neutrals Analyzer (JNA), and the
         Neutral gas and Ion Mass spectrometer (NIM) relative to the Nadir
         Unit base frame. These frames are defined as fixed offset frames
         relative to the JUICE_PEP_NU frame.

   Each of the PEP Nadir Unit frames listed above -- JUICE_PEP_NU,
   JUICE_PEP_JEI and JUICE_PEP_NIM --, except for JUICE_PEP_JNA is
   defined in the same way as follows (from [12]):

      -  +Z axis points along the nominal spacecraft nadir direction;
         and it is co-aligned with the s/c +Z axis;

      -  +X axis is nominally co-aligned with the s/c +X axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the reference hole in the
         mounting plane for JUICE_PEP_NU and at the sensor's geometrical
         center for the JUICE_PEP_JDC and JUICE_PEP_NIM.


   The PEP JNA frame -- JUICE_PEP_JNA -- is defined as follows (from [19]):

      -  +Z axis points along the nominal spacecraft nadir direction;
         and it is co-aligned with the PEP Nadir Unit +Z axis;

      -  +X axis is nominally co-aligned with the PEP Nadir Unit +X axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the sensor's geometrical
         center.


   These diagrams illustrate the PEP Nadir Unit with respect to the spacecraft
   frame:

   +Z s/c side view:
   -----------------
                                                          direction
                                                          of flight
                               ___________ HGA        <-------------->
                               \         /
      \                      .__`._____.'__.                      \
      /                      |             |                      /
      \                      |             |                      \
      /                      |   +Zsc    +Ysc                     /
      \=>o<===============>o-|      o------->o<===============>o<=\
      /    -Y Solar Array    |___.  |      |                      /
      \                      | o------> +Ypep_nu,+Ypep_jna        \
      /                      ._|_|__|___+Ypep_jdc,+Ypep_nim       /
      \                        |    |                             \
                               |    V +Xsc
                               v
                         +Xpep_nu,+Xpep_jna
                         +Xpep_jdc,+Xpep_nim

                                        +Zsc, +Zpep_nu, +Zpep_jdc, +Zpep_jna
                                        and +Zpep_nim are out of page

  +Y s/c side view (PEP NU detailed view):
  ----------------------------------------

                                          +Zpep_nim
                                            ^
                                            |
                                          .-|-.
                                         /  |  \
                +Zpep_jei                |  |  |
                 ^              +Zpep_jna \_x-----> +Xpep_nim
                 |                ^       |   |
              .''|'.              |      |    |       +Zpep_nu,
             |   |  |             |     .----------.  +Zsc
            /    |   \+Xpep_jei_ .|. _  |          |   ^
            |    x----->     .'   |   '.|          |   |
            |        |      /     x-------> +Xpep_jna  |
            |        |     '             '         |   |
            /  JEI    \    |    JNA      |  NIM    |   |
       ----------------------------------------------- x---------> +Xpep_nu,
                            NU                        +Ypep_nu,    +Xsc
                                                      +Ysc

                                        +Ysc, +Ypep_nu, +Ypep_jdc, +Ypep_jna
                                        and +Ypep_nim are into the page


   Nominally, the NU, JEI and NIM base frames are co-aligned with the s/c
   frame. A single rotation of -90 degrees about the +X axis of the
   JUICE_RPWI_LPBx is required to co-align the PEP JNA frame and the
   PEP Nadir Unit.

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_PEP_NU               = -28500
      FRAME_-28500_NAME                = 'JUICE_PEP_NU'
      FRAME_-28500_CLASS               =  4
      FRAME_-28500_CLASS_ID            = -28500
      FRAME_-28500_CENTER              = -28500
      TKFRAME_-28500_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28500_SPEC              = 'ANGLES'
      TKFRAME_-28500_UNITS             = 'DEGREES'
      TKFRAME_-28500_AXES              = ( 1,   2,     3   )
      TKFRAME_-28500_ANGLES            = ( 0.0, 0.0,   0.0 )

      FRAME_JUICE_PEP_NIM              = -28530
      FRAME_-28530_NAME                = 'JUICE_PEP_NIM'
      FRAME_-28530_CLASS               =  4
      FRAME_-28530_CLASS_ID            = -28530
      FRAME_-28530_CENTER              = -28530
      TKFRAME_-28530_RELATIVE          = 'JUICE_PEP_NU'
      TKFRAME_-28530_SPEC              = 'ANGLES'
      TKFRAME_-28530_UNITS             = 'DEGREES'
      TKFRAME_-28530_AXES              = ( 1,   2,   3   )
      TKFRAME_-28530_ANGLES            = ( 0.0, 0.0, 0.0 )

      FRAME_JUICE_PEP_NIM_S1           = -28531
      FRAME_-28531_NAME                = 'JUICE_PEP_NIM_S1'
      FRAME_-28531_CLASS               =  4
      FRAME_-28531_CLASS_ID            = -28531
      FRAME_-28531_CENTER              = -28530
      TKFRAME_-28531_RELATIVE          = 'JUICE_PEP_NIM'
      TKFRAME_-28531_SPEC              = 'ANGLES'
      TKFRAME_-28531_UNITS             = 'DEGREES'
      TKFRAME_-28531_AXES              = ( 3,   2,       1   )
      TKFRAME_-28531_ANGLES            = ( 0.0, 0.0,   -90.0 )

      FRAME_JUICE_PEP_NIM_S2           = -28532
      FRAME_-28532_NAME                = 'JUICE_PEP_NIM_S2'
      FRAME_-28532_CLASS               =  4
      FRAME_-28532_CLASS_ID            = -28532
      FRAME_-28532_CENTER              = -28530
      TKFRAME_-28532_RELATIVE          = 'JUICE_PEP_NIM'
      TKFRAME_-28532_SPEC              = 'ANGLES'
      TKFRAME_-28532_UNITS             = 'DEGREES'
      TKFRAME_-28532_AXES              = (   2,    3,     1    )
      TKFRAME_-28532_ANGLES            = (   0.0, 60.0,  -90.0 )

      FRAME_JUICE_PEP_NIM_S3           = -28533
      FRAME_-28533_NAME                = 'JUICE_PEP_NIM_S3'
      FRAME_-28533_CLASS               =  4
      FRAME_-28533_CLASS_ID            = -28533
      FRAME_-28533_CENTER              = -28530
      TKFRAME_-28533_RELATIVE          = 'JUICE_PEP_NIM'
      TKFRAME_-28533_SPEC              = 'ANGLES'
      TKFRAME_-28533_UNITS             = 'DEGREES'
      TKFRAME_-28533_AXES              = (   2,     3,     1    )
      TKFRAME_-28533_ANGLES            = (   0.0, 120.0,  -90.0 )

      FRAME_JUICE_PEP_NIM_S4           = -28534
      FRAME_-28534_NAME                = 'JUICE_PEP_NIM_S4'
      FRAME_-28534_CLASS               =  4
      FRAME_-28534_CLASS_ID            = -28534
      FRAME_-28534_CENTER              = -28530
      TKFRAME_-28534_RELATIVE          = 'JUICE_PEP_NIM'
      TKFRAME_-28534_SPEC              = 'ANGLES'
      TKFRAME_-28534_UNITS             = 'DEGREES'
      TKFRAME_-28534_AXES              = (   2,     3,     1    )
      TKFRAME_-28534_ANGLES            = (   0.0, 180.0,  -90.0 )

      FRAME_JUICE_PEP_NIM_S5           = -28535
      FRAME_-28535_NAME                = 'JUICE_PEP_NIM_S5'
      FRAME_-28535_CLASS               =  4
      FRAME_-28535_CLASS_ID            = -28535
      FRAME_-28535_CENTER              = -28530
      TKFRAME_-28535_RELATIVE          = 'JUICE_PEP_NIM'
      TKFRAME_-28535_SPEC              = 'ANGLES'
      TKFRAME_-28535_UNITS             = 'DEGREES'
      TKFRAME_-28535_AXES              = (   2,     3,     1    )
      TKFRAME_-28535_ANGLES            = (   0.0, 240.0,  -90.0 )

      FRAME_JUICE_PEP_NIM_S6           = -28536
      FRAME_-28536_NAME                = 'JUICE_PEP_NIM_S6'
      FRAME_-28536_CLASS               =  4
      FRAME_-28536_CLASS_ID            = -28536
      FRAME_-28536_CENTER              = -28530
      TKFRAME_-28536_RELATIVE          = 'JUICE_PEP_NIM'
      TKFRAME_-28536_SPEC              = 'ANGLES'
      TKFRAME_-28536_UNITS             = 'DEGREES'
      TKFRAME_-28536_AXES              = (   2,     3,      1   )
      TKFRAME_-28536_ANGLES            = (   0.0, 300.0,  -90.0 )

      FRAME_JUICE_PEP_JEI              = -28540
      FRAME_-28540_NAME                = 'JUICE_PEP_JEI'
      FRAME_-28540_CLASS               =  4
      FRAME_-28540_CLASS_ID            = -28540
      FRAME_-28540_CENTER              = -28540
      TKFRAME_-28540_RELATIVE          = 'JUICE_PEP_NU'
      TKFRAME_-28540_SPEC              = 'ANGLES'
      TKFRAME_-28540_UNITS             = 'DEGREES'
      TKFRAME_-28540_AXES              = ( 1,   2,   3   )
      TKFRAME_-28540_ANGLES            = ( 0.0, 0.0, 0.0 )

      FRAME_JUICE_PEP_JNA              = -28520
      FRAME_-28520_NAME                = 'JUICE_PEP_JNA'
      FRAME_-28520_CLASS               =  4
      FRAME_-28520_CLASS_ID            = -28520
      FRAME_-28520_CENTER              = -28520
      TKFRAME_-28520_RELATIVE          = 'JUICE_PEP_NU'
      TKFRAME_-28520_SPEC              = 'ANGLES'
      TKFRAME_-28520_UNITS             = 'DEGREES'
      TKFRAME_-28520_AXES              = ( 3,    2,    1   )
      TKFRAME_-28520_ANGLES            = ( 0.0,  0.0,  0.0 )

   \begintext


PEP JDC and PEP-Hi frames definitions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Currently, there are two different frames defined for the PEP-Hi group and
   one for the PEP JDC unit of the PEP-Lo group -- which is completed by the
   PEP Nadir Unit (NU) --, each one aiming at incorporating different possible
   misalignments between the spacecraft and the different sensors:

      -  JUICE_PEP_JDC, JUICE_PEP_JOEE and JUICE_PEP_JENI are a fixed-offset
         frames aiming at introducing any possible misalignment between the
         Jovian plasma Dynamics and Composition analyzer Unit sensor, the JENI
         unit sensor and the JoEE unit sensor with respect to the spacecraft
         frame. This misalignment is constant therefore this frame is defined
         as a fixed-offset frame relative to the JUICE_SPACECRAFT frame.


      The PEP Jovian plasma Dynamics and Composition analyzer Unit frame
      -- JUICE_PEP_JDC -- is defined as a fixed-offset frame relative to
      the JUICE_SPACECRAFT frame as follows (from [12]):

      -  +Z axis points along the JDC sensor boresight and is rotated
         45 degrees from the s/c -Z axis around the s/c Y axis towards the
         s/c X axis;

      -  +X axis is nominally co-aligned with the s/c Y axis and;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at sensor's geometrical
         center.


      The JoEE spectometer Unit frame -- JUICE_PEP_JOEE -- is defined as
      a fixed-offset frame relative to the JUICE_SPACECRAFT frame as
      follows (from [12]):

      -  +X axis points along the JoEE sensor boresight and is rotated
         8 degrees from the s/c -Z axis around the s/c X axis towards the
         s/c -Y axis;

      -  +Z axis is nominally co-aligned with the s/c -X axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at sensor's geometrical
         center.


      The PEP JENI Unit frame -- JUICE_PEP_JENI -- is defined as a
      fixed-offset frame relative to the JUICE_SPACECRAFT frame as
      follows (from [12]):

      -  +X axis is nominally co-aligned with the s/c X axis and;

      -  +Z axis points along the JENI sensor boresight and is rotated
         10 degrees from the s/c Z axis around the s/c X axis towards the
         s/c Y axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at sensor's geometrical
         center.


   This diagram illustrates the PEP Zenit Unit frames orientation
   with respect to the spacecraft frame.


   -Y s/c side view (with MAG Boom in stowed configuration):
   ---------------------------------------------------------

                                 +Zpep_nu
                              ^   ^
                          ~~  |   |+Zpep_jeni (rot 10 deg
                          ||  |   |            around +Xpep_jeni)
                          ||  |   |
                          oo  |   |
              .    .------||------x--------> +Xpep_nu
              |`.  |    +Ypep_jeni|          +Xpep_jeni
          HGA |  \ |    +Ypep_nu  |
              |   \|      ||      |
              |    |      ||      |
              |    |     /||\     |
              |    x     \||/     |
              |    |      ||      |         ^ +Ypep_jdc
              |    |      |'^     |       .'
              |   /|      |'|+Zsc |     .'
              |  / |      |'|     |   .'
               +Xpep_jdc,+Xpep_joee .'
                   '------|'|-----'x----------> +Ypep_joee
                       /__oox----->|`.
                          ||   +Xsc|  `.
                          ||       |  .'`. +Zpep_jdc
                          ~~       |-'    v.
                                   v 45 deg `o
                              +Zpep_joee      `.
                                             /\/\/

                                        +Ysc, +Ypep_jdc, +Ypep_joee,
                                        +Ypep_janu, +Ypep_jeni, +Ypep_nu
                                        are into the page


   +X s/c side (opposite to HGA side) view:
   ----------------------------------------

                                       ^
          .---------.                  | Nadir            .---------.
          |         |                  |                  |         |
          |         |             Science Deck            |         |
          '----.----'              .-------.              '----.----'
   /----. .----'----. .---------._ |       |  .---------. .----'----. .-----\
   \    |_|         |_|         | \| +Zsc  |/ |         |_|         |_|     /
   /    | |         | |         |_/|   ^   |\_|         | |         | |     \
   \----' '----.----' '------+Ypep_joee|   |  '---------' '----.----' '-----/
          .----' +Xpep_joee, <--------o|---'              .----'----.
          |      +Xpep_jdc           /|| \                |         |
          |         |                '|o------> +Ysc      |         |
          '---------'                 | +Xsc              '---------'
                                      |
                                      v
                                   +Zpep_joee         +Xsc and +Ypep_joee
                                                      are out of the page


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_PEP_JDC              = -28510
      FRAME_-28510_NAME                = 'JUICE_PEP_JDC'
      FRAME_-28510_CLASS               =  4
      FRAME_-28510_CLASS_ID            = -28510
      FRAME_-28510_CENTER              = -28510
      TKFRAME_-28510_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28510_SPEC              = 'ANGLES'
      TKFRAME_-28510_UNITS             = 'DEGREES'
      TKFRAME_-28510_AXES              = (  2,     3,      2     )
      TKFRAME_-28510_ANGLES            = ( 45.0,  90.0, -180.0   )

      FRAME_JUICE_PEP_JOEE             = -28550
      FRAME_-28550_NAME                = 'JUICE_PEP_JOEE'
      FRAME_-28550_CLASS               =  4
      FRAME_-28550_CLASS_ID            = -28550
      FRAME_-28550_CENTER              = -28550
      TKFRAME_-28550_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28550_SPEC              = 'ANGLES'
      TKFRAME_-28550_UNITS             = 'DEGREES'
      TKFRAME_-28550_AXES              = (  2,     3,    1     )
      TKFRAME_-28550_ANGLES            = ( 90.0, 172.0,  0.0   )

      FRAME_JUICE_PEP_JENI             = -28560
      FRAME_-28560_NAME                = 'JUICE_PEP_JENI'
      FRAME_-28560_CLASS               =  4
      FRAME_-28560_CLASS_ID            = -28560
      FRAME_-28560_CENTER              = -28560
      TKFRAME_-28560_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28560_SPEC              = 'ANGLES'
      TKFRAME_-28560_UNITS             = 'DEGREES'
      TKFRAME_-28560_AXES              = (   1,    2,    3   )
      TKFRAME_-28560_ANGLES            = (  10.0,  0.0,  0.0 )

   \begintext


RIME Frames
--------------------------------------------------------------------------

   This section contains the definition of the Radar for Icy Moon
   Exploration (RIME) instrument frame.


RIME Frame Tree
~~~~~~~~~~~~~~~

   The diagram below show the RIME frame hierarchy:

                                       "JUICE_SPACECRAFT"
                          +---------------------------------------+
                          |                     |                 |
                          |<-fixed              |<-fixed          |<-fixed
                          |                     |                 |
                          |                     v                 v
                          |                "JUICE_RIME+X"    "JUICE_RIME-X"
                          |                --------------    --------------
                          |
                          v
                     "JUICE_RIME_BASE"
            +-----------------------------------------------------+
            |            |             |             |            |
            |<-dynamic   |             |<-ck         |   dynamic->|
            |            |             |             |            |
            v            |             |             |            v
    "JUICE_RIME_NADC"    |             |             |    "JUICE_RIME_NADG"
    -----------------    |             |             |    -----------------
                         |             |             |
                         |<-dynamic    |    dynamic->|
                         |             |             |
                         v             |             v
                 "JUICE_RIME_NADE"     |     "JUICE_RIME_NADJ"
                 -----------------     |     -----------------
                                       |
                                       |
                                       |
                                       v
                                  "JUICE_RIME"
                                  ------------


RIME base frame
~~~~~~~~~~~~~~~

   RIME is a radar sounders nadir-looking active instrument based on a dipole
   antenna of 16 meters. This antenna is rigidly mounted on the science deck
   panel, perpendicular to the spacecraft YZ plane, and its radiation pattern
   is a toroid around the antenna's 4cm diameter cylindrical tube.

   In order to incorporate any misalignment between the antenna mounting and
   the spacecraft frame, the frames JUICE_RIME_BASE, JUICE_RIME+X and
   JUICE_RIME-X are defined:

      -  +X axis is along the antenna's cylindrical tube, nominally
         co-aligned with the +X spacecraft axis;

      -  +Z axis points along the +Z spacecraft axis, in the nominal
         nadir direction and corresponds to the maximum gain of the radiation
         pattern for all frequencies within the RIME bandwidth (see [9])

      -  +Y axis completes the right-handed system;

      -  the origin of JUICE_RIME_BASE is the geometric centre of the RIME's
         antenna.

      -  the origin of JUICE_RIME+X is the mounting point of the +X leg of the
         RIME's antenna.

      -  the origin of JUICE_RIME-X is the mounting point of the -X leg of the
         RIME's antenna.


   This diagram illustrates nominal JUICE_RIME_BASE, JUICE_RIME+X and
   JUICE_RIME-X frames with respect to the spacecraft frame.

   +Z s/c side view:
   -----------------
                                         ..
                                         ||
                                         ||
                                         ||               direction
                                         ||               of flight
                         HGA   __________||           <-------------->
                               \         ||
      \                      .__`._____.'||.     +Yrime-x         \
      /                      |           ||o---->                 /
      \                      |           |||                      \
      /                      |   +Zsc    +Ysc  +Yrime_base        /
      \=>o<===============>o-|      o---->o----->=============>o<=\
      /    -Y Solar Array    |      |    |||    +Y Solar Array    /
      \                      |      |    ||o----->                \
      /                      .______|____|||    +Yrime+x          /
      \                             |    |vv                      \
                               +Xsc V    || +Xrime_base +Xrime+x
                                         || +Xrime-x
                                         ||
                                         || RIME Antenna
                                         ||
                                         ||
                                         ||
                                         ..


                                             +Zsc, +Zrime_base, +Zrime+x and
                                             +Zrime-x are out of page


   The JUICE_RIME_BASE, JUICE_RIME+X and JUICE_RIME-X frames are nominally
   co-aligned with spacecraft frame.


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_RIME_BASE            = -28600
      FRAME_-28600_NAME                = 'JUICE_RIME_BASE'
      FRAME_-28600_CLASS               =  4
      FRAME_-28600_CLASS_ID            = -28600
      FRAME_-28600_CENTER              = -28600
      TKFRAME_-28600_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28600_SPEC              = 'ANGLES'
      TKFRAME_-28600_UNITS             = 'DEGREES'
      TKFRAME_-28600_AXES              = ( 1,   2,   3   )
      TKFRAME_-28600_ANGLES            = ( 0.0, 0.0, 0.0 )

      FRAME_JUICE_RIME+X               = -28602
      FRAME_-28602_NAME                = 'JUICE_RIME+X'
      FRAME_-28602_CLASS               =  4
      FRAME_-28602_CLASS_ID            = -28602
      FRAME_-28602_CENTER              = -28601
      TKFRAME_-28602_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28602_SPEC              = 'ANGLES'
      TKFRAME_-28602_UNITS             = 'DEGREES'
      TKFRAME_-28602_AXES              = ( 1,   2,   3   )
      TKFRAME_-28602_ANGLES            = ( 0.0, 0.0, 0.0 )

      FRAME_JUICE_RIME-X               = -28603
      FRAME_-28603_NAME                = 'JUICE_RIME-X'
      FRAME_-28603_CLASS               =  4
      FRAME_-28603_CLASS_ID            = -28603
      FRAME_-28603_CENTER              = -28602
      TKFRAME_-28603_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28603_SPEC              = 'ANGLES'
      TKFRAME_-28603_UNITS             = 'DEGREES'
      TKFRAME_-28603_AXES              = ( 1,   2,   3   )
      TKFRAME_-28603_ANGLES            = ( 0.0, 0.0, 0.0 )

   \begintext


RIME Nadir frames and radiation pattern frame
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   RIME operations, due to the design of the instrument, are not sensitive
   to along-track off-pointing of the spacecraft, i.e. any off-pointing
   about the +X spacecraft axis will not be noticed by RIME due to the
   antenna's radiation pattern. Therefore, for each of the JUICE targets,
   a RIME Nadir frame is defined taking this characteristic into account.

   In addition to these frames, which are target dependent, a generic
   RIME radiation pattern frame (JUICE_RIME) is provided. This later frame
   is a CK-based frame which takes into account, at different mission
   phases, the target being observed.

   The RIME Nadir frame(s) -- JUICE_RIME_NADC, JUICE_RIME_NADE,
   JUICE_RIME_NADG and JUICE_RIME_NADJ -- are defined as follows:

      -  +X axis is along the antenna's cylindrical tube, nominally
         co-aligned with the +X spacecraft axis;

      -  +Z axis is the component of the spacecraft to target vector which is
         perpendicular to the +X axis, with target either Callisto, Europa,
         Ganymede or Jupiter for JUICE_RIME_NADC, JUICE_RIME_NADE,
         JUICE_RIME_NADG and JUICE_RIME_NADJ respectively;

      -  +Y axis completes the right-handed system;

      -  the origin of this frame is the geometric centre of the RIME's
         antenna.

   All vectors are geometric: no corrections are used.

   The RIME radiation pattern (JUICE_RIME) frame is defined as follows:

      - For those missions phases where the spacecraft-target distance
        is less than maximum RIME operational requirement, the JUICE_RIME
        frame is co-aligned with the corresponding RIME Nadir frame for
        that given target.

      - For all other mission phases, the JUICE_RIME frame is co-aligned
        with the JUICE_RIME_BASE frame, i.e. nominally co-aligned with
        the JUICE_SPACECRAFT frame.


   Required Data:
   --------------
   The RIME Nadir frames are defined as a two-vector frame using two
   different types of specifications for the primary and secondary vectors.

   The primary vector is defined as a constant vector in the JUICE_RIME_BASE
   frame, which provides the orientation for the RIME's antenna cylindrical
   tube, fixed with respect to the spacecraft frame.

   The secondary vector is defined as an 'observer-target position'
   vector and gives the Nadir looking direction to the target body,
   therefore, the ephemeris data required to compute the JUICE-target
   vector in J2000 frame have to be loaded before using this frame, with
   target being either Callisto, Europa, Ganymede or Jupiter, depending
   on the frame.

   The RIME radiation pattern frame is a CK-based frame, therefore loading
   of a CK that contains orientation data for the JUICE_RIME frame is
   required.


   This diagram illustrates nominal JUICE_RIME_BASE frame with respect to
   the spacecraft frame, as well as the different JUICE_RIME_NADx frames
   when no roll, pitch and yaw operations are applied to the spacecraft.

   +Z s/c side view:
   -----------------
                                         ..
                                         ||
                                         ||
                                         ||               direction
                                         ||               of flight
                         HGA   __________||           <-------------->
                               \         ||
      \                      .__`._____.'||.                      \
      /                      |           |||                      /
      \                      |           |||   +Yrime_nad         \
      /                      |   +Zsc    +Ysc  +Yrime_base        /
      \=>o<===============>o-|      o---->o----->=============>o<=\
      /    -Y Solar Array    |      |    |||    +Y Solar Array    /
      \                      |      |    |||                      \
      /                      .______|____||.                      /
      \                             |    |v +Xrime_nad            \
                               +Xsc V    || +Xrime_base
                                         ||
                                         ||
                                         || RIME Antenna
                                         ||
                                         ||
                                         ||
                                         ..


                                             +Zsc, +Zrime_base and +Zrime_nad
                                             are out of page



   This diagram illustrates the JUICE_RIME_NADx frames when the spacecraft
   +Z axis is only off-pointed along-track.

   -X s/c side (HGA side) view:
   ----------------------------

                      .
            Target    |                           direction
                     /                            of Flight
                   .                           <-------------->
              -- '

                         ^ Nadir direction
                          \ +Zrime_nad
                           \
   \--------.               \                                .--------/
   /        |                \                               |        \
   \        |                 \ +Xrime_nad                   |        /
   /        |                  X---------.                   |        \
   \-.------'                .'|         |                   '------.-/
   /-"------. .-----------.'.  |  .---.  |   .-------------. .------"-\
   \       +Yrime_nad  .'   |-.|/ HGA   \| ,-|             | |        /
   /        |=|       v     | o|    x    |o  |             |=|        \
   \        | |             |_/|\       /| \_|             | |        /
   /-.------' '-------------'  | '.___.' |   '-------------' '------.-\
   \-"------.  +Y Solar Array  '---------'    -Y Solar Array .------"-/
   /        |                     /   \                      |        \
   \        |                     '---'                      |        /
   /        |      ^ +Zsc      Main Engine                   |        \
   \--------'      |                                         '--------/
                   |
          +Ysc     |
          <--------x                           +Xsc is into the page
                    +Xsc                       +Xrime_nad is into the page

   \begindata

      FRAME_JUICE_RIME              = -28601
      FRAME_-28601_NAME             = 'JUICE_RIME'
      FRAME_-28601_CLASS            =  3
      FRAME_-28601_CLASS_ID         = -28601
      FRAME_-28601_CENTER           = -28600
      CK_-28601_SCLK                = -28
      CK_-28601_SPK                 = -28

      FRAME_JUICE_RIME_NADC         = -28610
      FRAME_-28610_NAME             = 'JUICE_RIME_NADC'
      FRAME_-28610_CLASS            =  5
      FRAME_-28610_CLASS_ID         = -28610
      FRAME_-28610_CENTER           = -28600
      FRAME_-28610_RELATIVE         = 'JUICE_RIME_BASE'
      FRAME_-28610_DEF_STYLE        = 'PARAMETERIZED'
      FRAME_-28610_FAMILY           = 'TWO-VECTOR'
      FRAME_-28610_PRI_AXIS         = 'X'
      FRAME_-28610_PRI_VECTOR_DEF   = 'CONSTANT'
      FRAME_-28610_PRI_FRAME        = 'JUICE_RIME_BASE'
      FRAME_-28610_PRI_SPEC         = 'RECTANGULAR'
      FRAME_-28610_PRI_VECTOR       = ( 1, 0, 0 )
      FRAME_-28610_SEC_AXIS         = 'Z'
      FRAME_-28610_SEC_VECTOR_DEF   = 'OBSERVER_TARGET_POSITION'
      FRAME_-28610_SEC_OBSERVER     = 'JUICE'
      FRAME_-28610_SEC_TARGET       = 'CALLISTO'
      FRAME_-28610_SEC_ABCORR       = 'NONE'

      FRAME_JUICE_RIME_NADE         = -28611
      FRAME_-28611_NAME             = 'JUICE_RIME_NADE'
      FRAME_-28611_CLASS            =  5
      FRAME_-28611_CLASS_ID         = -28611
      FRAME_-28611_CENTER           = -28600
      FRAME_-28611_RELATIVE         = 'JUICE_RIME_BASE'
      FRAME_-28611_DEF_STYLE        = 'PARAMETERIZED'
      FRAME_-28611_FAMILY           = 'TWO-VECTOR'
      FRAME_-28611_PRI_AXIS         = 'X'
      FRAME_-28611_PRI_VECTOR_DEF   = 'CONSTANT'
      FRAME_-28611_PRI_FRAME        = 'JUICE_RIME_BASE'
      FRAME_-28611_PRI_SPEC         = 'RECTANGULAR'
      FRAME_-28611_PRI_VECTOR       = ( 1, 0, 0 )
      FRAME_-28611_SEC_AXIS         = 'Z'
      FRAME_-28611_SEC_VECTOR_DEF   = 'OBSERVER_TARGET_POSITION'
      FRAME_-28611_SEC_OBSERVER     = 'JUICE'
      FRAME_-28611_SEC_TARGET       = 'EUROPA'
      FRAME_-28611_SEC_ABCORR       = 'NONE'

      FRAME_JUICE_RIME_NADG         = -28612
      FRAME_-28612_NAME             = 'JUICE_RIME_NADG'
      FRAME_-28612_CLASS            =  5
      FRAME_-28612_CLASS_ID         = -28612
      FRAME_-28612_CENTER           = -28600
      FRAME_-28612_RELATIVE         = 'JUICE_RIME_BASE'
      FRAME_-28612_DEF_STYLE        = 'PARAMETERIZED'
      FRAME_-28612_FAMILY           = 'TWO-VECTOR'
      FRAME_-28612_PRI_AXIS         = 'X'
      FRAME_-28612_PRI_VECTOR_DEF   = 'CONSTANT'
      FRAME_-28612_PRI_FRAME        = 'JUICE_RIME_BASE'
      FRAME_-28612_PRI_SPEC         = 'RECTANGULAR'
      FRAME_-28612_PRI_VECTOR       = ( 1, 0, 0 )
      FRAME_-28612_SEC_AXIS         = 'Z'
      FRAME_-28612_SEC_VECTOR_DEF   = 'OBSERVER_TARGET_POSITION'
      FRAME_-28612_SEC_OBSERVER     = 'JUICE'
      FRAME_-28612_SEC_TARGET       = 'GANYMEDE'
      FRAME_-28612_SEC_ABCORR       = 'NONE'

      FRAME_JUICE_RIME_NADJ         = -28613
      FRAME_-28613_NAME             = 'JUICE_RIME_NADJ'
      FRAME_-28613_CLASS            =  5
      FRAME_-28613_CLASS_ID         = -28613
      FRAME_-28613_CENTER           = -28600
      FRAME_-28613_RELATIVE         = 'JUICE_RIME_BASE'
      FRAME_-28613_DEF_STYLE        = 'PARAMETERIZED'
      FRAME_-28613_FAMILY           = 'TWO-VECTOR'
      FRAME_-28613_PRI_AXIS         = 'X'
      FRAME_-28613_PRI_VECTOR_DEF   = 'CONSTANT'
      FRAME_-28613_PRI_FRAME        = 'JUICE_RIME_BASE'
      FRAME_-28613_PRI_SPEC         = 'RECTANGULAR'
      FRAME_-28613_PRI_VECTOR       = ( 1, 0, 0 )
      FRAME_-28613_SEC_AXIS         = 'Z'
      FRAME_-28613_SEC_VECTOR_DEF   = 'OBSERVER_TARGET_POSITION'
      FRAME_-28613_SEC_OBSERVER     = 'JUICE'
      FRAME_-28613_SEC_TARGET       = 'JUPITER'
      FRAME_-28613_SEC_ABCORR       = 'NONE'

   \begintext


RPWI Frames
--------------------------------------------------------------------------

   This section contains the definition of the Radio & Plasma Waves
   Investigation (RPWI) structures, instruments and sensor frames.


RPWI Frame Tree
~~~~~~~~~~~~~~~

   The diagram below shows the RPWI frame hierarchy:


                              "JUICE_SPACECRAFT"
             +---------------------------------------------------+
             |            |            |            |            |
             |<-fixed     |            |<-fixed     |            |<-fixed
             |            |            |            |            |
             v            |            v            |            v
    "JUICE_RPWI_LPB1-H"   |   "JUICE_RPWI_LPB3-H"   |   "JUICE_RPWI_LPB4-H"
    -------------------   |   -------------------   |   -------------------
             |            |            |            |            |
             |<-ck        |            |<-ck        |            |<-ck
             |            |            |            |            |
             v            |            |            |            v
     "JUICE_RPWI_LPB1"    |    "JUICE_RPWI_LPB3"    |    "JUICE_RPWI_LPB4"
     -----------------    |    -----------------    |    -----------------
             |            |            |            |            |
      fixed->|            |            |<-fixed     |            |<-fixed
             |            |            |            |            |
             v            |            v            |            v
     "JUICE_RPWI_LP1"     |    "JUICE_RPWI_LP3"     |    "JUICE_RPWI_LP4"
     ----------------     |    ----------------     |    ----------------
                          |                         |
                   fixed->|                         |
                          |                         |
                          v                         |
                 "JUICE_RPWI_LPB2-H"                |
                 -------------------                |
                          |                         |
                          |<-ck                     |
                          |                         |
                          v                         |
                  "JUICE_RPWI_LPB2"                 |
                  -----------------                 |
                          |                         |
                   fixed->|                         |
                          |                         |
                          v                         |
                  "JUICE_RPWI_LP2"                  |
                  ----------------                  |
                                                    |<-fixed
                                                    |
                                                    v
                                            "JUICE_MAG_BOOM-H"
                                            ------------------
                                                    |
                                                    |<-ck
                                                    |
                                                    v
                                            "JUICE_MAG_BOOM"
                                   +-------------------------+
                                   |                         |
                                   |<-fixed                  |<-fixed
                                   |                         |
                                   v                         |
                           "JUICE_RPWI_RWI"                  |
             +----------------------------------+            |
             |                |                 |            |
             |<-fixed         |<-fixed          |            |
             |                |                 |            |
             |                v                 |            |
             |       "JUICE_RPWI_RWI_V"         |            |
             |       ------------------         |<-fixed     |
             |                                  |            |
             v                                  v            |
     "JUICE_RPWI_RWI_U"                "JUICE_RPWI_RWI_W"    |
     ------------------                ------------------    |
                                                             |
                                                             |
                                                             |
                                                             V
                                                    "JUICE_RPWI_SCM"
                                 +----------------------------------+
                                 |                |                 |
                                 |<-fixed         |<-fixed          |
                                 |                |                 |
                                 |                v                 |
                                 |       "JUICE_RPWI_SCM_V"         |
                                 |       ------------------         |<-fixed
                                 |                                  |
                                 v                                  v
                         "JUICE_RPWI_SCM_U"                "JUICE_RPWI_SCM_W"
                         ------------------                ------------------


RPWI Langmuir probe boom hinge frames
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Each of the 4 Langmuir probes of the RPWI is mounted on a separate 3-meter
   long deployable boom. See the latest JUICE structures SPK file [13] for
   the location of the booms on the spacecraft bus.

   The RPWI Langmuir probes boom hinge frames -- JUICE_RPWI_LPB1-H,
   JUICE_RPWI_LPB2-H, JUICE_RPWI_LPB3-H and JUICE_RPWI_LPB4-H -- are defined
   as follows (from [25]):

      -  +Y axis is normal to the hinge mounting plane, pointing outwards
         from the spacecraft bus;

      -  +Z axis is parallel to the boom's hinge rotation axis;

      -  +X axis is parallel to the boom in stowed configuration and
         completes the right hand frame;

      -  the origin of the frame is located at the boom's hinge geometrical
         center.


   This diagram illustrates the nominal JUICE_RPWI_LPBx-H frames with respect
   to the spacecraft frame.

   +Z s/c side view:
   -----------------                                +Ylpb4-h
                                                    ^         direction
                                                   /          of flight
                                ____________HGA   /       <-------------->
                                \           /    /
      \                      .---`.-------.'---.x +Xlpb4-h            \
      /                      |                 | '                    /
      \                  +Zlpb2-h              |  '.                  \
      /                     ^|                 |     '. +Zlpb4-h      /
      \ -Y Solar Array      ||     +Zsc      +Ysc       >             \
      /=>o<===============>o||        o--------->o<===============>o<=/
      \                     ||        |        |                      \
      /                     ||        |        |    +Y Solar Array    /
      \                     |+Xlpb2-h |        |                      \
      / +Ylpb2-h<-----------x.________|________.                      /
      \ +Ylpb3-h<-----------o+Ylpb3-h |         x +Xlpb1-h            \
                            |         V   +Xsc /  '.
                            |                 /      '.
                            |                /          '. +Ylpb1-h
                            V               /              >
                         +Zlpb3-h          v +Zlpb1-h

                                             +Zsc, +Ylpb1-h, +Ylpb2-h and
                                             +Ylpb4-h are out of the
                                             page. Ylpb3-h is into the page.



   Nominally, the following rotations, first about +Z, then about +Y
   and then about +X, are required in order to align each of the
   JUICE_RPWI_LPBx-H frames to the s/c frame.

                             Rotation      Rotation      Rotation
       `To' frame            about +Z      about +Y      about +X
      -------------------   -----------   ----------    ----------
       JUICE_RPWI_LPB1-H     +58.0 deg      90.0 deg      90.0 deg
       JUICE_RPWI_LPB2-H     -90.0 deg      90.0 deg      90.0 deg
       JUICE_RPWI_LPB3-H     -90.0 deg     -90.0 deg     -90.0 deg
       JUICE_RPWI_LPB4-H    +132.0 deg      90.0 deg      90.0 deg


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_RPWI_LPB1-H          = -28700
      FRAME_-28700_NAME                = 'JUICE_RPWI_LPB1-H'
      FRAME_-28700_CLASS               =  4
      FRAME_-28700_CLASS_ID            = -28700
      FRAME_-28700_CENTER              = -28701
      TKFRAME_-28700_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28700_SPEC              = 'ANGLES'
      TKFRAME_-28700_UNITS             = 'DEGREES'
      TKFRAME_-28700_AXES              = (   3,      2,      1   )
      TKFRAME_-28700_ANGLES            = ( -58.0,  -90.0,  -90.0 )

      FRAME_JUICE_RPWI_LPB2-H          = -28710
      FRAME_-28710_NAME                = 'JUICE_RPWI_LPB2-H'
      FRAME_-28710_CLASS               =  4
      FRAME_-28710_CLASS_ID            = -28710
      FRAME_-28710_CENTER              = -28711
      TKFRAME_-28710_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28710_SPEC              = 'ANGLES'
      TKFRAME_-28710_UNITS             = 'DEGREES'
      TKFRAME_-28710_AXES              = (  3,      2,      1   )
      TKFRAME_-28710_ANGLES            = ( 90.0,  -90.0,  -90.0 )

      FRAME_JUICE_RPWI_LPB3-H          = -28720
      FRAME_-28720_NAME                = 'JUICE_RPWI_LPB3-H'
      FRAME_-28720_CLASS               =  4
      FRAME_-28720_CLASS_ID            = -28720
      FRAME_-28720_CENTER              = -28721
      TKFRAME_-28720_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28720_SPEC              = 'ANGLES'
      TKFRAME_-28720_UNITS             = 'DEGREES'
      TKFRAME_-28720_AXES              = (  3,      2,      1   )
      TKFRAME_-28720_ANGLES            = ( 90.0,   90.0,   90.0 )

      FRAME_JUICE_RPWI_LPB4-H          = -28730
      FRAME_-28730_NAME                = 'JUICE_RPWI_LPB4-H'
      FRAME_-28730_CLASS               =  4
      FRAME_-28730_CLASS_ID            = -28730
      FRAME_-28730_CENTER              = -28731
      TKFRAME_-28730_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28730_SPEC              = 'ANGLES'
      TKFRAME_-28730_UNITS             = 'DEGREES'
      TKFRAME_-28730_AXES              = (    3,      2,      1   )
      TKFRAME_-28730_ANGLES            = ( -132.0,  -90.0,  -90.0 )

   \begintext


RPWI Langmuir Probe Booms frames
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   The RPWI Langmuir Probe Booms frames -- JUICE_RPWI_LPB1, JUICE_RPWI_LPB2,
   JUICE_RPWI_LPB3 and JUICE_RPWI_LPB4 -- are defined as follows (from [25]):

      -  +X axis is parallel to the boom, pointing outwards from the hinge
         towards the tip of the boom in deployed configuration;

      -  +Z axis is parallel to the boom's hinge rotation axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the boom's hinge geometrical
         center.


   This diagram illustrates the nominal JUICE_RPWI_LPBx frame with respect to
   the JUICE_RPWI_LPBx-H frame.

   +Z Langmuir Probe side view (deployed configuration):
   -----------------------------------------------------

                              .---. Langmuir Probe
                             /     \
                             |     |
                              '...' ---
                                  \\  \
                                   \\  \
                                    \\  \
                                     \\  \
                                      ~~ ~3m
                                       ~~  \
                                    +Xlpb^  \
                                         \\  \
                                          \\  \
                               135 deg   .-\\  \
                                      ,'    \\. \
                                     .     .--\---.  +Ylpb-h
                        //-----------------'--.o------->--------//
                                     '      .' |  spacecraft deck
                                      '   .'   |
                                  +Ylpb ''.___ |
                                      <'       V            +Zlpb-h and
                                            +Xlpb-h         +Zlpb are out of
                                                            the page.


   These sets of keywords define the Langmuir Probe's boom frames as Switch
   Frames (see [1] for more information) aligned with one of the different
   CK-based base frames -- JUICE_RPWI_LPB1_MEAS or JUICE_RPWI_LPB1_PLAN,
   JUICE_RPWI_LPB2_MEAS or JUICE_RPWI_LPB2_PLAN, JUICE_RPWI_LPB3_MEAS or
   JUICE_RPW3_LPB1_PLAN and JUICE_RPWI_LPB4_MEAS or JUICE_RPWI_LPB4_PLAN
   -- depending on coverage.

   \begindata

      FRAME_JUICE_RPWI_LPB1_MEAS       = -28702
      FRAME_-28702_NAME                = 'JUICE_RPWI_LPB1_MEAS'
      FRAME_-28702_CLASS               =  3
      FRAME_-28702_CLASS_ID            = -28702
      FRAME_-28702_CENTER              = -28701
      CK_-28702_SCLK                   = -28
      CK_-28702_SPK                    = -28

      FRAME_JUICE_RPWI_LPB1_PLAN       = -28703
      FRAME_-28703_NAME                = 'JUICE_RPWI_LPB1_PLAN'
      FRAME_-28703_CLASS               =  3
      FRAME_-28703_CLASS_ID            = -28703
      FRAME_-28703_CENTER              = -28701
      CK_-28703_SCLK                   = -28999
      CK_-28703_SPK                    = -28

      FRAME_JUICE_RPWI_LPB1            = -28701
      FRAME_-28701_NAME                = 'JUICE_RPWI_LPB1'
      FRAME_-28701_CLASS               =  6
      FRAME_-28701_CLASS_ID            = -28701
      FRAME_-28701_CENTER              = -28701
      FRAME_-28701_ALIGNED_WITH        = (
                                           'JUICE_RPWI_LPB1_PLAN'
                                           'JUICE_RPWI_LPB1_MEAS'
                                          )


      FRAME_JUICE_RPWI_LPB2_MEAS       = -28712
      FRAME_-28712_NAME                = 'JUICE_RPWI_LPB2_MEAS'
      FRAME_-28712_CLASS               =  3
      FRAME_-28712_CLASS_ID            = -28712
      FRAME_-28712_CENTER              = -28711
      CK_-28712_SCLK                   = -28
      CK_-28712_SPK                    = -28

      FRAME_JUICE_RPWI_LPB2_PLAN       = -28713
      FRAME_-28713_NAME                = 'JUICE_RPWI_LPB2_PLAN'
      FRAME_-28713_CLASS               =  3
      FRAME_-28713_CLASS_ID            = -28713
      FRAME_-28713_CENTER              = -28711
      CK_-28713_SCLK                   = -28999
      CK_-28713_SPK                    = -28

      FRAME_JUICE_RPWI_LPB2            = -28711
      FRAME_-28711_NAME                = 'JUICE_RPWI_LPB2'
      FRAME_-28711_CLASS               =  6
      FRAME_-28711_CLASS_ID            = -28711
      FRAME_-28711_CENTER              = -28711
      FRAME_-28711_ALIGNED_WITH        = (
                                           'JUICE_RPWI_LPB2_PLAN'
                                           'JUICE_RPWI_LPB2_MEAS'
                                          )


      FRAME_JUICE_RPWI_LPB3_MEAS       = -28722
      FRAME_-28722_NAME                = 'JUICE_RPWI_LPB3_MEAS'
      FRAME_-28722_CLASS               =  3
      FRAME_-28722_CLASS_ID            = -28722
      FRAME_-28722_CENTER              = -28721
      CK_-28722_SCLK                   = -28
      CK_-28722_SPK                    = -28

      FRAME_JUICE_RPWI_LPB3_PLAN       = -28723
      FRAME_-28723_NAME                = 'JUICE_RPWI_LPB3_PLAN'
      FRAME_-28723_CLASS               =  3
      FRAME_-28723_CLASS_ID            = -28723
      FRAME_-28723_CENTER              = -28721
      CK_-28723_SCLK                   = -28999
      CK_-28723_SPK                    = -28

      FRAME_JUICE_RPWI_LPB3            = -28721
      FRAME_-28721_NAME                = 'JUICE_RPWI_LPB3'
      FRAME_-28721_CLASS               =  6
      FRAME_-28721_CLASS_ID            = -28721
      FRAME_-28721_CENTER              = -28721
      FRAME_-28721_ALIGNED_WITH        = (
                                           'JUICE_RPWI_LPB3_PLAN'
                                           'JUICE_RPWI_LPB3_MEAS'
                                          )


      FRAME_JUICE_RPWI_LPB4_MEAS       = -28732
      FRAME_-28732_NAME                = 'JUICE_RPWI_LPB4_MEAS'
      FRAME_-28732_CLASS               =  3
      FRAME_-28732_CLASS_ID            = -28732
      FRAME_-28732_CENTER              = -28731
      CK_-28732_SCLK                   = -28
      CK_-28732_SPK                    = -28

      FRAME_JUICE_RPWI_LPB4_PLAN       = -28733
      FRAME_-28733_NAME                = 'JUICE_RPWI_LPB4_PLAN'
      FRAME_-28733_CLASS               =  3
      FRAME_-28733_CLASS_ID            = -28733
      FRAME_-28733_CENTER              = -28731
      CK_-28733_SCLK                   = -28999
      CK_-28733_SPK                    = -28

      FRAME_JUICE_RPWI_LPB4            = -28731
      FRAME_-28731_NAME                = 'JUICE_RPWI_LPB4'
      FRAME_-28731_CLASS               =  6
      FRAME_-28731_CLASS_ID            = -28731
      FRAME_-28731_CENTER              = -28731
      FRAME_-28731_ALIGNED_WITH        = (
                                           'JUICE_RPWI_LPB4_PLAN'
                                           'JUICE_RPWI_LPB4_MEAS'
                                          )

   \begintext


RPWI Langmuir Probes, RWI and SCM frames
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   The RPWI Langmuir Probes frames -- JUICE_RPWI_LP1, JUICE_RPWI_LP2,
   JUICE_RPWI_LP3 and JUICE_RPWI_LP4 -- are defined as follows (from [11]):

      -  +Z axis is parallel to the boom, pointing outwards from the hinge
         towards the tip of the boom in deployed configuration;

      -  +X axis is parallel to the boom's hinge rotation axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the sensor's geometrical
         center.


   The Radio Wave Instrument (RWI) base frame -- JUICE_RPWI_RWI --
   corresponding to RWI URF in [10] is defined as follows (from [10]):

      -  +X axis is rotated around the boom +Y axis about ~20 degrees from
         the boom +X axis and it points from the most inward hole of the
         mounting plate to the most outward;

      -  +Y axis is rotated around the boom -X axis about ~30 degrees from
         the boom +X axis and is parallel to the mounting plate;

      -  +Z axis completes the right hand frame and is perpendicular to the
         mounting plate;

      -  the origin of the frame is located at the sensor's geometrical
         center.

   The axis of each RWI dipole antenna U, V, W, can be determined with
   respect to JUICE_RPWI_RWI (RWI URF in [10]) with the following
   analytical expression:

      U = -X / sqrt(3) - Y / sqrt(2) + Z / sqrt(6)
      V =  X / sqrt(3) + Z * sqrt(2/3)
      W = -X / sqrt(3) + Y / sqrt(2) + Z / sqrt(6)

   In addition, the measured alignment of these axis has been laser scanned
   by Astronika [29] and these values used to define the alignment of the
   dipole frames:

      U = [ -0.577913,  -0.706544,   0.408426 ]
      V = [  0.581716,   0.002820,   0.813387 ]
      W = [ -0.572995,   0.706597,   0.415200 ]

   The Radio Wave Instrument (RWI) dipoles frames -- JUICE_RPWI_RWI_U,
   JUICE_RPWI_RWI_V, JUICE_RPWI_RWI_W -- determine each dipole axis
   direction with the +Z axis and are defined as follows:

      -  +Z axis is parallel to the dipole axis pointing outwards from the
         magnetometer boom;

      -  +X axis is defined as the projection of the magnetometer boom +X
         axis into the plane defined by the dipole axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the sensor's geometrical
         center.


   The RPWI Search Coil Magnetometer (SCM) base frame -- JUICE_RPWI_SCM -- is
   defined as follows (from [10]):

      -  +Y axis is rotated around the boom -X axis about ~40 degrees from
         the boom +Y axis;

      -  +Z axis is anti-parallel to the boom +X axis, pointing outwards
         from the tip of the boom towards the hinge of the boom in deployed
         configuration;

      -  +X axis completes the right hand frame;

      -  the origin of the frame is located at the sensor's geometrical
         center.


   The RPWI Search Coil Magnetometer (SCM) dipoles frames -- JUICE_RPWI_SCM_U,
   JUICE_RPWI_SCM_V, JUICE_RPWI_SCM_W -- are defined as follows:

      -  +Z axis is parallel to the dipole axis pointing outwards from the
         magnetometer boom;

      -  +X axis is defined as the projection of the magnetometer boom +X
         axis into the plane defined by the dipole axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the sensor's geometrical
         center.


   The Langmuir Probes deployment dates are:

        Boom               Date
       -----------------  ---------------------
        JUICE_RPWI_LPB1    2023-05-26T13:01:00
        JUICE_RPWI_LPB2    2023-05-24T16:06:00
        JUICE_RPWI_LPB3    2023-05-25T11:35:00
        JUICE_RPWI_LPB4    2023-05-22T16:06:00


   The RWI dipoles deployment dates are:

        Boom                 Date
       ------------------   ---------------------
        JUICE_RPWI_RWI_U     2023-05-23T10:23:00
        JUICE_RPWI_RWI_V     2023-05-23T11:08:00
        JUICE_RPWI_RWI_W     2023-05-23T10:48:00


   These diagrams illustrate the nominal JUICE_RPWI_LPx frame with respect to
   the JUICE_RPWI_LPBx frame and the JUICE_RPWI_RWI and JUICE_RPWI_SCM frames
   with respect to the JUICE_MAG_BOOM frame

   +X Langmuir Probe side view:
   ----------------------------


                     ^ +Zlp
                     |
                     |
                  .--|--. Langmuir Probe
                 /   |   \
                 |   o---------->
                  +Xlp   /     +Ylp
                  '-----'
                    | |
                    | |
                    | |
                    | |
                    ~~~
                    ~~~
                    | |
                    |^ +Xlpb
                    |||
                    |||
                     |      +Ylpb
                     x------->
                     +Zlpb

                                    +Xlpb and +Xlp are out of
                                    the page.


   -Z Magnetometer boom side view:
   -------------------------------

                                    rwi_u
                               ~~~     ~
                               | |    /
                               | |+Xrwi
               rwi_v           | |  ^    rwi_w
                  ~            | | /      _~
                    ` <        | |/    _.'
                   +Zrwi` .    | |  _.'
                            ` .=x|.'
                           +Yrwi ` .
                          _.'/ | |   ` .
                       _.'  /  | |       ` .
                     ~'    /   ~~~           ` ~
                          ~    ~~~
                               | |
                               | |
                       rwi_w   | |
                             ~ | | MAG boom
                             | | |
                             | . |    SCM sensor
             rwi_u  ~========| | |=========~
                   ~=========| |==========~ rwi_v
                     <----------o----------->
                  +Xscm      | || +Yscm
                             | |||
                             | |||
                             ~ |||
                               |v +Zscm
                               | |
                               ~~~
                               | |
                               |^ +Xmagb
                               |||
                               |||
                               |||      +Ymagb
                                x-------->
                          +Zmagb

                                            +Ymagb and +Yrwi are into
                                            the page. +Yscm is out of
                                            the page.


   +X RWI/SCM Dipoles side view:
   -----------------------------

           +Zdipole
              ^
            ~~|~~
             |||
             |||
             |||
             |||
             |||
             |o--------------> +Ydipole
             |+Xdipole
             | |
             | |
             | |
             | |
            ~~~~~

                         +Xdipole is out of the page.


   Nominally, single rotation of +90 degrees about the +Y axis of the
   JUICE_RPWI_LPBx is required to co-align the Langmuir Probe frame and the
   corresponding boom's frame.

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_RPWI_LP1             = -28705
      FRAME_-28705_NAME                = 'JUICE_RPWI_LP1'
      FRAME_-28705_CLASS               =  4
      FRAME_-28705_CLASS_ID            = -28705
      FRAME_-28705_CENTER              = -28705
      TKFRAME_-28705_RELATIVE          = 'JUICE_RPWI_LPB1'
      TKFRAME_-28705_SPEC              = 'ANGLES'
      TKFRAME_-28705_UNITS             = 'DEGREES'
      TKFRAME_-28705_AXES              = ( 3,    1,     2   )
      TKFRAME_-28705_ANGLES            = ( 0.0,  0.0, -90.0 )

      FRAME_JUICE_RPWI_LP2             = -28715
      FRAME_-28715_NAME                = 'JUICE_RPWI_LP2'
      FRAME_-28715_CLASS               =  4
      FRAME_-28715_CLASS_ID            = -28715
      FRAME_-28715_CENTER              = -28715
      TKFRAME_-28715_RELATIVE          = 'JUICE_RPWI_LPB2'
      TKFRAME_-28715_SPEC              = 'ANGLES'
      TKFRAME_-28715_UNITS             = 'DEGREES'
      TKFRAME_-28715_AXES              = ( 3,    1,     2   )
      TKFRAME_-28715_ANGLES            = ( 0.0,  0.0, -90.0 )

      FRAME_JUICE_RPWI_LP3             = -28725
      FRAME_-28725_NAME                = 'JUICE_RPWI_LP3'
      FRAME_-28725_CLASS               =  4
      FRAME_-28725_CLASS_ID            = -28725
      FRAME_-28725_CENTER              = -28725
      TKFRAME_-28725_RELATIVE          = 'JUICE_RPWI_LPB3'
      TKFRAME_-28725_SPEC              = 'ANGLES'
      TKFRAME_-28725_UNITS             = 'DEGREES'
      TKFRAME_-28725_AXES              = ( 3,    1,     2   )
      TKFRAME_-28725_ANGLES            = ( 0.0,  0.0, -90.0 )

      FRAME_JUICE_RPWI_LP4             = -28735
      FRAME_-28735_NAME                = 'JUICE_RPWI_LP4'
      FRAME_-28735_CLASS               =  4
      FRAME_-28735_CLASS_ID            = -28735
      FRAME_-28735_CENTER              = -28735
      TKFRAME_-28735_RELATIVE          = 'JUICE_RPWI_LPB4'
      TKFRAME_-28735_SPEC              = 'ANGLES'
      TKFRAME_-28735_UNITS             = 'DEGREES'
      TKFRAME_-28735_AXES              = ( 3,    1,     2   )
      TKFRAME_-28735_ANGLES            = ( 0.0,  0.0, -90.0 )

      FRAME_JUICE_RPWI_RWI             = -28740
      FRAME_-28740_NAME                = 'JUICE_RPWI_RWI'
      FRAME_-28740_CLASS               =  4
      FRAME_-28740_CLASS_ID            = -28740
      FRAME_-28740_CENTER              = -28740
      TKFRAME_-28740_RELATIVE          = 'JUICE_MAG_BOOM'
      TKFRAME_-28740_SPEC              = 'MATRIX'
      TKFRAME_-28740_MATRIX            = (
                                         0.88619758, -0.16959407, -0.43115137,
                                        -0.06949837,  0.87140434, -0.48561702,
                                         0.45806481,  0.46031706,  0.76045076 )

      FRAME_JUICE_RPWI_RWI_U           = -28741
      FRAME_-28741_NAME                = 'JUICE_RPWI_RWI_U'
      FRAME_-28741_CLASS               =  4
      FRAME_-28741_CLASS_ID            = -28741
      FRAME_-28741_CENTER              = -28741
      TKFRAME_-28741_RELATIVE          = 'JUICE_MAG_BOOM'
      TKFRAME_-28741_SPEC              = 'ANGLES'
      TKFRAME_-28741_UNITS             = 'DEGREES'
      TKFRAME_-28741_AXES              = (  3,       2,         1       )
      TKFRAME_-28741_ANGLES            = ( 5.62361, 14.99233, -20.83867 )

      FRAME_JUICE_RPWI_RWI_V           = -28742
      FRAME_-28742_NAME                = 'JUICE_RPWI_RWI_V'
      FRAME_-28742_CLASS               =  4
      FRAME_-28742_CLASS_ID            = -28742
      FRAME_-28742_CENTER              = -28742
      TKFRAME_-28742_RELATIVE          = 'JUICE_MAG_BOOM'
      TKFRAME_-28742_SPEC              = 'ANGLES'
      TKFRAME_-28742_UNITS             = 'DEGREES'
      TKFRAME_-28742_AXES              = (  3,         2,        1       )
      TKFRAME_-28742_ANGLES            = ( 48.78316, -45.19302, 58.14006 )

      FRAME_JUICE_RPWI_RWI_W           = -28743
      FRAME_-28743_NAME                = 'JUICE_RPWI_RWI_W'
      FRAME_-28743_CLASS               =  4
      FRAME_-28743_CLASS_ID            = -28743
      FRAME_-28743_CENTER              = -28743
      TKFRAME_-28743_RELATIVE          = 'JUICE_MAG_BOOM'
      TKFRAME_-28743_SPEC              = 'ANGLES'
      TKFRAME_-28743_UNITS             = 'DEGREES'
      TKFRAME_-28743_AXES              = (   3,       2,        1       )
      TKFRAME_-28743_ANGLES            = ( -21.40217, 4.99406, 77.47748 )

      FRAME_JUICE_RPWI_SCM             = -28750
      FRAME_-28750_NAME                = 'JUICE_RPWI_SCM'
      FRAME_-28750_CLASS               =  4
      FRAME_-28750_CLASS_ID            = -28750
      FRAME_-28750_CENTER              = -28750
      TKFRAME_-28750_RELATIVE          = 'JUICE_MAG_BOOM'
      TKFRAME_-28750_SPEC              = 'MATRIX'
      TKFRAME_-28750_MATRIX            = (  0.0,     0.64278811,  0.76604414,
                                           -0.0,     0.76604414, -0.64278811,
                                           -1.0,     0.0,         0.0        )

      FRAME_JUICE_RPWI_SCM_U           = -28751
      FRAME_-28751_NAME                = 'JUICE_RPWI_SCM_U'
      FRAME_-28751_CLASS               =  4
      FRAME_-28751_CLASS_ID            = -28751
      FRAME_-28751_CENTER              = -28751
      TKFRAME_-28751_RELATIVE          = 'JUICE_MAG_BOOM'
      TKFRAME_-28751_SPEC              = 'ANGLES'
      TKFRAME_-28751_UNITS             = 'DEGREES'
      TKFRAME_-28751_AXES              = ( 3,    2,     1   )
      TKFRAME_-28751_ANGLES            = ( 0,    0,   85.00 )

      FRAME_JUICE_RPWI_SCM_V           = -28752
      FRAME_-28752_NAME                = 'JUICE_RPWI_SCM_V'
      FRAME_-28752_CLASS               =  4
      FRAME_-28752_CLASS_ID            = -28752
      FRAME_-28752_CENTER              = -28752
      TKFRAME_-28752_RELATIVE          = 'JUICE_MAG_BOOM'
      TKFRAME_-28752_SPEC              = 'ANGLES'
      TKFRAME_-28752_UNITS             = 'DEGREES'
      TKFRAME_-28752_AXES              = ( 3,    2,     1   )
      TKFRAME_-28752_ANGLES            = ( 0,    0,   175.0 )

      FRAME_JUICE_RPWI_SCM_W           = -28753
      FRAME_-28753_NAME                = 'JUICE_RPWI_SCM_W'
      FRAME_-28753_CLASS               =  4
      FRAME_-28753_CLASS_ID            = -28753
      FRAME_-28753_CENTER              = -28753
      TKFRAME_-28753_RELATIVE          = 'JUICE_MAG_BOOM'
      TKFRAME_-28753_SPEC              = 'ANGLES'
      TKFRAME_-28753_UNITS             = 'DEGREES'
      TKFRAME_-28753_AXES              = ( 3,     2,     1   )
      TKFRAME_-28753_ANGLES            = ( 0.0,  90.0,   0.0 )


   \begintext


SWI Frames
--------------------------------------------------------------------------

   This section contains the definition of the Sub-millimeter Wave
   Instrument (SWI) instrument frames.

   SWI is on the nadir platform in order to observe the target in nadir and
   limb viewing geometry. A clear field of view of +/-76 degrees along the
   track for 1) scanning across Jupiter, 2) viewing the Galilean satellites
   and 3) viewing cold space for calibration purpose is needed. Across the
   track SWI needs just a clear field of view of +/-4.3 degrees to scan across
   Jupiter in North- South direction.


SWI Frame Tree
~~~~~~~~~~~~~~~

   The diagram below shows the SWI frame hierarchy:

                             "JUICE_SPACECRAFT"
                             ------------------
                                     |
                                     |<-fixed
                                     |
                                     v
                              "JUICE_SWI_BASE"
                         +------------------------+
                         |                        |
                         |<-ck                    |<-ck
                         |                        |
                         v                        v
            "JUICE_SWI_SCANNER_PLAN"   "JUICE_SWI_SCANNER_MEAS"
            ------------------------   ------------------------
                         |                        |
                         |                        |
                         |                        |
                         v                        v
                         +------------------------+
                                     |
                                     |<-switch
                                     |
                                     V
                            "JUICE_SWI_SCANNER"
                            -------------------


SWI instrument Base frame
~~~~~~~~~~~~~~~~~~~~~~~~~

   The SWI base frame, JUICE_SWI_BASE, is fixed with respect to the
   spacecraft and defined as follows:

      -  +Z axis is normal to the instrument mounting plane and points
         towards the Nadir direction; it is nominally aligned to the +Z
         spacecraft axis;

      -  +X axis is nominally aligned to the +X spacecraft axis -- during the
         Jupiter phase the +X axis is aligned with the along-track direction
         whereas during the Ganymede phase, it is aligned with the cross-track
         direction; that is, tilted by 90 deg --.

      -  +Y axis completes the right-handed frame;

      -  the origin of the frame is at the center of the reference
         mounting hole.


   Any misalignment between the nominal and actual SWI mounting alignment
   measured pre-launch should be incorporated into the definition of this
   frame.


   This diagram illustrates nominal JUICE_SWI_BASE frame with respect to
   the spacecraft frame.

   +Z s/c side view:
   -----------------
                                                          direction
                                                          of flight
                               ___________ HGA        <-------------->
                               \         /
      \                      .__`._____.'__.                      \
      /                      |             |                      /
      \                      |             |                      \
      /                      |   +Zsc    +Ysc                     /
      \=>o<===============>o-|      o------->o<===============>o<=\
      /    -Y Solar Array    |___.  |      |    +Y Solar Array    /
      \                      | o------>    |                      \
      /                      ._|_|__|__+Yswi_base                 /
      \                        |    |                             \
                               |    V +Xsc
                               V
                                +Xswi_base
                                             +Zsc and +Zswi_base are
                                                 out of page


   Nominally, the SWI base frame is co-aligned with the s/c frame.

   The instrument alignment has been measured after mechanical tests
   during the fourth alignment campaign as reported in [26]. The following
   misalignment is introduced as three rotations expressed in arcseconds from
   spacecraft to SWI instrument reference frames:

     Rotation = (    0.0,      5.0,     107.0  )
         SC -> SWI     Rz        Ry         Rx

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_SWI_BASE             = -28800
      FRAME_-28800_NAME                = 'JUICE_SWI_BASE'
      FRAME_-28800_CLASS               =  4
      FRAME_-28800_CLASS_ID            = -28800
      FRAME_-28800_CENTER              = -28800
      TKFRAME_-28800_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28800_SPEC              = 'ANGLES'
      TKFRAME_-28800_UNITS             = 'DEGREES'
      TKFRAME_-28800_AXES              = ( 3,          2,          1        )
      TKFRAME_-28800_ANGLES            = (-0.0000007, -0.0013888, -0.029722 )

   \begintext


SWI Scanner frame:
~~~~~~~~~~~~~~~~~~

   SWI telescope is equipped with a two-axis scan mechanism to allow
   scanning around the nadir viewing direction in a range of +/- 76
   degrees inside the spacecraft's orbital plane (along-track) and
   +/- 4.3 degree perpendicular to the plane (across-track)  during the
   Jupiter phase (see [6]).

   The SWI Scanner frame, JUICE_SWI_SCANNER, is defined as a Switch
   Frame (see [1] for more information) aligned with one of the different
   CK-based base frames -- JUICE_SWI_SCANNER_PLAN or JUICE_SWI_SCANNER_MEAS
   -- depending on coverage and their orientation is given relative to
   JUICE_SWI_BASE as:

      -  +Z axis is aligned to the SWI antenna boresight direction; i.e.
         direction of maximum gain of the receiver radiation pattern. In
         the scanning mechanism "zero" position, it is nominally co-aligned
         to the JUICE_SWI_BASE +Z axis and points Nadir;

      -  +X axis is parallel to the shortest side of the Telescope and
         Receiver Unit. In the scanning mechanism "zero position", it is
         nominally aligned to the +X spacecraft axis and the +X axis of the
         JUICE_SWI_BASE frame;

      -  +Y axis completes the right-handed frame;

      -  the origin of the frame is located at the geometric center of the
         primary reflector dish outer rim circle.

   \begindata

      FRAME_JUICE_SWI_SCANNER_MEAS  = -28811
      FRAME_-28811_NAME             = 'JUICE_SWI_SCANNER_MEAS'
      FRAME_-28811_CLASS            =  3
      FRAME_-28811_CLASS_ID         = -28811
      FRAME_-28811_CENTER           = -28800
      CK_-28811_SCLK                = -28
      CK_-28811_SPK                 = -28

      FRAME_JUICE_SWI_SCANNER_PLAN  = -28812
      FRAME_-28812_NAME             = 'JUICE_SWI_SCANNER_PLAN'
      FRAME_-28812_CLASS            =  3
      FRAME_-28812_CLASS_ID         = -28812
      FRAME_-28812_CENTER           = -28800
      CK_-28812_SCLK                = -28999
      CK_-28812_SPK                 = -28

      FRAME_JUICE_SWI_SCANNER       = -28810
      FRAME_-28810_NAME             = 'JUICE_SWI_SCANNER'
      FRAME_-28810_CLASS            =  6
      FRAME_-28810_CLASS_ID         = -28810
      FRAME_-28810_CENTER           = -28800
      FRAME_-28810_ALIGNED_WITH     = (
                                        'JUICE_SWI_SCANNER_PLAN'
                                        'JUICE_SWI_SCANNER_MEAS'
                                       )

   \begintext


UVS Frames
--------------------------------------------------------------------------

   This section contains the definition of the Ultraviolet Spectrograph
   (UVS) instrument frames.


UVS Frame Tree
~~~~~~~~~~~~~~~

   The diagram below shows the UVS frame hierarchy:

                             "JUICE_SPACECRAFT"
                             ------------------
                                     |
                                     |<-fixed
                                     |
                                     v
                                "JUICE_UVS"
                                -----------
                                     |
                                     |
                                     |<-fixed
                                     |
                                     v
                               "JUICE_UVS_SP"
                               --------------


UVS instrument frame
~~~~~~~~~~~~~~~~~~~~

   The Ultraviolet Spectrograph is rigidly mounted on the spacecraft science
   deck, with its main entrance aperture in the +Z spacecraft panel and a
   solar aperture in the +X spacecraft panel.

   Therefore, the frame associated with it -- the UVS instrument base
   frame, JUICE_UVS --  is specified as a fixed offset frame relative
   with its orientation given relative to the JUICE_SPACECRAFT frame.

   The UVS instrument frame is defined by the spectrograph design
   and its mounting on the spacecraft as follows:

      -  +Z axis is along the nominal UVS main entrance aperture boresight;
         it is nominally co-aligned with the spacecraft +Z axis;

      -  +X axis is parallel to the apparent spatial resolution
         direction (i.e. along the slit); it is nominally co-aligned
         with the spacecraft +X axis;

      -  +Y axis completes the right hand frame; it is nominally
         co-aligned with the s/c +Y axis;

      -  the origin of the frame is located at the instrument focal
         point.


   Any misalignment between the nominal and actual UVS mounting alignment
   measured pre-launch should be incorporated into the definition of this
   frame.

   This diagram illustrates nominal JUICE_UVS frame with respect to
   the spacecraft frame.


   +Z s/c side view:
   -----------------
                                                          direction
                                                          of flight
                               ___________ HGA        <-------------->
                               \         /
      \                      .__`._____.'__.                      \
      /                      |             |                      /
      \                      |             |                      \
      /                      |   +Zsc    +Ysc                     /
      \=>o<===============>o-|      o------->o<===============>o<=\
      /    -Y Solar Array    |      |  .___|    +Y Solar Array    /
      \                      |      |  | o------>                 \
      /                      .______|__|_|_.   +Yuvs              /
      \                             |    |                        \
                               +Xsc V    |
                                         v
                                          +Xuvs

                                             +Zsc and +Zuvs_base are
                                                 out of page


   Nominally, the UVS instrument frame is co-aligned with the s/c frame.

   The instrument alignment has been measured after mechanical tests
   during the fourth alignment campaign as reported in [26]. The following
   misalignment is introduced as three rotations expressed in arcseconds from
   spacecraft to UVS instrument reference frames:

     Rotation = (    0.0,    -45.0,    -508.0  )
         SC -> UVS     Rz        Ry         Rx

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_UVS              = -28850
      FRAME_-28850_NAME            = 'JUICE_UVS'
      FRAME_-28850_CLASS           =  4
      FRAME_-28850_CLASS_ID        = -28850
      FRAME_-28850_CENTER          = -28850
      TKFRAME_-28850_RELATIVE      = 'JUICE_SPACECRAFT'
      TKFRAME_-28850_SPEC          = 'ANGLES'
      TKFRAME_-28850_UNITS         = 'DEGREES'
      TKFRAME_-28850_AXES          = (  3,           2,           1          )
      TKFRAME_-28850_ANGLES        = ( -0.000030786, 0.012499962, 0.14111111 )

   \begintext


UVS Solar Port frame
~~~~~~~~~~~~~~~~~~~~

   The UVS Solar Port (SP) frame, JUICE_UVS_AP, is defined as follows
   (from [5], pp. 53 and 54):

      -  +Z axis is along the nominal UVS solar port aperture boresight,
         which is located on the +Y spacecraft panel; it is nominally at
         an angle of 60 degrees from the main entrance Airglow Port (AP)
         towards UVS +Y axis;

      -  +X axis is aligned with the apparent spatial resolution
         direction (i.e. along the main slit); it is nominally co-aligned
         with the UVS +X axis;

      -  +Y axis completes the right hand frame;

      -  the origin of the frame is located at the instrument focal
         point.

   Any misalignment between the UVS nominal boresight direction and the
   solar port boresight direction measured post instrument integration
   should be incorporated into the definition of this frame.

   This diagram illustrates nominal JUICE_UVS_SP frame with respect to
   the JUICE_UVS frame.


   +X UVS instrument side:
   -----------------------

   +Xsc            +Zsc
     o-------------->
     |
     |  .------------------------------------.
     |  |  C&DH                              |
     |  |                 LVPS               |
     |  +------------.                       |
     v  |          .-|           HVPS        |
   +Ysc | Detector | '-----------------------'--.
        |  elect.  |        ,---,             . |
        |          |   Detector/              |<-- Grating
        |          |      /   /               ' |
        +----------'-----'---'--  --------------|
        |   . +Xuvs          +Xuvs_sp                   +Zuvs
    OAP --> |   o--------------o--------------------------> AP & HP nominal
        |   '   |            .' `.   60 deg                 boresight
        '-------|----------.'---. `.  .---------'
                |        .'      `. `. `.
                |      .'          `. `. `.
                |     v              `. `.
                v     +Yuvs_sp            `.
            +Yuvs                           v +Zuvs_sp
                                                SP nominal boresight


                                                    +Xsc, +Xuvs and +Xuvs_sp
                                                    are out of the page

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_UVS_SP               = -28870
      FRAME_-28870_NAME                = 'JUICE_UVS_SP'
      FRAME_-28870_CLASS               =  4
      FRAME_-28870_CLASS_ID            = -28870
      FRAME_-28870_CENTER              = -28850
      TKFRAME_-28870_RELATIVE          = 'JUICE_UVS'
      TKFRAME_-28870_SPEC              = 'ANGLES'
      TKFRAME_-28870_UNITS             = 'DEGREES'
      TKFRAME_-28870_AXES              = (  3,     1,     2   )
      TKFRAME_-28870_ANGLES            = (  0.0,  60.0,   0.0 )

   \begintext


RADEM Frames
--------------------------------------------------------------------------

   This section contains the definition of the RADiation-hard Electron
   Monitors (RADEM) instrument frame.


RADEM Frame Tree
~~~~~~~~~~~~~~~~

   The diagram below shows the RADEM frame hierarchy:

                             "JUICE_SPACECRAFT"
                             ------------------
                                     |
                                     |<-fixed
                                     |
                                     v
                               "JUICE_RADEM"
                               -------------


RADEM instrument frame
~~~~~~~~~~~~~~~~~~~~~~

   The Radiation Monitor is rigidly mounted on the +X spacecraft panel. The
   boresights of ESD, PSD, HISD units and DD central opening are aligned
   with the spacecraft +X axis.

   Therefore, the frame associated with it -- the RADEM instrument base
   frame, JUICE_RADEM --  is specified as a fixed offset frame relative
   with its orientation given relative to the JUICE_SPACECRAFT frame.

   The RADEM instrument frame is defined by the radiation monitor design
   and its mounting on the spacecraft as follows:

      -  +Z axis is along the nominal RADEM units main entrance apertures
         boresights; it is nominally co-aligned with the spacecraft +X axis;

      -  +X axis is nominally co-aligned with the spacecraft -Z axis;

      -  +Y axis completes the right hand frame; it is nominally
         co-aligned with the s/c +Y axis.


   Any misalignment between the nominal and actual RADEM mounting alignment
   measured pre-launch should be incorporated into the definition of this
   frame.

   This diagram illustrates nominal JUICE_RADEM frame with respect to
   the spacecraft frame.


   +Z s/c side view:
   -----------------
                                                          direction
                                                          of flight
                               ___________ HGA        <-------------->
                               \         /
      \                      .__`._____.'__.                      \
      /                      |             |                      /
      \                      |             |                      \
      /                      |   +Zsc    +Ysc                     /
      \=>o<===============>o-|      o------->o<===============>o<=\
      /    -Y Solar Array    |      |      |    +Y Solar Array    /
      \                      |      |+Xradem                      \
      /                      .______|__x------> +Yradem           /
      \                             |  |                          \
                               +Xsc V  |
                                       |
                                       v
                                    +Zradem

                                             +Zsc is out of page and
                                             +Xradem is in the page.


   Nominally, the RADEM instrument frame is co-aligned with the s/c frame.

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_RADEM                = -28085
      FRAME_-28085_NAME                = 'JUICE_RADEM'
      FRAME_-28085_CLASS               =  4
      FRAME_-28085_CLASS_ID            = -28085
      FRAME_-28085_CENTER              = -28085
      TKFRAME_-28085_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28085_SPEC              = 'ANGLES'
      TKFRAME_-28085_UNITS             = 'DEGREES'
      TKFRAME_-28085_AXES              = ( 1,     2,    3   )
      TKFRAME_-28085_ANGLES            = ( 0.0, -90.0,  0.0 )

   \begintext


HAA (High Accuracy Accelerometer) Frames:
------------------------------------------------------------------------------

  This section of the file contains the definitions of the High Accuracy
  Accelerometer (HAA) frames.


HAA Frame Tree:
~~~~~~~~~~~~~~~

  The diagram below shows the HAA frame hierarchy.


                                "J2000" INERTIAL
                                 ---------------
                                       |
                                       |<-ck
                                       |
                                       V
                               "JUICE_SPACECRAFT"
                               ------------------
                                       |
                                       |<-fixed
                                       |
                                       V
                                "JUICE_HAA_ADA"
                                ---------------
                                       |
                                       |<-fixed
                                       |
                                       V
                                "JUICE_HAA_UOAF"
                                ----------------


HAA ADA Frame:
~~~~~~~~~~~~~~

  The HAA accelerometers are accommodated on the +X panel of the s/c bus, more
  specifically in the Accelerometer Detector Assembly unit (ADA) hosting the
  three acceleration sensors. Therefore, the frame associated with it -- the
  HAA ADA frame, JUICE_HAA_ADA -- is specified as a fixed offset frame with
  orientation given relative to the JUICE_SPACECRAFT frame.

  The HAA ADA frame -- JUICE_HAA_ADA -- is defined as:

      -  +Z axis is in the interface plane of JUICE with HAA and is nominally
         parallel to the s/c +Z axis;

      -  +Y axis is normal to the JUICE-HAA interface plane and is nominally
         parallel to the s/c +Y axis;

      -  +X axis completes the right-handed frame;

      -  the origin is located in the centre of a reference hole on the
         interface plane between the ADA FEE and the satellite platform (i.e.
         the plane defined by the accelerometer mounting lugs aka datum plane).


  This diagram illustrates the nominal JUICE_HAA_ADA frame with respect to
  the spacecraft frame.

   +X s/c side (opposite to HGA side) view:
   ----------------------------------------

                                       ^
          .---------.                  | Nadir            .---------.
          |         |                  |                  |         |
          |         |             Science Deck            |         |
          '----.----'              .-------.              '----.----'
   /----. .----'----. .---------._ |       | _.---------. .----'----. .-----\
   \    |_|         |_|         | \|       |/ |         |_|         |_|     /
   /    | |         | |         |_/|   ^+Zada_|         | |         | |     \
   \----' '----.----' '---------'  |   |+Zsc  '---------' '----.----' '-----/
          .----'----.              '---|---'              .----'----.
          |         |                / | \     +Ysc       |         |
          |         |                '-o------>+Yada      |         |
          '---------'                +Xsc                 '---------'
                                     +Xada

         +Xsc and +Xada are
         into the page


   Nominally, JUICE_HAA_ADA frame is aligned with JUICE_SPACECRAFT.

   Since the SPICE frames subsystem calls for specifying the reverse
   transformation -- going from the instrument or structure frame to the
   base frame -- as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_HAA_ADA              = -28880
      FRAME_-28880_NAME                = 'JUICE_HAA_ADA'
      FRAME_-28880_CLASS               =  4
      FRAME_-28880_CLASS_ID            = -28880
      FRAME_-28880_CENTER              = -28880
      TKFRAME_-28880_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28880_SPEC              = 'ANGLES'
      TKFRAME_-28880_UNITS             = 'DEGREES'
      TKFRAME_-28880_AXES              = (   3,       2,      1     )
      TKFRAME_-28880_ANGLES            = (   0.0,     0.0,    0.0   )

   \begintext


HAA Unit Optical Alignment Frame:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  The HAA Unit Optical Alignment Frame -- JUICE_HAA_UOAF --, is introduced to
  identify the HAA attitude with respect to the JUICE_SPACECRAFT frame and is
  defined as follows:

     - +Y axis is nominally rotated 15 degrees around JUICE_SPACECRAFT +Z axis
       from JUICE_SPACECRAFT +Y axis towards JUICE_SPACECRAFT -X axis;

     - +Z axis is normal to the mirror face of the optical alignment cube and
       is nominally rotated 45 degrees around rotated +Y axis from
       JUICE_SPACECRAFT +Z axis towards the rotated +X axis;

     - +X axis completes the right-handed frame;

     - the origin is located in the centre of the cube.


  These diagrams illustrate the nominal JUICE_HAA-* frames with respect to
  the spacecraft frame (where * is X, Y and Z).


   +X HAA side view:
   -----------------

                              VERTEX
        ACCEL-X              (ACCEL-Z)             ACCEL-Y


        .-------------.    .---------.
        |             |    |         |
        |             |    |         |
        |             |    |         |  .--------------------.
        |             |    |         |  |                    |
     +Yuoaf           |    |         |  |                    |
        |^     +Yada  |    |         |  |                    |
      _ | \     ^     |_   |         |  |                    |
     |     \    |       |  |   +Zuoaf   |                    |
     '------\---|-------'_   . > ----'__'--------------------'
        |====\==|======= . '  ======================|
        |==|  \ |    . ' \ 35 deg =|          |==|
        |==|   \|. '      |       =|          |==|
    ------------o---------------> -------------------------------
                              +Xada
        ^ +Ysc
        |
        |
        |                    +Xuoaf is in the page.
        o---------> +Xsc     +Zada, +Zuoaf and +Zsc are out of the page.


   After the incorporation of the Alignment report before launch and as
   stated in [20], the matrix to be implemented for the rotation from the UOAF
   reference frame to the MPO_SPACECRAFT reference frame is as follows:

      M            =  (  0.6734546145, 0.1799083814, -0.7170180921
       juice->uoaf      -0.2568588381, 0.9664489319,  0.0012813113
                         0.6931526925, 0.1833278971,  0.6970706502 )


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation -- going from the instrument or structure frame to the
   base frame -- as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_JUICE_HAA_UOAF             = -28881
      FRAME_-28881_NAME                = 'JUICE_HAA_UOAF'
      FRAME_-28881_CLASS               =  4
      FRAME_-28881_CLASS_ID            = -28881
      FRAME_-28881_CENTER              = -28880
      TKFRAME_-28881_RELATIVE          = 'JUICE_SPACECRAFT'
      TKFRAME_-28881_SPEC              = 'MATRIX'
      TKFRAME_-28881_MATRIX            = (
                      0.6734546145, 0.1799083814, -0.7170180921,
                     -0.2568588381, 0.9664489319,  0.0012813113,
                      0.6931526925, 0.1833278971,  0.6970706502
                                         )

   \begintext


JUICE NAIF ID Codes -- Definitions
==============================================================================

   This section contains name to NAIF ID mappings for the JUICE mission.
   Once the contents of this file is loaded into the KERNEL POOL, these
   mappings become available within SPICE, making it possible to use
   names instead of ID code in the high level SPICE routine calls.


   Spacecraft:
   -----------

      This table presents the JUICE Spacecraft and its main
      structures' names and IDs

      Name                      ID       Synonyms
      ---------------------     -------  --------------------------
      JUICE                     -28      JUPITER ICY MOONS EXPLORER
      JUICE_SPACECRAFT          -28000   JUICE_SC
      JUICE_SPACECRAFT_CHARGING -28004

      JUICE_SA+Y                -28011
      JUICE_SA-Y                -28015

      JUICE_HGA                 -28020
      JUICE_HGA_X               -28021
      JUICE_HGA_KA              -28022

      JUICE_MAG_BOOM            -28031

      JUICE_MGA_APM             -28040
      JUICE_MGA                 -28048

      JUICE_MGA_KA_BAND         -28948
      JUICE_MGA_X_BAND          -28949
      JUICE_SCHULTE_KA_BAND     -28075
      JUICE_SCHULTE_X_BAND      -28076

      JUICE_LGA+X               -28071
      JUICE_LGA-X               -28072

      JUICE_NAVCAM-1            -28051
      JUICE_NAVCAM-2            -28052

      JUICE_STR-OH1             -28061
      JUICE_STR-OH2             -28062
      JUICE_STR-OH3             -28063

      JUICE_JMC-1               -28081
      JUICE_JMC-2               -28082

      JUICE_JACS-X              -28380
      JUICE_JACS-X_1            -28381
      JUICE_JACS-X_2            -28382
      JUICE_JACS-X_3            -28383
      JUICE_JACS-X_4            -28384
      JUICE_JACS-X_5            -28385
      JUICE_JACS-X_6            -28386
      JUICE_JACS-X_7            -28387
      JUICE_JACS-X_8            -28388
      JUICE_JACS-Y              -28390
      JUICE_JACS-Y_1            -28391
      JUICE_JACS-Y_2            -28392
      JUICE_JACS-Y_3            -28393
      JUICE_JACS-Y_4            -28394
      JUICE_JACS-Y_5            -28395
      JUICE_JACS-Y_6            -28396
      JUICE_JACS-Y_7            -28397
      JUICE_JACS-Y_8            -28398

      Notes:

         -- 'JUICE' and 'JUPITER ICY MOONS EXPLORER' are synonyms and all map
            to the JUICE spacecraft ID (-28);

         -- 'JUICE_SC' and 'JUICE_SPACECRAFT' are synonyms and all map to the
            JUICE s/c bus structure ID (-28000);


      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUPITER ICY MOONS EXPLORER'  )
      NAIF_BODY_CODE += ( -28                           )

      NAIF_BODY_NAME += ( 'JUICE'                       )
      NAIF_BODY_CODE += ( -28                           )

      NAIF_BODY_NAME += ( 'JUICE_SC'                    )
      NAIF_BODY_CODE += ( -28000                        )

      NAIF_BODY_NAME += ( 'JUICE_SPACECRAFT'            )
      NAIF_BODY_CODE += ( -28000                        )

      NAIF_BODY_NAME += ( 'JUICE_SPACECRAFT_CHARGING'   )
      NAIF_BODY_CODE += ( -28004                        )

      NAIF_BODY_NAME += ( 'JUICE_SA+Y'                  )
      NAIF_BODY_CODE += ( -28011                        )

      NAIF_BODY_NAME += ( 'JUICE_SA-Y'                  )
      NAIF_BODY_CODE += ( -28015                        )

      NAIF_BODY_NAME += ( 'JUICE_HGA'                   )
      NAIF_BODY_CODE += ( -28020                        )

      NAIF_BODY_NAME += ( 'JUICE_HGA_X'                 )
      NAIF_BODY_CODE += ( -28021                        )

      NAIF_BODY_NAME += ( 'JUICE_HGA_KA'                )
      NAIF_BODY_CODE += ( -28022                        )

      NAIF_BODY_NAME += ( 'JUICE_MAG_BOOM'              )
      NAIF_BODY_CODE += ( -28031                        )

      NAIF_BODY_NAME += ( 'JUICE_MGA_APM'               )
      NAIF_BODY_CODE += ( -28040                        )

      NAIF_BODY_NAME += ( 'JUICE_MGA'                   )
      NAIF_BODY_CODE += ( -28048                        )

      NAIF_BODY_NAME += ( 'JUICE_MGA_KA_BAND'           )
      NAIF_BODY_CODE += ( -28948                        )

      NAIF_BODY_NAME += ( 'JUICE_MGA_X_BAND'            )
      NAIF_BODY_CODE += ( -28949                        )

      NAIF_BODY_NAME += ( 'JUICE_SCHULTE_KA_BAND'       )
      NAIF_BODY_CODE += ( -28075                        )

      NAIF_BODY_NAME += ( 'JUICE_SCHULTE_X_BAND'        )
      NAIF_BODY_CODE += ( -28076                        )

      NAIF_BODY_NAME += ( 'JUICE_LGA+X'                 )
      NAIF_BODY_CODE += ( -28071                        )

      NAIF_BODY_NAME += ( 'JUICE_LGA-X'                 )
      NAIF_BODY_CODE += ( -28072                        )

      NAIF_BODY_NAME += ( 'JUICE_NAVCAM-1'              )
      NAIF_BODY_CODE += ( -28051                        )

      NAIF_BODY_NAME += ( 'JUICE_NAVCAM-2'              )
      NAIF_BODY_CODE += ( -28052                        )

      NAIF_BODY_NAME += ( 'JUICE_STR-OH1'               )
      NAIF_BODY_CODE += ( -28061                        )

      NAIF_BODY_NAME += ( 'JUICE_STR-OH2'               )
      NAIF_BODY_CODE += ( -28062                        )

      NAIF_BODY_NAME += ( 'JUICE_STR-OH3'               )
      NAIF_BODY_CODE += ( -28063                        )

      NAIF_BODY_NAME += ( 'JUICE_JMC-1'                 )
      NAIF_BODY_CODE += ( -28081                        )

      NAIF_BODY_NAME += ( 'JUICE_JMC-2'                 )
      NAIF_BODY_CODE += ( -28082                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-X'                )
      NAIF_BODY_CODE += ( -28380                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-X_1'              )
      NAIF_BODY_CODE += ( -28381                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-X_2'              )
      NAIF_BODY_CODE += ( -28382                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-X_3'              )
      NAIF_BODY_CODE += ( -28383                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-X_4'              )
      NAIF_BODY_CODE += ( -28384                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-X_5'              )
      NAIF_BODY_CODE += ( -28385                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-X_6'              )
      NAIF_BODY_CODE += ( -28386                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-X_7'              )
      NAIF_BODY_CODE += ( -28387                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-X_8'              )
      NAIF_BODY_CODE += ( -28388                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-Y'                )
      NAIF_BODY_CODE += ( -28390                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-Y_1'              )
      NAIF_BODY_CODE += ( -28391                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-Y_2'              )
      NAIF_BODY_CODE += ( -28392                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-Y_3'              )
      NAIF_BODY_CODE += ( -28393                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-Y_4'              )
      NAIF_BODY_CODE += ( -28394                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-Y_5'              )
      NAIF_BODY_CODE += ( -28395                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-Y_6'              )
      NAIF_BODY_CODE += ( -28396                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-Y_7'              )
      NAIF_BODY_CODE += ( -28397                        )

      NAIF_BODY_NAME += ( 'JUICE_JACS-Y_8'              )
      NAIF_BODY_CODE += ( -28398                        )


   \begintext


   GAnymede Laser Altimeter:
   -------------------------

      This table presents the GAnymede Laser Altimeter (GALA) instrument
      and structures' names and IDs:

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------
      JUICE_GALA             -28100
      JUICE_GALA_TXL         -28110
      JUICE_GALA_TXL_MAIN    -28111
      JUICE_GALA_TXL_RED     -28112
      JUICE_GALA_RXT         -28120

      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_GALA'                  )
      NAIF_BODY_CODE += ( -28100                        )

      NAIF_BODY_NAME += ( 'JUICE_GALA_TXL'              )
      NAIF_BODY_CODE += ( -28110                        )

      NAIF_BODY_NAME += ( 'JUICE_GALA_TXL_MAIN'         )
      NAIF_BODY_CODE += ( -28111                        )

      NAIF_BODY_NAME += ( 'JUICE_GALA_TXL_RED'          )
      NAIF_BODY_CODE += ( -28112                        )

      NAIF_BODY_NAME += ( 'JUICE_GALA_RXT'              )
      NAIF_BODY_CODE += ( -28120                        )

   \begintext


   High Accuracy Accelerometer:
   ----------------------------

      This table presents the High Accuracy Accelerometer (HAA) instrument
      names and IDs:

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------
      JUICE_HAA_UOAF         -28880
      JUICE_HAA              -28881
      JUICE_SCHULTE_ORIGIN   -28882

      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_HAA_UOAF'              )
      NAIF_BODY_CODE += ( -28880                        )

      NAIF_BODY_NAME += ( 'JUICE_HAA'                   )
      NAIF_BODY_CODE += ( -28881                        )

      NAIF_BODY_NAME += ( 'JUICE_SCHULTE_ORIGIN'        )
      NAIF_BODY_CODE += ( -28882                        )

   \begintext


   Jovis, Amorum ac Natorum Undique Scrutator:
   -------------------------------------------

      This table presents the Jovis, Amorum ac Natorum Undique Scrutator
      (JANUS) instrument name and ID:

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------
      JUICE_JANUS            -28200
      JUICE_JANUS_PAN        -28211
      JUICE_JANUS_BLUE       -28212
      JUICE_JANUS_GREEN      -28213
      JUICE_JANUS_RED        -28214
      JUICE_JANUS_CMT_MEDIUM -28215
      JUICE_JANUS_NA         -28216
      JUICE_JANUS_MT_STRONG  -28217
      JUICE_JANUS_CMT_STRONG -28218
      JUICE_JANUS_MT_MEDIUM  -28219
      JUICE_JANUS_VIOLET     -28220
      JUICE_JANUS_NIR_1      -28221
      JUICE_JANUS_NIR_2      -28222
      JUICE_JANUS_HALPHA     -28223

      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_JANUS'                 )
      NAIF_BODY_CODE += ( -28200                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_PAN'             )
      NAIF_BODY_CODE += ( -28211                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_BLUE'            )
      NAIF_BODY_CODE += ( -28212                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_GREEN'           )
      NAIF_BODY_CODE += ( -28213                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_RED'             )
      NAIF_BODY_CODE += ( -28214                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_CMT_MEDIUM'      )
      NAIF_BODY_CODE += ( -28215                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_NA'              )
      NAIF_BODY_CODE += ( -28216                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_MT_STRONG'       )
      NAIF_BODY_CODE += ( -28217                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_CMT_STRONG'      )
      NAIF_BODY_CODE += ( -28218                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_MT_MEDIUM'       )
      NAIF_BODY_CODE += ( -28219                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_VIOLET'          )
      NAIF_BODY_CODE += ( -28220                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_NIR_1'           )
      NAIF_BODY_CODE += ( -28221                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_NIR_2'           )
      NAIF_BODY_CODE += ( -28222                        )

      NAIF_BODY_NAME += ( 'JUICE_JANUS_HALPHA'          )
      NAIF_BODY_CODE += ( -28223                        )

   \begintext


   Magnetometer:
   -------------

      This table presents the Magnetometer (J-MAG) instrument and J-MAG
      Alignment Calibration Systems sensors names and IDs:

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------
      JUICE_JMAG_MAGIBS      -28300
      JUICE_JMAG_MAGIBS_SCI  -28301
      JUICE_JMAG_MAGOBS      -28310
      JUICE_JMAG_MAGOBS_SCI  -28311
      JUICE_JMAG_MAGSCA      -28320
      JUICE_JMAG_MAGSCA_SCI  -28323


      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_JMAG_MAGIBS'           )
      NAIF_BODY_CODE += ( -28300                        )

      NAIF_BODY_NAME += ( 'JUICE_JMAG_MAGIBS_SCI'       )
      NAIF_BODY_CODE += ( -28301                        )

      NAIF_BODY_NAME += ( 'JUICE_JMAG_MAGOBS'           )
      NAIF_BODY_CODE += ( -28310                        )

      NAIF_BODY_NAME += ( 'JUICE_JMAG_MAGOBS_SCI'       )
      NAIF_BODY_CODE += ( -28311                        )

      NAIF_BODY_NAME += ( 'JUICE_JMAG_MAGSCA'           )
      NAIF_BODY_CODE += ( -28320                        )

      NAIF_BODY_NAME += ( 'JUICE_JMAG_MAGSCA_SCI'       )
      NAIF_BODY_CODE += ( -28323                        )

   \begintext


   Moons And Jupiter Imaging Spectrometer:
   ---------------------------------------

      This table presents the Moons And Jupiter Imaging Spectrometer (MAJIS)
      instrument and structures' names and IDs:

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------
      JUICE_MAJIS            -28400
      JUICE_MAJIS_VISNIR     -28410
      JUICE_MAJIS_VISNIR_B2  -28412
      JUICE_MAJIS_VISNIR_B4  -28414
      JUICE_MAJIS_IR         -28420
      JUICE_MAJIS_IR_B2      -28422
      JUICE_MAJIS_IR_B4      -28424
      JUICE_MAJIS_RAD        -28430
      JUICE_MAJIS_ENVELOPE   -28440


      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_MAJIS'                 )
      NAIF_BODY_CODE += ( -28400                        )

      NAIF_BODY_NAME += ( 'JUICE_MAJIS_VISNIR'          )
      NAIF_BODY_CODE += ( -28410                        )

      NAIF_BODY_NAME += ( 'JUICE_MAJIS_VISNIR_B2'       )
      NAIF_BODY_CODE += ( -28412                        )

      NAIF_BODY_NAME += ( 'JUICE_MAJIS_VISNIR_B4'       )
      NAIF_BODY_CODE += ( -28414                        )

      NAIF_BODY_NAME += ( 'JUICE_MAJIS_IR'              )
      NAIF_BODY_CODE += ( -28420                        )

      NAIF_BODY_NAME += ( 'JUICE_MAJIS_IR_B2'           )
      NAIF_BODY_CODE += ( -28422                        )

      NAIF_BODY_NAME += ( 'JUICE_MAJIS_IR_B4'           )
      NAIF_BODY_CODE += ( -28424                        )

      NAIF_BODY_NAME += ( 'JUICE_MAJIS_RAD'             )
      NAIF_BODY_CODE += ( -28430                        )

      NAIF_BODY_NAME += ( 'JUICE_MAJIS_ENVELOPE'        )
      NAIF_BODY_CODE += ( -28440                        )

   \begintext


   Particle Environment Package:
   -----------------------------

      This table presents the Particle Environment Package (PEP)
      instrument and sensor names and IDs:

      Name                       ID           Synonyms
      -------------------------  -----------  -----------------------
      JUICE_PEP_JDC              -28510
      JUICE_PEP_JNA              -28520
      JUICE_PEP_NIM              -28530
      JUICE_PEP_NIM_NEUION_S1    -28531
      JUICE_PEP_NIM_NEUION_S2    -28532
      JUICE_PEP_NIM_NEUION_S3    -28533
      JUICE_PEP_NIM_NEUION_S4    -28534
      JUICE_PEP_NIM_NEUION_S5    -28535
      JUICE_PEP_NIM_NEUION_S6    -28536
      JUICE_PEP_JEI              -28540
      JUICE_PEP_JOEE             -28550
      JUICE_PEP_JENI             -28560
      JUICE_PEP_JDC_PIXEL_NNN    -2851NNN*
      JUICE_PEP_JNA_SECTOR_NN    -2852NN**
      JUICE_PEP_JEI_NN_M         -2854NN***
      JUICE_PEP_JOEE_SNN         -2855NN****

      * There are NNN NAIF ID codes for the JUICE_PEP_JDC_PIXEL elements.
        NNN is the pixel number and ranges from 000 to 191.

      ** There are NN NAIF ID codes for the JUICE_PEP_JNA_SECTOR elements.
         NN is the sector number and ranges from 00 to 11.

      *** For each M (L, M and H) there are NN NAIF ID codes for the
          JUICE_PEP_JEI elements. NN is the azimuthal sector number and
          ranges from 00 to 15.

      **** There are NN NAIF ID codes for the JUICE_PEP_JOEE_SENSOR
              elements. NN is the sector number and ranges from 00 to 08.

      DISCLAIMER: Please note that the JUICE_PEP_JDC_PIXEL_NNN*, the
      JUICE_PEP_JNA_SECTOR_NN** and the  JUICE_PEP_JEI_NNN_M
      NAIF ID definitions are not included in the JUICE Frames Kernel file
      (juice_vNN.tf, where NN is the version number of the file).

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_PEP_JDC'               )
      NAIF_BODY_CODE += ( -28510                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_JNA'               )
      NAIF_BODY_CODE += ( -28520                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_NIM'               )
      NAIF_BODY_CODE += ( -28530                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_NIM_NEUION_S1'     )
      NAIF_BODY_CODE += ( -28531                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_NIM_NEUION_S2'     )
      NAIF_BODY_CODE += ( -28532                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_NIM_NEUION_S3'     )
      NAIF_BODY_CODE += ( -28533                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_NIM_NEUION_S4'     )
      NAIF_BODY_CODE += ( -28534                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_NIM_NEUION_S5'     )
      NAIF_BODY_CODE += ( -28535                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_NIM_NEUION_S6'     )
      NAIF_BODY_CODE += ( -28536                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_JEI'               )
      NAIF_BODY_CODE += ( -28540                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_JOEE'              )
      NAIF_BODY_CODE += ( -28550                        )

      NAIF_BODY_NAME += ( 'JUICE_PEP_JENI'              )
      NAIF_BODY_CODE += ( -28560                        )

   \begintext


   Radar for Icy Moon Exploration:
   -------------------------------

      This table presents the Radar for Icy Moon Exploration (RIME)
      instrument name and ID:

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------
      JUICE_RIME_BASE        -28600
      JUICE_RIME+X           -28601
      JUICE_RIME-X           -28602


      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_RIME_BASE'             )
      NAIF_BODY_CODE += ( -28600                        )

      NAIF_BODY_NAME += ( 'JUICE_RIME+X'                )
      NAIF_BODY_CODE += ( -28601                        )

      NAIF_BODY_NAME += ( 'JUICE_RIME-X'                )
      NAIF_BODY_CODE += ( -28602                        )

   \begintext


   Radio & Plasma Waves Investigation:
   -----------------------------------

      This table presents the Radio & Plasma Waves Investigation (RPWI)
      structures, instruments and sensors names and IDs:

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------
      JUICE_RPWI_LPB1        -28701
      JUICE_RPWI_LP1         -28705
      JUICE_RPWI_LPB2        -28711
      JUICE_RPWI_LP2         -28715
      JUICE_RPWI_LPB3        -28721
      JUICE_RPWI_LP3         -28725
      JUICE_RPWI_LPB4        -28731
      JUICE_RPWI_LP4         -28735
      JUICE_RPWI_RWI         -28740
      JUICE_RPWI_RWI_U       -28741
      JUICE_RPWI_RWI_U_P     -28744
      JUICE_RPWI_RWI_U_M     -28745
      JUICE_RPWI_RWI_V       -28742
      JUICE_RPWI_RWI_V_P     -28746
      JUICE_RPWI_RWI_V_M     -28747
      JUICE_RPWI_RWI_W       -28743
      JUICE_RPWI_RWI_W_P     -28748
      JUICE_RPWI_RWI_W_M     -28749
      JUICE_RPWI_SCM         -28750
      JUICE_RPWI_SCM_U       -28751
      JUICE_RPWI_SCM_U_P     -28754
      JUICE_RPWI_SCM_U_M     -28755
      JUICE_RPWI_SCM_V       -28752
      JUICE_RPWI_SCM_V_P     -28756
      JUICE_RPWI_SCM_V_M     -28757
      JUICE_RPWI_SCM_W       -28753
      JUICE_RPWI_SCM_W_P     -28758
      JUICE_RPWI_SCM_W_M     -28759


      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_RPWI_LPB1'             )
      NAIF_BODY_CODE += ( -28701                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_LP1'              )
      NAIF_BODY_CODE += ( -28705                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_LPB2'             )
      NAIF_BODY_CODE += ( -28711                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_LP2'              )
      NAIF_BODY_CODE += ( -28715                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_LPB3'             )
      NAIF_BODY_CODE += ( -28721                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_LP3'              )
      NAIF_BODY_CODE += ( -28725                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_LPB4'             )
      NAIF_BODY_CODE += ( -28731                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_LP4'              )
      NAIF_BODY_CODE += ( -28735                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_RWI'              )
      NAIF_BODY_CODE += ( -28740                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_RWI_U'            )
      NAIF_BODY_CODE += ( -28741                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_RWI_U_P'          )
      NAIF_BODY_CODE += ( -28744                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_RWI_U_M'          )
      NAIF_BODY_CODE += ( -28745                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_RWI_V'            )
      NAIF_BODY_CODE += ( -28742                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_RWI_V_P'          )
      NAIF_BODY_CODE += ( -28746                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_RWI_V_M'          )
      NAIF_BODY_CODE += ( -28747                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_RWI_W'            )
      NAIF_BODY_CODE += ( -28743                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_RWI_W_P'          )
      NAIF_BODY_CODE += ( -28748                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_RWI_W_M'          )
      NAIF_BODY_CODE += ( -28749                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_SCM'              )
      NAIF_BODY_CODE += ( -28750                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_SCM_U'            )
      NAIF_BODY_CODE += ( -28751                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_SCM_U_P '         )
      NAIF_BODY_CODE += ( -28754                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_SCM_U_M '         )
      NAIF_BODY_CODE += ( -28755                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_SCM_V'            )
      NAIF_BODY_CODE += ( -28752                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_SCM_V_P'          )
      NAIF_BODY_CODE += ( -28756                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_SCM_V_M'          )
      NAIF_BODY_CODE += ( -28757                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_SCM_W'            )
      NAIF_BODY_CODE += ( -28753                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_SCM_W_P'          )
      NAIF_BODY_CODE += ( -28758                        )

      NAIF_BODY_NAME += ( 'JUICE_RPWI_SCM_W_M'          )
      NAIF_BODY_CODE += ( -28759                        )

   \begintext


   Sub-millimeter Wave Instrument:
   -------------------------------

      This table presents the Sub-millimeter Wave Instrument (SWI) instrument
      and structures' names and IDs:

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------
      JUICE_SWI_FULL         -28800
      JUICE_SWI_FULL_GCO500  -28801
      JUICE_SWI_CH1          -28810
      JUICE_SWI_CH2          -28820


      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_SWI_FULL'              )
      NAIF_BODY_CODE += ( -28800                        )

      NAIF_BODY_NAME += ( 'JUICE_SWI_FULL_GCO500'       )
      NAIF_BODY_CODE += ( -28801                        )

      NAIF_BODY_NAME += ( 'JUICE_SWI_CH1'               )
      NAIF_BODY_CODE += ( -28810                        )

      NAIF_BODY_NAME += ( 'JUICE_SWI_CH2'               )
      NAIF_BODY_CODE += ( -28820                        )

   \begintext


   Ultraviolet Spectrograph:
   -------------------------

      This table presents the Ultraviolet Spectrograph (UVS) instrument
      and sensors' names and IDs:

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------
      JUICE_UVS              -28850
      JUICE_UVS_AP_HP        -28860
      JUICE_UVS_SP           -28870


      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_UVS'                   )
      NAIF_BODY_CODE += ( -28850                        )

      NAIF_BODY_NAME += ( 'JUICE_UVS_AP_HP'             )
      NAIF_BODY_CODE += ( -28860                        )

      NAIF_BODY_NAME += ( 'JUICE_UVS_SP'                )
      NAIF_BODY_CODE += ( -28870                        )

   \begintext


   Radiation-hard Electron Monitor:
   --------------------------------

      This table presents the Radiation-hard Electron Monitor (RADEM)
      instrument and sensors' names and IDs:

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------
      JUICE_RADEM            -28085
      JUICE_RADEM_ESD        -28086
      JUICE_RADEM_PSD        -28087
      JUICE_RADEM_HISD       -28088
      JUICE_RADEM_DD         -28089


      The mappings summarized in this table are implemented by the keywords
      below.

   \begindata

      NAIF_BODY_NAME += ( 'JUICE_RADEM'                 )
      NAIF_BODY_CODE += ( -28085                        )

      NAIF_BODY_NAME += ( 'JUICE_RADEM_ESD'             )
      NAIF_BODY_CODE += ( -28086                        )

      NAIF_BODY_NAME += ( 'JUICE_RADEM_PSD'             )
      NAIF_BODY_CODE += ( -28087                        )

      NAIF_BODY_NAME += ( 'JUICE_RADEM_HISD'            )
      NAIF_BODY_CODE += ( -28088                        )

      NAIF_BODY_NAME += ( 'JUICE_RADEM_DD'              )
      NAIF_BODY_CODE += ( -28089                        )

   \begintext


End of FK file.