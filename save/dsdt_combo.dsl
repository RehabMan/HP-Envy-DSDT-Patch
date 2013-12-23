/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130823-64 [Aug 30 2013]
 * Copyright (c) 2000 - 2013 Intel Corporation
 *
 * Disassembly of DSDT, Wed Nov  6 14:58:17 2013
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000119DF (72159)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xD5
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "1962    "
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("DSDT.aml", "DSDT", 1, "HPQOEM", "1962    ", 0x00000000)
{
    /*
     * iASL Warning: There were 15 external control methods found during
     * disassembly, but only 12 were resolved (3 unresolved). Additional
     * ACPI tables are required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods.
     */
    
    
    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (SP2O, 0x4E)
    Name (SP1O, 0x2E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x0600)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (HSCS, One)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x8000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (TTTB, 0xFED20000)
    Name (TTTL, 0x00020000)
    Name (SMBS, 0xEFA0)
    Name (SMBL, 0x10)
    Name (PBLK, 0x1810)
    Name (PMBS, 0x1800)
    Name (PMLN, 0x0100)
    Name (LVL2, 0x1814)
    Name (LVL3, 0x1815)
    Name (LVL4, 0x1816)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0800)
    Name (GPLN, 0x0400)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x1830)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FEMD, 0x04)
    Name (BGR, One)
    Name (BFR, 0x02)
    Name (BBR, 0x03)
    Name (BWC, 0x04)
    Name (BGRP, 0x09)
    Name (BGRC, 0x0A)
    Name (BFRP, 0x0B)
    Name (BBRP, 0x0C)
    Name (BRPS, 0x10)
    Name (BRCS, 0x11)
    Name (BRDS, 0x12)
    Name (BR4S, 0x13)
    Name (BR5S, 0x14)
    Name (BWT1, 0x20)
    Name (BW1P, 0x21)
    Name (BW2C, 0x22)
    Name (BW2P, 0x23)
    Name (BSPC, 0x24)
    Name (BSPP, 0x25)
    Name (BTS, 0x26)
    Name (BICO, 0x27)
    Name (BICC, 0x28)
    Name (BHB, 0x30)
    Name (BFS2, 0x31)
    Name (BFS3, 0x32)
    Name (BFS4, 0x33)
    Name (BRH, 0x35)
    Name (BFHC, 0x40)
    Name (BFHP, 0x41)
    Name (BFCP, 0x42)
    Name (BFCC, 0x44)
    Name (BHCP, 0x45)
    Name (BCOC, 0x46)
    Name (BFD1, 0x47)
    Name (BFD2, 0x48)
    Name (BTDT, 0x50)
    Name (BTMB, 0x51)
    Name (BBGB, 0x52)
    Name (BHC2, 0x53)
    Name (TCGM, One)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (PFTI, 0x04)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (DPPB, 0xFED98000)
    Name (DPPL, 0x8000)
    OperationRegion (GNVS, SystemMemory, 0x92FBDA98, 0x000002EF)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16,
        SMIF,   8,
        PRM0,   8,
        PRM1,   8,
        SCIF,   8,
        PRM2,   8,
        PRM3,   8,
        LCKF,   8,
        PRM4,   8,
        PRM5,   8,
        P80D,   32,
        PWRS,   8,
        DBGS,   8,
        THOF,   8,
        ACT1,   8,
        ACTT,   8,
        PSVT,   8,
        TC1V,   8,
        TC2V,   8,
        TSPV,   8,
        CRTT,   8,
        DTSE,   8,
        DTS1,   8,
        DTS2,   8,
        DTSF,   8,
        Offset (0x1E),
        Offset (0x25),
        REVN,   8,
        Offset (0x28),
        APIC,   8,
        TCNT,   8,
        PCP0,   8,
        PCP1,   8,
        PPCM,   8,
        PPMF,   32,
        C67L,   8,
        NATP,   8,
        CMAP,   8,
        CMBP,   8,
        LPTP,   8,
        FDCP,   8,
        COMA,   8,
        COMB,   8,
        SMSC,   8,
        W381,   8,
        SMC1,   8,
        EMAE,   8,
        EMAP,   16,
        EMAL,   16,
        Offset (0x42),
        MEFE,   8,
        DSTS,   8,
        Offset (0x48),
        MORD,   8,
        TCGP,   8,
        PPRP,   32,
        PPRQ,   8,
        LPPR,   8,
        GTF0,   56,
        GTF2,   56,
        IDEM,   8,
        GTF1,   56,
        BID,    16,
        PLID,   8,
        ECTG,   8,
        Offset (0x70),
        OSCC,   8,
        NEXP,   8,
        SBV1,   8,
        SBV2,   8,
        Offset (0x7A),
        DSEN,   8,
        Offset (0x7C),
        GPIC,   8,
        CTYP,   8,
        L01C,   8,
        VFN0,   8,
        VFN1,   8,
        VFN2,   8,
        VFN3,   8,
        VFN4,   8,
        VFN5,   8,
        VFN6,   8,
        VFN7,   8,
        VFN8,   8,
        VFN9,   8,
        Offset (0x8F),
        ATMC,   8,
        PTMC,   8,
        ATRA,   8,
        PTRA,   8,
        PNHM,   32,
        TBAB,   32,
        TBAH,   32,
        RTIP,   8,
        TSOD,   8,
        ATPC,   8,
        PTPC,   8,
        PFLV,   8,
        BREV,   8,
        PDTS,   8,
        PKGA,   8,
        PAMT,   8,
        AC0F,   8,
        AC1F,   8,
        DTS3,   8,
        DTS4,   8,
        Offset (0xB0),
        LTR1,   8,
        LTR2,   8,
        LTR3,   8,
        LTR4,   8,
        LTR5,   8,
        LTR6,   8,
        LTR7,   8,
        LTR8,   8,
        OBF1,   8,
        OBF2,   8,
        OBF3,   8,
        OBF4,   8,
        OBF5,   8,
        OBF6,   8,
        OBF7,   8,
        OBF8,   8,
        XHCI,   8,
        XTUB,   32,
        XTUS,   32,
        XMPB,   32,
        DDRF,   8,
        RTD3,   8,
        PEP0,   8,
        PEP3,   8,
        DPTF,   8,
        SADE,   8,
        SACR,   8,
        SAHT,   8,
        PCHD,   8,
        PCHC,   8,
        PCHH,   8,
        CTDP,   8,
        LPMP,   8,
        LPMV,   8,
        ECEU,   8,
        TGFG,   16,
        MEMD,   8,
        MEMC,   8,
        MEMH,   8,
        FND1,   8,
        FND2,   8,
        AMBD,   8,
        AMAT,   8,
        AMPT,   8,
        AMCT,   8,
        AMHT,   8,
        SKDE,   8,
        SKAT,   8,
        SKPT,   8,
        SKCT,   8,
        SKHT,   8,
        EFDE,   8,
        EFAT,   8,
        EFPT,   8,
        EFCT,   8,
        EFHT,   8,
        VRDE,   8,
        VRAT,   8,
        VRPT,   8,
        VRCT,   8,
        VRHT,   8,
        DPAP,   8,
        DPPP,   8,
        DPCP,   8,
        DCMP,   8,
        TRTV,   8,
        LPOE,   8,
        LPOP,   8,
        LPOS,   8,
        LPOW,   8,
        LPER,   8,
        PPSZ,   32,
        DISE,   8,
        PFMA,   64,
        PFMS,   8,
        PFIA,   16,
        ICNF,   8,
        DSP0,   32,
        DSP1,   32,
        NFCE,   8,
        CODS,   8,
        SNHE,   8,
        S0ID,   8,
        CTDB,   8,
        Offset (0x207),
        PWRE,   8,
        PWRP,   8,
        XHPR,   8,
        SDS0,   8,
        SDS1,   16,
        SDS2,   8,
        SDS3,   8,
        SDS4,   8,
        SDS5,   8,
        SDS6,   8,
        RIC0,   8,
        PEPY,   8,
        DVS0,   8,
        DVS1,   8,
        DVS2,   8,
        DVS3,   8,
        GBSX,   8,
        IUBE,   8,
        IUCE,   8,
        IUDE,   8,
        ECNO,   8,
        AUDD,   16,
        DSPD,   16,
        IC0D,   16,
        IC1D,   16,
        IC1S,   16,
        VRRD,   16,
        PSCP,   8,
        RWAG,   8,
        Offset (0x22D),
        RCG0,   8,
        ECDB,   8,
        P2ME,   8,
        SSH0,   16,
        SSL0,   16,
        SSD0,   16,
        FMH0,   16,
        FML0,   16,
        FMD0,   16,
        FPH0,   16,
        FPL0,   16,
        FPD0,   16,
        SSH1,   16,
        SSL1,   16,
        SSD1,   16,
        FMH1,   16,
        FML1,   16,
        FMD1,   16,
        FPH1,   16,
        FPL1,   16,
        FPD1,   16,
        M0C0,   16,
        M1C0,   16,
        M2C0,   16,
        M0C1,   16,
        M1C1,   16,
        M2C1,   16,
        M0C2,   16,
        M1C2,   16,
        M0C3,   16,
        M1C3,   16,
        M0C4,   16,
        M1C4,   16,
        M0C5,   16,
        M1C5,   16,
        TBSF,   8,
        GIRQ,   32,
        DMTP,   8,
        DMTD,   8,
        DMSH,   8,
        LANP,   8,
        XDST,   8,
        SHSB,   8,
        PLCS,   8,
        PLVL,   16,
        USBH,   8,
        Offset (0x2BC),
        CCMD,   8,
        COMD,   8,
        LPT1,   8,
        PSTP,   8,
        WKMD,   8,
        IDER,   8,
        PIE0,   8,
        PIE1,   8,
        CSTS,   8,
        PMEE,   8,
        WOLE,   8,
        NVAD,   32,
        NVSZ,   32,
        OPTF,   8,
        IFSE,   8,
        ISCT,   8,
        S1C0,   16,
        S1C1,   16,
        S2C0,   16,
        S2C1,   16,
        SLPS,   8,
        ALAT,   32,
        HRAM,   8,
        MDEN,   8,
        TBEP,   8,
        WIFD,   8,
        WFAT,   8,
        WFPT,   8,
        WFCT,   8,
        WFHT,   8,
        SDEB,   8,
        FGNE,   8,
        MAUL,   8,
        U2PR,   32,
        U3SS,   8
    }
    
    OperationRegion (OGNS, SystemMemory, 0x92FBB018, 0x00001355)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        SERN,   80,
        MDID,   256,
        GUID,   64,
        UUID,   128,
        SKUN,   96,
        LCOD,   24,
        MACA,   48,
        KBMX,   8,
        CHID,   8,
        OSKU,   8,
        QKPM,   8,
        WPFL,   8,
        DBSW,   8,
        WPCR,   8,
        WINA,   8,
        GPSA,   8,
        MSME,   8,
        PREV,   24,
        ODDC,   8,
        WIN7,   8,
        IMID,   8,
        WSDY,   32,
        WSDM,   16,
        WSDD,   16,
        CTNU,   152,
        ESTL,   8,
        NISC,   8,
        CIMF,   8,
        IDBM,   8,
        ASTG,   160,
        Offset (0x1000),
        HWCT,   8,
        HWBC,   8,
        HWRC,   8,
        HWBF,   1024,
        EHWB,   4096,
        IAOR,   8,
        CDAT,   32,
        WLVD,   16,
        WLDD,   16,
        WLSV,   16,
        WLSS,   16,
        BTVD,   16,
        BTDD,   16,
        WWVD,   16,
        WWDD,   16,
        GPVD,   16,
        GPDD,   16,
        FACM,   16,
        SMA4,   8,
        WIVD,   16,
        WIDD,   16,
        RCKP,   8,
        HDSM,   16,
        HD1H,   64,
        HD2H,   64,
        OD1H,   64,
        EBUR,   8,
        HD1P,   16,
        HD1M,   16,
        HD2P,   16,
        HD2M,   16,
        OD1P,   16,
        OD1M,   16,
        HBUP,   8,
        WWID,   32,
        BTID,   32,
        EAX,    32,
        EBX,    32,
        ECX,    32,
        EDX,    32,
        REFS,   32,
        SMP0,   8,
        SMP1,   8,
        SMP2,   8,
        SMP3,   8,
        SMP4,   8,
        SMP5,   8,
        SMP6,   8,
        SMP7,   8,
        IOSR,   8,
        CTTV,   8,
        GTTV,   8,
        SYTV,   8,
        FNTV,   8,
        BTTV,   8,
        HDTV,   8,
        TVFG,   8,
        ECON,   8,
        ECID,   8,
        BDID,   8,
        PJNE,   8,
        VATE,   8,
        PJSD,   16,
        ALPS,   8,
        AOAI,   8,
        AOAE,   8,
        AO1M,   8,
        AO1N,   8,
        AL1N,   8,
        AW1N,   8,
        IA11,   8,
        IA12,   8,
        ER1K,   8,
        AO1S,   8,
        AC1L,   8,
        AW1P,   8,
        AW1T,   32,
        AS1N,   16,
        AOKF,   8,
        PSCR,   8,
        PSSP,   8,
        PSTM,   224,
        PSBC,   224,
        PSST,   8,
        VTST,   8,
        GPLD,   8,
        BUID,   8,
        Offset (0x1352),
        ACLE,   8,
        WF12,   8,
        OIFS,   8
    }
    
    OperationRegion (GPIO, SystemIO, GPBS, 0x64)
    Field (GPIO, ByteAcc, NoLock, Preserve)
    {
        GU00,   8,
        GU01,   8,
        GU02,   8,
        GU03,   8,
        GIO0,   8,
        GIO1,   8,
        GIO2,   8,
        GIO3,   8,
        Offset (0x0C),
        GL00,   8,
        ,   6,
        AOAL,   1,
        GP15,   1,
        ,   5,
        WL2F,   1,
        Offset (0x10),
        Offset (0x18),
        GB00,   8,
        GB01,   8,
        GB02,   8,
        GB03,   8,
        Offset (0x2C),
        GIV0,   8,
        GIV1,   8,
        GIV2,   8,
        GIV3,   8,
        GU04,   8,
        GU05,   8,
        GU06,   8,
        GU07,   8,
        GIO4,   8,
        GIO5,   8,
        GIO6,   8,
        GIO7,   8,
        ,   10,
        DWS1,   2,
        Offset (0x3A),
        ,   1,
        ,   1,
        ,   1,
        ,   3,
        DGEN,   1,
        Offset (0x3B),
        ,   1,
        WLRF,   1,
        Offset (0x3C),
        Offset (0x40),
        GU08,   8,
        GU09,   8,
        GU0A,   8,
        GU0B,   8,
        GIO8,   8,
        GIO9,   8,
        GIOA,   8,
        GIOB,   8,
        GL08,   8,
        GL09,   8,
        GL0A,   8,
        GL0B,   8
    }
    
    OperationRegion (MAIL, SystemIO, 0x0500, 0x02)
    Field (MAIL, ByteAcc, NoLock, Preserve)
    {
        MIDX,   8,
        MDTA,   8
    }
    
    IndexField (MIDX, MDTA, ByteAcc, NoLock, Preserve)
    {
        Offset (0x82),
        BATC,   8,
        Offset (0x84),
        BATD,   8,
        Offset (0x86),
        ESBC,   8,
        ESBD,   8,
        GIFF,   1,
        Offset (0x89),
        Offset (0x8F),
        HKNO,   8,
        Offset (0xA1),
        PSBF,   224,
        MB3D,   8
    }
    
    OperationRegion (EMOS, SystemIO, 0x72, 0x02)
    Field (EMOS, ByteAcc, NoLock, Preserve)
    {
        CIDX,   8,
        CDTA,   8
    }
    
    IndexField (CIDX, CDTA, ByteAcc, NoLock, Preserve)
    {
        Offset (0x61),
        CMST,   4,
        CDST,   4,
        WKTP,   8,
        Offset (0x6A),
        DCMS,   8,
        DCM1,   8,
        Offset (0xC0),
        DPG0,   8,
        DPG1,   8,
        DPG2,   8,
        Offset (0xC4),
        Offset (0xEC),
        WLST,   1,
        BLTH,   1,
        WWAN,   1,
        BTLS,   1,
        WLON,   1,
        BTON,   1,
        WAON,   1,
        S4FG,   1
    }
    
    Name (WWRF, Zero)
    Name (WWOF, Zero)
    Name (WARF, Zero)
    Scope (_SB)
    {
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
            {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }
            
            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }
            
            Name (_UID, Zero)  // _UID: Unique ID
            Name (PR00, Package (0x26)
            {
                Package (0x04)
                {
                    0x0013FFFF,
                    Zero,
                    LNKH,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0014FFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0014FFFF,
                    One,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0014FFFF,
                    0x02,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0014FFFF,
                    0x03,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0015FFFF,
                    Zero,
                    LNKE,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0015FFFF,
                    One,
                    LNKF,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0016FFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0016FFFF,
                    One,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0016FFFF,
                    0x02,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0016FFFF,
                    0x03,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0017FFFF,
                    Zero,
                    LNKG,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0019FFFF,
                    Zero,
                    LNKE,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001AFFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001AFFFF,
                    One,
                    LNKF,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001AFFFF,
                    0x02,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001AFFFF,
                    0x03,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001BFFFF,
                    Zero,
                    LNKG,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001CFFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001CFFFF,
                    One,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001CFFFF,
                    0x02,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001CFFFF,
                    0x03,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001DFFFF,
                    Zero,
                    LNKH,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001DFFFF,
                    One,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001DFFFF,
                    0x02,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001DFFFF,
                    0x03,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001FFFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001FFFFF,
                    One,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001FFFFF,
                    0x02,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0x001FFFFF,
                    0x03,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0001FFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0001FFFF,
                    One,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0001FFFF,
                    0x02,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0001FFFF,
                    0x03,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0002FFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0003FFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0004FFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0x0018FFFF,
                    Zero,
                    LNKE,
                    Zero
                }
            })
            Name (AR00, Package (0x26)
            {
                Package (0x04)
                {
                    0x0014FFFF,
                    Zero,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0x0014FFFF,
                    One,
                    Zero,
                    0x11
                },
                
                Package (0x04)
                {
                    0x0014FFFF,
                    0x02,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0x0014FFFF,
                    0x03,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0x0015FFFF,
                    Zero,
                    Zero,
                    0x14
                },
                
                Package (0x04)
                {
                    0x0015FFFF,
                    One,
                    Zero,
                    0x15
                },
                
                Package (0x04)
                {
                    0x0016FFFF,
                    Zero,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0x0016FFFF,
                    One,
                    Zero,
                    0x11
                },
                
                Package (0x04)
                {
                    0x0016FFFF,
                    0x02,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0x0016FFFF,
                    0x03,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0x0017FFFF,
                    Zero,
                    Zero,
                    0x16
                },
                
                Package (0x04)
                {
                    0x0019FFFF,
                    Zero,
                    Zero,
                    0x14
                },
                
                Package (0x04)
                {
                    0x001AFFFF,
                    Zero,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0x001AFFFF,
                    One,
                    Zero,
                    0x15
                },
                
                Package (0x04)
                {
                    0x001AFFFF,
                    0x02,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0x001AFFFF,
                    0x03,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0x0013FFFF,
                    Zero,
                    Zero,
                    0x17
                },
                
                Package (0x04)
                {
                    0x001BFFFF,
                    Zero,
                    Zero,
                    0x16
                },
                
                Package (0x04)
                {
                    0x001CFFFF,
                    Zero,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0x001CFFFF,
                    One,
                    Zero,
                    0x11
                },
                
                Package (0x04)
                {
                    0x001CFFFF,
                    0x02,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0x001CFFFF,
                    0x03,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0x001DFFFF,
                    Zero,
                    Zero,
                    0x11
                },
                
                Package (0x04)
                {
                    0x001DFFFF,
                    One,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0x001DFFFF,
                    0x02,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0x001DFFFF,
                    0x03,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0x001FFFFF,
                    Zero,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0x001FFFFF,
                    One,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0x001FFFFF,
                    0x02,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0x001FFFFF,
                    0x03,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0x0001FFFF,
                    Zero,
                    Zero,
                    0x14
                },
                
                Package (0x04)
                {
                    0x0001FFFF,
                    One,
                    Zero,
                    0x15
                },
                
                Package (0x04)
                {
                    0x0001FFFF,
                    0x02,
                    Zero,
                    0x16
                },
                
                Package (0x04)
                {
                    0x0001FFFF,
                    0x03,
                    Zero,
                    0x17
                },
                
                Package (0x04)
                {
                    0x0002FFFF,
                    Zero,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0x0003FFFF,
                    Zero,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0x0004FFFF,
                    Zero,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0x0018FFFF,
                    Zero,
                    Zero,
                    0x14
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }
                
                Return (PR00)
            }
            
            Name (PR02, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKD,
                    Zero
                }
            })
            Name (AR02, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x11
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x13
                }
            })
            Name (PR0A, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKA,
                    Zero
                }
            })
            Name (AR0A, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x11
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x10
                }
            })
            Name (PR0B, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKB,
                    Zero
                }
            })
            Name (AR0B, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x11
                }
            })
            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40),
                EPEN,   1,
                ,   11,
                EPBR,   20,
                Offset (0x48),
                MHEN,   1,
                ,   14,
                MHBR,   17,
                Offset (0x50),
                GCLK,   1,
                Offset (0x54),
                D0EN,   1,
                D1F2,   1,
                D1F1,   1,
                D1F0,   1,
                Offset (0x60),
                PXEN,   1,
                PXSZ,   2,
                ,   23,
                PXBR,   6,
                Offset (0x68),
                DIEN,   1,
                ,   11,
                DIBR,   20,
                Offset (0x70),
                ,   20,
                MEBR,   12,
                Offset (0x80),
                ,   4,
                PM0H,   2,
                Offset (0x81),
                PM1L,   2,
                ,   2,
                PM1H,   2,
                Offset (0x82),
                PM2L,   2,
                ,   2,
                PM2H,   2,
                Offset (0x83),
                PM3L,   2,
                ,   2,
                PM3H,   2,
                Offset (0x84),
                PM4L,   2,
                ,   2,
                PM4H,   2,
                Offset (0x85),
                PM5L,   2,
                ,   2,
                PM5H,   2,
                Offset (0x86),
                PM6L,   2,
                ,   2,
                PM6H,   2,
                Offset (0x87),
                Offset (0xA8),
                ,   20,
                TUUD,   19,
                Offset (0xBC),
                ,   20,
                TLUD,   12,
                Offset (0xC8),
                ,   7,
                HTSE,   1
            }
            
            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                0x0000,             // Granularity
                0x0000,             // Range Minimum
                0x00FF,             // Range Maximum
                0x0000,             // Translation Offset
                0x0100,             // Length
                ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                0x00000000,         // Granularity
                0x00000000,         // Range Minimum
                0x00000CF7,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00000CF8,         // Length
                ,, , TypeStatic)
                IO (Decode16,
                0x0CF8,             // Range Minimum
                0x0CF8,             // Range Maximum
                0x01,               // Alignment
                0x08,               // Length
                )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                0x00000000,         // Granularity
                0x00000D00,         // Range Minimum
                0x0000FFFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x0000F300,         // Length
                ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000A0000,         // Range Minimum
                0x000BFFFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00020000,         // Length
                ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000C0000,         // Range Minimum
                0x000C3FFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000C4000,         // Range Minimum
                0x000C7FFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000C8000,         // Range Minimum
                0x000CBFFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000CC000,         // Range Minimum
                0x000CFFFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000D0000,         // Range Minimum
                0x000D3FFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000D4000,         // Range Minimum
                0x000D7FFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000D8000,         // Range Minimum
                0x000DBFFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000DC000,         // Range Minimum
                0x000DFFFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000E0000,         // Range Minimum
                0x000E3FFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000E4000,         // Range Minimum
                0x000E7FFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000E8000,         // Range Minimum
                0x000EBFFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000EC000,         // Range Minimum
                0x000EFFFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00004000,         // Length
                ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x000F0000,         // Range Minimum
                0x000FFFFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0x00010000,         // Length
                ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                0x00000000,         // Granularity
                0x00000000,         // Range Minimum
                0xFEAFFFFF,         // Range Maximum
                0x00000000,         // Translation Offset
                0xFEB00000,         // Length
                ,, _Y0E, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), 0x02), PBMX)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBLN)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN)
                }
                
                If (LEqual (PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW)
                }
                
                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN)
                }
                
                If (LEqual (PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW)
                }
                
                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN)
                }
                
                If (LEqual (PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW)
                }
                
                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN)
                }
                
                If (LEqual (PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW)
                }
                
                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN)
                }
                
                If (LEqual (PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW)
                }
                
                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN)
                }
                
                If (LEqual (PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW)
                }
                
                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN)
                }
                
                If (LEqual (PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW)
                }
                
                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN)
                }
                
                If (LEqual (PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW)
                }
                
                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN)
                }
                
                If (LEqual (PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW)
                }
                
                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN)
                }
                
                If (LEqual (PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW)
                }
                
                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN)
                }
                
                If (LEqual (PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW)
                }
                
                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN)
                }
                
                If (LEqual (PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW)
                }
                
                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN)
                }
                
                If (LEqual (PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW)
                }
                
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                ShiftLeft (TLUD, 0x14, M1MN)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                Return (BUF0)
            }
            
            Name (GUID, Buffer (0x10)
            {
                /* 0000 */   0x5B, 0x4D, 0xDB, 0x33, 0xF7, 0x1F, 0x1C, 0x40,
                /* 0008 */   0x96, 0x57, 0x74, 0x41, 0xC0, 0x3D, 0xD7, 0x66
            })
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Name (XCNT, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (^XHC.CUID (Arg0))
                {
                    Return (^XHC.POSC (Arg1, Arg2, Arg3))
                }
                Else
                {
                    If (_OSI ("Windows 2012"))
                    {
                        If (LEqual (XCNT, Zero))
                        {
                            ^XHC.XSEL ()
                            Increment (XCNT)
                        }
                    }
                }
                
                If (LAnd (LEqual (Arg0, GUID), NEXP))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (Not (And (CDW1, One)))
                    {
                        If (And (CTRL, One))
                        {
                            NHPG ()
                        }
                        
                        If (And (CTRL, 0x04))
                        {
                            NPME ()
                        }
                    }
                    
                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }
                    
                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }
                    
                    Store (CTRL, CDW3)
                    Store (CTRL, OSCC)
                    Return (Local0)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Local0)
                }
            }
            
            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (PMEE)
                    {
                        Return (GPRW (0x0B, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x0B, Zero))
                    }
                }
                
                Name (PR01, Package (0x18)
                {
                    Package (0x04)
                    {
                        0xFFFF,
                        Zero,
                        LNKF,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0xFFFF,
                        One,
                        LNKG,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0xFFFF,
                        0x02,
                        LNKH,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0xFFFF,
                        0x03,
                        LNKE,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0001FFFF,
                        Zero,
                        LNKG,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0001FFFF,
                        One,
                        LNKF,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0001FFFF,
                        0x02,
                        LNKE,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0001FFFF,
                        0x03,
                        LNKH,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0002FFFF,
                        Zero,
                        LNKH,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0002FFFF,
                        One,
                        LNKE,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0002FFFF,
                        0x02,
                        LNKF,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0002FFFF,
                        0x03,
                        LNKG,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0003FFFF,
                        Zero,
                        LNKD,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0003FFFF,
                        One,
                        LNKC,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0003FFFF,
                        0x02,
                        LNKF,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0003FFFF,
                        0x03,
                        LNKG,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0004FFFF,
                        Zero,
                        LNKC,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0004FFFF,
                        One,
                        LNKH,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0004FFFF,
                        0x02,
                        LNKA,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0004FFFF,
                        0x03,
                        LNKE,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0005FFFF,
                        Zero,
                        LNKC,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0005FFFF,
                        One,
                        LNKE,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0005FFFF,
                        0x02,
                        LNKG,
                        Zero
                    },
                    
                    Package (0x04)
                    {
                        0x0005FFFF,
                        0x03,
                        LNKF,
                        Zero
                    }
                })
                Name (AR01, Package (0x18)
                {
                    Package (0x04)
                    {
                        0xFFFF,
                        Zero,
                        Zero,
                        0x15
                    },
                    
                    Package (0x04)
                    {
                        0xFFFF,
                        One,
                        Zero,
                        0x16
                    },
                    
                    Package (0x04)
                    {
                        0xFFFF,
                        0x02,
                        Zero,
                        0x17
                    },
                    
                    Package (0x04)
                    {
                        0xFFFF,
                        0x03,
                        Zero,
                        0x14
                    },
                    
                    Package (0x04)
                    {
                        0x0001FFFF,
                        Zero,
                        Zero,
                        0x16
                    },
                    
                    Package (0x04)
                    {
                        0x0001FFFF,
                        One,
                        Zero,
                        0x15
                    },
                    
                    Package (0x04)
                    {
                        0x0001FFFF,
                        0x02,
                        Zero,
                        0x14
                    },
                    
                    Package (0x04)
                    {
                        0x0001FFFF,
                        0x03,
                        Zero,
                        0x17
                    },
                    
                    Package (0x04)
                    {
                        0x0002FFFF,
                        Zero,
                        Zero,
                        0x17
                    },
                    
                    Package (0x04)
                    {
                        0x0002FFFF,
                        One,
                        Zero,
                        0x14
                    },
                    
                    Package (0x04)
                    {
                        0x0002FFFF,
                        0x02,
                        Zero,
                        0x15
                    },
                    
                    Package (0x04)
                    {
                        0x0002FFFF,
                        0x03,
                        Zero,
                        0x16
                    },
                    
                    Package (0x04)
                    {
                        0x0003FFFF,
                        Zero,
                        Zero,
                        0x13
                    },
                    
                    Package (0x04)
                    {
                        0x0003FFFF,
                        One,
                        Zero,
                        0x12
                    },
                    
                    Package (0x04)
                    {
                        0x0003FFFF,
                        0x02,
                        Zero,
                        0x15
                    },
                    
                    Package (0x04)
                    {
                        0x0003FFFF,
                        0x03,
                        Zero,
                        0x16
                    },
                    
                    Package (0x04)
                    {
                        0x0004FFFF,
                        Zero,
                        Zero,
                        0x12
                    },
                    
                    Package (0x04)
                    {
                        0x0004FFFF,
                        One,
                        Zero,
                        0x17
                    },
                    
                    Package (0x04)
                    {
                        0x0004FFFF,
                        0x02,
                        Zero,
                        0x10
                    },
                    
                    Package (0x04)
                    {
                        0x0004FFFF,
                        0x03,
                        Zero,
                        0x14
                    },
                    
                    Package (0x04)
                    {
                        0x0005FFFF,
                        Zero,
                        Zero,
                        0x12
                    },
                    
                    Package (0x04)
                    {
                        0x0005FFFF,
                        One,
                        Zero,
                        0x14
                    },
                    
                    Package (0x04)
                    {
                        0x0005FFFF,
                        0x02,
                        Zero,
                        0x16
                    },
                    
                    Package (0x04)
                    {
                        0x0005FFFF,
                        0x03,
                        Zero,
                        0x15
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }
                    
                    Return (PR01)
                }
            }
            
            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, Zero, 0x0100)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x02),
                        CDID,   16,
                        Offset (0x08),
                        CRID,   8,
                        Offset (0x60),
                        PARC,   8,
                        PBRC,   8,
                        PCRC,   8,
                        PDRC,   8,
                        Offset (0x68),
                        PERC,   8,
                        PFRC,   8,
                        PGRC,   8,
                        PHRC,   8,
                        Offset (0xAC),
                        Offset (0xAD),
                        Offset (0xAE),
                        XUSB,   1
                    }
                    
                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PARC, 0x80, PARC)
                        }
                        
                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA)
                        }
                        
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }
                        
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }
                        
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                    
                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PBRC, 0x80, PBRC)
                        }
                        
                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB)
                        }
                        
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }
                        
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }
                        
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                    
                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PCRC, 0x80, PCRC)
                        }
                        
                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC)
                        }
                        
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }
                        
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }
                        
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                    
                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PDRC, 0x80, PDRC)
                        }
                        
                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD)
                        }
                        
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }
                        
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }
                        
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                    
                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PERC, 0x80, PERC)
                        }
                        
                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE)
                        }
                        
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }
                        
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }
                        
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                    
                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PFRC, 0x80, PFRC)
                        }
                        
                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF)
                        }
                        
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }
                        
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }
                        
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                    
                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PGRC, 0x80, PGRC)
                        }
                        
                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG)
                        }
                        
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }
                        
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }
                        
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                    
                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PHRC, 0x80, PHRC)
                        }
                        
                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH)
                        }
                        
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }
                        
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }
                        
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }
                
                OperationRegion (LPC0, PCI_Config, Zero, 0xFF)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x2E),
                    SSID,   16,
                    Offset (0x40),
                    ,   7,
                    PMBR,   9,
                    Offset (0x48),
                    ,   7,
                    GBAR,   9,
                    Offset (0x80),
                    IOD0,   8,
                    IOD1,   8,
                    Offset (0xB8),
                    ,   2,
                    GH01,   2,
                    ,   2,
                    GR03,   2,
                    Offset (0xBA),
                    GR08,   2,
                    GR09,   2,
                    GR0A,   2,
                    GR0B,   2,
                    Offset (0xBC),
                    ,   2,
                    GR19,   2,
                    Offset (0xC0),
                    Offset (0xF0),
                    RAEN,   1,
                    ,   13,
                    RCBA,   18
                }
                
                OperationRegion (PMBS, SystemIO, ShiftLeft (PMBR, 0x07), 0x40)
                Field (PMBS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x34),
                    ,   5,
                    APMS,   1,
                    Offset (0x3C),
                    ,   1,
                    PPEN,   1
                }
                
                OperationRegion (GPIO, SystemIO, ShiftLeft (GBAR, 0x07), 0x40)
                Field (GPIO, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x0C),
                    GPL1,   32,
                    Offset (0x2C),
                    GINV,   32,
                    Offset (0x38),
                    GPL2,   32
                }
                
                Device (H_EC)
                {
                    Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_GPE, 0x17)  // _GPE: General Purpose Events
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (BFFR, ResourceTemplate ()
                        {
                            IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                            IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        })
                        Return (BFFR)
                    }
                    
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }
                    
                    Mutex (ECMX, 0x00)
                    Name (ECRG, Zero)
                    Name (HSWK, Zero)
                    Name (PSS1, Zero)
                    Name (PSS2, Zero)
                    Name (THOT, Zero)
                    Name (WAOK, Zero)
                    Method (ECRI, 0, Serialized)
                    {
                        PWUP (0x07, 0xFF)
                        Store (GBAP (), Local0)
                        ITLB ()
                    }
                    
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        \RMDT.P3("_REG called:", Arg0, Arg1)
                        If (LAnd (LEqual (Arg0, 0x03), LEqual (Arg1, One)))
                        {
                            Acquire (ECMX, 0xFFFF)
                            Store (One, AMPC)
                            Store (Zero, SFNO)
                            Release (ECMX)
                            Store (Arg1, ECRG)
                            ECRI ()
                            If (LOr (LGreaterEqual (OSYS, 0x07D9), LEqual (OSYS, 0x03E9)))
                            {
                                Store (One, WIN7)
                            }
                            Else
                            {
                                Store (Zero, WIN7)
                            }
                            
                            Acquire (ECMX, 0xFFFF)
                            If (LEqual (OSYS, 0x03E8))
                            {
                                Store (0x0A, OST)
                            }
                            Else
                            {
                                If (LEqual (OSYS, 0x03E9))
                                {
                                    Store (0x0B, OST)
                                }
                                Else
                                {
                                    Store (Zero, OST)
                                }
                            }
                            
                            Release (ECMX)
                            Store (One, ECON)
                            P8XH (0x04, 0xEC, One)
                            Store (PWRS, Local0)
                            Store (RPWR, PWRS)
                            PNOT ()
                            PWUP (0x07, One)
                            GBAP ()
                            Notify (AC, 0x80)
                            Notify (BAT0, 0x80)
                            If (LEqual (AOAM, Zero))
                            {
                                _Q0A ()
                            }
                            
                            GLSD ()
                            If (LGreaterEqual (OSYS, 0x07DC)) {}
                            Else
                            {
                                Store (WLON, WLRF)
                                Store (BTON, WL2F)
                            }
                            
                            GLRS ()
                            Store (LIDS, ^^^GFX0.CLID)
                            Store (0x02, GR03)
                            Store (0x02, GH01)
                            Store (CMST, MMST)
                            Store (CDST, DMST)
                            Store (Zero, LWKE)
                            Store (SizeOf (\_PR.CPU0._PSS), TPS)
                            Subtract (TPS, One, TPS)
                            Store (\_PR.CPU0._PPC, NPS)
                            ^^^ACEL.AJAL ()
                        }
                    }
                    
                    OperationRegion (ECF2, EmbeddedControl, Zero, 0xFF)
                    Field (ECF2, ByteAcc, Lock, Preserve)
                    {
                        MBVR,   8,
                        Offset (0x06),
                        KBLL,   8,
                        Offset (0x10),
                        BDN0,   56,
                        Offset (0x18),
                        BME0,   8,
                        Offset (0x1C),
                        DAY0,   8,
                        HUR0,   8,
                        MIN0,   8,
                        SEC0,   8,
                        BMNC,   8,
                        BMN0,   120,
                        BCT0,   128,
                        Offset (0x5A),
                        RJCD,   1,
                        Offset (0x64),
                        AOAM,   1,
                        AOAN,   1,
                        ALAN,   3,
                        AWAN,   3,
                        IAO1,   1,
                        IAO2,   1,
                        ERWK,   1,
                        ,   2,
                        WLDT,   1,
                        ECWK,   1,
                        WKWL,   1,
                        ECTM,   32,
                        Offset (0x70),
                        Offset (0x71),
                        Offset (0x72),
                        Offset (0x73),
                        Offset (0x74),
                        Offset (0x75),
                        Offset (0x76),
                        Offset (0x77),
                        Offset (0x78),
                        Offset (0x79),
                        Offset (0x7A),
                        Offset (0x7B),
                        Offset (0x7C),
                        Offset (0x7D),
                        Offset (0x7E),
                        FANR,   16,
                        FANS,   8,
                        ,   4,
                        SLPT,   4,
                        BNSD,   1,
                        ,   1,
                        ACPI,   1,
                        ME4G,   1,
                        Offset (0x83),
                        LSTE,   1,
                        LWKE,   1,
                        QWQS,   1,
                        QWON,   1,
                        FANE,   1,
                        ,   1,
                        QLED,   1,
                        ZODD,   1,
                        RPWR,   1,
                        ADID,   2,
                        CFAN,   1,
                        BTAP,   2,
                        ,   1,
                        Offset (0x85),
                        BPU,    1,
                        Offset (0x86),
                        BSEL,   4,
                        Offset (0x87),
                        LB1,    8,
                        LB2,    8,
                        BDC0,   16,
                        BDC1,   16,
                        BFC0,   16,
                        BFC1,   16,
                        BTC,    1,
                        Offset (0x92),
                        Offset (0x93),
                        BDV0,   16,
                        BDV1,   16,
                        BST0,   8,
                        Offset (0x99),
                        BST1,   8,
                        Offset (0x9B),
                        BPR0,   16,
                        BPR1,   16,
                        BRC0,   16,
                        BRC1,   16,
                        BCC0,   16,
                        BCC1,   16,
                        CV01,   16,
                        CV02,   16,
                        CV03,   16,
                        CV04,   16,
                        CV11,   16,
                        CV12,   16,
                        CV13,   16,
                        CV14,   16,
                        HPBA,   16,
                        HPBB,   16,
                        STS0,   8,
                        STS1,   8,
                        BMD0,   16,
                        BMD1,   16,
                        BPV0,   16,
                        BPV1,   16,
                        BSN0,   16,
                        BSN1,   16,
                        BCV0,   16,
                        BCV1,   16,
                        CRG0,   16,
                        CRG1,   16,
                        BTY0,   32,
                        BTY1,   32,
                        PSRB,   1,
                        AMPC,   1,
                        ,   1,
                        ,   1,
                        ,   1,
                        Offset (0xDA),
                        Offset (0xDB),
                        DTMP,   8,
                        LTMP,   8,
                        VTMP,   8,
                        VLTP,   8,
                        Offset (0xE0),
                        Offset (0xE1),
                        Offset (0xE2),
                        TJXX,   8,
                        OST,    4,
                        WIN7,   1,
                        ,   1,
                        ,   1,
                        Offset (0xE4),
                        TPS,    8,
                        NPS,    8,
                        Offset (0xE7),
                        Offset (0xE8),
                        Offset (0xE9),
                        Offset (0xEA),
                        Offset (0xEB),
                        ,   1,
                        RG12,   1,
                        ,   1,
                        HDSD,   1,
                        PSON,   1,
                        ,   1,
                        ,   1,
                        PSRW,   1,
                        CBT0,   16,
                        CBT1,   16,
                        PSV,    8,
                        CRT,    8,
                        LHT,    8,
                        FAON,   1,
                        RTC,    1,
                        AKEY,   1,
                        ,   1,
                        ,   2,
                        LIDW,   1,
                        Offset (0xF4),
                        SFNO,   8,
                        FFAL,   1,
                        SCTB,   1,
                        HOTF,   1,
                        ,   1,
                        ,   1,
                        ,   1,
                        ,   1,
                        Offset (0xF6),
                        SCP,    1,
                        ACEL,   1,
                        JOGD,   1,
                        MTST,   1,
                        ,   1,
                        ,   1,
                        SHTS,   1,
                        Offset (0xF7),
                        Offset (0xF8),
                        MMST,   4,
                        DMST,   4,
                        BDNC,   1,
                        PWBW,   1,
                        ,   2,
                        LEDC,   1,
                        ,   2,
                        WLED,   1
                    }
                    
                    Method (KFCL, 2, NotSerialized)
                    {
                        Acquire (ECMX, 0xFFFF)
                        If (ECRG)
                        {
                            Store (Arg1, FAON)
                            Store (Arg0, FANS)
                        }
                        
                        Release (ECMX)
                    }
                    
                    Method (KSFS, 1, NotSerialized)
                    {
                        Acquire (ECMX, 0xFFFF)
                        If (ECRG)
                        {
                            Store (Arg0, FANS)
                        }
                        
                        Release (ECMX)
                    }
                    
                    Method (KGFS, 0, NotSerialized)
                    {
                        Store (0x14, Local0)
                        Acquire (ECMX, 0xFFFF)
                        If (ECRG)
                        {
                            Store (FANS, Local0)
                        }
                        
                        Release (ECMX)
                        Return (Local0)
                    }
                    
                    Method (SSHK, 1, Serialized)
                    {
                        Acquire (ECMX, 0xFFFF)
                        If (ECRG)
                        {
                            P8XH (0x04, Arg0, One)
                            If (LEqual (SHTS, One))
                            {
                                ^^^^WMID.WGWE (0x0B, One)
                            }
                            Else
                            {
                                ^^^^WMID.WGWE (0x0B, Zero)
                            }
                            
                            Sleep (0x64)
                            If (LEqual (MTST, Zero))
                            {
                                ^^^^WMID.WGWE (0x0A, Zero)
                            }
                            Else
                            {
                                ^^^^WMID.WGWE (0x0A, One)
                            }
                        }
                        
                        Release (ECMX)
                    }
                    
                    Method (GLID, 0, Serialized)
                    {
                        Acquire (ECMX, 0xFFFF)
                        If (ECRG)
                        {
                            Store (LSTE, Local0)
                        }
                        Else
                        {
                            Store (LIDS, Local0)
                        }
                        
                        Release (ECMX)
                        Return (Local0)
                    }
                    
                    Name (NGBF, 0xFF)
                    Name (NGBT, 0xFF)
                    Name (GACP, 0x07)
                    Name (ACST, One)
                    Name (SMAR, Zero)
                    Name (NBAP, Zero)
                    Name (NNBO, One)
                    Name (NDCB, Zero)
                    Name (NLB1, 0xC8)
                    Name (NLB2, 0x64)
                    Mutex (BTMX, 0x00)
                    Name (NBTT, Package (0x08)
                    {
                        "Unknown",
                        "NiMH",
                        "LiIon"
                    })
                    Method (UPAD, 0, Serialized)
                    {
                        Acquire (BTMX, 0xFFFF)
                        If (LAnd (GACP, One))
                        {
                            And (GACP, 0x06, GACP)
                            Release (BTMX)
                            Store (One, Local0)
                            Store (Zero, Local1)
                            Acquire (ECMX, 0xFFFF)
                            If (ECRG)
                            {
                                Store (RPWR, Local0)
                                Store (ADID, Local1)
                            }
                            
                            Release (ECMX)
                            Store (Local0, ACST)
                            Store (Local1, SMAR)
                        }
                        Else
                        {
                            Release (BTMX)
                        }
                    }
                    
                    Method (GACS, 0, Serialized)
                    {
                        UPAD ()
                        Return (ACST)
                    }
                    
                    Method (GPID, 0, Serialized)
                    {
                        UPAD ()
                        Return (SMAR)
                    }
                    
                    Method (GBAP, 0, Serialized)
                    {
                        Acquire (BTMX, 0xFFFF)
                        If (And (GACP, 0x02))
                        {
                            And (GACP, 0x05, GACP)
                            Release (BTMX)
                            Acquire (ECMX, 0xFFFF)
                            If (ECRG)
                            {
                                Store (BTAP, NBAP)
                            }
                            
                            Release (ECMX)
                        }
                        Else
                        {
                            Release (BTMX)
                        }
                        
                        Return (NBAP)
                    }
                    
                    Method (PWUP, 2, Serialized)
                    {
                        Store (Zero, Local0)
                        Acquire (BTMX, 0xFFFF)
                        Or (Arg0, GACP, Local1)
                        And (Local1, 0x07, GACP)
                        If (And (GACP, 0x02))
                        {
                            Or (NGBF, Arg1, NGBF)
                        }
                        
                        If (And (GACP, 0x04))
                        {
                            If (LNotEqual (NGBT, 0xFF))
                            {
                                Store (One, Local0)
                            }
                            
                            Or (NGBT, Arg1, NGBT)
                        }
                        
                        Release (BTMX)
                        Return (Local0)
                    }
                    
                    Method (BTDR, 1, Serialized)
                    {
                        If (LEqual (Arg0, One))
                        {
                            Store (One, NNBO)
                        }
                        Else
                        {
                            If (LEqual (Arg0, Zero))
                            {
                                Store (Zero, NNBO)
                            }
                        }
                        
                        Return (NNBO)
                    }
                    
                    Method (BSTA, 1, Serialized)
                    {
                        BTDR (One)
                        Store (GBAP (), Local0)
                        Store (0x0F, Local1)
                        If (And (Local0, Arg0))
                        {
                            Store (0x1F, Local1)
                        }
                        
                        Return (Local1)
                    }
                    
                    Method (GBSS, 2, Serialized)
                    {
                        ToBCD (Arg0, Local0)
                        Store (ISTR (Local0, 0x05), Local3)
                        Concatenate (Local3, " ", Local4)
                        ShiftRight (Arg1, 0x09, Local0)
                        Add (Local0, 0x07BC, Local1)
                        ToBCD (Local1, Local0)
                        Store (ISTR (Local0, 0x04), Local2)
                        Concatenate (Local4, Local2, Local3)
                        Concatenate (Local3, "/", Local4)
                        ShiftRight (Arg1, 0x05, Local0)
                        And (Local0, 0x0F, Local1)
                        ToBCD (Local1, Local0)
                        Store (ISTR (Local0, 0x02), Local2)
                        Concatenate (Local4, Local2, Local3)
                        Concatenate (Local3, "/", Local4)
                        And (Arg1, 0x1F, Local1)
                        ToBCD (Local1, Local0)
                        Store (ISTR (Local0, 0x02), Local2)
                        Concatenate (Local4, Local2, Local3)
                        Return (Local3)
                    }
                    
                    Method (BTIF, 1, Serialized)
                    {
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        ShiftLeft (One, Arg0, Local7)
                        BTDR (One)
                        If (LEqual (BSTA (Local7), 0x0F))
                        {
                            Return (0xFF)
                        }
                        
                        Acquire (BTMX, 0xFFFF)
                        Store (NGBF, Local0)
                        Release (BTMX)
                        If (LEqual (And (Local0, Local7), Zero))
                        {
                            Return (Zero)
                        }
                        
                        Store (NDBS, Index (NBST, Arg0))
                        Acquire (BTMX, 0xFFFF)
                        Or (NGBT, Local7, NGBT)
                        Release (BTMX)
                        Acquire (ECMX, 0xFFFF)
                        If (ECRG)
                        {
                            Store (Arg0, BSEL)
                            While (One)
                            {
                                Store (Arg0, _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (BFC0, Local0)
                                    Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), One))
                                    Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), 0x02))
                                    Store (BDV0, Index (DerefOf (Index (NBTI, Arg0)), 0x04))
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Store (BFC1, Local0)
                                        Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), One))
                                        Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), 0x02))
                                        Store (BDV1, Index (DerefOf (Index (NBTI, Arg0)), 0x04))
                                    }
                                }
                                
                                Break
                            }
                            
                            Multiply (Local0, NLB1, Local1)
                            Divide (Add (Local1, 0x63), 0x64, Local3, Local2)
                            Store (Local2, Index (DerefOf (Index (NBTI, Arg0)), 0x05))
                            Store (NLB1, Index (DerefOf (Index (NBTI, Arg0)), 0x05))
                            Store (NLB2, Index (DerefOf (Index (NBTI, Arg0)), 0x06))
                            While (One)
                            {
                                Store (Arg0, _T_1)
                                If (LEqual (_T_1, Zero))
                                {
                                    Store (BSN0, Local0)
                                    Store (BMD0, Local1)
                                }
                                Else
                                {
                                    If (LEqual (_T_1, One))
                                    {
                                        Store (BSN1, Local0)
                                        Store (BMD1, Local1)
                                    }
                                }
                                
                                Break
                            }
                        }
                        
                        Release (ECMX)
                        Store (GBSS (Local0, Local1), Local2)
                        Store (Local2, Index (DerefOf (Index (NBTI, Arg0)), 0x0A))
                        Acquire (BTMX, 0xFFFF)
                        And (NGBF, Not (Local7), NGBF)
                        Release (BTMX)
                        Return (Zero)
                    }
                    
                    Method (BTST, 2, Serialized)
                    {
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        ShiftLeft (One, Arg0, Local7)
                        BTDR (One)
                        If (LEqual (BSTA (Local7), 0x0F))
                        {
                            Store (Package (0x04)
                            {
                                Zero,
                                Ones,
                                Ones,
                                Ones
                            }, Index (NBST, Arg0))
                            Return (0xFF)
                        }
                        
                        Acquire (BTMX, 0xFFFF)
                        If (Arg1)
                        {
                            Store (0xFF, NGBT)
                        }
                        
                        Store (NGBT, Local0)
                        Release (BTMX)
                        If (LEqual (And (Local0, Local7), Zero))
                        {
                            Return (Zero)
                        }
                        
                        Acquire (ECMX, 0xFFFF)
                        If (ECRG)
                        {
                            Store (Arg0, BSEL)
                            While (One)
                            {
                                Store (Arg0, _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (BST0, Local0)
                                    Store (BPR0, Local3)
                                    Store (BRC0, Index (DerefOf (Index (NBST, Arg0)), 0x02))
                                    Store (BPV0, Index (DerefOf (Index (NBST, Arg0)), 0x03))
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Store (BST1, Local0)
                                        Store (BPR1, Local3)
                                        Store (BRC1, Index (DerefOf (Index (NBST, Arg0)), 0x02))
                                        Store (BPV1, Index (DerefOf (Index (NBST, Arg0)), 0x03))
                                    }
                                }
                                
                                Break
                            }
                        }
                        
                        Release (ECMX)
                        Store (Local0, Index (DerefOf (Index (NBST, Arg0)), Zero))
                        If (And (Local0, One))
                        {
                            While (One)
                            {
                                Store (Arg0, _T_1)
                                If (LEqual (_T_1, Zero))
                                {
                                    Subtract (0x00010000, BPR0, Local3)
                                }
                                Else
                                {
                                    If (LEqual (_T_1, One))
                                    {
                                        Subtract (0x00010000, BPR1, Local3)
                                    }
                                }
                                
                                Break
                            }
                            
                            If (LOr (LLess (Local3, 0x0190), LGreater (Local3, 0x1964)))
                            {
                                Store (DerefOf (Index (DerefOf (Index (NBST, Arg0)), One)),
                                Local5)
                                If (LOr (LLess (Local5, 0x0190), LGreater (Local5, 0x1964)))
                                {
                                    Store (Ones, Local3)
                                }
                                Else
                                {
                                    Store (Ones, Local3)
                                }
                            }
                        }
                        
                        Store (Local3, Index (DerefOf (Index (NBST, Arg0)), One))
                        Acquire (BTMX, 0xFFFF)
                        And (NGBT, Not (Local7), NGBT)
                        Release (BTMX)
                        Return (Zero)
                    }
                    
                    Method (ITLB, 0, NotSerialized)
                    {
                        Acquire (ECMX, 0xFFFF)
                        If (ECRG)
                        {
                            Add (BFC1, BFC0, Local1)
                            Divide (Add (Local1, 0x63), 0x64, Local2, Local3)
                            Multiply (Local3, LB1, NLB1)
                            Multiply (Local3, LB2, NLB2)
                        }
                        
                        Release (ECMX)
                    }
                    
                    Method (GBTI, 1, NotSerialized)
                    {
                        Acquire (ECMX, 0xFFFF)
                        If (ECRG)
                        {
                            If (And (BTAP, ShiftLeft (One, Arg0)))
                            {
                                Store (Arg0, BSEL)
                                Store (Package (0x03)
                                {
                                    Zero,
                                    0x80,
                                    Buffer (0x80) {}
                                }, Local0)
                                Store (BDC0, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                Store (ShiftRight (BDC0, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), One))
                                Store (BFC0, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                Store (ShiftRight (BFC0, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x03))
                                Store (BRC0, Index (DerefOf (Index (Local0, 0x02)), 0x04))
                                Store (ShiftRight (BRC0, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x05))
                                Store (BCC0, Index (DerefOf (Index (Local0, 0x02)), 0x08))
                                Store (ShiftRight (BCC0, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x09))
                                Store (CBT0, Local1)
                                Subtract (Local1, 0x0AAC, Local1)
                                Divide (Local1, 0x0A, Local2, Local3)
                                Store (Local3, Index (DerefOf (Index (Local0, 0x02)), 0x0A))
                                Store (ShiftRight (Local3, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x0B))
                                Store (BPV0, Index (DerefOf (Index (Local0, 0x02)), 0x0C))
                                Store (ShiftRight (BPV0, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x0D))
                                Store (BPR0, Local1)
                                If (Local1)
                                {
                                    If (And (BST0, One))
                                    {
                                        And (Local1, 0xFFFF, Local1)
                                    }
                                }
                                
                                Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x0E))
                                Store (ShiftRight (Local1, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x0F))
                                Store (BDV0, Index (DerefOf (Index (Local0, 0x02)), 0x10))
                                Store (ShiftRight (BDV0, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x11))
                                Store (BST0, Index (DerefOf (Index (Local0, 0x02)), 0x12))
                                Store (ShiftRight (BST0, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x13))
                                Store (CV01, Index (DerefOf (Index (Local0, 0x02)), 0x14))
                                Store (ShiftRight (CV01, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x15))
                                Store (CV02, Index (DerefOf (Index (Local0, 0x02)), 0x16))
                                Store (ShiftRight (CV02, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x17))
                                Store (CV03, Index (DerefOf (Index (Local0, 0x02)), 0x18))
                                Store (ShiftRight (CV03, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x19))
                                Store (CV04, Index (DerefOf (Index (Local0, 0x02)), 0x1A))
                                Store (ShiftRight (CV04, 0x08), Index (DerefOf (Index (Local0, 0x02
                                )), 0x1B))
                                CreateField (DerefOf (Index (Local0, 0x02)), 0xE0, 0x80, BTSN)
                                Store (GBSS (BSN0, BMD0), BTSN)
                                Store (BMN0, Local1)
                                CreateField (DerefOf (Index (Local0, 0x02)), 0x0160, Multiply (SizeOf (Local1),
                                0x08), BMAN)
                                Store (Local1, BMAN)
                                CreateField (DerefOf (Index (Local0, 0x02)), 0x01F0, 0x80, CTN)
                                Store (BCT0, CTN)
                                CreateField (DerefOf (Index (Local0, 0x02)), 0x0278, 0x38, BDN)
                                Store (BDN0, BDN)
                                CreateField (DerefOf (Index (Local0, 0x02)), 0x02B0, 0x20, BTY)
                                Store (BTY0, BTY)
                                CreateField (DerefOf (Index (Local0, 0x02)), 0x02E0, 0x10, BMD)
                                Store (BMD0, BMD)
                                CreateField (DerefOf (Index (Local0, 0x02)), 0x02F0, 0x10, CRG)
                                If (And (BST0, One))
                                {
                                    Store (Zero, CRG)
                                }
                                Else
                                {
                                    Store (CRG0, CRG)
                                }
                                
                                CreateField (DerefOf (Index (Local0, 0x02)), 0x0300, 0x10, BCV)
                                Store (BCV0, BCV)
                                Store (BPR0, Local1)
                                If (Local1)
                                {
                                    If (And (BST0, One))
                                    {
                                        Add (Not (Local1), One, Local1)
                                        And (Local1, 0xFFFF, Local1)
                                    }
                                }
                                
                                CreateField (DerefOf (Index (Local0, 0x02)), 0x0310, 0x10, CURT)
                                Store (Local1, CURT)
                                CreateField (DerefOf (Index (Local0, 0x02)), 0x0350, 0x08, BNUM)
                                Store (One, BNUM)
                            }
                        }
                        Else
                        {
                            Store (Package (0x02)
                            {
                                0x0D,
                                Zero
                            }, Local0)
                        }
                        
                        Release (ECMX)
                        Return (Local0)
                    }
                    
                    Name (\NIST, Package (0x10)
                    {
                        "0",
                        "1",
                        "2",
                        "3",
                        "4",
                        "5",
                        "6",
                        "7",
                        "8",
                        "9",
                        "A",
                        "B",
                        "C",
                        "D",
                        "E",
                        "F"
                    })
                    Method (\ISTR, 2, NotSerialized)
                    {
                        Store (Arg0, Local0)
                        Store ("", Local7)
                        Store (Arg1, Local4)
                        While (LGreater (Local4, Zero))
                        {
                            And (Local0, 0x0F, Local1)
                            Store (DerefOf (Index (NIST, Local1)), Local2)
                            Concatenate (Local2, Local7, Local3)
                            Store (Local3, Local7)
                            ShiftRight (Local0, 0x04, Local0)
                            Decrement (Local4)
                        }
                        
                        Return (Local7)
                    }
                    
                    Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        P8XH (0x04, 0x0A, One)
                        Store (Zero, LIDS)
                        If (LSTE)
                        {
                            Store (One, LIDS)
                        }
                        
                        Notify (LID0, 0x80)
                        ^^^ACEL.AJAL ()
                    }
                    
                    Method (_Q06, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        P8XH (0x04, 0x06, One)
                        If (And (BST0, 0x80))
                        {
                            Store (Zero, BATD)
                            Store (0x3A, BATC)
                        }
                        
                        Store (RPWR, PWRS)
                        ^^^ACEL.AJAL ()
                        PNOT ()
                    }
                    
                    Method (_Q08, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        P8XH (0x04, 0x08, One)
                        PWUP (0x06, One)
                        Store (GBAP (), Local0)
                        PWUP (0x04, 0x02)
                        If (BTDR (0x02))
                        {
                            Notify (BAT0, 0x80)
                            Notify (BAT0, 0x81)
                        }
                    }
                    
                    Method (_Q09, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        P8XH (0x04, 0x09, One)
                        PWUP (0x05, One)
                        If (BTDR (0x02))
                        {
                            Notify (BAT0, 0x80)
                        }
                        
                        If (LEqual (BRC0, BFC0))
                        {
                            Notify (BAT0, 0x81)
                        }
                    }
                    
                    Method (_Q13, 0, Serialized)  // _Qxx: EC Query
                    {
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        While (One)
                        {
                            Store (HKNO, _T_0)
                            If (LEqual (_T_0, 0x04))
                            {
                                Notify (GFX0, 0x80)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x07))
                                {
                                    Notify (^^^GFX0.DD1F, 0x87)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x08))
                                    {
                                        Notify (^^^GFX0.DD1F, 0x86)
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Method (_QB1, 0, NotSerialized)  // _Qxx: EC Query
                    {
                    }
                    
                    Method (_Q21, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        P8XH (0x04, 0x21, One)
                        If (FFAL)
                        {
                            Store (One, HOTF)
                            Notify (\_TZ.TZ00, 0x81)
                        }
                    }
                    
                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        P8XH (0x04, 0x12, One)
                        SSMI (0x04, Zero, Zero, Zero, Zero)
                        Store (One, THDY)
                        Store (One, THEN)
                    }
                    
                    Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        P8XH (0x04, 0x25, One)
                        SSMI (0x04, Zero, Zero, Zero, Zero)
                        Store (0x02, THDY)
                        Store (One, THEN)
                    }
                    
                    Method (_Q75, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        P8XH (0x04, 0x25, One)
                        SSMI (0x04, Zero, Zero, Zero, Zero)
                        Store (0x06, THDY)
                        Store (One, THEN)
                    }
                    
                    Method (_Q33, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        P8XH (0x04, 0x33, One)
                        SSMI (0x04, Zero, Zero, Zero, Zero)
                        Store (0x04, THDY)
                        Store (One, THEN)
                    }
                    
                    Method (_Q3D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        SSMI (0x03, Zero, Zero, Zero, Zero)
                    }
                    
                    Method (_Q3E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        SSMI (0x04, Zero, Zero, Zero, Zero)
                    }
                    
                    Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LGreaterEqual (OSYS, 0x07DC))
                        {
                            Notify (WLBU, 0x80)
                        }
                        Else
                        {
                            If (BTLS)
                            {
                                GLSD ()
                                Store (Zero, WLRF)
                                Store (Zero, WLED)
                                Store (Zero, WLON)
                                Store (Zero, WL2F)
                                GLRS ()
                                Store (Zero, BTON)
                                Store (Zero, BTLS)
                            }
                            Else
                            {
                                If (WLST)
                                {
                                    GLSD ()
                                    Store (One, WLRF)
                                    Store (One, WLED)
                                    Store (One, WLON)
                                    GLRS ()
                                }
                                Else
                                {
                                    GLSD ()
                                    Store (Zero, WLRF)
                                    Store (Zero, WLED)
                                    Store (Zero, WLON)
                                    GLRS ()
                                }
                                
                                If (BLTH)
                                {
                                    GLSD ()
                                    Store (One, WL2F)
                                    GLRS ()
                                }
                                Else
                                {
                                    GLSD ()
                                    Store (Zero, WL2F)
                                    GLRS ()
                                }
                                
                                Store (One, BTLS)
                            }
                            
                            ^^^^WMID.WGWE (0x05, Zero)
                        }
                    }
                    
                    Method (_Q3F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (Zero, THDY)
                        Store (Zero, THEN)
                        SSMI (0x03, Zero, Zero, Zero, Zero)
                    }
                    
                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (\_TZ.TZ00, 0x81)
                        Notify (\_TZ.TZ02, 0x80)
                    }
                    
                    Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (\_TZ.TZ00, 0x80)
                        Notify (\_TZ.TZ01, 0x80)
                        Notify (\_TZ.TZ02, 0x80)
                    }
                    
                    Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (MTST, Zero))
                        {
                            ^^^^WMID.WGWE (0x0A, Zero)
                        }
                        Else
                        {
                            ^^^^WMID.WGWE (0x0A, One)
                        }
                    }
                    
                    Method (_Q51, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^^^^WMID.WGWE (0x0B, One)
                    }
                    
                    Method (_Q52, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^^^^WMID.WGWE (0x0B, Zero)
                    }
                    
                    Method (_QCE, 0, NotSerialized)  // _Qxx: EC Query
                    {
                    }
                    
                    Method (_Q77, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        P8XH (0x04, 0x77, One)
                        Store (0xD8, SSMP)
                    }
                    
                    Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (^^^PEG0.PEGP, 0xD2)
                    }
                    
                    Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (^^^PEG0.PEGP, 0xD1)
                    }
                    
                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Subtract (NPS, One, NPS)
                        If (CondRefOf (\_PR.CPU0._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU0._PPC)
                            Notify (\_PR.CPU0, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU1._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU1._PPC)
                            Notify (\_PR.CPU1, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU2._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU2._PPC)
                            Notify (\_PR.CPU2, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU3._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU3._PPC)
                            Notify (\_PR.CPU3, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU4._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU4._PPC)
                            Notify (\_PR.CPU4, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU5._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU5._PPC)
                            Notify (\_PR.CPU5, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU6._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU6._PPC)
                            Notify (\_PR.CPU6, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU7._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU7._PPC)
                            Notify (\_PR.CPU7, 0x80)
                        }
                    }
                    
                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Add (NPS, One, NPS)
                        If (CondRefOf (\_PR.CPU0._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU0._PPC)
                            Notify (\_PR.CPU0, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU1._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU1._PPC)
                            Notify (\_PR.CPU1, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU2._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU2._PPC)
                            Notify (\_PR.CPU2, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU3._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU3._PPC)
                            Notify (\_PR.CPU3, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU4._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU4._PPC)
                            Notify (\_PR.CPU4, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU5._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU5._PPC)
                            Notify (\_PR.CPU5, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU6._PPC, Local0))
                        {
                            Store (NPS, \_PR.CPU6._PPC)
                            Notify (\_PR.CPU6, 0x80)
                        }
                        
                        If (CondRefOf (\_PR.CPU7._PPC, Local0))
                        {
                            Notify (\_PR.CPU7, 0x80)
                        }
                    }
                    
                    Method (BRTB, 0, Serialized)
                    {
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        Store (Buffer (0x0100) {}, Local0)
                        Store (^^^GFX0.BDDC, Local0)
                        \RMDT.P2("BRTB: Local0(BDDC)=", Local0)
                        CreateDWordField (Local0, 0x08, MFPC)
                        While (One)
                        {
                            Store (MFPC, _T_0)
                            \RMDT.P2 ("BRTB: _T_0=", _T_0)
                            Store("rehab: added this based on EDID data in registry", Debug)
                            Store(0x15BBAE0D, _T_0)
                            If (LEqual (_T_0, 0x1733AE0D))
                            {
                                Return (Package (0x0B)
                                {
                                    0x0D,
                                    0x13,
                                    0x1B,
                                    0x26,
                                    0x37,
                                    0x4C,
                                    0x61,
                                    0x76,
                                    0x8A,
                                    0x9F,
                                    0xFF
                                })
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x159EAF06))
                                {
                                    Return (Package (0x0B)
                                    {
                                        0x0D,
                                        0x12,
                                        0x16,
                                        0x1F,
                                        0x2D,
                                        0x3E,
                                        0x4F,
                                        0x60,
                                        0x71,
                                        0x82,
                                        0xFF
                                    })
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x219DAF06))
                                    {
                                        Return (Package (0x0B)
                                        {
                                            0x0D,
                                            0x12,
                                            0x17,
                                            0x20,
                                            0x2E,
                                            0x40,
                                            0x51,
                                            0x62,
                                            0x74,
                                            0xB9,
                                            0xFF
                                        })
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x0283E430))
                                        {
                                            Return (Package (0x0B)
                                            {
                                                0x0D,
                                                0x10,
                                                0x18,
                                                0x21,
                                                0x30,
                                                0x42,
                                                0x54,
                                                0x66,
                                                0x78,
                                                0xC0,
                                                0xFF
                                            })
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x0372E430))
                                            {
                                                Return (Package (0x0B)
                                                {
                                                    0x0D,
                                                    0x14,
                                                    0x1D,
                                                    0x28,
                                                    0x3A,
                                                    0x50,
                                                    0x66,
                                                    0x7C,
                                                    0x92,
                                                    0xA8,
                                                    0xFF
                                                })
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x32EDAF06))
                                                {
                                                    Return (Package (0x0B)
                                                    {
                                                        0x0D,
                                                        0x12,
                                                        0x1A,
                                                        0x25,
                                                        0x35,
                                                        0x49,
                                                        0x5D,
                                                        0x71,
                                                        0x85,
                                                        0xBC,
                                                        0xFF
                                                    })
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x032DE430))
                                                    {
                                                        Return (Package (0x0B)
                                                        {
                                                            0x14,
                                                            0x1C,
                                                            0x29,
                                                            0x39,
                                                            0x52,
                                                            0x71,
                                                            0x8F,
                                                            0xAF,
                                                            0xCD,
                                                            0xEC,
                                                            0xFF
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x039FE430))
                                                        {
                                                            Return (Package (0x0B)
                                                            {
                                                                0x10,
                                                                0x16,
                                                                0x20,
                                                                0x2D,
                                                                0x40,
                                                                0x59,
                                                                0x71,
                                                                0x8A,
                                                                0xA2,
                                                                0xBA,
                                                                0xFF
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (_T_0, 0x45ECAF06))
                                                            {
                                                                Return (Package (0x0B)
                                                                {
                                                                    0x12,
                                                                    0x19,
                                                                    0x24,
                                                                    0x33,
                                                                    0x49,
                                                                    0x65,
                                                                    0x80,
                                                                    0x9C,
                                                                    0xB6,
                                                                    0xD2,
                                                                    0xFF
                                                                })
                                                            }
                                                            Else
                                                            {
                                                                If (LEqual (_T_0, 0x15ABAF0D))
                                                                {
                                                                    Return (Package (0x0B)
                                                                    {
                                                                        0x16,
                                                                        0x1F,
                                                                        0x2D,
                                                                        0x3F,
                                                                        0x5A,
                                                                        0x7C,
                                                                        0x9E,
                                                                        0xBA,
                                                                        0xD9,
                                                                        0xEB,
                                                                        0xFF
                                                                    })
                                                                }
                                                                Else
                                                                {
                                                                    If (LEqual (_T_0, 0x15ABAE0D))
                                                                    {
                                                                        Return (Package (0x0B)
                                                                        {
                                                                            0x12,
                                                                            0x19,
                                                                            0x24,
                                                                            0x33,
                                                                            0x49,
                                                                            0x65,
                                                                            0x80,
                                                                            0x9C,
                                                                            0xB6,
                                                                            0xD2,
                                                                            0xFF
                                                                        })
                                                                    }
                                                                    Else
                                                                    {
                                                                        If (LEqual (_T_0, 0x15B9AE0D))
                                                                        {
                                                                            Return (Package (0x0B)
                                                                            {
                                                                                0x0D,
                                                                                0x10,
                                                                                0x15,
                                                                                0x1D,
                                                                                0x2A,
                                                                                0x3A,
                                                                                0x4A,
                                                                                0x5A,
                                                                                0x69,
                                                                                0x95,
                                                                                0xFF
                                                                            })
                                                                        }
                                                                        Else
                                                                        {
                                                                            If (LEqual (_T_0, 0x15BBAE0D))
                                                                            {
                                                                                Return (Package (0x0B)
                                                                                {
                                                                                    0x0D,
                                                                                    0x12,
                                                                                    0x18,
                                                                                    0x22,
                                                                                    0x31,
                                                                                    0x44,
                                                                                    0x56,
                                                                                    0x69,
                                                                                    0x7B,
                                                                                    0xAF,
                                                                                    0xFF
                                                                                })
                                                                            }
                                                                            Else
                                                                            {
                                                                                If (LEqual (_T_0, 0x3959A34C))
                                                                                {
                                                                                    Return (Package (0x0B)
                                                                                    {
                                                                                        0x0D,
                                                                                        0x13,
                                                                                        0x1B,
                                                                                        0x26,
                                                                                        0x37,
                                                                                        0x4C,
                                                                                        0x60,
                                                                                        0x75,
                                                                                        0x89,
                                                                                        0x9E,
                                                                                        0xFF
                                                                                    })
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If (LEqual (_T_0, 0x4651834C))
                                                                                    {
                                                                                        Return (Package (0x0B)
                                                                                        {
                                                                                            0x10,
                                                                                            0x16,
                                                                                            0x20,
                                                                                            0x2C,
                                                                                            0x40,
                                                                                            0x58,
                                                                                            0x70,
                                                                                            0x88,
                                                                                            0xA0,
                                                                                            0xB8,
                                                                                            0xFF
                                                                                        })
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        Return (Package (0x0B)
                                                                                        {
                                                                                            0x13,
                                                                                            0x19,
                                                                                            0x21,
                                                                                            0x2B,
                                                                                            0x39,
                                                                                            0x4C,
                                                                                            0x65,
                                                                                            0x85,
                                                                                            0xAF,
                                                                                            0xCC,
                                                                                            0xFF
                                                                                        })
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Name (BINC, Zero)
                    Method (BINI, 0, NotSerialized)
                    {
                        If (LEqual (BINC, Zero))
                        {
                            Store (BRTB (), Local3)
                            \RMDT.P2("BINI: BRTB() returns", Local3)
                            Store (Zero, Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCL0)
                            Store (Local0, ^^^GFX0.BCLP)
                            Increment (Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCL1)
                            Store (Local0, ^^^GFX0.BCLP)
                            Increment (Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCL2)
                            Store (Local0, ^^^GFX0.BCLP)
                            Increment (Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCL3)
                            Store (Local0, ^^^GFX0.BCLP)
                            Increment (Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCL4)
                            Store (Local0, ^^^GFX0.BCLP)
                            Increment (Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCL5)
                            Store (Local0, ^^^GFX0.BCLP)
                            Increment (Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCL6)
                            Store (Local0, ^^^GFX0.BCLP)
                            Increment (Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCL7)
                            Store (Local0, ^^^GFX0.BCLP)
                            Increment (Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCL8)
                            Store (Local0, ^^^GFX0.BCLP)
                            Increment (Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCL9)
                            Store (Local0, ^^^GFX0.BCLP)
                            Increment (Local1)
                            Store (DerefOf (Index (Local3, Local1)), Local0)
                            Store (Local0, ^^^GFX0.BCLA)
                            Store (Local0, ^^^GFX0.BCLP)
                            Store (One, BINC)
                        }
                    }
                    
                    Method (OBCL, 0, Serialized)
                    {
                        \RMDT.P2 ("H_EC.OBCL called, BDID=", BDID)
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        While (One)
                        {
                            Store (BDID, _T_0)
                            If (LNotEqual (Match (Package (0x04)
                            {
                                Zero,
                                One,
                                0x11,
                                0x35
                            }, MEQ, _T_0, MTR, Zero, Zero), Ones))
                            {
                                \RMDT.P1 ("H_EC.OBCL BDID did match...calling BINI")
                                BINI ()
                            }
                            Else
                            {
                                \RMDT.P1 ("H_EC.OBCL BDID did not match")
                            }
                            
                            Break
                        }
                        
                        If (LOr (LEqual (OSYS, 0x03E8), LEqual (OSYS, 0x03E9)))
                        {
                            Return (Package (0x0D)
                            {
                                0x64,
                                0x3C,
                                0x06,
                                0x0A,
                                0x14,
                                0x1E,
                                0x28,
                                0x32,
                                0x3C,
                                0x46,
                                0x50,
                                0x5A,
                                0x64
                            })
                        }
                        Else
                        {
                            If (LGreaterEqual (OSYS, 0x07DC))
                            {
                                Return (Package (0x67)
                                {
                                    0x50,
                                    0x32,
                                    Zero,
                                    One,
                                    0x02,
                                    0x03,
                                    0x04,
                                    0x05,
                                    0x06,
                                    0x07,
                                    0x08,
                                    0x09,
                                    0x0A,
                                    0x0B,
                                    0x0C,
                                    0x0D,
                                    0x0E,
                                    0x0F,
                                    0x10,
                                    0x11,
                                    0x12,
                                    0x13,
                                    0x14,
                                    0x15,
                                    0x16,
                                    0x17,
                                    0x18,
                                    0x19,
                                    0x1A,
                                    0x1B,
                                    0x1C,
                                    0x1D,
                                    0x1E,
                                    0x1F,
                                    0x20,
                                    0x21,
                                    0x22,
                                    0x23,
                                    0x24,
                                    0x25,
                                    0x26,
                                    0x27,
                                    0x28,
                                    0x29,
                                    0x2A,
                                    0x2B,
                                    0x2C,
                                    0x2D,
                                    0x2E,
                                    0x2F,
                                    0x30,
                                    0x31,
                                    0x32,
                                    0x33,
                                    0x34,
                                    0x35,
                                    0x36,
                                    0x37,
                                    0x38,
                                    0x39,
                                    0x3A,
                                    0x3B,
                                    0x3C,
                                    0x3D,
                                    0x3E,
                                    0x3F,
                                    0x40,
                                    0x41,
                                    0x42,
                                    0x43,
                                    0x44,
                                    0x45,
                                    0x46,
                                    0x47,
                                    0x48,
                                    0x49,
                                    0x4A,
                                    0x4B,
                                    0x4C,
                                    0x4D,
                                    0x4E,
                                    0x4F,
                                    0x50,
                                    0x51,
                                    0x52,
                                    0x53,
                                    0x54,
                                    0x55,
                                    0x56,
                                    0x57,
                                    0x58,
                                    0x59,
                                    0x5A,
                                    0x5B,
                                    0x5C,
                                    0x5D,
                                    0x5E,
                                    0x5F,
                                    0x60,
                                    0x61,
                                    0x62,
                                    0x63,
                                    0x64
                                })
                            }
                            Else
                            {
                                Return (Package (0x0D)
                                {
                                    0x64,
                                    0x3C,
                                    Zero,
                                    0x0A,
                                    0x14,
                                    0x1E,
                                    0x28,
                                    0x32,
                                    0x3C,
                                    0x46,
                                    0x50,
                                    0x5A,
                                    0x64
                                })
                            }
                        }
                    }
                    
                    Method (OBCM, 1, NotSerialized)
                    {
                        Store (BLCS, DPG2)
                        Store (BRTB (), Local0)
                        Store (Divide (Arg0, 0x0A, ), Local1)
                        Store (DerefOf (Index (Local0, Local1)), Local2)
                        Store (Divide (Multiply (Local2, 0xC8), 0xFF, ), Local3)
                    }
                }
                
                Scope (\_SB)
                {
                    Device (LID0)
                    {
                        Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
                        Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                        {
                            Acquire (^^PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                            If (^^PCI0.LPCB.H_EC.ECRG)
                            {
                                Store (^^PCI0.LPCB.H_EC.LSTE, LIDS)
                            }
                            
                            Release (^^PCI0.LPCB.H_EC.ECMX)
                            Store (One, ^^PCI0.LPCB.PPEN)
                            If (LIDS)
                            {
                                Store (Zero, ^^PCI0.EHC1.PD06)
                            }
                            Else
                            {
                                Store (One, ^^PCI0.EHC1.PD06)
                            }
                            
                            Store (LIDS, ^^PCI0.GFX0.CLID)
                            Return (LIDS)
                        }
                    }
                    
                    Device (PWRB)
                    {
                        Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
                    }
                }
                
                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x20,               // Length
                        )
                        IO (Decode16,
                        0x0081,             // Range Minimum
                        0x0081,             // Range Maximum
                        0x01,               // Alignment
                        0x11,               // Length
                        )
                        IO (Decode16,
                        0x0093,             // Range Minimum
                        0x0093,             // Range Maximum
                        0x01,               // Alignment
                        0x0D,               // Length
                        )
                        IO (Decode16,
                        0x00C0,             // Range Minimum
                        0x00C0,             // Range Maximum
                        0x01,               // Alignment
                        0x20,               // Length
                        )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                        {4}
                    })
                }
                
                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                        0xFF000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                    })
                }
                
                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate()
{
    IRQNoFlags() { 0, 8, 11, 15 }

                        Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000400,         // Address Length
                        _Y0F)
                    })

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LGreaterEqual (OSYS, 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            If (HPAE)
                            {
                                Return (0x0B)
                            }
                        }
                        
                        Return (Zero)
                    }
                    
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0F._BAS, HPT0)  // _BAS: Base Address
                            If (LEqual (HPAS, One))
                            {
                                Store (0xFED01000, HPT0)
                            }
                            
                            If (LEqual (HPAS, 0x02))
                            {
                                Store (0xFED02000, HPT0)
                            }
                            
                            If (LEqual (HPAS, 0x03))
                            {
                                Store (0xFED03000, HPT0)
                            }
                        }
                        
                        Return (BUF0)
                    }
                }
                
                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                        0x0020,             // Range Minimum
                        0x0020,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x0024,             // Range Minimum
                        0x0024,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x0028,             // Range Minimum
                        0x0028,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x002C,             // Range Minimum
                        0x002C,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x0030,             // Range Minimum
                        0x0030,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x0034,             // Range Minimum
                        0x0034,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x0038,             // Range Minimum
                        0x0038,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x003C,             // Range Minimum
                        0x003C,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x00A0,             // Range Minimum
                        0x00A0,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x00A4,             // Range Minimum
                        0x00A4,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x00A8,             // Range Minimum
                        0x00A8,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x00AC,             // Range Minimum
                        0x00AC,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x00B0,             // Range Minimum
                        0x00B0,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x00B4,             // Range Minimum
                        0x00B4,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x00B8,             // Range Minimum
                        0x00B8,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x00BC,             // Range Minimum
                        0x00BC,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x04D0,             // Range Minimum
                        0x04D0,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        
                    })
                }
                
                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                        0x00F0,             // Range Minimum
                        0x00F0,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IRQNoFlags ()
                        {13}
                    })
                }
                
                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                        0x002E,             // Range Minimum
                        0x002E,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x004E,             // Range Minimum
                        0x004E,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x0061,             // Range Minimum
                        0x0061,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0x0063,             // Range Minimum
                        0x0063,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0x0065,             // Range Minimum
                        0x0065,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0x0067,             // Range Minimum
                        0x0067,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0x0070,             // Range Minimum
                        0x0070,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0x0080,             // Range Minimum
                        0x0080,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0x0092,             // Range Minimum
                        0x0092,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0x00B2,             // Range Minimum
                        0x00B2,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x0680,             // Range Minimum
                        0x0680,             // Range Maximum
                        0x01,               // Alignment
                        0x20,               // Length
                        )
                        IO (Decode16,
                        0xFFFF,             // Range Minimum
                        0xFFFF,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0xFFFF,             // Range Minimum
                        0xFFFF,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0xFFFF,             // Range Minimum
                        0xFFFF,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0x0400,             // Range Minimum
                        0x0400,             // Range Maximum
                        0x01,               // Alignment
                        0x54,               // Length
                        )
                        IO (Decode16,
                        0x0500,             // Range Minimum
                        0x0500,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                        IO (Decode16,
                        0x0800,             // Range Minimum
                        0x0800,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        )
                        IO (Decode16,
                        0x0900,             // Range Minimum
                        0x0900,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        )
                        IO (Decode16,
                        0x0A00,             // Range Minimum
                        0x0A00,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        )
                        IO (Decode16,
                        0x0B00,             // Range Minimum
                        0x0B00,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        )
                        IO (Decode16,
                        0x1800,             // Range Minimum
                        0x1800,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        )
                        IO (Decode16,
                        0x164E,             // Range Minimum
                        0x164E,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    })
                }
                
                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                        0x0070,             // Range Minimum
                        0x0070,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        )
                        
                    })
                }
                
                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                        0x0040,             // Range Minimum
                        0x0040,             // Range Maximum
                        0x01,               // Alignment
                        0x04,               // Length
                        )
                        IO (Decode16,
                        0x0050,             // Range Minimum
                        0x0050,             // Range Maximum
                        0x10,               // Alignment
                        0x04,               // Length
                        )
                        
                    })
                }
                
                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                        0x1854,             // Range Minimum
                        0x1854,             // Range Maximum
                        0x04,               // Alignment
                        0x04,               // Length
                        )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (WDTE, One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0)
                    }
                }
                
                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8,
                    Offset (0x02),
                    Offset (0x03),
                    Offset (0x04),
                    PKBC,   8
                }
                
                Device (PS2K)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (LEqual (OSYS, 0x07DC))
                        {
                            Return (0x01801122)
                        }
                        Else
                        {
                            Return (0x0303D041)
                        }
                    }
                    
                    Name (_CID, EisaId ("PNP0303"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }
                    
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                        0x0060,             // Range Minimum
                        0x0060,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IO (Decode16,
                        0x0064,             // Range Minimum
                        0x0064,             // Range Maximum
                        0x01,               // Alignment
                        0x01,               // Length
                        )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                        {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                            0x0060,             // Address
                            0x01,               // Length
                            )
                            FixedIO (
                            0x0064,             // Address
                            0x01,               // Length
                            )
                            IRQNoFlags ()
                            {1}
                        }
                        EndDependentFn ()
                    })
                }
                
                Device (PS2M)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (LEqual (DWS1, 0x02))
                        {
                            Return (0x901E2E4F)
                        }
                        Else
                        {
                            Return (0x891E2E4F)
                        }
                    }
                    
                    Name (_CID, Package (0x04)  // _CID: Compatible ID
                    {
                        EisaId ("SYN1E00"),
                        EisaId ("SYN0002"),
                        EisaId ("PNP0F13"),
                        EisaId ("PNP0F03")
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }
                    
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                        {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                            {12}
                        }
                        EndDependentFn ()
                    })
                }
                
                Scope (^^PCI0)
                {
                    Method (GSWS, 1, NotSerialized)
                    {
                        While (^LPCB.APMS)
                        {
                            Stall (One)
                        }
                        
                        Store (Arg0, SSMF)
                        Stall (0x32)
                        While (^LPCB.APMS)
                        {
                            Stall (One)
                        }
                    }
                }
                
                Scope (\_SB)
                {
                    Mutex (MSMI, 0x00)
                    Method (SSMI, 5, NotSerialized)
                    {
                        Acquire (MSMI, 0xFFFF)
                        If (Arg4)
                        {
                            Acquire (_GL, 0xFFFF)
                        }
                        
                        Store (Arg1, EBX)
                        Store (Arg2, ECX)
                        Store (Arg3, EDX)
                        Store (Zero, REFS)
                        ^PCI0.GSWS (Arg0)
                        Store (REFS, Local0)
                        If (Arg4)
                        {
                            Release (_GL)
                        }
                        
                        Release (MSMI)
                        Return (Local0)
                    }
                }
            }
            
            Device (ACEL)
            {
                Name (_HID, EisaId ("HPQ6007"))  // _HID: Hardware ID
                Name (DEPT, 0xFF)
                Name (CTST, 0xFF)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    ITAL ()
                    Store (One, GIFF)
                }
                
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000017,
                    }
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (DEPT, 0xFF))
                    {
                        Store (0x0F, Local0)
                        Store (ALRD (0x20), Local1)
                        If (And (Local1, 0xFF00))
                        {
                            Store (Zero, Local0)
                        }
                        
                        Store (Local0, DEPT)
                    }
                    
                    Return (DEPT)
                }
                
                Method (ITAL, 0, Serialized)
                {
                    If (_STA ())
                    {
                        ALWR (0x20, 0x5F)
                        ALWR (0x21, 0x32)
                        ALWR (0x24, 0x02)
                        ALWR (0x34, 0x7F)
                        ALWR (0x36, 0x07)
                        ALWR (0x37, 0x05)
                        ALWR (0x32, 0x16)
                        ALWR (0x33, 0x02)
                        ALWR (0x30, 0x95)
                        Store (0xFF, CTST)
                        AJAL ()
                    }
                }
                
                Method (AJAL, 0, Serialized)
                {
                    If (_STA ())
                    {
                        P8XH (0x04, 0xD3, One)
                        Store (^^LPCB.H_EC.GACS (), Local0)
                        If (LAnd (LEqual (^^LPCB.H_EC.GLID (), Zero), LEqual (Local0, Zero)))
                        {
                            P8XH (0x04, 0xD4, One)
                            If (LNotEqual (CTST, One))
                            {
                                Store (One, CTST)
                                Sleep (0x0BB8)
                                ALWR (0x24, Zero)
                                ALWR (0x36, 0x14)
                                ALWR (0x37, 0x02)
                                ALWR (0x34, 0x2A)
                                Sleep (One)
                                ALWR (0x22, 0x20)
                            }
                        }
                        Else
                        {
                            P8XH (0x04, 0xD5, One)
                            If (LNotEqual (CTST, Zero))
                            {
                                Store (Zero, CTST)
                                ALWR (0x24, 0x02)
                                ALWR (0x36, 0x07)
                                ALWR (0x37, 0x05)
                                ALWR (0x34, 0x7F)
                                Sleep (One)
                                ALWR (0x22, 0x40)
                            }
                        }
                    }
                }
                
                Method (CLRI, 0, Serialized)
                {
                    Store (Zero, Local2)
                    If (LEqual (^^LPCB.H_EC.GACS (), Zero))
                    {
                        Store (0x04, Local0)
                        Store (0x04, Local1)
                        If (LEqual (^^^BAT0._STA (), 0x1F))
                        {
                            Store (DerefOf (Index (DerefOf (Index (NBST, Zero)), Zero)),
                            Local0)
                        }
                        
                        And (Local0, Local1, Local0)
                        If (And (Local0, 0x04))
                        {
                            Store (One, Local2)
                        }
                    }
                    
                    Return (Local2)
                }
                
                Method (ALRD, 1, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (0x01F4, Local1)
                    While (LAnd (LNotEqual (BATC, Zero), LGreater (Local1, Zero)))
                    {
                        Stall (0x64)
                        Decrement (Local1)
                    }
                    
                    While (One)
                    {
                        Store (ToInteger (Arg0), _T_0)
                        If (LEqual (_T_0, 0x29))
                        {
                            Store (0x9E, MIDX)
                            Store (MDTA, Local0)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x2B))
                            {
                                Store (0x9D, MIDX)
                                Store (MDTA, Local0)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x2D))
                                {
                                    Store (0x9F, MIDX)
                                    Store (MDTA, Local0)
                                }
                                Else
                                {
                                    Store (Arg0, ESBC)
                                    Store (0x20, BATC)
                                    Store (0x01F4, Local1)
                                    While (LAnd (LNotEqual (BATC, Zero), LGreater (Local1, Zero)))
                                    {
                                        Stall (0x64)
                                        Decrement (Local1)
                                    }
                                    
                                    Store (ESBD, Local0)
                                }
                            }
                        }
                        
                        Break
                    }
                    
                    If (LEqual (Arg0, 0x2B))
                    {
                        Not (Local0, Local0)
                        Increment (Local0)
                    }
                    
                    Return (Local0)
                }
                
                Method (ALWR, 2, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (0x01F4, Local1)
                    While (LAnd (LNotEqual (BATC, Zero), LGreater (Local1, Zero)))
                    {
                        Stall (0x64)
                        Decrement (Local1)
                    }
                    
                    While (One)
                    {
                        Store (ToInteger (Arg0), _T_0)
                        If (LEqual (_T_0, 0x29))
                        {
                            Store (0x2B, ESBC)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x2B))
                            {
                                Not (Arg0)
                                Increment (Arg0)
                                Store (0x29, ESBC)
                            }
                            Else
                            {
                                Store (Arg0, ESBC)
                            }
                        }
                        
                        Break
                    }
                    
                    Store (Arg1, ESBD)
                    Store (0x21, BATC)
                    Store (0x01F4, Local1)
                    While (LAnd (LNotEqual (BATC, Zero), LGreater (Local1, Zero)))
                    {
                        Stall (0x64)
                        Decrement (Local1)
                    }
                    
                    Return (Zero)
                }
                
                Method (ALED, 1, Serialized)
                {
                    If (Arg0)
                    {
                        GLSD ()
                        And (^^LPCB.GPL2, 0xFFFEFFFF, ^^LPCB.GPL2)
                        GLRS ()
                    }
                    Else
                    {
                        GLSD ()
                        Or (^^LPCB.GPL2, 0x00010000, ^^LPCB.GPL2)
                        GLRS ()
                    }
                }
                
                Method (ALID, 1, Serialized)
                {
                    Store (Zero, LIDS)
                    If (LEqual (^^LPCB.H_EC.LSTE, One))
                    {
                        Store (One, LIDS)
                    }
                    
                    Return (^^^LID0._LID ())
                }
                
                Method (ADSN, 0, Serialized)
                {
                    Store (Zero, Local0)
                    Return (Local0)
                }
                
                Method (WAKE, 0, Serialized)
                {
                    ALWR (0x20, 0x57)
                    Store (One, GIFF)
                    Store (0xFF, CTST)
                    AJAL ()
                }
            }
        }
        
        Name (NBTI, Package (0x03)
        {
            Package (0x0D)
            {
                One,
                Ones,
                Ones,
                One,
                Ones,
                Zero,
                Zero,
                0x64,
                0x64,
                "Primary",
                "100000",
                "LIon",
                "Hewlett-Packard"
            },
            
            Package (0x0D)
            {
                One,
                Ones,
                Ones,
                One,
                Ones,
                Zero,
                Zero,
                0x64,
                0x64,
                "Travel",
                "100000",
                "LIon",
                "Hewlett-Packard"
            },
            
            Package (0x0D)
            {
                One,
                Ones,
                Ones,
                One,
                Ones,
                Zero,
                Zero,
                0x64,
                0x64,
                "Travel",
                "100000",
                "LIon",
                "Hewlett-Packard"
            }
        })
        Name (NBST, Package (0x02)
        {
            Package (0x04)
            {
                Zero,
                Zero,
                0x0FA0,
                0x04B0
            },
            
            Package (0x04)
            {
                Zero,
                Zero,
                0x0FA0,
                0x04B0
            }
        })
        Name (NDBS, Package (0x04)
        {
            Zero,
            Zero,
            0x0FA0,
            0x04B0
        })
        Name (ACST, One)
        Name (SMAR, Zero)
        Name (BT0P, 0x0F)
        Method (BTIF, 1, Serialized)
        {
            Store (^PCI0.LPCB.H_EC.BTIF (Arg0), Local0)
            If (LEqual (Local0, 0xFF))
            {
                Return (Package (0x0D)
                {
                    Zero,
                    Ones,
                    Ones,
                    One,
                    Ones,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    "",
                    "",
                    "",
                    Zero
                })
            }
            Else
            {
                Return (DerefOf (Index (NBTI, Arg0)))
            }
        }
        
        Name (NFBS, One)
        Method (BTST, 1, Serialized)
        {
            Store (NFBS, Local1)
            If (NFBS)
            {
                Store (Zero, NFBS)
            }
            
            Store (^PCI0.LPCB.H_EC.BTST (Arg0, Local1), Local0)
            Return (DerefOf (Index (NBST, Arg0)))
        }
        
        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Store (^^PCI0.LPCB.H_EC.BSTA (One), Local0)
                Return (Local0)
            }
            
            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Return (BTIF (Zero))
            }
            
            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Return (BTST (Zero))
            }
            
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
        }
        
        Device (AC)
        {
            Name (_HID, "ACPI0003")  // _HID: Hardware ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Method (LDSM, 0, NotSerialized)
            {
                Sleep (0x64)
                If (^^PCI0.RP01.PDCX)
                {
                    Store (One, ^^PCI0.RP01.PDCX)
                    Store (One, ^^PCI0.RP01.HPSX)
                    Notify (^^PCI0.RP01, Zero)
                }
                Else
                {
                    Store (One, ^^PCI0.RP01.HPSX)
                }
            }
            
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                Store (^^PCI0.LPCB.H_EC.GACS (), Local0)
                Store (Local0, PWRS)
                Store (^^PCI0.LPCB.H_EC.GPID (), Local1)
                If (XOr (Local0, ACST)) {}
                If (LOr (LAnd (Local0, LNot (ACST)), LAnd (Local1, LNot (SMAR))))
                {
                    ^^WMID.WGWE (0x03, Zero)
                }
                
                Store (Local0, ACST)
                Store (Local1, SMAR)
                Return (Local0)
            }
        }
        
        Device (WLBU)
        {
            Name (_HID, EisaId ("HPQ6001"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Store (Zero, Local0)
                If (LGreaterEqual (OSYS, 0x07DC))
                {
                    Store (0x0F, Local0)
                }
                
                Return (Local0)
            }
        }
        
        Scope (\_SB)
        {
            Name (ETYP, Buffer (One) {})
            Device (WMID)
            {
                Name (RCDS, Package (0x38)
                {
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    One,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    0x04,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero
                })
                Name (WCDS, Package (0x38)
                {
                    0x04,
                    Zero,
                    Zero,
                    Zero,
                    0x04,
                    Zero,
                    Zero,
                    Zero,
                    0x04,
                    0x04,
                    0x0C,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    0x08,
                    Zero,
                    Zero,
                    Zero,
                    0x04,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    0x04,
                    Zero,
                    0x04,
                    0x04,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    0x04,
                    Zero,
                    Zero,
                    Zero,
                    0x04,
                    0x04,
                    0x04,
                    0x04,
                    0x04,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    0x04,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    0x1D,
                    0x1D,
                    0x04
                })
                Name (RTCC, Zero)
                Name (EVNT, Package (0x03)
                {
                    Package (0x05)
                    {
                        "BIOS Configuration Change",
                        "BIOS Settings",
                        0x04,
                        0x05,
                        0x02
                    },
                    
                    Package (0x05)
                    {
                        "BIOS Configuration Security",
                        "An attempt has been made to Access BIOS features unsuccessfully",
                        0x04,
                        0x0A,
                        0x06
                    },
                    
                    Package (0x05)
                    {
                        "Unknown Event",
                        "Unknown event type",
                        Zero,
                        Zero,
                        Zero
                    }
                })
                Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
                {
                    If (LEqual (Arg0, 0xA0))
                    {
                        If (LEqual (DerefOf (Index (ETYP, Zero)), Zero))
                        {
                            Store (S001, BF2S)
                            Store (BF2S, Index (DerefOf (Index (EVNT, Zero)), One))
                            Return (DerefOf (Index (EVNT, Zero)))
                        }
                        
                        If (LEqual (DerefOf (Index (ETYP, Zero)), One))
                        {
                            Return (DerefOf (Index (EVNT, One)))
                        }
                        Else
                        {
                            Return (DerefOf (Index (EVNT, 0x02)))
                        }
                    }
                    Else
                    {
                        Concatenate (WEI1, WED1, Local0)
                        If (LNotEqual (WEI2, Zero))
                        {
                            Store (WEI2, WEI1)
                            Store (WEI2, WED1)
                            Store (Zero, WEI2)
                            Store (Zero, WED2)
                            If (LEqual (WEVT, Zero))
                            {
                                Store (One, WEVT)
                                 \RMDT.P1("Notify WMID from _WED")
                                Notify (WMID, 0x80)
                            }
                        }
                        Else
                        {
                            Store (Zero, WEI1)
                            Store (Zero, WED1)
                        }
                        
                        Return (Local0)
                    }
                }
                
                Method (GHWI, 2, NotSerialized)
                {
                    Store (Arg0, HWCT)
                    Store (Arg1, HWBC)
                    Store (0xC3, SSMP)
                    If (LNotEqual (HWRC, Zero))
                    {
                        Store (HWRC, RTCC)
                    }
                    
                    Return (Zero)
                }
                
                Method (RDCF, 2, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        Store (Arg0, _T_0)
                        If (LEqual (_T_0, One))
                        {
                            Store (Package (0x03)
                            {
                                Zero,
                                0x04,
                                Buffer (0x04)
                                {
                                    0x00, 0x00, 0x00, 0x00
                                }
                            }, Local0)
                            Store (One, Index (DerefOf (Index (Local0, 0x02)), Zero))
                            Return (Local0)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x05))
                            {
                                Store (Zero, RTCC)
                                Return (GWLS ())
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x07))
                                {
                                    Store (DerefOf (Index (Arg1, 0x10)), Local3)
                                    Store (Zero, RTCC)
                                    Return (GBIN (Local3))
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x08))
                                    {
                                        Store (Zero, RTCC)
                                        Return (GBBH ())
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x09))
                                        {
                                            Store (Zero, RTCC)
                                            Return (GHKS ())
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x0A))
                                            {
                                                Store (Zero, RTCC)
                                                Return (GHKF ())
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x0B))
                                                {
                                                    Store (Package (0x03)
                                                    {
                                                        Zero,
                                                        0x04,
                                                        Buffer (0x04)
                                                        {
                                                            0x00, 0x00, 0x00, 0x00
                                                        }
                                                    }, Local2)
                                                    Store (Zero, RTCC)
                                                    Return (Local2)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x0C))
                                                    {
                                                        Store (Zero, RTCC)
                                                        Return (GBBV ())
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x0D))
                                                        {
                                                            Store (Zero, RTCC)
                                                            Return (GFRT ())
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (_T_0, 0x0F))
                                                            {
                                                                Store (Zero, RTCC)
                                                                Return (GSAS ())
                                                            }
                                                            Else
                                                            {
                                                                If (LEqual (_T_0, 0x10))
                                                                {
                                                                    Store (Zero, RTCC)
                                                                    Return (GWSD ())
                                                                }
                                                                Else
                                                                {
                                                                    If (LEqual (_T_0, 0x13))
                                                                    {
                                                                        Store (Package (0x03)
                                                                        {
                                                                            Zero,
                                                                            0x04,
                                                                            Buffer (0x04)
                                                                            {
                                                                                0x01, 0x00, 0x00, 0x00
                                                                            }
                                                                        }, Local2)
                                                                        Store (Zero, RTCC)
                                                                        Return (Local2)
                                                                    }
                                                                    Else
                                                                    {
                                                                        If (LEqual (_T_0, 0x1B))
                                                                        {
                                                                            If (LGreaterEqual (OSYS, 0x07DC))
                                                                            {
                                                                                Store (Package (0x03)
                                                                                {
                                                                                    Zero,
                                                                                    0x04,
                                                                                    Buffer (0x04)
                                                                                    {
                                                                                        0x00, 0x00, 0x00, 0x00
                                                                                    }
                                                                                }, Local0)
                                                                                Store (0x04, RTCC)
                                                                                Return (Local0)
                                                                            }
                                                                            Else
                                                                            {
                                                                                Store (Zero, RTCC)
                                                                                Return (GWDI ())
                                                                            }
                                                                        }
                                                                        Else
                                                                        {
                                                                            If (LEqual (_T_0, 0x1D))
                                                                            {
                                                                                Store (Zero, RTCC)
                                                                                Return (GDLC ())
                                                                            }
                                                                            Else
                                                                            {
                                                                                If (LEqual (_T_0, 0x0D))
                                                                                {
                                                                                    Store (Zero, RTCC)
                                                                                    Return (GFRT ())
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If (LEqual (_T_0, 0x1E))
                                                                                    {
                                                                                        Store (Zero, RTCC)
                                                                                        Return (GBUS ())
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If (LEqual (_T_0, 0x1F))
                                                                                        {
                                                                                            Return (GBCC ())
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If (LEqual (_T_0, 0x28))
                                                                                            {
                                                                                                CreateDWordField (Arg1, 0x10, DDWD)
                                                                                                Store (Zero, RTCC)
                                                                                                Return (GTDC (DDWD))
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If (LEqual (_T_0, 0x29))
                                                                                                {
                                                                                                    Store (Zero, RTCC)
                                                                                                    Return (GFCC ())
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If (LEqual (_T_0, 0x2A))
                                                                                                    {
                                                                                                        Store (Zero, RTCC)
                                                                                                        Return (GPES ())
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If (LEqual (_T_0, 0x2B))
                                                                                                        {
                                                                                                            Return (GBCO ())
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If (LEqual (_T_0, 0x2C))
                                                                                                            {
                                                                                                                Store (Zero, RTCC)
                                                                                                                Return (GTCS ())
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If (LEqual (_T_0, 0x35))
                                                                                                                {
                                                                                                                    Store (Zero, RTCC)
                                                                                                                    Return (GJOG ())
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    If (LEqual (_T_0, 0x36))
                                                                                                                    {
                                                                                                                        Store (Zero, RTCC)
                                                                                                                        Return (GPST ())
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        If (LEqual (_T_0, 0x37))
                                                                                                                        {
                                                                                                                            Store (Zero, RTCC)
                                                                                                                            Return (GBCT ())
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            If (LEqual (_T_0, 0x38))
                                                                                                                            {
                                                                                                                                Store (Zero, RTCC)
                                                                                                                                Return (GBST ())
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                Store (Package (0x03)
                                                                                                                                {
                                                                                                                                    Zero,
                                                                                                                                    0x04,
                                                                                                                                    Buffer (0x04)
                                                                                                                                    {
                                                                                                                                        0x00, 0x00, 0x00, 0x00
                                                                                                                                    }
                                                                                                                                }, Local0)
                                                                                                                                Store (0x04, RTCC)
                                                                                                                                Return (Local0)
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                        Break
                    }
                }
                
                Method (WRCF, 2, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    CreateDWordField (Arg1, 0x10, DDWD)
                    While (One)
                    {
                        Store (Arg0, _T_0)
                        If (LEqual (_T_0, One))
                        {
                            Store (Zero, RTCC)
                            Return (SVGA (DDWD))
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x09))
                            {
                                Store (Zero, RTCC)
                                Return (SHKS (DDWD))
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x0A))
                                {
                                    Store (Zero, RTCC)
                                    Return (SHKF (DDWD))
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x10))
                                    {
                                        CreateDWordField (Arg1, 0x10, DAB0)
                                        CreateWordField (Arg1, 0x14, DAB1)
                                        CreateWordField (Arg1, 0x16, DAB2)
                                        Store (Zero, RTCC)
                                        Return (SWSD (DAB0, DAB1, DAB2))
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x1B))
                                        {
                                            If (LGreaterEqual (OSYS, 0x07DC))
                                            {
                                                Store (Package (0x03)
                                                {
                                                    Zero,
                                                    0x04,
                                                    Buffer (0x04)
                                                    {
                                                        0x00, 0x00, 0x00, 0x00
                                                    }
                                                }, Local0)
                                                Store (0x04, RTCC)
                                                Return (Local0)
                                            }
                                            Else
                                            {
                                                Store (Zero, RTCC)
                                                Return (SWLS (DDWD))
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x1D))
                                            {
                                                Store (Zero, RTCC)
                                                Return (SDLC (DDWD))
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x1E))
                                                {
                                                    Store (Zero, RTCC)
                                                    Return (SBUS (DDWD))
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x1F))
                                                    {
                                                        Return (SBCC (DDWD))
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x28))
                                                        {
                                                            Store (Zero, RTCC)
                                                            Return (STDC (Arg1))
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (_T_0, 0x29))
                                                            {
                                                                Store (Zero, RTCC)
                                                                Return (SFCC (DDWD))
                                                            }
                                                            Else
                                                            {
                                                                If (LEqual (_T_0, 0x2A))
                                                                {
                                                                    Store (Zero, RTCC)
                                                                    Return (SPES (DDWD))
                                                                }
                                                                Else
                                                                {
                                                                    If (LEqual (_T_0, 0x2B))
                                                                    {
                                                                        Return (SBCO (DDWD))
                                                                    }
                                                                    Else
                                                                    {
                                                                        If (LEqual (_T_0, 0x2C))
                                                                        {
                                                                            Store (Zero, RTCC)
                                                                            Return (STCS (DDWD))
                                                                        }
                                                                        Else
                                                                        {
                                                                            If (LEqual (_T_0, 0x35))
                                                                            {
                                                                                Store (Zero, RTCC)
                                                                                Return (SJOG (DDWD))
                                                                            }
                                                                            Else
                                                                            {
                                                                                If (LEqual (_T_0, 0x36))
                                                                                {
                                                                                    Store (Zero, RTCC)
                                                                                    Return (SPST (Arg1))
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If (LEqual (_T_0, 0x37))
                                                                                    {
                                                                                        Store (Zero, RTCC)
                                                                                        Return (SBCT (Arg1))
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If (LEqual (_T_0, 0x38))
                                                                                        {
                                                                                            Store (Zero, RTCC)
                                                                                            Return (SBST (Arg1))
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            Store (Package (0x03)
                                                                                            {
                                                                                                Zero,
                                                                                                0x04,
                                                                                                Buffer (0x04)
                                                                                                {
                                                                                                    0x00, 0x00, 0x00, 0x00
                                                                                                }
                                                                                            }, Local0)
                                                                                            Store (0x04, RTCC)
                                                                                            Return (Local0)
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                        Break
                    }
                }
                
                Method (GFRT, 0, NotSerialized)
                {
                    Store (Zero, Local0)
                    Store (Zero, Local1)
                    Store (Zero, Local2)
                    Store (Zero, Local4)
                    Store (Package (0x03)
                    {
                        Zero,
                        0x80,
                        Buffer (0x80) {}
                    }, Local3)
                    Or (Local0, 0x02, Local0)
                    Or (Local0, 0x10, Local0)
                    Or (Local0, 0x20, Local0)
                    Or (Local0, 0x80, Local0)
                    And (Local2, 0xFB, Local2)
                    If (And (VTST, 0x20))
                    {
                        Or (Local1, One, Local1)
                    }
                    
                    Or (Local1, 0x10, Local1)
                    Or (Local1, 0x08, Local1)
                    Or (Local2, 0x08, Local2)
                    If (LGreaterEqual (OSYS, 0x07DC))
                    {
                        Or (Local2, One, Local2)
                    }
                    Else
                    {
                        And (Local2, 0xFE, Local2)
                    }
                    
                    If (LEqual (OIFS, One))
                    {
                        Or (Local4, 0x02, Local4)
                    }
                    Else
                    {
                        And (Local4, 0xFD, Local4)
                    }
                    
                    Or (Local4, 0x04, Local4)
                    Store (Local0, Index (DerefOf (Index (Local3, 0x02)), Zero))
                    Store (Local1, Index (DerefOf (Index (Local3, 0x02)), One))
                    Store (Local2, Index (DerefOf (Index (Local3, 0x02)), 0x02))
                    Store (Local4, Index (DerefOf (Index (Local3, 0x02)), 0x03))
                    Return (Local3)
                }
                
                Method (GWSD, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x08,
                        Buffer (0x08)
                        {
                            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        }
                    }, Local0)
                    Store (WSDY, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (ShiftRight (WSDY, 0x08), Index (DerefOf (Index (Local0, 0x02
                    )), One))
                    Store (ShiftRight (WSDY, 0x10), Index (DerefOf (Index (Local0, 0x02
                    )), 0x02))
                    Store (ShiftRight (WSDY, 0x18), Index (DerefOf (Index (Local0, 0x02
                    )), 0x03))
                    Store (WSDM, Index (DerefOf (Index (Local0, 0x02)), 0x04))
                    Store (ShiftRight (WSDM, 0x08), Index (DerefOf (Index (Local0, 0x02
                    )), 0x05))
                    Store (WSDD, Index (DerefOf (Index (Local0, 0x02)), 0x06))
                    Store (ShiftRight (WSDD, 0x08), Index (DerefOf (Index (Local0, 0x02
                    )), 0x07))
                    Return (Local0)
                }
                
                Method (SWSD, 3, NotSerialized)
                {
                    Store (Arg0, WSDY)
                    Store (Arg1, WSDM)
                    Store (Arg2, WSDD)
                    Store (0xD4, SSMP)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (GDLC, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04)
                        {
                            0x00, 0x00, 0x00, 0x00
                        }
                    }, Local0)
                    GHWI (0x1D, One)
                    CreateField (DerefOf (Index (Local0, 0x02)), Zero, 0x20, BUFS)
                    Store (Buffer (0x80) {}, Local1)
                    Store (HWBF, Local1)
                    CreateDWordField (Local1, Zero, HWD1)
                    Store (HWD1, BUFS)
                    Return (Local0)
                }
                
                Method (SDLC, 1, NotSerialized)
                {
                    Store (Buffer (0x80) {}, Local0)
                    CreateDWordField (Local0, Zero, HWD1)
                    Store (Arg0, HWD1)
                    Store (Local0, HWBF)
                    GHWI (0x1D, 0x02)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (GBUS, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04)
                        {
                            0x00, 0x00, 0x00, 0x00
                        }
                    }, Local0)
                    GHWI (0x1E, One)
                    CreateField (DerefOf (Index (Local0, 0x02)), Zero, 0x20, BUFS)
                    Store (Buffer (0x80) {}, Local1)
                    Store (HWBF, Local1)
                    CreateDWordField (Local1, Zero, HWD1)
                    Store (HWD1, BUFS)
                    Return (Local0)
                }
                
                Method (SBUS, 1, NotSerialized)
                {
                    Store (Buffer (0x80) {}, Local0)
                    CreateDWordField (Local0, Zero, HWD1)
                    Store (Arg0, HWD1)
                    Store (Local0, HWBF)
                    GHWI (0x1E, 0x02)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (GTDC, 1, NotSerialized)
                {
                    Store (Buffer (0x80) {}, Local0)
                    CreateDWordField (Local0, Zero, HWD1)
                    Store (Arg0, HWD1)
                    Store (Local0, HWBF)
                    GHWI (0x28, One)
                    Store (Package (0x03)
                    {
                        Zero,
                        0x80,
                        Buffer (0x80) {}
                    }, Local1)
                    CreateField (DerefOf (Index (Local1, 0x02)), Zero, 0x0400, BUFS)
                    Store (Buffer (0x80) {}, Local2)
                    Store (HWBF, Local2)
                    Store (Local2, BUFS)
                    Return (Local1)
                }
                
                Method (STDC, 1, NotSerialized)
                {
                    Store (Buffer (0x80) {}, Local0)
                    CreateField (Arg0, 0x80, 0x0400, BUFS)
                    Store (BUFS, Local0)
                    Store (Local0, HWBF)
                    GHWI (0x28, 0x02)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (GFCC, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04)
                        {
                            0x00, 0x00, 0x00, 0x00
                        }
                    }, Local0)
                    GHWI (0x29, One)
                    CreateField (DerefOf (Index (Local0, 0x02)), Zero, 0x20, BUFS)
                    Store (Buffer (0x80) {}, Local1)
                    Store (HWBF, Local1)
                    CreateDWordField (Local1, Zero, HWD1)
                    Store (HWD1, BUFS)
                    Return (Local0)
                }
                
                Method (SFCC, 1, NotSerialized)
                {
                    Store (Buffer (0x80) {}, Local0)
                    CreateDWordField (Local0, Zero, HWD1)
                    Store (Arg0, HWD1)
                    Store (Local0, HWBF)
                    GHWI (0x29, 0x02)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (GPES, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04)
                        {
                            0x00, 0x00, 0x00, 0x00
                        }
                    }, Local0)
                    GHWI (0x2A, One)
                    CreateField (DerefOf (Index (Local0, 0x02)), Zero, 0x20, BUFS)
                    Store (Buffer (0x80) {}, Local1)
                    Store (HWBF, Local1)
                    CreateDWordField (Local1, Zero, HWD1)
                    Store (HWD1, BUFS)
                    Return (Local0)
                }
                
                Method (SPES, 1, NotSerialized)
                {
                    Store (0x2A, P80H)
                    Store (Buffer (0x80) {}, Local0)
                    CreateDWordField (Local0, Zero, HWD1)
                    Store (Arg0, HWD1)
                    Store (Local0, HWBF)
                    GHWI (0x2A, 0x02)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (CSTA, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04)
                        {
                            0x00, 0x00, 0x00, 0x00
                        }
                    }, Local0)
                    Store (One, IAOR)
                    Store (0xC6, SSMP)
                    If (LEqual (IAOR, One))
                    {
                        Store (0x1C, Index (Local0, Zero))
                    }
                    Else
                    {
                        Store (IAOR, Index (Local0, Zero))
                        Store (And (CDAT, 0xFF), Index (DerefOf (Index (Local0, 0x02
                        )), Zero))
                    }
                    
                    Return (Local0)
                }
                
                Method (CACT, 1, NotSerialized)
                {
                    Store (Package (0x02)
                    {
                        Zero,
                        Zero
                    }, Local0)
                    Store (0x02, IAOR)
                    Store (Arg0, CDAT)
                    Store (0xC6, SSMP)
                    If (LEqual (IAOR, 0x02))
                    {
                        Store (0x1C, Index (Local0, Zero))
                    }
                    Else
                    {
                        Store (IAOR, Index (Local0, Zero))
                    }
                    
                    Store (Zero, CDAT)
                    Return (Local0)
                }
                
                Method (CDAC, 1, NotSerialized)
                {
                    Store (Package (0x02)
                    {
                        Zero,
                        Zero
                    }, Local0)
                    Store (0x03, IAOR)
                    Store (Arg0, CDAT)
                    Store (0xC6, SSMP)
                    If (LEqual (IAOR, 0x03))
                    {
                        Store (0x1C, Index (Local0, Zero))
                    }
                    Else
                    {
                        Store (IAOR, Index (Local0, Zero))
                    }
                    
                    Store (Zero, CDAT)
                    Return (Local0)
                }
                
                Method (GJOG, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04)
                        {
                            0x00, 0x00, 0x00, 0x00
                        }
                    }, Local0)
                    Acquire (^^PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                    If (^^PCI0.LPCB.H_EC.JOGD)
                    {
                        Store (One, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    }
                    Else
                    {
                        Store (Zero, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    }
                    
                    Release (^^PCI0.LPCB.H_EC.ECMX)
                    Return (Local0)
                }
                
                Method (SJOG, 1, NotSerialized)
                {
                    Acquire (^^PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                    Store (And (Arg0, One), ^^PCI0.LPCB.H_EC.JOGD)
                    Release (^^PCI0.LPCB.H_EC.ECMX)
                    Store (Package (0x02)
                    {
                        Zero,
                        Zero
                    }, Local2)
                    Return (Local2)
                }
                
                Method (GTCS, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04) {}
                    }, Local0)
                    Store (^^PCI0.LPCB.H_EC.ACEL, Local1)
                    Store (^^PCI0.LPCB.H_EC.MTST, Local2)
                    Store (One, Local3)
                    Store (^^PCI0.LPCB.H_EC.SHTS, Local4)
                    Or (ShiftLeft (Local2, One), Local1, Local1)
                    Or (ShiftLeft (Local3, 0x02), Local1, Local1)
                    Or (ShiftLeft (Local4, 0x03), Local1, Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (CMST, Index (DerefOf (Index (Local0, 0x02)), One))
                    Store (CDST, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                    Store (Zero, Index (DerefOf (Index (Local0, 0x02)), 0x03))
                    Return (Local0)
                }
                
                Method (STCS, 1, NotSerialized)
                {
                    Store (And (ShiftRight (Arg0, 0x08), 0xFF), ^^PCI0.LPCB.H_EC.MMST)
                    Store (And (ShiftRight (Arg0, 0x08), 0xFF), CMST)
                    Store (And (ShiftRight (Arg0, 0x10), 0xFF), ^^PCI0.LPCB.H_EC.DMST)
                    Store (And (ShiftRight (Arg0, 0x10), 0xFF), CDST)
                    Store (Package (0x02)
                    {
                        Zero,
                        Zero
                    }, Local2)
                    Return (Local2)
                }
                
                Method (GBCO, 0, NotSerialized)
                {
                    Sleep (0x03E8)
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04) {}
                    }, Local0)
                    Acquire (^^PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                    Store (^^PCI0.LPCB.H_EC.BST0, Local2)
                    If (LEqual (^^PCI0.LPCB.H_EC.BDNC, Zero))
                    {
                        Store (Zero, RTCC)
                        If (LEqual (^^PCI0.LPCB.H_EC.BTAP, One))
                        {
                            Store (Zero, Local1)
                            If (And (Local2, 0x02))
                            {
                                If (And (Local2, 0x08))
                                {
                                    Store (0x03, Local1)
                                }
                                Else
                                {
                                    Store (One, Local1)
                                }
                            }
                            
                            If (And (Local2, One))
                            {
                                Store (0x02, Local1)
                            }
                            
                            If (And (Local2, 0x10))
                            {
                                Store (0x04, Local1)
                            }
                        }
                        Else
                        {
                            Store (0xFF, Local1)
                        }
                        
                        Store (Local1, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (0xFF, Index (DerefOf (Index (Local0, 0x02)), One))
                    }
                    Else
                    {
                        Store (0x37, RTCC)
                    }
                    
                    Release (^^PCI0.LPCB.H_EC.ECMX)
                    Return (Local0)
                }
                
                Method (SBCO, 1, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (0x2B, P80H)
                    Acquire (^^PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                    If (LEqual (^^PCI0.LPCB.H_EC.BDNC, Zero))
                    {
                        Store (Zero, RTCC)
                        If (LEqual (And (Arg0, 0xFF), Zero))
                        {
                            While (One)
                            {
                                Store (And (Arg0, 0xFF00), _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (Zero, BATD)
                                    Store (0x3A, BATC)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x0100))
                                    {
                                        Store (One, BATD)
                                        Store (0x3A, BATC)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x0200))
                                        {
                                            And (^^PCI0.LPCB.H_EC.RPWR, 0xFE, ^^PCI0.LPCB.H_EC.RPWR)
                                            Store (0x02, BATD)
                                            Store (0x3A, BATC)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x0300))
                                            {
                                                Store (0x03, BATD)
                                                Store (0x3A, BATC)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x0400))
                                                {
                                                    Store (0x04, BATD)
                                                    Store (0x3A, BATC)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x0500))
                                                    {
                                                        Store (0x05, BATD)
                                                        Store (0x3A, BATC)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                
                                Break
                            }
                        }
                    }
                    Else
                    {
                        Store (0x37, RTCC)
                    }
                    
                    Store (Package (0x02)
                    {
                        Zero,
                        Zero
                    }, Local2)
                    Release (^^PCI0.LPCB.H_EC.ECMX)
                    Return (Local2)
                }
                
                Method (GHKS, 0, NotSerialized)
                {
                    Store (0x19, P80H)
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04) {}
                    }, Local0)
                    Store (0x6E, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Return (Local0)
                }
                
                Method (SHKS, 1, NotSerialized)
                {
                    Store (0x92, P80H)
                    ^^PCI0.LPCB.H_EC.SSHK (Arg0)
                    \RMDT.P2("Notify WMID from SHKS", Arg0)
                    Notify (WMID, 0x80)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (HKFR, 0, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04) {}
                    }, Local0)
                    Store (HKNO, Local1)
                    While (One)
                    {
                        Store (Local1, _T_0)
                        If (LEqual (_T_0, 0x0D))
                        {
                            Store (0x31, Index (DerefOf (Index (Local0, 0x02)), Zero))
                            Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                        }
                        Else
                        {
                            If (LEqual (_T_0, One))
                            {
                                Store (0x9B, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x06))
                                {
                                    Store (0x9D, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                    Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x07))
                                    {
                                        Store (0xB6, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                        Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                                        Store (BRTL, Local3)
                                        Multiply (Local3, 0x0A, Local3)
                                        Store (Local3, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                        Store (0x64, Index (DerefOf (Index (Local0, 0x02)), 0x03))
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x08))
                                        {
                                            Store (0xB7, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                            Store (One, Index (DerefOf (Index (Local0, 0x02)), One))
                                            Store (BRTL, Local3)
                                            Multiply (Local3, 0x0A, Local3)
                                            Store (Local3, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                            Store (0x64, Index (DerefOf (Index (Local0, 0x02)), 0x03))
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x0B))
                                            {
                                                Store (0x9C, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                                Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                        Break
                    }
                    
                    Store (Zero, HKNO)
                    Return (Local0)
                }
                
                Method (GHKF, 0, NotSerialized)
                {
                    Store (0x1A, P80H)
                    Return (HKFR ())
                }
                
                Method (SHKF, 1, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (0x2A, P80H)
                    While (One)
                    {
                        Store (Arg0, _T_0)
                        If (LEqual (_T_0, 0x01AE))
                        {
                            Store (0x04, HKNO)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x0131))
                            {
                                Store (0x0D, HKNO)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x019D))
                                {
                                    Store (0x06, HKNO)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x01B6))
                                    {
                                        Store (0x07, HKNO)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x01B7))
                                        {
                                            Store (0x08, HKNO)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x019B))
                                            {
                                                Store (0x08, HKNO)
                                            }
                                            Else
                                            {
                                                Store (Zero, HKNO)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                        Break
                    }
                    
                    Return (HKFR ())
                }
                
                Method (GBBV, 0, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (0x1C, P80H)
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04) {}
                    }, Local0)
                    Store (HKNO, Local1)
                    While (One)
                    {
                        Store (Local1, _T_0)
                        If (LEqual (_T_0, 0x16))
                        {
                            Store (0x42, Index (DerefOf (Index (Local0, 0x02)), Zero))
                            Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0xFF))
                            {
                                Store (0xE6, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                Store (0x20, Index (DerefOf (Index (Local0, 0x02)), One))
                            }
                            Else
                            {
                                If (LNotEqual (Match (Package (0x03)
                                {
                                    0x18,
                                    0x1A,
                                    0x19
                                }, MEQ, _T_0, MTR, Zero, Zero), Ones))
                                {
                                    Store (0x90, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                    Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                                    If (Zero)
                                    {
                                        Store (0x02, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                    }
                                    Else
                                    {
                                        Store (Zero, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                    }
                                }
                                Else
                                {
                                    If (LNotEqual (Match (Package (0x02)
                                    {
                                        0x1D,
                                        0x1B
                                    }, MEQ, _T_0, MTR, Zero, Zero), Ones))
                                    {
                                        Store (0x92, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                        Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                                        If (Zero)
                                        {
                                            Store (0x02, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                        }
                                        Else
                                        {
                                            Store (Zero, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x1E))
                                        {
                                            Store (0x93, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                            Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                                            If (Zero)
                                            {
                                                Store (0x02, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                            }
                                            Else
                                            {
                                                Store (Zero, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x1C))
                                            {
                                                Store (0x91, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                                Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                                                If (Zero)
                                                {
                                                    Store (0x02, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                                }
                                                Else
                                                {
                                                    Store (Zero, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                                                }
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x78))
                                                {
                                                    Store (0xA0, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                                    Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x0B))
                                                    {
                                                        Store (0x9C, Index (DerefOf (Index (Local0, 0x02)), Zero))
                                                        Store (0x21, Index (DerefOf (Index (Local0, 0x02)), One))
                                                        Store (Zero, HKNO)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                        Break
                    }
                    
                    Return (Local0)
                }
                
                Method (GSAS, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04) {}
                    }, Local0)
                    Store (^^PCI0.LPCB.H_EC.GPID (), Local1)
                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Return (Local0)
                }
                
                Method (GWDI, 0, NotSerialized)
                {
                    Name (WBST, Package (0x01)
                    {
                        0x1483
                    })
                    Name (WWST, Package (0x01)
                    {
                        0xFFFF
                    })
                    Name (WMST, Package (0x01)
                    {
                        0x1315
                    })
                    Name (WMDT, Package (0x01)
                    {
                        0x0886
                    })
                    Store (Zero, Local2)
                    Store (0x10, Local0)
                    Store (Buffer (0x10)
                    {
                        /* 0000 */   0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                    }, Local6)
                    CreateByteField (Local6, 0x02, GWL2)
                    CreateByteField (Local6, 0x06, GWL6)
                    CreateByteField (Local6, 0x07, GWL7)
                    If (LAnd (LOr (LNotEqual (WLVD, 0xFFFF), LNotEqual (WLDD,
                    0xFFFF)), LOr (LNotEqual (WLVD, Zero), LNotEqual (WLDD, Zero))))
                    {
                        Store (Buffer (0x10)
                        {
                            /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        }, Local1)
                        Store (And (WLVD, 0xFF), Index (Local1, 0x02))
                        Store (And (ShiftRight (WLVD, 0x08), 0xFF), Index (Local1,
                        0x03))
                        Store (And (WLDD, 0xFF), Index (Local1, 0x04))
                        Store (And (ShiftRight (WLDD, 0x08), 0xFF), Index (Local1,
                        0x05))
                        Store (And (WLSV, 0xFF), Index (Local1, 0x06))
                        Store (And (ShiftRight (WLSV, 0x08), 0xFF), Index (Local1,
                        0x07))
                        Store (And (WLSS, 0xFF), Index (Local1, 0x08))
                        Store (And (ShiftRight (WLSS, 0x08), 0xFF), Index (Local1,
                        0x09))
                        Store (Zero, Index (Local1, 0x0A))
                        If (LNotEqual (Match (WBST, MEQ, WLSS, MTR, Zero, Zero),
                        Ones))
                        {
                            Store (0x05, Index (Local1, 0x0A))
                        }
                        
                        If (LAnd (LNotEqual (Match (WMST, MEQ, WLSS, MTR, Zero,
                        Zero), Ones), LNotEqual (Match (WMDT, MEQ, WLDD, MTR, Zero, Zero),
                        Ones)))
                        {
                            Store (0x08, Index (Local1, 0x0A))
                        }
                        
                        Store (WLRF, Local4)
                        Or (ShiftLeft (WLST, One), Local4, Local4)
                        Or (0x04, Local4, Local4)
                        Or (ShiftLeft (BTLS, 0x03), Local4, Local4)
                        Store (Local4, Index (Local1, 0x0B))
                        If (LEqual (Local0, 0x10))
                        {
                            Store (Local1, Local2)
                        }
                        Else
                        {
                            Concatenate (Local2, Local1, Local3)
                            Store (Local3, Local2)
                        }
                        
                        Add (Local0, 0x10, Local0)
                        Increment (GWL7)
                        Increment (GWL6)
                    }
                    
                    If (LAnd (LOr (LNotEqual (BTVD, 0xFFFF), LNotEqual (BTDD,
                    0xFFFF)), LOr (LNotEqual (BTVD, Zero), LNotEqual (BTDD, Zero))))
                    {
                        Store (Buffer (0x10)
                        {
                            /* 0000 */   0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        }, Local1)
                        Store (And (BTVD, 0xFF), Index (Local1, 0x02))
                        Store (And (ShiftRight (BTVD, 0x08), 0xFF), Index (Local1,
                        0x03))
                        Store (And (BTDD, 0xFF), Index (Local1, 0x04))
                        Store (And (ShiftRight (BTDD, 0x08), 0xFF), Index (Local1,
                        0x05))
                        Store (One, Index (Local1, 0x0A))
                        Increment (GWL6)
                        If (LNotEqual (Match (WBST, MEQ, WLSS, MTR, Zero, Zero),
                        Ones))
                        {
                            Store (0x05, Index (Local1, 0x0A))
                            Decrement (GWL6)
                        }
                        
                        Store (BTON, Local4)
                        Or (ShiftLeft (BLTH, One), Local4, Local4)
                        Or (0x04, Local4, Local4)
                        Or (ShiftLeft (BTLS, 0x03), Local4, Local4)
                        Store (Local4, Index (Local1, 0x0B))
                        If (LEqual (Local0, 0x10))
                        {
                            Store (Local1, Local2)
                        }
                        Else
                        {
                            Concatenate (Local2, Local1, Local3)
                            Store (Local3, Local2)
                        }
                        
                        Add (Local0, 0x10, Local0)
                        Increment (GWL7)
                    }
                    
                    If (LAnd (LOr (LNotEqual (WWVD, 0xFFFF), LNotEqual (WWDD,
                    0xFFFF)), LOr (LNotEqual (WWVD, Zero), LNotEqual (WWDD, Zero))))
                    {
                        If (LAnd (LEqual (WWVD, 0x03F0), LEqual (WWDD, 0x241D)))
                        {
                            Store (0x251D, WWDD)
                        }
                        
                        Store (Buffer (0x10)
                        {
                            /* 0000 */   0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        }, Local1)
                        Store (And (WWVD, 0xFF), Index (Local1, 0x02))
                        Store (And (ShiftRight (WWVD, 0x08), 0xFF), Index (Local1,
                        0x03))
                        Store (And (WWDD, 0xFF), Index (Local1, 0x04))
                        Store (And (ShiftRight (WWDD, 0x08), 0xFF), Index (Local1,
                        0x05))
                        Store (0x02, Index (Local1, 0x0A))
                        Increment (GWL6)
                        If (LNotEqual (Match (WWST, MEQ, WLSS, MTR, Zero, Zero),
                        Ones))
                        {
                            Store (0x07, Index (Local1, 0x0A))
                            Decrement (GWL6)
                        }
                        
                        Store (Index (Local1, 0x0B), Local4)
                        Store (Index (Local1, 0x0C), Local5)
                        Store (WAON, Local4)
                        Or (ShiftLeft (WWAN, One), Local4, Local4)
                        Or (0x04, Local4, Local4)
                        Or (ShiftLeft (BTLS, 0x03), Local4, Local4)
                        Store (Local4, Index (Local1, 0x0B))
                        If (^^PCI0.LPCB.H_EC.BTAP)
                        {
                            And (Local4, 0xFE, Local5)
                            Store (Local5, Index (Local1, 0x0C))
                            If (LAnd (WWAN, BTLS))
                            {
                                And (Local4, 0x7F, Local4)
                                And (Local5, 0xFE, Local5)
                                Store (Local4, Index (Local1, 0x0B))
                                Store (Local5, Index (Local1, 0x0C))
                            }
                            Else
                            {
                                Or (Local4, 0x80, Local4)
                                Store (Local4, Index (Local1, 0x0B))
                                And (Local5, 0xFE, Local5)
                                Store (Local5, Index (Local1, 0x0C))
                            }
                        }
                        Else
                        {
                            Or (Local4, 0x80, Local4)
                            Or (Local5, One, Local5)
                            Store (Local4, Index (Local1, 0x0B))
                            Store (Local5, Index (Local1, 0x0C))
                        }
                        
                        If (LEqual (Local0, 0x10))
                        {
                            Store (Local1, Local2)
                        }
                        Else
                        {
                            Concatenate (Local2, Local1, Local3)
                            Store (Local3, Local2)
                        }
                        
                        Add (Local0, 0x10, Local0)
                        Increment (GWL7)
                        Increment (GWL6)
                        Or (GWL2, One, GWL2)
                    }
                    
                    If (LAnd (LOr (LNotEqual (GPVD, 0xFFFF), LNotEqual (GPDD,
                    0xFFFF)), LOr (LNotEqual (GPVD, Zero), LNotEqual (GPDD, Zero))))
                    {
                        If (LAnd (LEqual (GPVD, 0x03F0), LEqual (GPDD, 0x241D)))
                        {
                            Store (0x251D, GPDD)
                        }
                        
                        Store (Buffer (0x10)
                        {
                            /* 0000 */   0x03, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        }, Local1)
                        Store (And (GPVD, 0xFF), Index (Local1, 0x02))
                        Store (And (ShiftRight (GPVD, 0x08), 0xFF), Index (Local1,
                        0x03))
                        Store (And (GPDD, 0xFF), Index (Local1, 0x04))
                        Store (And (ShiftRight (GPDD, 0x08), 0xFF), Index (Local1,
                        0x05))
                        Store (0x02, Index (Local1, 0x0A))
                        Store (Index (Local1, 0x0B), Local4)
                        Store (Index (Local1, 0x0C), Local5)
                        Store (WAON, Local4)
                        Or (ShiftLeft (WWAN, One), Local4, Local4)
                        Or (0x04, Local4, Local4)
                        Or (ShiftLeft (BTLS, 0x03), Local4, Local4)
                        Store (Local4, Index (Local1, 0x0B))
                        If (^^PCI0.LPCB.H_EC.BTAP)
                        {
                            And (Local4, 0xFE, Local5)
                            Store (Local5, Index (Local1, 0x0C))
                            If (LAnd (WWAN, BTLS))
                            {
                                And (Local4, 0x7F, Local4)
                                And (Local5, 0xFE, Local5)
                                Store (Local4, Index (Local1, 0x0B))
                                Store (Local5, Index (Local1, 0x0C))
                            }
                            Else
                            {
                                Or (Local4, 0x80, Local4)
                                Store (Local4, Index (Local1, 0x0B))
                                And (Local5, 0xFE, Local5)
                                Store (Local5, Index (Local1, 0x0C))
                            }
                        }
                        Else
                        {
                            Or (Local4, 0x80, Local4)
                            Or (Local5, One, Local5)
                            Store (Local4, Index (Local1, 0x0B))
                            Store (Local5, Index (Local1, 0x0C))
                        }
                        
                        If (LEqual (Local0, 0x10))
                        {
                            Store (Local1, Local2)
                        }
                        Else
                        {
                            Concatenate (Local2, Local1, Local3)
                            Store (Local3, Local2)
                        }
                        
                        Add (Local0, 0x10, Local0)
                        Increment (GWL7)
                        Increment (GWL6)
                        Or (GWL2, 0x02, GWL2)
                    }
                    
                    If (LAnd (LOr (LNotEqual (WIVD, 0xFFFF), LNotEqual (WIDD,
                    0xFFFF)), LOr (LNotEqual (WIVD, Zero), LNotEqual (WIDD, Zero))))
                    {
                        Store (Buffer (0x10)
                        {
                            /* 0000 */   0x04, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        }, Local1)
                        Store (And (WIVD, 0xFF), Index (Local1, 0x02))
                        Store (And (ShiftRight (WIVD, 0x08), 0xFF), Index (Local1,
                        0x03))
                        Store (And (WIDD, 0xFF), Index (Local1, 0x04))
                        Store (And (ShiftRight (WIDD, 0x08), 0xFF), Index (Local1,
                        0x05))
                        Store (0x04, Index (Local1, 0x0A))
                        Increment (GWL6)
                        If (LNotEqual (Match (WWST, MEQ, WLSS, MTR, Zero, Zero),
                        Ones))
                        {
                            Store (0x08, Index (Local1, 0x0A))
                            Decrement (GWL6)
                        }
                        
                        If (LEqual (Local0, 0x10))
                        {
                            Store (Local1, Local2)
                        }
                        Else
                        {
                            Concatenate (Local2, Local1, Local3)
                            Store (Local3, Local2)
                        }
                        
                        Add (Local0, 0x10, Local0)
                        Increment (GWL7)
                        Or (GWL2, 0x02, GWL2)
                    }
                    
                    If (LEqual (Local0, 0x10))
                    {
                        Store (Local6, Local1)
                    }
                    Else
                    {
                        Concatenate (Local6, Local2, Local1)
                    }
                    
                    Store (Package (0x03) {}, Local3)
                    Store (Zero, Index (Local3, Zero))
                    Store (Local0, Index (Local3, One))
                    Store (Local1, Index (Local3, 0x02))
                    Return (Local3)
                }
                
                Method (GBCC, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04) {}
                    }, Local0)
                    Store (^^PCI0.LPCB.H_EC.BST1, Local1)
                    Acquire (^^PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                    If (LAnd (LEqual (^^PCI0.LPCB.H_EC.RPWR, One), LEqual (^^PCI0.LPCB.H_EC.BTAP, One)))
                    {
                        Store (Zero, RTCC)
                        And (Local1, One, Local2)
                        And (Local1, 0x80, Local3)
                        And (Local1, 0x02, Local1)
                        Or (Local1, ShiftLeft (Local2, 0x02), Local1)
                        Or (Local1, ShiftRight (Local3, 0x07), Local1)
                        If (LEqual (Local3, Zero))
                        {
                            Store (One, Local1)
                        }
                        Else
                        {
                            And (Local1, 0x06, Local1)
                        }
                        
                        Store (Local1, Index (DerefOf (Index (Local0, 0x02)), Zero))
                        Store (0xFF, Index (DerefOf (Index (Local0, 0x02)), One))
                    }
                    Else
                    {
                        Store (0x35, RTCC)
                    }
                    
                    Release (^^PCI0.LPCB.H_EC.ECMX)
                    Return (Local0)
                }
                
                Method (GWLS, 0, NotSerialized)
                {
                    Name (GWLS, Buffer (0x04)
                    {
                        0x00, 0x00, 0x00, 0x00
                    })
                    CreateByteField (GWLS, Zero, GWL0)
                    CreateByteField (GWLS, One, GWL1)
                    CreateByteField (GWLS, 0x02, GWL2)
                    CreateByteField (GWLS, 0x03, GWL3)
                    Store (0x52, P80H)
                    Store (0x20, GWL0)
                    If (LAnd (LOr (LNotEqual (WLVD, 0xFFFF), LNotEqual (WLDD,
                    0xFFFF)), LOr (LNotEqual (WLVD, Zero), LNotEqual (WLDD, Zero))))
                    {
                        Or (GWL0, One, GWL0)
                        Store (WLRF, GWL1)
                        Or (ShiftLeft (WLST, One), GWL1, GWL1)
                        Or (0x04, GWL1, GWL1)
                        Or (ShiftLeft (BTLS, 0x03), GWL1, GWL1)
                        Store (0x54, P80H)
                    }
                    
                    If (LAnd (LOr (LNotEqual (BTVD, 0xFFFF), LNotEqual (BTDD,
                    0xFFFF)), LOr (LNotEqual (BTVD, Zero), LNotEqual (BTDD, Zero))))
                    {
                        Or (GWL0, 0x02, GWL0)
                        Store (BTON, GWL2)
                        Or (ShiftLeft (BLTH, One), GWL2, GWL2)
                        Or (0x04, GWL2, GWL2)
                        Or (ShiftLeft (BTLS, 0x03), GWL2, GWL2)
                        Store (0x55, P80H)
                    }
                    
                    If (LAnd (LOr (LNotEqual (WWVD, 0xFFFF), LNotEqual (WWDD,
                    0xFFFF)), LOr (LNotEqual (WWVD, Zero), LNotEqual (WWDD, Zero))))
                    {
                        Or (GWL0, 0x6C, GWL0)
                        Store (WWRF, GWL3)
                        Or (ShiftLeft (WWAN, One), GWL3, GWL3)
                        Or (0x04, GWL3, GWL3)
                        Or (ShiftLeft (BTLS, 0x03), GWL3, GWL3)
                    }
                    
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04)
                        {
                            0x01, 0x02, 0x03, 0x04
                        }
                    }, Local0)
                    Store (GWL0, Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (GWL1, Index (DerefOf (Index (Local0, 0x02)), One))
                    Store (GWL2, Index (DerefOf (Index (Local0, 0x02)), 0x02))
                    Store (GWL3, Index (DerefOf (Index (Local0, 0x02)), 0x03))
                    Return (Local0)
                }
                
                Method (GBIN, 1, NotSerialized)
                {
                    If (LLess (Arg0, SizeOf (NBTI)))
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            If (LEqual (And (^^PCI0.LPCB.H_EC.BTAP, One), One))
                            {
                                Store (Zero, RTCC)
                                Return (^^PCI0.LPCB.H_EC.GBTI (Arg0))
                            }
                            Else
                            {
                                Store (0x34, RTCC)
                                Return (^^PCI0.LPCB.H_EC.GBTI (Arg0))
                            }
                        }
                        Else
                        {
                            If (LEqual (Arg0, One))
                            {
                                If (LEqual (And (^^PCI0.LPCB.H_EC.BTAP, 0x02), 0x02))
                                {
                                    Store (Zero, RTCC)
                                    Return (^^PCI0.LPCB.H_EC.GBTI (Arg0))
                                }
                                Else
                                {
                                    Store (0x34, RTCC)
                                    Return (^^PCI0.LPCB.H_EC.GBTI (Arg0))
                                }
                            }
                            Else
                            {
                                Store (0x34, RTCC)
                                Return (^^PCI0.LPCB.H_EC.GBTI (Arg0))
                            }
                        }
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x04,
                            Zero
                        })
                    }
                }
                
                Method (GBBH, 0, NotSerialized)
                {
                    Store (0x18, P80H)
                    Store ("Retrun Beze function table", Debug)
                    Store (0x14, Local0)
                    Store (Buffer (0x0C)
                    {
                        /* 0000 */   0x31, 0x01, 0xAE, 0x01, 0x9B, 0x01, 0xB6, 0x01,
                        /* 0008 */   0xB7, 0x01, 0x69, 0x02
                    }, Local1)
                    Concatenate (Local1, Buffer (0x0A)
                    {
                        /* 0000 */   0xFF, 0xFF, 0x9A, 0x21, 0x9B, 0x21, 0x9C, 0x21,
                        /* 0008 */   0x00, 0x00
                    }, Local2)
                    Store (Package (0x03) {}, Local3)
                    Store (Zero, Index (Local3, Zero))
                    Store (Local0, Index (Local3, One))
                    Store (Local2, Index (Local3, 0x02))
                    Return (Local3)
                }
                
                Method (SVGA, 1, NotSerialized)
                {
                    Store (0x21, P80H)
                    And (Arg0, 0x03, Local0)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (SWLS, 1, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (PWCN, 0xFF)
                    Store (ShiftRight (And (Arg0, 0x00FF0000), 0x10), PWCN)
                    Name (RQDS, 0xFF)
                    Store (ShiftRight (And (Arg0, 0xFF000000), 0x18), RQDS)
                    While (One)
                    {
                        Store (PWCN, _T_0)
                        If (LEqual (_T_0, One))
                        {
                            GLSD ()
                            Store (RQDS, BLTH)
                            Store (RQDS, WL2F)
                            GLRS ()
                        }
                        Else
                        {
                            If (LEqual (_T_0, Zero))
                            {
                                GLSD ()
                                Store (RQDS, WLRF)
                                Store (RQDS, WARF)
                                Store (RQDS, WLON)
                                Store (RQDS, WLST)
                                GLRS ()
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x02))
                                {
                                    Acquire (^^PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                                    Store (RQDS, WWAN)
                                    If (LEqual (^^PCI0.LPCB.H_EC.BTAP, One))
                                    {
                                        GLSD ()
                                        Store (LNot (RQDS), WWOF)
                                        Store (RQDS, WAON)
                                        Sleep (0x32)
                                        Store (RQDS, WWRF)
                                        GLRS ()
                                    }
                                    
                                    Release (^^PCI0.LPCB.H_EC.ECMX)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x03)) {}
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x04))
                                        {
                                            GLSD ()
                                            Store (RQDS, WLRF)
                                            Store (RQDS, WARF)
                                            Store (RQDS, WLON)
                                            Store (RQDS, WLST)
                                            GLRS ()
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x05))
                                            {
                                                GLSD ()
                                                Store (RQDS, BLTH)
                                                Store (RQDS, WLRF)
                                                Store (RQDS, WARF)
                                                Store (RQDS, WLON)
                                                Store (RQDS, WL2F)
                                                Store (RQDS, WLST)
                                                GLRS ()
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x08))
                                                {
                                                    GLSD ()
                                                    Store (RQDS, BLTH)
                                                    Store (RQDS, WLRF)
                                                    Store (RQDS, WARF)
                                                    Store (RQDS, WLON)
                                                    Store (RQDS, WL2F)
                                                    Store (RQDS, WLST)
                                                    GLRS ()
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x09)) {}
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x07))
                                                        {
                                                            GLSD ()
                                                            Store (RQDS, WLRF)
                                                            Store (RQDS, WARF)
                                                            Store (RQDS, WLON)
                                                            Store (RQDS, WL2F)
                                                            Store (RQDS, WLST)
                                                            Store (LNot (RQDS), WWOF)
                                                            Store (RQDS, WAON)
                                                            Store (RQDS, WWAN)
                                                            Sleep (0x32)
                                                            Store (RQDS, WWRF)
                                                            GLRS ()
                                                        }
                                                        Else
                                                        {
                                                            If (LNotEqual (Match (Package (0x02)
                                                            {
                                                                0xFE,
                                                                0xFF
                                                            }, MEQ, _T_0, MTR, Zero, Zero), Ones))
                                                            {
                                                                GLSD ()
                                                                Store (RQDS, BLTH)
                                                                Store (RQDS, WLRF)
                                                                Store (RQDS, WARF)
                                                                Store (RQDS, WLON)
                                                                Store (RQDS, WL2F)
                                                                Store (RQDS, WLST)
                                                                Acquire (^^PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                                                                Store (RQDS, WWAN)
                                                                If (LEqual (^^PCI0.LPCB.H_EC.BTAP, One))
                                                                {
                                                                    Store (LNot (RQDS), WWOF)
                                                                    Store (RQDS, WAON)
                                                                    Sleep (0x32)
                                                                    Store (RQDS, WWRF)
                                                                }
                                                                
                                                                Release (^^PCI0.LPCB.H_EC.ECMX)
                                                                GLRS ()
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                        Break
                    }
                    
                    Store (Package (0x02)
                    {
                        Zero,
                        Zero
                    }, Local2)
                    WGWE (0x05, Zero)
                    Return (Local2)
                }
                
                Method (SBCC, 1, Serialized)
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Acquire (^^PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                    While (One)
                    {
                        Store (And (Arg0, 0xFF), _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            Store (Zero, RTCC)
                            While (One)
                            {
                                Store (And (Arg0, 0xFF00), _T_1)
                                If (LEqual (_T_1, 0x0100))
                                {
                                    Store (0x10, BATD)
                                    Store (0x3D, BATC)
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x0200))
                                    {
                                        Store (0x10, BATD)
                                        Store (0x3D, BATC)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_1, 0x0400))
                                        {
                                            Store (0x02, BATD)
                                            Store (0x3D, BATC)
                                        }
                                    }
                                }
                                
                                Break
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_0, One))
                            {
                                Store (0x34, RTCC)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x63))
                                {
                                    Store (0x03, RTCC)
                                }
                            }
                        }
                        
                        Break
                    }
                    
                    Store (Package (0x02)
                    {
                        Zero,
                        Zero
                    }, Local2)
                    Release (^^PCI0.LPCB.H_EC.ECMX)
                    Return (Local2)
                }
                
                Method (GPST, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x80,
                        Buffer (0x80) {}
                    }, Local0)
                    CreateField (DerefOf (Index (Local0, 0x02)), Zero, 0x0400, BUFS)
                    Store (BUFS, HWBF)
                    GHWI (0x36, One)
                    Store (HWBF, BUFS)
                    Return (Local0)
                }
                
                Method (SPST, 1, NotSerialized)
                {
                    Store (Buffer (0x80) {}, Local0)
                    CreateField (Arg0, 0x80, 0x0400, BUFS)
                    Store (BUFS, Local0)
                    Store (Local0, HWBF)
                    GHWI (0x36, 0x02)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (GBCT, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x80,
                        Buffer (0x80) {}
                    }, Local0)
                    CreateField (DerefOf (Index (Local0, 0x02)), Zero, 0x0400, BUFS)
                    Store (BUFS, HWBF)
                    GHWI (0x37, One)
                    Store (HWBF, BUFS)
                    Return (Local0)
                }
                
                Method (SBCT, 1, NotSerialized)
                {
                    Store (Buffer (0x80) {}, Local0)
                    CreateField (Arg0, 0x80, 0x0400, BUFS)
                    Store (BUFS, Local0)
                    Store (Local0, HWBF)
                    GHWI (0x37, 0x02)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (GBST, 0, NotSerialized)
                {
                    Store (Package (0x03)
                    {
                        Zero,
                        0x04,
                        Buffer (0x04)
                        {
                            0x00, 0x00, 0x00, 0x00
                        }
                    }, Local0)
                    GHWI (0x38, One)
                    CreateField (DerefOf (Index (Local0, 0x02)), Zero, 0x20, BUFS)
                    Store (Buffer (0x80) {}, Local1)
                    Store (HWBF, Local1)
                    CreateDWordField (Local1, Zero, HWD1)
                    Store (HWD1, BUFS)
                    Return (Local0)
                }
                
                Method (SBST, 1, NotSerialized)
                {
                    Store (Buffer (0x04) {}, Local0)
                    CreateDWordField (Arg0, 0x10, BUFS)
                    Store (BUFS, Local0)
                    Store (Local0, HWBF)
                    GHWI (0x38, 0x02)
                    Return (Package (0x02)
                    {
                        Zero,
                        Zero
                    })
                }
                
                Method (TBCD, 1, NotSerialized)
                {
                    If (LEqual (Arg0, 0xFF))
                    {
                        Store (Arg0, Local0)
                    }
                    Else
                    {
                        ToBCD (Arg0, Local0)
                    }
                    
                    Return (Local0)
                }
                
                Method (TINT, 1, NotSerialized)
                {
                    If (LEqual (Arg0, 0xFF))
                    {
                        Store (Arg0, Local0)
                    }
                    Else
                    {
                        FromBCD (Arg0, Local0)
                    }
                    
                    Return (Local0)
                }
                
                Method (PSCK, 2, NotSerialized)
                {
                    CreateByteField (Arg1, 0x10, WD00)
                    If (LNotEqual (WD00, 0x1D))
                    {
                        Return (0x06)
                    }
                    
                    Store (Buffer (0x1C) {}, Local0)
                    CreateField (Arg1, 0x88, 0xE0, BUFS)
                    Store (BUFS, Local0)
                    Store (Zero, Local3)
                    While (LLess (Local3, 0x1C))
                    {
                        If (LOr (LNotEqual (DerefOf (Index (Local0, Local3)), 0xFF),
                        LNotEqual (DerefOf (Index (Local0, Add (Local3, One))), 0xFF)))
                        {
                            If (LGreater (DerefOf (Index (Local0, Local3)), 0x23))
                            {
                                Return (0x06)
                            }
                            
                            If (LGreater (DerefOf (Index (Local0, Add (Local3, One))),
                            0x59))
                            {
                                Return (0x06)
                            }
                        }
                        
                        Add (Local3, 0x02, Local3)
                    }
                    
                    Store (Buffer (0x1C) {}, Local1)
                    If (LEqual (Arg0, 0x36))
                    {
                        Store (PSBC, Local1)
                    }
                    Else
                    {
                        Store (PSTM, Local1)
                    }
                    
                    Store (Zero, Local3)
                    While (LLess (Local3, 0x1C))
                    {
                        Add (ShiftLeft (DerefOf (Index (Local0, Local3)), 0x08), DerefOf (
                        Index (Local0, Add (Local3, One))), Local4)
                        Add (ShiftLeft (DerefOf (Index (Local0, Add (Local3, 0x02))),
                        0x08), DerefOf (Index (Local0, Add (Local3, 0x03))), Local5)
                        If (LNotEqual (LEqual (Local4, 0xFFFF), LEqual (Local5, 0xFFFF)))
                        {
                            Return (0x06)
                        }
                        
                        If (LGreater (Local4, Local5))
                        {
                            Return (0x06)
                        }
                        
                        Add (ShiftLeft (TBCD (DerefOf (Index (Local1, Local3))), 0x08),
                        TBCD (DerefOf (Index (Local1, Add (Local3, One)))), Local6)
                        Add (ShiftLeft (TBCD (DerefOf (Index (Local1, Add (Local3, 0x02)
                        ))), 0x08), TBCD (DerefOf (Index (Local1, Add (Local3, 0x03)
                        ))), Local7)
                        If (LAnd (LNotEqual (Local4, 0xFFFF), LNotEqual (Local5, 0xFFFF)))
                        {
                            If (LAnd (LNotEqual (Local6, 0xFFFF), LNotEqual (Local7, 0xFFFF)))
                            {
                                If (LLess (Local4, Local6))
                                {
                                    If (LGreater (Local5, Local6))
                                    {
                                        Return (0x39)
                                    }
                                }
                                Else
                                {
                                    If (LAnd (LGreaterEqual (Local4, Local6), LLess (Local4, Local7)))
                                    {
                                        Return (0x39)
                                    }
                                }
                            }
                        }
                        
                        Add (Local3, 0x04, Local3)
                    }
                    
                    Return (Zero)
                }
                
                Method (WHCM, 2, Serialized)
                {
                    Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    CreateDWordField (Arg1, Zero, SNIN)
                    CreateDWordField (Arg1, 0x04, COMD)
                    CreateDWordField (Arg1, 0x08, CMTP)
                    CreateDWordField (Arg1, 0x0C, DASI)
                    While (One)
                    {
                        Store (Arg0, _T_0)
                        If (LEqual (_T_0, One))
                        {
                            Store (Zero, Local0)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x02))
                            {
                                Store (0x04, Local0)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x03))
                                {
                                    Store (0x80, Local0)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x04))
                                    {
                                        Store (0x0400, Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x05))
                                        {
                                            Store (0x1000, Local0)
                                        }
                                    }
                                }
                            }
                        }
                        
                        Break
                    }
                    
                    Store (Buffer (Add (0x08, Local0)) {}, Local1)
                    CreateDWordField (Local1, Zero, SNOU)
                    CreateDWordField (Local1, 0x04, RTCD)
                    Store (0x4C494146, SNOU)
                    If (LGreater (DASI, 0x2000))
                    {
                        Store (0x05, RTCD)
                        Return (Local1)
                    }
                    
                    Store (DASI, Local5)
                    CreateField (Arg1, Zero, Multiply (Add (Local5, 0x10), 0x08),
                    DAIN)
                    Store (0x02, RTCD)
                    If (LEqual (SNIN, 0x55434553))
                    {
                        Store (0x04, RTCD)
                        Sleep (0x32)
                        Sleep (0x32)
                        Sleep (0x32)
                        Sleep (0x32)
                        While (One)
                        {
                            Store (COMD, _T_1)
                            If (LEqual (_T_1, One))
                            {
                                If (LAnd (LGreater (CMTP, Zero), LLessEqual (CMTP, 0x38)))
                                {
                                    If (LLess (DASI, DerefOf (Index (RCDS, Subtract (CMTP, One)
                                    ))))
                                    {
                                        Store (0x05, RTCD)
                                    }
                                    Else
                                    {
                                        Store (RDCF (CMTP, Arg1), Local2)
                                        Store (RTCC, RTCD)
                                    }
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x02))
                                {
                                    If (LAnd (LGreater (CMTP, Zero), LLessEqual (CMTP, 0x38)))
                                    {
                                        If (LLess (DASI, DerefOf (Index (WCDS, Subtract (CMTP, One)
                                        ))))
                                        {
                                            Store (0x05, RTCD)
                                        }
                                        Else
                                        {
                                            Store (WRCF (CMTP, Arg1), Local2)
                                            Store (RTCC, RTCD)
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x00020002))
                                    {
                                        While (One)
                                        {
                                            Store (CMTP, _T_2)
                                            If (LEqual (_T_2, One))
                                            {
                                                Store (CSTA (), Local2)
                                                Store (Zero, RTCD)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_2, 0x02))
                                                {
                                                    Store (CACT (DAIN), Local2)
                                                    Store (Zero, RTCD)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_2, 0x03))
                                                    {
                                                        Store (CDAC (DAIN), Local2)
                                                        Store (Zero, RTCD)
                                                    }
                                                }
                                            }
                                            
                                            Break
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    If (LEqual (RTCD, Zero))
                    {
                        Store (DerefOf (Index (Local2, Zero)), RTCD)
                        If (LEqual (RTCD, Zero))
                        {
                            If (LLessEqual (DerefOf (Index (Local2, One)), Local0))
                            {
                                Store (Zero, Local0)
                                While (LLess (Local0, DerefOf (Index (Local2, One))))
                                {
                                    Store (DerefOf (Index (DerefOf (Index (Local2, 0x02)), Local0)),
                                    Index (Local1, Add (Local0, 0x08)))
                                    Increment (Local0)
                                }
                                
                                Store (0x53534150, SNOU)
                            }
                            Else
                            {
                                Store (0x05, RTCD)
                            }
                        }
                    }
                    
                    Return (Local1)
                }
                
                Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
                Name (_UID, "HPWMI")  // _UID: Unique ID
                Name (WEI1, Zero)
                Name (WED1, Zero)
                Name (WEI2, Zero)
                Name (WED2, Zero)
                Name (WEVT, Zero)
                Name (_WDG, Buffer (0x0104)
                {
                    /* 0000 */   0x34, 0xF0, 0xB7, 0x5F, 0x63, 0x2C, 0xE9, 0x45,
                    /* 0008 */   0xBE, 0x91, 0x3D, 0x44, 0xE2, 0xC7, 0x07, 0xE4,
                    /* 0010 */   0x41, 0x41, 0x01, 0x02, 0x79, 0x42, 0xF2, 0x95,
                    /* 0018 */   0x7B, 0x4D, 0x34, 0x43, 0x93, 0x87, 0xAC, 0xCD,
                    /* 0020 */   0xC6, 0x7E, 0xF6, 0x1C, 0x80, 0x00, 0x01, 0x08,
                    /* 0028 */   0x18, 0x43, 0x81, 0x2B, 0xE8, 0x4B, 0x07, 0x47,
                    /* 0030 */   0x9D, 0x84, 0xA1, 0x90, 0xA8, 0x59, 0xB5, 0xD0,
                    /* 0038 */   0xA0, 0x00, 0x01, 0x08, 0x21, 0x12, 0x90, 0x05,
                    /* 0040 */   0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,
                    /* 0048 */   0xC9, 0x06, 0x29, 0x10, 0x41, 0x42, 0x01, 0x00,
                    /* 0050 */   0xEB, 0x91, 0x4C, 0x1F, 0x5C, 0xDC, 0x0B, 0x46,
                    /* 0058 */   0x95, 0x1D, 0xC7, 0xCB, 0x9B, 0x4B, 0x8D, 0x5E,
                    /* 0060 */   0x42, 0x41, 0x01, 0x02, 0x49, 0x4B, 0x11, 0x2D,
                    /* 0068 */   0xFB, 0x2D, 0x30, 0x41, 0xB8, 0xFE, 0x4A, 0x3C,
                    /* 0070 */   0x09, 0xE7, 0x51, 0x33, 0x42, 0x43, 0x10, 0x00,
                    /* 0078 */   0xE3, 0x08, 0x8D, 0x98, 0xF4, 0x68, 0x35, 0x4C,
                    /* 0080 */   0xAF, 0x3E, 0x6A, 0x1B, 0x81, 0x06, 0xF8, 0x3C,
                    /* 0088 */   0x42, 0x44, 0x00, 0x00, 0x46, 0x97, 0xEA, 0x14,
                    /* 0090 */   0x1F, 0xCE, 0x98, 0x40, 0xA0, 0xE0, 0x70, 0x45,
                    /* 0098 */   0xCB, 0x4D, 0xA7, 0x45, 0x42, 0x45, 0x02, 0x00,
                    /* 00A0 */   0x28, 0x20, 0x2F, 0x32, 0x84, 0x0F, 0x01, 0x49,
                    /* 00A8 */   0x98, 0x8E, 0x01, 0x51, 0x76, 0x04, 0x9E, 0x2D,
                    /* 00B0 */   0x42, 0x46, 0x01, 0x00, 0x3D, 0xDE, 0x32, 0x82,
                    /* 00B8 */   0x3D, 0x66, 0x27, 0x43, 0xA8, 0xF4, 0xE2, 0x93,
                    /* 00C0 */   0xAD, 0xB9, 0xBF, 0x05, 0x42, 0x47, 0x00, 0x00,
                    /* 00C8 */   0x36, 0x64, 0x1F, 0x8F, 0x42, 0x9F, 0xC8, 0x42,
                    /* 00D0 */   0xBA, 0xDC, 0x0E, 0x94, 0x24, 0xF2, 0x0C, 0x9A,
                    /* 00D8 */   0x42, 0x48, 0x00, 0x00, 0x35, 0x64, 0x1F, 0x8F,
                    /* 00E0 */   0x42, 0x9F, 0xC8, 0x42, 0xBA, 0xDC, 0x0E, 0x94,
                    /* 00E8 */   0x24, 0xF2, 0x0C, 0x9A, 0x42, 0x49, 0x00, 0x00,
                    /* 00F0 */   0xB6, 0x63, 0x4E, 0xDF, 0xBC, 0x3B, 0x58, 0x48,
                    /* 00F8 */   0x97, 0x37, 0xC7, 0x4F, 0x82, 0xF8, 0x21, 0xF3,
                    /* 0100 */   0x42, 0x4A, 0x00, 0x00
                })
                Method (WMAA, 3, Serialized)
                {
                    Return (WHCM (Arg1, Arg2))
                }
                
                Name (S001, Buffer (0x32) {})
                Name (S002, Buffer (0x8C) {})
                Name (S003, Buffer (0x8C) {})
                Name (S014, Buffer (0x32) {})
                Name (BF01, Buffer (0x32) {})
                Name (BF02, Buffer (0x32) {})
                Name (BF03, Buffer (0x96) {})
                Name (TMP0, Buffer (0x32) {})
                Name (TMP1, Buffer (0x1E) {})
                Name (TMP2, Buffer (0x1E) {})
                Name (S004, "serial port")
                Name (S010, "Parallel Port")
                Name (S015, "My asset tag")
                Name (S006, "Enable")
                Name (S007, "Disable")
                Name (S008, " Disable, *Enable")
                Name (S009, "*Disable,  Enable")
                Name (S020, Buffer (0x1F) {})
                Name (S019, " 0, 5, 10, 15, 20, 25, 30, 35")
                Name (BF3C, "   ")
                Name (BF2S, "                                                                                             ")
                Name (BSTR, "                                                                                             ")
                Method (STCP, 3, NotSerialized)
                {
                    Name (ST01, Buffer (0x80) {})
                    Name (ST02, Buffer (0x80) {})
                    Store (Arg0, ST01)
                    Store (Arg1, ST02)
                    Store (Arg2, Local0)
                    Store (Zero, Local1)
                    While (LLess (Local1, Local0))
                    {
                        Store (DerefOf (Index (ST01, Local1)), Local2)
                        Store (DerefOf (Index (ST02, Local1)), Local3)
                        If (LNotEqual (Local2, Local3))
                        {
                            Return (Zero)
                        }
                        
                        Increment (Local1)
                    }
                    
                    Return (One)
                }
                
                Method (WMBH, 1, NotSerialized)
                {
                    Return (Zero)
                }
                
                Method (WMBA, 3, NotSerialized)
                {
                    Name (DBUF, Buffer (0x0200) {})
                    If (LEqual (Arg1, One))
                    {
                        Store (Arg2, Local0)
                        Store (SizeOf (Local0), Local1)
                        Store (DerefOf (Index (Local0, Zero)), Local4)
                        Store (0x02, Local2)
                        Store (Zero, Local3)
                        Store (Zero, Local5)
                        While (LNotEqual (Local3, Local4))
                        {
                            Store (DerefOf (Index (Local0, Local2)), Index (DBUF, Local5))
                            Add (0x02, Local2, Local2)
                            Add (0x02, Local3, Local3)
                            Increment (Local5)
                        }
                        
                        Store (Zero, Index (DBUF, Local5))
                        Store (Zero, Local3)
                        Store (DerefOf (Index (Local0, Local2)), Local4)
                        Add (0x02, Local2, Local2)
                        Increment (Local5)
                        While (LNotEqual (Local3, Local4))
                        {
                            Store (DerefOf (Index (Local0, Local2)), Index (DBUF, Local5))
                            Add (0x02, Local2, Local2)
                            Add (0x02, Local3, Local3)
                            Increment (Local5)
                        }
                        
                        Store (Zero, Index (DBUF, Local5))
                        Store (Zero, Local3)
                        Store (DerefOf (Index (Local0, Local2)), Local4)
                        Add (0x02, Local2, Local2)
                        Increment (Local5)
                        While (LNotEqual (Local3, Local4))
                        {
                            If (LGreaterEqual (Local5, 0x0200))
                            {
                                Return (0x02)
                            }
                            
                            Store (DerefOf (Index (Local0, Local2)), Index (DBUF, Local5))
                            Add (0x02, Local2, Local2)
                            Add (0x02, Local3, Local3)
                            Increment (Local5)
                        }
                        
                        Store (Zero, Index (DBUF, Local5))
                        Store (DBUF, EHWB)
                        Store (0x02, HWRC)
                        Store (Zero, HWCT)
                        Store (0xFD, HWBC)
                        Store (0xDB, SSMP)
                        Return (HWRC)
                    }
                    Else
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            Store (Arg2, DBUF)
                            Store (DBUF, EHWB)
                            Store (0x02, HWRC)
                            Store (Zero, HWCT)
                            Store (0xFC, HWBC)
                            Store (0xDB, SSMP)
                            Return (HWRC)
                        }
                    }
                    
                    Return (One)
                }
                
                Method (WQBC, 1, NotSerialized)
                {
                    Store (Arg0, Local0)
                    Store (Local0, HWBF)
                    Store (0x02, HWRC)
                    Store (Zero, HWCT)
                    Store (0xFE, HWBC)
                    Store (0xDB, SSMP)
                    If (LEqual (Zero, HWRC))
                    {
                        Store (Buffer (0x80) {}, Local1)
                        Store (HWBF, Local1)
                        CreateWordField (Local1, Zero, NSTL)
                        CreateField (Local1, 0x10, Multiply (0x08, NSTL), NSTR)
                        Add (0x02, NSTL, Local0)
                        CreateWordField (Local1, Local0, VSTL)
                        Add (Local0, 0x02, Local0)
                        CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, VSTL),
                        VSTP)
                        Add (0x02, NSTL, Local0)
                        Add (Local0, 0x02, Local0)
                        Add (Local0, VSTL, Local0)
                        CreateWordField (Local1, Local0, CSTL)
                        Add (0x02, Local0, Local0)
                        CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, CSTL),
                        CSTR)
                        Add (0x02, NSTL, Local0)
                        Add (Local0, 0x02, Local0)
                        Add (Local0, VSTL, Local0)
                        Add (Local0, 0x02, Local0)
                        Add (Local0, CSTL, Local0)
                        CreateWordField (Local1, Local0, NOPV)
                        Add (0x02, Local0, Local0)
                        CreateWordField (Local1, Local0, PBL1)
                        Add (0x02, Local0, Local0)
                        CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, PBL1),
                        PBV1)
                        Add (PBL1, Local0, Local0)
                        CreateWordField (Local1, Local0, PBL2)
                        Add (0x02, Local0, Local0)
                        CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, PBL2),
                        PBV2)
                        Add (PBL2, Local0, Local0)
                        CreateWordField (Local1, Local0, PBL3)
                        Add (0x02, Local0, Local0)
                        CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, PBL3),
                        PBV3)
                        Add (PBL3, Local0, Local0)
                        CreateWordField (Local1, Local0, PBL4)
                        Add (0x02, Local0, Local0)
                        CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, PBL4),
                        PBV4)
                        Add (PBL4, Local0, Local0)
                        CreateWordField (Local1, Local0, PBL5)
                        Add (0x02, Local0, Local0)
                        CreateField (Local1, Multiply (0x08, Local0), Multiply (0x08, PBL5),
                        PBV5)
                        Add (PBL5, Local0, Local0)
                        Name (BERP, Package (0x18)
                        {
                            "Name",
                            "Value",
                            "System Configuration",
                            Zero,
                            One,
                            Zero,
                            Zero,
                            One,
                            " ",
                            Zero,
                            "Enable",
                            0x0C,
                            "Enable",
                            "Disable",
                            " ",
                            " ",
                            " ",
                            " ",
                            " ",
                            " ",
                            " ",
                            " ",
                            " ",
                            " "
                        })
                        Name (BF2S, Buffer (0x46) {})
                        Name (STRB, "                                                                      ")
                        Store (NSTR, BF2S)
                        Store (BF2S, STRB)
                        Store (STRB, Index (BERP, Zero))
                        If (STCP (BF2S, "Manufacturing Programming Mode", 0x1E))
                        {
                            Store (Zero, Index (BERP, 0x04))
                        }
                        
                        Store (VSTP, BF2S)
                        Store (BF2S, STRB)
                        Store (STRB, Index (BERP, One))
                        Store (CSTR, BF2S)
                        Store (BF2S, STRB)
                        Store (STRB, Index (BERP, 0x0A))
                        Store (PBV1, BF2S)
                        Store (BF2S, STRB)
                        Store (STRB, Index (BERP, 0x0C))
                        Store (PBV2, BF2S)
                        Store (BF2S, STRB)
                        Store (STRB, Index (BERP, 0x0D))
                        Store (PBV3, BF2S)
                        Store (BF2S, STRB)
                        Store (STRB, Index (BERP, 0x0E))
                        Store (PBV4, BF2S)
                        Store (BF2S, STRB)
                        Store (STRB, Index (BERP, 0x0F))
                        Store (PBV5, BF2S)
                        Store (BF2S, STRB)
                        Store (STRB, Index (BERP, 0x10))
                        Store (Arg0, Index (BERP, 0x06))
                        Return (BERP)
                    }
                    
                    Return (Package (0x18)
                    {
                        "",
                        "",
                        "",
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        One,
                        " ",
                        Zero,
                        " ",
                        0x0C,
                        " ",
                        " ",
                        " ",
                        " ",
                        " ",
                        " ",
                        " ",
                        " ",
                        " ",
                        " ",
                        " ",
                        " "
                    })
                }
                
                Method (WQBD, 1, NotSerialized)
                {
                    Return (One)
                }
                
                Method (WQBE, 1, NotSerialized)
                {
                    Store (Zero, EHWB)
                    Store (Arg0, Local0)
                    Store (Local0, EHWB)
                    Store (0x02, HWRC)
                    Store (Zero, HWCT)
                    Store (0xFB, HWBC)
                    Store (0xDB, SSMP)
                    If (LEqual (Zero, HWRC))
                    {
                        Name (BPTR, Zero)
                        Name (BF2S, Buffer (0xC8) {})
                        Name (STB1, "                                                                                                    ")
                        Name (STB2, "                                                                                                    ")
                        Concatenate (STB1, STB2, STB1)
                        Store (Buffer (0x0200) {}, Local1)
                        Store (EHWB, Local1)
                        CreateByteField (Local1, BPTR, CNSL)
                        Increment (BPTR)
                        CreateField (Local1, Multiply (0x08, BPTR), Multiply (0x08, CNSL),
                        CNST)
                        Add (BPTR, CNSL, BPTR)
                        CreateByteField (Local1, BPTR, CVSL)
                        Increment (BPTR)
                        CreateField (Local1, Multiply (0x08, BPTR), Multiply (0x08, CVSL),
                        CVST)
                        Add (BPTR, CVSL, BPTR)
                        CreateByteField (Local1, BPTR, TSL1)
                        Increment (BPTR)
                        CreateField (Local1, Multiply (0x08, BPTR), Multiply (0x08, TSL1),
                        TSR1)
                        Add (BPTR, TSL1, BPTR)
                        CreateByteField (Local1, BPTR, TSL2)
                        Increment (BPTR)
                        CreateField (Local1, Multiply (0x08, BPTR), Multiply (0x08, TSL2),
                        TSR2)
                        Add (BPTR, TSL2, BPTR)
                        CreateByteField (Local1, BPTR, TSL3)
                        Increment (BPTR)
                        CreateField (Local1, Multiply (0x08, BPTR), Multiply (0x08, TSL3),
                        TSR3)
                        Add (BPTR, TSL3, BPTR)
                        CreateByteField (Local1, BPTR, TSL4)
                        Increment (BPTR)
                        CreateField (Local1, Multiply (0x08, BPTR), Multiply (0x08, TSL4),
                        TSR4)
                        Add (BPTR, TSL4, BPTR)
                        CreateByteField (Local1, BPTR, TSL5)
                        Increment (BPTR)
                        CreateField (Local1, Multiply (0x08, BPTR), Multiply (0x08, TSL5),
                        TSR5)
                        Add (BPTR, TSL5, BPTR)
                        CreateByteField (Local1, BPTR, TSL6)
                        Increment (BPTR)
                        CreateField (Local1, Multiply (0x08, BPTR), Multiply (0x08, TSL6),
                        TSR6)
                        Add (BPTR, TSL6, BPTR)
                        CreateByteField (Local1, BPTR, TSL7)
                        Increment (BPTR)
                        CreateField (Local1, Multiply (0x08, BPTR), Multiply (0x08, TSL7),
                        TSR7)
                        Add (BPTR, TSL7, BPTR)
                        CreateByteField (Local1, BPTR, TSL8)
                        Increment (BPTR)
                        CreateField (Local1, Multiply (0x08, BPTR), Multiply (0x08, TSL8),
                        TSR8)
                        Add (BPTR, TSL8, BPTR)
                        Name (OLRP, Package (0x13)
                        {
                            "Name",
                            "Value",
                            "Path",
                            Zero,
                            One,
                            Zero,
                            Zero,
                            One,
                            " ",
                            Zero,
                            0x08,
                            " ",
                            " ",
                            " ",
                            " ",
                            " ",
                            " ",
                            " ",
                            " "
                        })
                        Store (CNST, BF2S)
                        Store (BF2S, STB1)
                        Store (STB1, Index (OLRP, Zero))
                        Store (CVST, BF2S)
                        Store (BF2S, STB1)
                        Store (STB1, Index (OLRP, One))
                        Store (TSR1, BF2S)
                        Store (BF2S, STB1)
                        Store (STB1, Index (OLRP, 0x0B))
                        Store (TSR2, BF2S)
                        Store (BF2S, STB1)
                        Store (STB1, Index (OLRP, 0x0C))
                        Store (TSR3, BF2S)
                        Store (BF2S, STB1)
                        Store (STB1, Index (OLRP, 0x0D))
                        Store (TSR4, BF2S)
                        Store (BF2S, STB1)
                        Store (STB1, Index (OLRP, 0x0E))
                        Store (TSR5, BF2S)
                        Store (BF2S, STB1)
                        Store (STB1, Index (OLRP, 0x0F))
                        Store (TSR6, BF2S)
                        Store (BF2S, STB1)
                        Store (STB1, Index (OLRP, 0x10))
                        Store (TSR7, BF2S)
                        Store (BF2S, STB1)
                        Store (STB1, Index (OLRP, 0x11))
                        Store (TSR8, BF2S)
                        Store (BF2S, STB1)
                        Store (STB1, Index (OLRP, 0x12))
                        Store (Arg0, Index (OLRP, 0x06))
                        Return (OLRP)
                    }
                    
                    Return (HWRC)
                }
                
                Method (WQBF, 1, NotSerialized)
                {
                    Store (Arg0, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Store (Local0, HWBF)
                        Store (0x02, HWRC)
                        Store (Zero, HWCT)
                        Store (0xFA, HWBC)
                        Store (0xDB, SSMP)
                        If (LEqual (Zero, HWRC))
                        {
                            Store (Buffer (0x80) {}, Local0)
                            Store (HWBF, Local0)
                            CreateDWordField (Local0, Zero, PSET)
                            Name (PWDP, Package (0x10)
                            {
                                "Setup Password",
                                " ",
                                "Path",
                                Zero,
                                One,
                                Zero,
                                Zero,
                                One,
                                " ",
                                Zero,
                                One,
                                0x08,
                                "utf-16",
                                "",
                                Zero,
                                One
                            })
                            Name (BF2S, Buffer (0x46) {})
                            Name (STRB, "                                                                      ")
                            Store (PSET, Index (PWDP, 0x0E))
                            Store (Arg0, Index (PWDP, 0x06))
                            Return (PWDP)
                        }
                        Else
                        {
                            Return (Package (0x10)
                            {
                                "Setup Password",
                                " ",
                                "Path",
                                Zero,
                                One,
                                Zero,
                                Zero,
                                One,
                                " ",
                                Zero,
                                One,
                                0x08,
                                "utf-16",
                                "",
                                One,
                                One
                            })
                        }
                    }
                    
                    Return (Package (0x10)
                    {
                        "",
                        "",
                        "",
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        One,
                        "0",
                        Zero,
                        Zero,
                        Zero,
                        "",
                        "",
                        Zero,
                        Zero
                    })
                }
                
                Method (WQBG, 0, NotSerialized)
                {
                }
                
                Method (WQBH, 0, NotSerialized)
                {
                }
                
                Method (WQBI, 0, NotSerialized)
                {
                }
                
                Name (WQAB, Buffer (0x2135)
                {
                    /* 0000 */   0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                    /* 0008 */   0x25, 0x21, 0x00, 0x00, 0xB0, 0xCB, 0x00, 0x00,
                    /* 0010 */   0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                    /* 0018 */   0x28, 0x27, 0xA1, 0x00, 0x01, 0x06, 0x18, 0x42,
                    /* 0020 */   0x10, 0x4D, 0x10, 0x92, 0x46, 0x62, 0x02, 0x89,
                    /* 0028 */   0x80, 0x90, 0x18, 0x18, 0x14, 0x81, 0x85, 0x00,
                    /* 0030 */   0x49, 0x02, 0x88, 0xC4, 0x41, 0xE1, 0x20, 0xD4,
                    /* 0038 */   0x9F, 0x40, 0x7E, 0x05, 0x20, 0x74, 0x28, 0x40,
                    /* 0040 */   0xA6, 0x00, 0x83, 0x02, 0x9C, 0x22, 0x88, 0xA0,
                    /* 0048 */   0x57, 0x01, 0x36, 0x05, 0x98, 0x14, 0x60, 0x51,
                    /* 0050 */   0x80, 0x76, 0x01, 0x96, 0x05, 0xE8, 0x16, 0x20,
                    /* 0058 */   0x1D, 0x96, 0x88, 0x04, 0x47, 0x89, 0x01, 0x47,
                    /* 0060 */   0xE9, 0xC4, 0x16, 0x6E, 0xD8, 0xE0, 0x85, 0xA2,
                    /* 0068 */   0x68, 0x06, 0x51, 0x12, 0x94, 0x8B, 0x20, 0x5D,
                    /* 0070 */   0x10, 0x52, 0x2E, 0xC0, 0x37, 0x82, 0x06, 0x10,
                    /* 0078 */   0xA5, 0x77, 0x01, 0xB6, 0x05, 0x98, 0x86, 0x27,
                    /* 0080 */   0xD2, 0x20, 0xE4, 0x60, 0x08, 0x54, 0xCE, 0x80,
                    /* 0088 */   0x20, 0x69, 0x44, 0x21, 0x1E, 0xA7, 0x44, 0x08,
                    /* 0090 */   0x0A, 0x84, 0x90, 0xD4, 0xF1, 0xA0, 0xA0, 0x71,
                    /* 0098 */   0x88, 0xAD, 0xCE, 0x46, 0x93, 0xA9, 0x74, 0x7E,
                    /* 00A0 */   0x48, 0x82, 0x70, 0xC6, 0x2A, 0x7E, 0x3A, 0x9A,
                    /* 00A8 */   0xD0, 0xD9, 0x9C, 0x60, 0xE7, 0x18, 0x72, 0x3C,
                    /* 00B0 */   0x48, 0xF4, 0x20, 0xB8, 0x00, 0x0F, 0x1C, 0x2C,
                    /* 00B8 */   0x34, 0x84, 0x22, 0x6B, 0x80, 0xC1, 0x8C, 0xDD,
                    /* 00C0 */   0x63, 0xB1, 0x0B, 0x4E, 0x0A, 0xEC, 0x61, 0xB3,
                    /* 00C8 */   0x01, 0x19, 0xA2, 0x24, 0x38, 0xD4, 0x11, 0xC0,
                    /* 00D0 */   0x12, 0x05, 0x98, 0x1F, 0x87, 0x0C, 0x0F, 0x95,
                    /* 00D8 */   0x8C, 0x25, 0x24, 0x1B, 0xAB, 0x87, 0xC2, 0xA5,
                    /* 00E0 */   0x40, 0x68, 0x6C, 0x27, 0xED, 0x19, 0x45, 0x2C,
                    /* 00E8 */   0x79, 0x4A, 0x82, 0x49, 0xE0, 0x51, 0x44, 0x36,
                    /* 00F0 */   0x1A, 0x27, 0x28, 0x1B, 0x1A, 0x25, 0x03, 0x42,
                    /* 00F8 */   0x9E, 0x05, 0x58, 0x07, 0x26, 0x04, 0x76, 0x2F,
                    /* 0100 */   0xC0, 0x9A, 0x00, 0x73, 0xB3, 0x90, 0xB1, 0xB9,
                    /* 0108 */   0xE8, 0xFF, 0x0F, 0x71, 0xB0, 0x31, 0xDA, 0x9A,
                    /* 0110 */   0xAE, 0x90, 0xC2, 0xC4, 0x88, 0x12, 0x2C, 0x5E,
                    /* 0118 */   0xC5, 0xC3, 0x10, 0xCA, 0x93, 0x42, 0xA8, 0x48,
                    /* 0120 */   0x95, 0xA1, 0x68, 0xB4, 0x51, 0x2A, 0x14, 0xE0,
                    /* 0128 */   0x4C, 0x80, 0x30, 0x5C, 0x1D, 0x03, 0x82, 0x46,
                    /* 0130 */   0x88, 0x15, 0x29, 0x56, 0xFB, 0x83, 0x20, 0xF1,
                    /* 0138 */   0x2D, 0x40, 0x54, 0x01, 0xA2, 0x48, 0xA3, 0x41,
                    /* 0140 */   0x9D, 0x03, 0x3C, 0x5C, 0x0F, 0xF5, 0xF0, 0x3D,
                    /* 0148 */   0xF6, 0x93, 0x0C, 0x72, 0x90, 0x67, 0xF1, 0xA8,
                    /* 0150 */   0x70, 0x9C, 0x06, 0x49, 0xE0, 0x0B, 0x80, 0x4F,
                    /* 0158 */   0x08, 0x1E, 0x38, 0xDE, 0x35, 0xA0, 0x66, 0x7C,
                    /* 0160 */   0xBC, 0x4C, 0x10, 0x1C, 0x6A, 0x88, 0x1E, 0x68,
                    /* 0168 */   0xB8, 0x13, 0x38, 0x44, 0x06, 0xE8, 0x49, 0x3D,
                    /* 0170 */   0x52, 0x60, 0x07, 0x77, 0x32, 0xEF, 0x01, 0xAF,
                    /* 0178 */   0x0A, 0xCD, 0x5E, 0x12, 0x08, 0xC1, 0xF1, 0xF8,
                    /* 0180 */   0x7E, 0xC0, 0x26, 0x9C, 0xC0, 0xF2, 0x07, 0x81,
                    /* 0188 */   0x1A, 0x99, 0xA1, 0x3D, 0xCA, 0xD3, 0x8A, 0x19,
                    /* 0190 */   0xF2, 0x31, 0xC1, 0x04, 0x16, 0x0B, 0x21, 0x05,
                    /* 0198 */   0x10, 0x1A, 0x0F, 0xF8, 0x6F, 0x00, 0x8F, 0x17,
                    /* 01A0 */   0xBE, 0x12, 0xC4, 0xF6, 0x80, 0x12, 0x0C, 0x0B,
                    /* 01A8 */   0x21, 0x23, 0xAB, 0xF0, 0x78, 0xE8, 0x28, 0x7C,
                    /* 01B0 */   0x95, 0x38, 0x9C, 0xD3, 0x8A, 0x67, 0x82, 0xE1,
                    /* 01B8 */   0x20, 0xF4, 0x05, 0x90, 0x00, 0x51, 0xE7, 0x0C,
                    /* 01C0 */   0xD4, 0x61, 0xC1, 0xE7, 0x04, 0x76, 0x33, 0x38,
                    /* 01C8 */   0x83, 0x47, 0x00, 0x8F, 0xE4, 0x84, 0xFC, 0x2B,
                    /* 01D0 */   0xF1, 0xC0, 0xE0, 0x03, 0xE2, 0xEF, 0x1F, 0xA7,
                    /* 01D8 */   0xEC, 0x11, 0x9C, 0xA9, 0x01, 0x7D, 0x1C, 0xF0,
                    /* 01E0 */   0xFF, 0x7F, 0x28, 0x7C, 0x88, 0x1E, 0xDF, 0x29,
                    /* 01E8 */   0x1F, 0xAF, 0x4F, 0x17, 0x96, 0x35, 0x4E, 0xE8,
                    /* 01F0 */   0x77, 0x08, 0x9F, 0x38, 0x7C, 0x64, 0x71, 0x44,
                    /* 01F8 */   0x08, 0x39, 0x39, 0x05, 0xA0, 0x81, 0x4F, 0xF7,
                    /* 0200 */   0xEC, 0x22, 0x9C, 0xAE, 0x27, 0xE5, 0x40, 0xC3,
                    /* 0208 */   0xA0, 0xE3, 0x04, 0xC7, 0x79, 0x00, 0x1C, 0xE3,
                    /* 0210 */   0x84, 0x7F, 0x2E, 0x80, 0x3F, 0x40, 0x7E, 0xCA,
                    /* 0218 */   0x78, 0xC5, 0x48, 0xE0, 0x98, 0x23, 0x44, 0x9F,
                    /* 0220 */   0x6B, 0x3C, 0x42, 0x2C, 0xFC, 0x53, 0x45, 0xE1,
                    /* 0228 */   0x03, 0x21, 0x63, 0x04, 0x17, 0xA0, 0xC7, 0x08,
                    /* 0230 */   0x7C, 0x03, 0x8E, 0x11, 0x7D, 0x94, 0xE0, 0xEA,
                    /* 0238 */   0x0F, 0x1A, 0x74, 0x80, 0xB8, 0xFF, 0xFF, 0x00,
                    /* 0240 */   0xE1, 0x83, 0x7A, 0x80, 0xC0, 0x37, 0xFA, 0xD1,
                    /* 0248 */   0x03, 0x3D, 0x2E, 0x8B, 0x3E, 0x0F, 0xC8, 0xF8,
                    /* 0250 */   0x89, 0x46, 0xF3, 0xE2, 0xA7, 0x03, 0x7E, 0xF8,
                    /* 0258 */   0x00, 0x0F, 0xA8, 0x87, 0x84, 0x03, 0xC5, 0x4C,
                    /* 0260 */   0x9B, 0x83, 0x3E, 0xBB, 0x1C, 0x3A, 0x76, 0xB8,
                    /* 0268 */   0xE0, 0x3F, 0x81, 0x80, 0x4B, 0xDE, 0x21, 0x0C,
                    /* 0270 */   0x14, 0x23, 0xC6, 0x9F, 0x83, 0x7C, 0x0A, 0x03,
                    /* 0278 */   0xFF, 0xFF, 0xFF, 0x14, 0x06, 0xFE, 0xE1, 0xF0,
                    /* 0280 */   0x20, 0x4F, 0x07, 0x9F, 0xB6, 0xA8, 0x74, 0x18,
                    /* 0288 */   0xD4, 0x81, 0x0B, 0xB0, 0x32, 0x89, 0x08, 0xCF,
                    /* 0290 */   0x12, 0xB5, 0x41, 0xE8, 0xD4, 0xF0, 0x36, 0xF1,
                    /* 0298 */   0xB6, 0xE5, 0x5B, 0x40, 0x9C, 0xD3, 0xEC, 0xED,
                    /* 02A0 */   0xC0, 0x45, 0x30, 0x22, 0xD4, 0x0C, 0x45, 0x4E,
                    /* 02A8 */   0x5A, 0x11, 0x63, 0x44, 0x79, 0xDC, 0x32, 0xCA,
                    /* 02B0 */   0xDB, 0xD6, 0x0B, 0x40, 0xBC, 0x13, 0x7B, 0xDE,
                    /* 02B8 */   0x32, 0x46, 0xF0, 0xC8, 0x0F, 0x5C, 0x2C, 0xC6,
                    /* 02C0 */   0xEA, 0xF5, 0x5F, 0xF3, 0x81, 0x0B, 0x70, 0xF6,
                    /* 02C8 */   0xFF, 0x3F, 0x70, 0x01, 0x1C, 0x0A, 0x7A, 0x18,
                    /* 02D0 */   0x42, 0x0F, 0xC3, 0x53, 0x39, 0x97, 0x87, 0xC8,
                    /* 02D8 */   0x53, 0x89, 0x18, 0x35, 0x4C, 0xD4, 0x67, 0x28,
                    /* 02E0 */   0xDF, 0x2D, 0x7C, 0x20, 0x02, 0xDF, 0x99, 0x0B,
                    /* 02E8 */   0xF8, 0xFD, 0xFF, 0x0F, 0x44, 0x70, 0x8E, 0x29,
                    /* 02F0 */   0xB8, 0x33, 0x0D, 0x78, 0x7C, 0xCE, 0x40, 0x20,
                    /* 02F8 */   0xA7, 0xE2, 0x43, 0x0D, 0x60, 0x41, 0xF4, 0x13,
                    /* 0300 */   0xC2, 0x27, 0x1A, 0x2A, 0x13, 0x06, 0x75, 0xA8,
                    /* 0308 */   0x01, 0xAC, 0x5C, 0x61, 0x9E, 0x46, 0xCF, 0xF9,
                    /* 0310 */   0x59, 0xC6, 0xA7, 0x1A, 0x1F, 0x4A, 0x8D, 0x63,
                    /* 0318 */   0x88, 0x97, 0x99, 0x87, 0x1A, 0x1F, 0x0B, 0x5E,
                    /* 0320 */   0x49, 0x7D, 0xA8, 0x31, 0x54, 0x9C, 0x87, 0x1A,
                    /* 0328 */   0x0F, 0x37, 0x50, 0xD4, 0x37, 0x9B, 0x67, 0x1B,
                    /* 0330 */   0xA3, 0xC7, 0xF7, 0x0D, 0xD5, 0x10, 0x0F, 0x35,
                    /* 0338 */   0x4C, 0xF2, 0x4A, 0x35, 0x16, 0x1F, 0x6A, 0xC0,
                    /* 0340 */   0xF1, 0xFF, 0x3F, 0xD4, 0x00, 0xFC, 0xFF, 0xFF,
                    /* 0348 */   0x1F, 0x6A, 0x00, 0x47, 0x47, 0x03, 0x38, 0x47,
                    /* 0350 */   0x46, 0xDC, 0xD1, 0x00, 0x5C, 0x87, 0x52, 0xE0,
                    /* 0358 */   0x70, 0x34, 0x00, 0x1E, 0x47, 0x21, 0x30, 0x5F,
                    /* 0360 */   0x68, 0x7C, 0x14, 0x02, 0x16, 0xFF, 0xFF, 0xA3,
                    /* 0368 */   0x10, 0xF8, 0x65, 0x9F, 0x83, 0x50, 0x42, 0x8F,
                    /* 0370 */   0x42, 0x80, 0xA0, 0xDB, 0xCF, 0x53, 0xC4, 0xB3,
                    /* 0378 */   0x8F, 0x2F, 0x3F, 0x0F, 0x04, 0x11, 0x5E, 0xF3,
                    /* 0380 */   0x7D, 0x0A, 0xF2, 0x21, 0xDF, 0x47, 0x21, 0x06,
                    /* 0388 */   0x63, 0x28, 0x5F, 0x83, 0x7C, 0x14, 0x62, 0x50,
                    /* 0390 */   0xAF, 0x41, 0xBE, 0xEF, 0x1B, 0xE4, 0xF1, 0x22,
                    /* 0398 */   0x48, 0xEC, 0x67, 0x02, 0x1F, 0x85, 0x98, 0xE8,
                    /* 03A0 */   0xA3, 0x10, 0xA0, 0xF0, 0xFF, 0x7F, 0x14, 0x02,
                    /* 03A8 */   0xF8, 0xFF, 0xFF, 0x3F, 0x0A, 0x01, 0xCE, 0x02,
                    /* 03B0 */   0x1C, 0x0D, 0x40, 0x37, 0xAD, 0x47, 0x21, 0xF0,
                    /* 03B8 */   0xDE, 0x59, 0x4E, 0xFB, 0x04, 0x7C, 0x16, 0x02,
                    /* 03C0 */   0xCC, 0xFE, 0xFF, 0xCF, 0x42, 0xC0, 0xEC, 0x28,
                    /* 03C8 */   0x74, 0x14, 0x67, 0xF9, 0x2A, 0xF4, 0x04, 0xF0,
                    /* 03D0 */   0x02, 0x10, 0x23, 0xCC, 0x3B, 0xD0, 0x4B, 0x26,
                    /* 03D8 */   0xBB, 0x8B, 0x1B, 0xE7, 0xC9, 0xE5, 0x2C, 0x9E,
                    /* 03E0 */   0xC4, 0x7D, 0x09, 0xF2, 0x81, 0xE2, 0x59, 0xC8,
                    /* 03E8 */   0x50, 0xA7, 0x1B, 0xF4, 0x8D, 0xDC, 0x03, 0x8B,
                    /* 03F0 */   0x19, 0x3F, 0xC4, 0xF3, 0x90, 0x21, 0x9E, 0x85,
                    /* 03F8 */   0x00, 0x76, 0xFD, 0xFF, 0xCF, 0x42, 0x00, 0xFF,
                    /* 0400 */   0xFF, 0xFF, 0x47, 0x03, 0xF8, 0x2F, 0x00, 0x9F,
                    /* 0408 */   0x85, 0x80, 0xE7, 0x09, 0xE0, 0x41, 0xDB, 0x67,
                    /* 0410 */   0x21, 0x80, 0x33, 0x87, 0xCB, 0xF3, 0x7F, 0x05,
                    /* 0418 */   0x3A, 0x96, 0xF7, 0x08, 0xCF, 0xFA, 0x24, 0x5F,
                    /* 0420 */   0x2F, 0x3D, 0xD3, 0x87, 0x82, 0x67, 0x21, 0x86,
                    /* 0428 */   0x75, 0x18, 0x3E, 0x0B, 0x31, 0x88, 0x17, 0x4D,
                    /* 0430 */   0x43, 0xBC, 0x70, 0xFA, 0x30, 0xE0, 0xFF, 0x3F,
                    /* 0438 */   0x5E, 0xE0, 0x57, 0x4E, 0x03, 0x05, 0x09, 0xF4,
                    /* 0440 */   0x2C, 0x04, 0x30, 0xFE, 0xFF, 0x7F, 0x16, 0x02,
                    /* 0448 */   0xC8, 0xB8, 0x46, 0x9D, 0x85, 0x80, 0xE5, 0x6D,
                    /* 0450 */   0xE5, 0x19, 0xDB, 0xA7, 0x95, 0x04, 0xFF, 0xFF,
                    /* 0458 */   0x67, 0x21, 0xC0, 0x41, 0x2E, 0x23, 0x07, 0x21,
                    /* 0460 */   0x4C, 0xC4, 0x87, 0x83, 0x8F, 0x99, 0x80, 0x9E,
                    /* 0468 */   0x29, 0xBE, 0xB8, 0x1B, 0xE3, 0x09, 0xE0, 0x45,
                    /* 0470 */   0xE2, 0x31, 0x93, 0x1D, 0x35, 0x0D, 0xF3, 0x2C,
                    /* 0478 */   0x64, 0xBC, 0xB3, 0x78, 0x0D, 0x78, 0x82, 0xF7,
                    /* 0480 */   0xE4, 0x9F, 0x85, 0x18, 0xD8, 0x61, 0x05, 0x7B,
                    /* 0488 */   0x14, 0x32, 0xA8, 0xC1, 0x63, 0x87, 0x08, 0x13,
                    /* 0490 */   0xE8, 0x59, 0x88, 0xC5, 0x7D, 0xAE, 0xE8, 0x3C,
                    /* 0498 */   0xE1, 0xB3, 0x10, 0xF0, 0xFE, 0xFF, 0x9F, 0x25,
                    /* 04A0 */   0xE0, 0x5E, 0x0D, 0x9E, 0x85, 0x00, 0x13, 0x87,
                    /* 04A8 */   0x0D, 0x9F, 0x35, 0xC0, 0x33, 0x7C, 0x8F, 0xEA,
                    /* 04B0 */   0x1C, 0x1E, 0x8F, 0x81, 0x7F, 0x56, 0x1D, 0xE7,
                    /* 04B8 */   0x04, 0x96, 0x7B, 0xD1, 0xB2, 0x71, 0xA0, 0xA1,
                    /* 04C0 */   0x23, 0xB2, 0x3A, 0x20, 0x8D, 0x0D, 0x73, 0x29,
                    /* 04C8 */   0x89, 0x7C, 0x72, 0x6C, 0xD4, 0x56, 0x04, 0xA7,
                    /* 04D0 */   0x33, 0x93, 0x4F, 0x00, 0xD6, 0x42, 0x21, 0x05,
                    /* 04D8 */   0x34, 0x1A, 0x8B, 0xE1, 0x9D, 0xF9, 0xE8, 0x44,
                    /* 04E0 */   0x41, 0x0C, 0xE8, 0xE3, 0x90, 0x6D, 0x1C, 0x0A,
                    /* 04E8 */   0x50, 0x7B, 0xD1, 0x14, 0xC8, 0x39, 0x07, 0xA3,
                    /* 04F0 */   0x7F, 0x76, 0x74, 0x36, 0xBE, 0x13, 0x70, 0x0D,
                    /* 04F8 */   0x10, 0x3A, 0x25, 0x18, 0xDA, 0x6A, 0x04, 0xFC,
                    /* 0500 */   0xFF, 0x67, 0x89, 0x01, 0x33, 0xFE, 0x53, 0x8C,
                    /* 0508 */   0x09, 0x7C, 0x8E, 0xC1, 0x1F, 0x0C, 0xF0, 0x03,
                    /* 0510 */   0x7F, 0x31, 0xA8, 0xFA, 0x5E, 0xA0, 0xFB, 0x82,
                    /* 0518 */   0xD5, 0xDD, 0x64, 0x20, 0xCC, 0xC8, 0x04, 0xF5,
                    /* 0520 */   0x9D, 0x0E, 0x40, 0x01, 0xE4, 0x0B, 0x81, 0xCF,
                    /* 0528 */   0x51, 0x0F, 0x05, 0x6C, 0x22, 0x21, 0xC2, 0x44,
                    /* 0530 */   0x33, 0x3A, 0x62, 0xC2, 0xA8, 0xE8, 0x13, 0xA6,
                    /* 0538 */   0x20, 0x9E, 0xB0, 0x63, 0x4D, 0x18, 0x3D, 0x13,
                    /* 0540 */   0x5F, 0x74, 0xD8, 0x88, 0x31, 0x21, 0xAE, 0x1E,
                    /* 0548 */   0xD0, 0x26, 0x18, 0xD4, 0x97, 0x22, 0x58, 0x43,
                    /* 0550 */   0xE6, 0x63, 0xF1, 0x05, 0x02, 0x37, 0x65, 0x30,
                    /* 0558 */   0xCE, 0x89, 0x5D, 0x13, 0x7C, 0xD9, 0xC1, 0xCD,
                    /* 0560 */   0x19, 0x8C, 0xF0, 0x98, 0xBB, 0x18, 0xBF, 0x3A,
                    /* 0568 */   0x79, 0x74, 0xFC, 0xA0, 0xE0, 0x1B, 0x0E, 0xC3,
                    /* 0570 */   0x7E, 0x32, 0xF3, 0x8C, 0xDE, 0xCB, 0x7C, 0x8D,
                    /* 0578 */   0xC3, 0xC0, 0x7A, 0xBC, 0x1C, 0xD6, 0x68, 0x61,
                    /* 0580 */   0x0F, 0xED, 0x3D, 0xC4, 0xFF, 0xFF, 0x43, 0x8C,
                    /* 0588 */   0xCF, 0x13, 0xC6, 0x08, 0xEB, 0xDB, 0x0B, 0x38,
                    /* 0590 */   0xEE, 0x59, 0xF0, 0xEF, 0x1A, 0xE0, 0xB9, 0x84,
                    /* 0598 */   0xF8, 0xAE, 0x01, 0x30, 0xF0, 0xFF, 0x7F, 0xD7,
                    /* 05A0 */   0x00, 0x4E, 0xD7, 0x04, 0xDF, 0x35, 0x80, 0xF7,
                    /* 05A8 */   0xD0, 0x7D, 0xD7, 0x00, 0xAE, 0xD9, 0xEF, 0x1A,
                    /* 05B0 */   0xA8, 0x63, 0x80, 0x15, 0xDE, 0x35, 0xA0, 0x5D,
                    /* 05B8 */   0xD9, 0xDE, 0xD7, 0x9E, 0xB0, 0xAC, 0xE9, 0xB2,
                    /* 05C0 */   0x81, 0x52, 0x73, 0xD9, 0x00, 0x14, 0xFC, 0xFF,
                    /* 05C8 */   0x2F, 0x1B, 0x80, 0x01, 0x29, 0x13, 0x46, 0x85,
                    /* 05D0 */   0x9F, 0x30, 0x05, 0xF1, 0x84, 0x1D, 0xEC, 0xB2,
                    /* 05D8 */   0x01, 0x8A, 0x18, 0x97, 0x0D, 0xD0, 0x8F, 0xED,
                    /* 05E0 */   0x65, 0x03, 0x18, 0xDC, 0x13, 0xF8, 0x6D, 0x03,
                    /* 05E8 */   0x78, 0x43, 0xFA, 0xB6, 0x01, 0xD6, 0xFF, 0xFF,
                    /* 05F0 */   0x6D, 0x03, 0xAC, 0xF9, 0x6F, 0x1B, 0x28, 0x0E,
                    /* 05F8 */   0xAB, 0xBC, 0x6D, 0x40, 0x3C, 0xC9, 0x33, 0x02,
                    /* 0600 */   0xAB, 0xBA, 0x6E, 0xA0, 0xF4, 0x5C, 0x37, 0x00,
                    /* 0608 */   0x12, 0x88, 0x99, 0x30, 0x2A, 0xFE, 0x84, 0x29,
                    /* 0610 */   0x88, 0x27, 0xEC, 0x68, 0xD7, 0x0D, 0x50, 0x04,
                    /* 0618 */   0xB9, 0x6E, 0x80, 0x7E, 0x5E, 0x09, 0xFE, 0xFF,
                    /* 0620 */   0xAF, 0x1B, 0xC0, 0xE0, 0xA2, 0x80, 0xB9, 0x6F,
                    /* 0628 */   0x00, 0x6F, 0x58, 0x7E, 0xDF, 0x00, 0x7C, 0xDC,
                    /* 0630 */   0xC4, 0x31, 0xF7, 0x0D, 0xC0, 0xCC, 0xFF, 0xFF,
                    /* 0638 */   0xBE, 0x01, 0xB0, 0xE7, 0xA2, 0x80, 0xBB, 0x6F,
                    /* 0640 */   0x00, 0xEF, 0x8B, 0xB4, 0xEF, 0x1B, 0x60, 0xFE,
                    /* 0648 */   0xFF, 0xDF, 0x37, 0xC0, 0x28, 0x6D, 0xFD, 0x1E,
                    /* 0650 */   0x1C, 0x3D, 0x21, 0x78, 0x7C, 0xB8, 0xFB, 0xA5,
                    /* 0658 */   0xC7, 0xE7, 0xBB, 0x39, 0x38, 0x06, 0x79, 0x8C,
                    /* 0660 */   0x87, 0x76, 0xC0, 0xAF, 0xEF, 0x9E, 0x98, 0xEF,
                    /* 0668 */   0xE6, 0xC0, 0xFF, 0x4C, 0x70, 0x3C, 0x18, 0x68,
                    /* 0670 */   0x1C, 0x62, 0xAB, 0x97, 0x06, 0x72, 0x34, 0x38,
                    /* 0678 */   0x3F, 0xDC, 0x19, 0x81, 0x61, 0x15, 0x7F, 0xF2,
                    /* 0680 */   0x47, 0x38, 0xC7, 0xD0, 0xD9, 0xE1, 0x20, 0xB1,
                    /* 0688 */   0x83, 0xE0, 0xC1, 0x56, 0x6D, 0x02, 0x85, 0x86,
                    /* 0690 */   0x50, 0x14, 0x18, 0x14, 0x8B, 0x0F, 0x18, 0xF8,
                    /* 0698 */   0x61, 0xB3, 0xB3, 0x00, 0x93, 0x04, 0x87, 0x3A,
                    /* 06A0 */   0x02, 0xF8, 0x3E, 0xD1, 0xFC, 0x38, 0x74, 0x37,
                    /* 06A8 */   0x38, 0x54, 0x8F, 0xE5, 0xA1, 0x80, 0x9E, 0x01,
                    /* 06B0 */   0x71, 0xC7, 0x0C, 0x32, 0x69, 0xCF, 0x28, 0xE2,
                    /* 06B8 */   0x53, 0xC2, 0x29, 0x85, 0x49, 0xE0, 0xF3, 0x03,
                    /* 06C0 */   0x43, 0xE3, 0x04, 0xAF, 0x0D, 0xA1, 0xF9, 0xFF,
                    /* 06C8 */   0xFF, 0xA4, 0xC0, 0x3C, 0xDF, 0x31, 0x04, 0x6C,
                    /* 06D0 */   0x02, 0xBB, 0xBF, 0x64, 0xC8, 0xDA, 0xC0, 0x75,
                    /* 06D8 */   0x4B, 0x32, 0x44, 0x6F, 0x38, 0xB2, 0x85, 0xA2,
                    /* 06E0 */   0xE9, 0x44, 0x79, 0xDF, 0x88, 0x62, 0x67, 0x08,
                    /* 06E8 */   0xC2, 0x88, 0x12, 0x2C, 0xC8, 0xA3, 0x42, 0xAC,
                    /* 06F0 */   0x28, 0x2F, 0x05, 0x46, 0x88, 0x18, 0xE2, 0x95,
                    /* 06F8 */   0x23, 0xD0, 0x09, 0x87, 0x0F, 0xF2, 0xD8, 0x14,
                    /* 0700 */   0xA7, 0xFD, 0x41, 0x90, 0x58, 0x4F, 0x02, 0x8D,
                    /* 0708 */   0xC5, 0x91, 0x46, 0x83, 0x3A, 0x07, 0x78, 0xB8,
                    /* 0710 */   0x3E, 0xC4, 0x78, 0xF8, 0x0F, 0x21, 0x06, 0x39,
                    /* 0718 */   0xC8, 0x73, 0x7B, 0x54, 0x38, 0x4E, 0x5F, 0x25,
                    /* 0720 */   0x4C, 0xF0, 0x02, 0xE0, 0x83, 0x0A, 0x1C, 0xD7,
                    /* 0728 */   0x80, 0x9A, 0xF1, 0x33, 0x06, 0x58, 0x8E, 0xE3,
                    /* 0730 */   0x3E, 0xA9, 0xC0, 0x1D, 0x8F, 0xEF, 0x07, 0x6C,
                    /* 0738 */   0xC2, 0x09, 0x2C, 0x7F, 0x10, 0xA8, 0xE3, 0x0C,
                    /* 0740 */   0x9F, 0xE7, 0x0B, 0x8B, 0x21, 0x1F, 0x13, 0x4C,
                    /* 0748 */   0x60, 0xB1, 0x27, 0x1B, 0x3A, 0x1E, 0xF0, 0xDF,
                    /* 0750 */   0x63, 0x1E, 0x2F, 0x7C, 0x32, 0xF1, 0x7C, 0x4D,
                    /* 0758 */   0x30, 0x22, 0x84, 0x9C, 0x8C, 0x07, 0x7D, 0x87,
                    /* 0760 */   0xC0, 0x5C, 0x6F, 0xD8, 0xB9, 0x85, 0x8B, 0x3A,
                    /* 0768 */   0x68, 0xA0, 0x4E, 0x0B, 0x3E, 0x28, 0xB0, 0x9B,
                    /* 0770 */   0x11, 0xE6, 0xB8, 0xCE, 0xCF, 0x2A, 0x60, 0xF8,
                    /* 0778 */   0xFF, 0x9F, 0x55, 0x60, 0x8F, 0x10, 0xFE, 0xED,
                    /* 0780 */   0xC1, 0xF3, 0xF2, 0x95, 0xE1, 0xD5, 0x21, 0x81,
                    /* 0788 */   0x43, 0x8E, 0x10, 0x3D, 0x2E, 0x8F, 0x10, 0x73,
                    /* 0790 */   0x3E, 0xC2, 0x0C, 0x11, 0x5C, 0x67, 0x01, 0x70,
                    /* 0798 */   0x0C, 0x11, 0xF8, 0x1C, 0x70, 0xC0, 0x71, 0x69,
                    /* 07A0 */   0xE2, 0x03, 0xF5, 0x01, 0x07, 0x70, 0x70, 0x4D,
                    /* 07A8 */   0xC3, 0x1D, 0x70, 0xC0, 0x71, 0x16, 0x60, 0xFF,
                    /* 07B0 */   0xFF, 0xC3, 0x0D, 0x2C, 0x49, 0x26, 0x0E, 0x23,
                    /* 07B8 */   0x18, 0x11, 0x30, 0x28, 0x02, 0x02, 0xA4, 0xB3,
                    /* 07C0 */   0x80, 0x0F, 0x29, 0x00, 0x1F, 0xAE, 0x0C, 0x0F,
                    /* 07C8 */   0x29, 0xD8, 0x93, 0x86, 0x07, 0x8E, 0x1B, 0x85,
                    /* 07D0 */   0x07, 0x8D, 0x0B, 0x30, 0x68, 0x7A, 0xE2, 0x80,
                    /* 07D8 */   0x7F, 0x4C, 0xF0, 0x19, 0x05, 0x1C, 0xE3, 0x06,
                    /* 07E0 */   0xDF, 0x2A, 0x0C, 0xFC, 0xFF, 0x3F, 0x30, 0xCC,
                    /* 07E8 */   0xE1, 0xC2, 0x63, 0x39, 0x8A, 0xA0, 0x07, 0x1E,
                    /* 07F0 */   0xD4, 0xF7, 0x8C, 0x33, 0xF7, 0x24, 0x8F, 0xD1,
                    /* 07F8 */   0x51, 0x0F, 0x27, 0xF4, 0xE4, 0x85, 0x3B, 0x57,
                    /* 0800 */   0xF9, 0x0A, 0x71, 0x14, 0x18, 0xB8, 0x77, 0x29,
                    /* 0808 */   0x8F, 0xCF, 0x17, 0x2B, 0xC3, 0x63, 0x46, 0xFB,
                    /* 0810 */   0x1E, 0x72, 0xD6, 0x11, 0x02, 0xE2, 0x2F, 0x75,
                    /* 0818 */   0x6C, 0xC0, 0x60, 0x39, 0x18, 0x00, 0x87, 0x01,
                    /* 0820 */   0xE3, 0x13, 0x0D, 0x58, 0x67, 0x1B, 0x3C, 0xF4,
                    /* 0828 */   0x69, 0x31, 0xC4, 0xE3, 0x0B, 0xFB, 0x56, 0x61,
                    /* 0830 */   0x82, 0xEA, 0x41, 0x75, 0x12, 0xF4, 0xD0, 0xC0,
                    /* 0838 */   0x01, 0xE8, 0xA1, 0xC1, 0x3F, 0xB9, 0x90, 0xFB,
                    /* 0840 */   0x2B, 0x1D, 0x82, 0xB5, 0xE2, 0x69, 0xDE, 0x47,
                    /* 0848 */   0x1E, 0xF3, 0xDC, 0xA2, 0xBC, 0x0D, 0x3C, 0x07,
                    /* 0850 */   0xF0, 0xD3, 0x82, 0x87, 0xE3, 0x63, 0x81, 0xC7,
                    /* 0858 */   0xE9, 0x4B, 0x58, 0x82, 0xF7, 0x1A, 0x9F, 0x6C,
                    /* 0860 */   0x1E, 0x5C, 0x58, 0xB2, 0x21, 0xA0, 0x06, 0xEB,
                    /* 0868 */   0x21, 0x60, 0xA6, 0x9A, 0xC0, 0x49, 0x46, 0x80,
                    /* 0870 */   0xCA, 0x00, 0xA1, 0x1B, 0xCB, 0xE9, 0x3E, 0x8B,
                    /* 0878 */   0x84, 0x38, 0xCD, 0x47, 0x99, 0xC7, 0x02, 0x8F,
                    /* 0880 */   0xF5, 0xC1, 0xC0, 0xFF, 0x7F, 0xCD, 0x23, 0xD4,
                    /* 0888 */   0x7D, 0xCD, 0x33, 0x7B, 0x3A, 0xC0, 0xAC, 0x22,
                    /* 0890 */   0xDC, 0x7B, 0xCE, 0x1B, 0x86, 0xD1, 0x9E, 0x2D,
                    /* 0898 */   0x7C, 0xCD, 0x78, 0xD6, 0x34, 0x42, 0x38, 0x76,
                    /* 08A0 */   0x83, 0xF3, 0x48, 0x8C, 0xF0, 0x82, 0xC0, 0x4E,
                    /* 08A8 */   0x0C, 0x0F, 0x30, 0xC6, 0x39, 0x79, 0xC3, 0xFA,
                    /* 08B0 */   0xC2, 0xCB, 0x40, 0x83, 0x19, 0xDB, 0x97, 0x01,
                    /* 08B8 */   0x36, 0x2A, 0xDF, 0x88, 0xC0, 0x97, 0xFC, 0x62,
                    /* 08C0 */   0x00, 0x65, 0x16, 0xBE, 0x9E, 0xF8, 0xA0, 0xC4,
                    /* 08C8 */   0x2E, 0x06, 0x2C, 0xE5, 0xC5, 0x00, 0x54, 0x37,
                    /* 08D0 */   0x0C, 0x5F, 0x0C, 0xE0, 0x5F, 0x89, 0x5E, 0x0C,
                    /* 08D8 */   0xC0, 0x70, 0x71, 0xF2, 0x3D, 0xC0, 0x1E, 0xEE,
                    /* 08E0 */   0xA3, 0x74, 0x9C, 0xBE, 0xFD, 0xBD, 0x19, 0xF8,
                    /* 08E8 */   0x6C, 0xC0, 0x60, 0x3C, 0xC3, 0x30, 0xC6, 0x08,
                    /* 08F0 */   0xE3, 0x51, 0x86, 0x31, 0xC1, 0xDC, 0xB7, 0x03,
                    /* 08F8 */   0xE8, 0x39, 0x87, 0x81, 0x4A, 0x78, 0x3B, 0x80,
                    /* 0900 */   0x72, 0x0E, 0xE8, 0xF2, 0x68, 0x42, 0x4F, 0x01,
                    /* 0908 */   0x4F, 0x07, 0x3E, 0x29, 0x1A, 0xA2, 0xAF, 0xB1,
                    /* 0910 */   0x0A, 0x26, 0x50, 0xC4, 0x07, 0x0D, 0x3E, 0xB5,
                    /* 0918 */   0x28, 0x3E, 0x15, 0x78, 0x2D, 0xCF, 0x4E, 0xE1,
                    /* 0920 */   0xE2, 0x9C, 0x89, 0xA7, 0x6A, 0x38, 0x03, 0xBD,
                    /* 0928 */   0xE6, 0x86, 0x63, 0xFF, 0x7F, 0x38, 0xFC, 0xA9,
                    /* 0930 */   0xE0, 0x35, 0x80, 0x1D, 0x24, 0x3D, 0x2D, 0x23,
                    /* 0938 */   0xC2, 0x38, 0xA4, 0x3C, 0x32, 0xF8, 0xB6, 0x18,
                    /* 0940 */   0xC7, 0x90, 0x0F, 0x91, 0xBE, 0x13, 0x18, 0xF2,
                    /* 0948 */   0x21, 0xEF, 0x79, 0xC7, 0xC0, 0xAF, 0x08, 0x71,
                    /* 0950 */   0x9E, 0xB2, 0x7C, 0x67, 0xF0, 0x65, 0x01, 0x7C,
                    /* 0958 */   0x91, 0x2E, 0x0B, 0x68, 0x68, 0x9F, 0x64, 0x7C,
                    /* 0960 */   0x41, 0x30, 0xEC, 0x89, 0xB3, 0x00, 0x77, 0x05,
                    /* 0968 */   0x50, 0x81, 0xFA, 0xAE, 0x00, 0xFF, 0x42, 0xF0,
                    /* 0970 */   0xAE, 0x00, 0x86, 0x79, 0xF9, 0x56, 0xC0, 0x35,
                    /* 0978 */   0x1D, 0x4A, 0xD0, 0x67, 0x12, 0x5F, 0x17, 0x70,
                    /* 0980 */   0x53, 0x64, 0xA9, 0x8E, 0x0A, 0xD0, 0x53, 0x4C,
                    /* 0988 */   0x02, 0x75, 0x47, 0xF7, 0x51, 0x01, 0xC6, 0x4D,
                    /* 0990 */   0xD9, 0x07, 0x54, 0x76, 0x5A, 0x60, 0x67, 0x21,
                    /* 0998 */   0x76, 0x1D, 0xC1, 0x5D, 0x49, 0x18, 0xCA, 0xB3,
                    /* 09A0 */   0x81, 0x2F, 0x59, 0xFC, 0x70, 0x00, 0x03, 0xDC,
                    /* 09A8 */   0xB3, 0x38, 0xC4, 0x08, 0xB1, 0xD9, 0x81, 0xEB,
                    /* 09B0 */   0x75, 0xD2, 0x70, 0x2F, 0x44, 0xEC, 0xFF, 0x7F,
                    /* 09B8 */   0x32, 0x00, 0xE3, 0x51, 0x1B, 0x1C, 0x27, 0x9D,
                    /* 09C0 */   0xF0, 0x91, 0x9E, 0x59, 0xF8, 0x49, 0x19, 0x30,
                    /* 09C8 */   0x71, 0xF2, 0x03, 0xE3, 0xC9, 0x1A, 0xC6, 0x00,
                    /* 09D0 */   0xB8, 0xBC, 0x57, 0x95, 0x81, 0xFC, 0x43, 0x90,
                    /* 09D8 */   0x20, 0x18, 0xD4, 0x29, 0x19, 0x38, 0x1C, 0xC5,
                    /* 09E0 */   0x70, 0xA7, 0x64, 0x78, 0x50, 0xF8, 0xC3, 0x00,
                    /* 09E8 */   0xE6, 0x46, 0xE8, 0x7B, 0x82, 0xA1, 0xDE, 0x93,
                    /* 09F0 */   0x0E, 0xE3, 0x91, 0xD0, 0x04, 0x3E, 0x2D, 0xC3,
                    /* 09F8 */   0xFA, 0xFF, 0x9F, 0x96, 0xF9, 0x39, 0x21, 0xFE,
                    /* 0A00 */   0x53, 0xCE, 0xFB, 0xC5, 0x83, 0xB2, 0x31, 0xA2,
                    /* 0A08 */   0xBC, 0x2A, 0xFB, 0x9C, 0x69, 0x14, 0x76, 0x4B,
                    /* 0A10 */   0x7E, 0x73, 0x78, 0x55, 0xF6, 0x69, 0xF9, 0xDC,
                    /* 0A18 */   0x22, 0xBD, 0x2F, 0x7B, 0xE4, 0x31, 0xE3, 0xC4,
                    /* 0A20 */   0x0A, 0x12, 0xE8, 0x7D, 0x23, 0x4A, 0xD8, 0x18,
                    /* 0A28 */   0xE1, 0x02, 0x3D, 0x2D, 0xB3, 0x63, 0xBB, 0x87,
                    /* 0A30 */   0xEC, 0xB3, 0x02, 0xEE, 0xEC, 0x00, 0x77, 0x7A,
                    /* 0A38 */   0xFC, 0xF4, 0x00, 0x38, 0x01, 0x7A, 0x7A, 0x00,
                    /* 0A40 */   0xDB, 0x79, 0x03, 0xEE, 0x81, 0x00, 0x71, 0xFC,
                    /* 0A48 */   0x47, 0x05, 0xBF, 0xB2, 0x50, 0x38, 0x7E, 0x6C,
                    /* 0A50 */   0xE7, 0xC7, 0x12, 0xDC, 0xE1, 0xC0, 0x47, 0x06,
                    /* 0A58 */   0x1F, 0x20, 0x71, 0x43, 0xF1, 0xA1, 0x02, 0x79,
                    /* 0A60 */   0x16, 0x00, 0xC5, 0xE8, 0xD9, 0x08, 0xD8, 0x0D,
                    /* 0A68 */   0xE6, 0xA5, 0x25, 0xCA, 0xFF, 0xFF, 0xBD, 0x81,
                    /* 0A70 */   0x9D, 0x52, 0x70, 0x07, 0x01, 0xF0, 0x1D, 0x03,
                    /* 0A78 */   0xC0, 0x3B, 0x18, 0x2E, 0x6B, 0xCC, 0x28, 0x21,
                    /* 0A80 */   0x30, 0x1A, 0x33, 0xEE, 0x10, 0xC2, 0x4F, 0x04,
                    /* 0A88 */   0xB8, 0x31, 0x7B, 0xDC, 0x1E, 0x33, 0xEE, 0x38,
                    /* 0A90 */   0xCB, 0x47, 0xF5, 0x94, 0x11, 0xCA, 0x07, 0x0E,
                    /* 0A98 */   0x76, 0xCE, 0x78, 0x23, 0xE0, 0x43, 0x07, 0x1E,
                    /* 0AA0 */   0x07, 0x18, 0xDC, 0x91, 0x02, 0x8C, 0x97, 0x03,
                    /* 0AA8 */   0x36, 0x76, 0x70, 0x07, 0x21, 0xA7, 0x40, 0x96,
                    /* 0AB0 */   0x0E, 0xA3, 0xB1, 0xE3, 0x64, 0x03, 0xE9, 0x18,
                    /* 0AB8 */   0xE3, 0x43, 0xAE, 0xC7, 0x8E, 0x1B, 0xAC, 0xC7,
                    /* 0AC0 */   0x8E, 0x3B, 0xBE, 0x60, 0xFF, 0xFF, 0xC7, 0x17,
                    /* 0AC8 */   0x30, 0x8C, 0x81, 0x8B, 0x1F, 0x06, 0xFA, 0xE6,
                    /* 0AD0 */   0xE7, 0xD1, 0x19, 0xDC, 0xC3, 0xF6, 0x09, 0x26,
                    /* 0AD8 */   0xC6, 0x1B, 0x4C, 0x88, 0x47, 0x96, 0x97, 0x96,
                    /* 0AE0 */   0x08, 0x0F, 0x2D, 0xBE, 0xB9, 0xBC, 0xB4, 0xF8,
                    /* 0AE8 */   0x16, 0x63, 0x94, 0x10, 0x11, 0x0E, 0x26, 0xCE,
                    /* 0AF0 */   0x13, 0x8C, 0x11, 0x0E, 0x3C, 0x8A, 0x21, 0x22,
                    /* 0AF8 */   0x9C, 0x40, 0x88, 0x93, 0x3E, 0xD9, 0x20, 0xE1,
                    /* 0B00 */   0x63, 0x84, 0x8D, 0x16, 0xE5, 0x09, 0x86, 0x8D,
                    /* 0B08 */   0x85, 0x9F, 0x57, 0x3C, 0x78, 0x7E, 0x5A, 0xF3,
                    /* 0B10 */   0x5D, 0xD0, 0x93, 0x39, 0xC7, 0x87, 0x2C, 0x4F,
                    /* 0B18 */   0xED, 0x71, 0xD2, 0x87, 0x59, 0xDC, 0xA0, 0x1E,
                    /* 0B20 */   0x1C, 0xD9, 0x5D, 0xC7, 0xC7, 0x6B, 0xEC, 0x29,
                    /* 0B28 */   0xC8, 0x43, 0xE0, 0x27, 0x02, 0x5F, 0x10, 0x3D,
                    /* 0B30 */   0x59, 0xDF, 0xF5, 0xD8, 0xBD, 0xCC, 0x18, 0xD5,
                    /* 0B38 */   0x4F, 0x01, 0x75, 0x4C, 0x39, 0x83, 0x57, 0x08,
                    /* 0B40 */   0x76, 0xCF, 0xF3, 0x21, 0xDB, 0x77, 0x49, 0x36,
                    /* 0B48 */   0x0A, 0xDC, 0x21, 0xC1, 0x67, 0x24, 0x7E, 0xAA,
                    /* 0B50 */   0xF0, 0x30, 0x3C, 0x0A, 0x18, 0x33, 0x78, 0x47,
                    /* 0B58 */   0x38, 0xB4, 0x10, 0x07, 0xFC, 0xBE, 0xCB, 0x86,
                    /* 0B60 */   0x1A, 0xE3, 0xF4, 0x7C, 0xFE, 0x60, 0x83, 0x80,
                    /* 0B68 */   0x0F, 0x75, 0xA8, 0x1E, 0xE6, 0x51, 0xBD, 0x14,
                    /* 0B70 */   0x32, 0x9C, 0xB3, 0x83, 0x3B, 0x08, 0xEC, 0xF1,
                    /* 0B78 */   0xC3, 0x83, 0xE0, 0x37, 0x4B, 0x3E, 0x08, 0x76,
                    /* 0B80 */   0xBE, 0x79, 0x83, 0x33, 0xC8, 0xFF, 0xFF, 0x18,
                    /* 0B88 */   0x60, 0x9F, 0xA9, 0x7C, 0x34, 0x41, 0x1C, 0x01,
                    /* 0B90 */   0xD1, 0xE7, 0x0F, 0x8F, 0xE1, 0x4D, 0x8E, 0x0F,
                    /* 0B98 */   0x07, 0x7B, 0xF4, 0xC0, 0x9D, 0x44, 0xE0, 0x1E,
                    /* 0BA0 */   0xBB, 0x0E, 0xDA, 0xD7, 0x38, 0x5F, 0xB4, 0x60,
                    /* 0BA8 */   0xDC, 0xF7, 0x9E, 0x45, 0xC0, 0x8F, 0xF1, 0xD8,
                    /* 0BB0 */   0x02, 0x8E, 0x43, 0x09, 0xB8, 0x83, 0x1D, 0xD7,
                    /* 0BB8 */   0x38, 0x84, 0xA2, 0xC0, 0xE8, 0x50, 0x82, 0x8B,
                    /* 0BC0 */   0x01, 0x24, 0x18, 0xC7, 0x38, 0xA3, 0xA1, 0x2F,
                    /* 0BC8 */   0x91, 0x3E, 0xA4, 0xC1, 0x19, 0x34, 0xEC, 0x79,
                    /* 0BD0 */   0x3E, 0xA1, 0x70, 0x7B, 0x02, 0x14, 0x9D, 0x50,
                    /* 0BD8 */   0x40, 0x86, 0xFB, 0x0C, 0x82, 0x3D, 0x21, 0xF0,
                    /* 0BE0 */   0x33, 0x08, 0xFB, 0xFF, 0x1F, 0x1C, 0x3D, 0xEE,
                    /* 0BE8 */   0xF7, 0x46, 0x9F, 0x1A, 0xD9, 0xDC, 0x1F, 0x02,
                    /* 0BF0 */   0x4E, 0xE0, 0xDC, 0xD9, 0xA9, 0x19, 0x77, 0x66,
                    /* 0BF8 */   0xC0, 0x9E, 0x3F, 0x3C, 0x04, 0x7E, 0x2E, 0xF0,
                    /* 0C00 */   0xF0, 0x3D, 0x04, 0xFC, 0xE0, 0x1F, 0x98, 0x0D,
                    /* 0C08 */   0x0E, 0xC6, 0x53, 0x84, 0xAF, 0x1D, 0x1C, 0x9C,
                    /* 0C10 */   0x9F, 0x06, 0x0C, 0xCE, 0x5F, 0xA1, 0x3E, 0xCF,
                    /* 0C18 */   0x33, 0x70, 0xEC, 0xA9, 0xD7, 0xF7, 0x0E, 0xCF,
                    /* 0C20 */   0xD7, 0x87, 0x0A, 0xFC, 0x4D, 0xCF, 0x87, 0x0A,
                    /* 0C28 */   0x70, 0x1C, 0x1E, 0xF8, 0x61, 0x85, 0x0D, 0xE1,
                    /* 0C30 */   0x51, 0x00, 0x7F, 0x6A, 0xF1, 0xF1, 0x2F, 0xCE,
                    /* 0C38 */   0x53, 0x04, 0xBB, 0x8D, 0x60, 0x0F, 0x17, 0x80,
                    /* 0C40 */   0xA3, 0x68, 0x67, 0x31, 0x54, 0x98, 0xB3, 0x18,
                    /* 0C48 */   0xF9, 0xFF, 0x9F, 0xA3, 0x50, 0x67, 0x31, 0x7A,
                    /* 0C50 */   0xB8, 0x00, 0x5C, 0x08, 0x3E, 0x1E, 0x80, 0xE6,
                    /* 0C58 */   0x20, 0xF0, 0xB8, 0xE0, 0x0B, 0xC1, 0x91, 0x1C,
                    /* 0C60 */   0xC8, 0xD3, 0x01, 0xE0, 0x53, 0x1E, 0x09, 0x3D,
                    /* 0C68 */   0x1F, 0x59, 0x10, 0x0C, 0xEA, 0x7C, 0xE0, 0x13,
                    /* 0C70 */   0x8A, 0x8F, 0x1D, 0xFC, 0x6C, 0xE0, 0x1B, 0xB9,
                    /* 0C78 */   0x87, 0xCA, 0x4F, 0xCD, 0x3E, 0x69, 0xF3, 0xE0,
                    /* 0C80 */   0x3F, 0x69, 0xD9, 0x80, 0x51, 0xA0, 0x61, 0xA0,
                    /* 0C88 */   0x46, 0xE4, 0x23, 0xD2, 0xFF, 0xFF, 0xB9, 0x0D,
                    /* 0C90 */   0x1B, 0x60, 0x68, 0xF4, 0x1C, 0x0E, 0xE3, 0x80,
                    /* 0C98 */   0xEB, 0x73, 0x38, 0x76, 0x40, 0x3E, 0x87, 0xC3,
                    /* 0CA0 */   0x3F, 0x47, 0xC3, 0x1F, 0x1B, 0x3B, 0xDD, 0xF3,
                    /* 0CA8 */   0x81, 0xC1, 0xBA, 0x7E, 0x63, 0x06, 0x06, 0xB6,
                    /* 0CB0 */   0x6F, 0x91, 0x07, 0x06, 0x1C, 0x51, 0xCF, 0xC6,
                    /* 0CB8 */   0x57, 0x08, 0x0F, 0x0C, 0x6C, 0x80, 0x1E, 0x18,
                    /* 0CC0 */   0xF0, 0x89, 0x05, 0x21, 0x27, 0x03, 0x43, 0x9D,
                    /* 0CC8 */   0x32, 0x8C, 0x1C, 0xF3, 0x89, 0xC3, 0xC3, 0xF0,
                    /* 0CD0 */   0xA1, 0x22, 0xEA, 0x33, 0xC0, 0x23, 0x1E, 0x1B,
                    /* 0CD8 */   0x1B, 0xFB, 0xFF, 0x8F, 0x0D, 0x2C, 0xC7, 0x16,
                    /* 0CE0 */   0x8F, 0x0D, 0xFC, 0x47, 0x78, 0xFC, 0xD8, 0xE0,
                    /* 0CE8 */   0x8C, 0xE5, 0xD1, 0xC4, 0x97, 0x99, 0x23, 0x3B,
                    /* 0CF0 */   0x8D, 0x33, 0x7B, 0x0D, 0xF1, 0xD1, 0xEE, 0xF1,
                    /* 0CF8 */   0xDB, 0x63, 0x03, 0x97, 0x85, 0xB1, 0x01, 0xA5,
                    /* 0D00 */   0x90, 0x63, 0x43, 0x1F, 0x52, 0x7C, 0x0A, 0xB0,
                    /* 0D08 */   0x71, 0x54, 0x32, 0x0F, 0x1F, 0xAF, 0x7C, 0x62,
                    /* 0D10 */   0x38, 0xBA, 0x20, 0x6F, 0xE8, 0xBE, 0x5C, 0xF8,
                    /* 0D18 */   0x48, 0x63, 0x30, 0x5F, 0x5A, 0x7C, 0x06, 0xE5,
                    /* 0D20 */   0x43, 0x04, 0x97, 0x86, 0x21, 0x02, 0xA5, 0x50,
                    /* 0D28 */   0x43, 0x44, 0x8F, 0xE7, 0xFF, 0xFF, 0x08, 0xE6,
                    /* 0D30 */   0x21, 0xB2, 0xA1, 0x81, 0xF7, 0x1B, 0xA3, 0xA1,
                    /* 0D38 */   0x01, 0xA1, 0x70, 0x43, 0x43, 0x1F, 0xD6, 0x7C,
                    /* 0D40 */   0x08, 0x60, 0x10, 0xBE, 0x0D, 0xB0, 0xAB, 0x80,
                    /* 0D48 */   0xAF, 0x42, 0x1E, 0xE0, 0x93, 0x28, 0x1B, 0x1E,
                    /* 0D50 */   0xF8, 0x06, 0xE5, 0xE1, 0x01, 0x9F, 0xF0, 0xC0,
                    /* 0D58 */   0x5E, 0x85, 0x87, 0x47, 0xCF, 0x4A, 0x1E, 0x1E,
                    /* 0D60 */   0x3C, 0x90, 0xC7, 0x08, 0x76, 0x0E, 0xF1, 0xE0,
                    /* 0D68 */   0xC0, 0x61, 0x62, 0x70, 0xA0, 0x38, 0xFA, 0xE3,
                    /* 0D70 */   0x86, 0xC0, 0x2E, 0xB3, 0x9E, 0x38, 0xBF, 0xB2,
                    /* 0D78 */   0x78, 0x50, 0xF8, 0xFF, 0xFF, 0x11, 0x00, 0xD6,
                    /* 0D80 */   0x71, 0x06, 0x7C, 0xC1, 0x0E, 0x07, 0xE8, 0x63,
                    /* 0D88 */   0x22, 0x1B, 0xC3, 0x43, 0xC4, 0x83, 0xAB, 0x07,
                    /* 0D90 */   0xE2, 0x6B, 0xC7, 0x6B, 0x31, 0xEE, 0x68, 0x00,
                    /* 0D98 */   0x2E, 0x15, 0x47, 0x03, 0xA0, 0x74, 0xB0, 0x05,
                    /* 0DA0 */   0xC7, 0x3D, 0xCD, 0x47, 0x3B, 0xCC, 0x1C, 0x3D,
                    /* 0DA8 */   0x80, 0xE7, 0x37, 0x8F, 0x96, 0x9F, 0xDF, 0x00,
                    /* 0DB0 */   0x47, 0x41, 0x0F, 0xB6, 0x74, 0xE0, 0x8E, 0x06,
                    /* 0DB8 */   0x83, 0x3A, 0xBF, 0x61, 0xFE, 0xFF, 0xE7, 0x37,
                    /* 0DC0 */   0x30, 0x44, 0x00, 0xD7, 0x99, 0xC6, 0xE7, 0x17,
                    /* 0DC8 */   0x38, 0x43, 0x3D, 0x68, 0x5F, 0x13, 0x3C, 0x6B,
                    /* 0DD0 */   0xDF, 0xB8, 0xD8, 0x39, 0x01, 0x5C, 0x03, 0xF2,
                    /* 0DD8 */   0x49, 0x07, 0x38, 0x02, 0x9F, 0xC4, 0x03, 0xFE,
                    /* 0DE0 */   0xA1, 0x81, 0x79, 0x58, 0x1E, 0x1A, 0xF0, 0x39,
                    /* 0DE8 */   0x1A, 0xE0, 0x4E, 0x14, 0xE0, 0xB9, 0x8D, 0xE0,
                    /* 0DF0 */   0x0E, 0x14, 0xC0, 0xE2, 0xFF, 0x7F, 0xA0, 0x00,
                    /* 0DF8 */   0x56, 0x47, 0x7C, 0x8F, 0x8B, 0x43, 0xE3, 0x10,
                    /* 0E00 */   0x1F, 0xD2, 0xCE, 0xD9, 0xE7, 0xAF, 0x33, 0xC5,
                    /* 0E08 */   0x9D, 0x45, 0xC0, 0x70, 0xA2, 0x47, 0xBC, 0xD3,
                    /* 0E10 */   0x0C, 0xE4, 0x07, 0x86, 0x84, 0xC0, 0xA0, 0x4E,
                    /* 0E18 */   0x40, 0x1E, 0x8A, 0x0F, 0x06, 0x1C, 0xD8, 0x47,
                    /* 0E20 */   0x04, 0x76, 0x2E, 0x60, 0x07, 0x28, 0xC3, 0xF1,
                    /* 0E28 */   0xB3, 0x80, 0x4F, 0x09, 0x0F, 0x35, 0xC7, 0xF1,
                    /* 0E30 */   0xB8, 0xE9, 0xBB, 0x99, 0x21, 0xD9, 0xD5, 0xE0,
                    /* 0E38 */   0xF9, 0x07, 0x7B, 0xDA, 0x85, 0x73, 0xC4, 0x05,
                    /* 0E40 */   0x17, 0x81, 0xCF, 0x3A, 0x1E, 0x05, 0x3F, 0x3D,
                    /* 0E48 */   0x78, 0x8E, 0x6F, 0x0C, 0x3E, 0x3D, 0x30, 0xF7,
                    /* 0E50 */   0x02, 0xCC, 0x1D, 0xBA, 0x85, 0x70, 0x4C, 0xAF,
                    /* 0E58 */   0x0F, 0x31, 0x8E, 0xFA, 0xB1, 0xA1, 0x2D, 0x01,
                    /* 0E60 */   0xDA, 0x50, 0x74, 0x07, 0x78, 0x19, 0x88, 0x12,
                    /* 0E68 */   0xE2, 0x08, 0x22, 0xB5, 0x86, 0xA2, 0x99, 0x47,
                    /* 0E70 */   0x8A, 0x12, 0x30, 0x9E, 0x61, 0x1A, 0x9B, 0x8C,
                    /* 0E78 */   0x20, 0x63, 0x84, 0x8E, 0x13, 0x2C, 0x4A, 0xB4,
                    /* 0E80 */   0x57, 0x80, 0xF6, 0x47, 0xCB, 0x56, 0xAC, 0xB1,
                    /* 0E88 */   0x38, 0xD2, 0xC9, 0x12, 0x3D, 0x6C, 0x1F, 0xB3,
                    /* 0E90 */   0xF1, 0xA7, 0x55, 0xCC, 0xFF, 0x9F, 0xE0, 0x55,
                    /* 0E98 */   0xC5, 0x07, 0x05, 0x1F, 0x00, 0xF0, 0x2E, 0x01,
                    /* 0EA0 */   0x75, 0x75, 0xF4, 0xB8, 0x7D, 0xDE, 0x00, 0xFF,
                    /* 0EA8 */   0xF5, 0x02, 0x4B, 0x50, 0xFE, 0x20, 0x50, 0x23,
                    /* 0EB0 */   0x33, 0xB4, 0xC7, 0xF9, 0x36, 0x63, 0xC8, 0x27,
                    /* 0EB8 */   0x27, 0x13, 0x58, 0xEC, 0x09, 0x15, 0x68, 0x0C,
                    /* 0EC0 */   0xFE, 0x69, 0xC3, 0xD7, 0x76, 0xCF, 0xD7, 0xE7,
                    /* 0EC8 */   0x38, 0x80, 0x0F, 0xFF, 0xFF, 0x73, 0x1C, 0x60,
                    /* 0ED0 */   0x68, 0x38, 0xB8, 0xA3, 0x0F, 0xDC, 0x2B, 0x09,
                    /* 0ED8 */   0x3F, 0xFC, 0x00, 0xCE, 0x80, 0x1E, 0x7E, 0xC0,
                    /* 0EE0 */   0x3E, 0x54, 0xDC, 0x10, 0x78, 0x84, 0x15, 0xD1,
                    /* 0EE8 */   0xC3, 0x80, 0x45, 0xC3, 0xA0, 0xCE, 0x6B, 0xD8,
                    /* 0EF0 */   0xFF, 0xFF, 0x79, 0x0D, 0xB6, 0x38, 0x70, 0x1D,
                    /* 0EF8 */   0x54, 0x7D, 0x36, 0x86, 0x33, 0xA8, 0xD3, 0xEE,
                    /* 0F00 */   0xFD, 0xAE, 0x40, 0x2E, 0x22, 0x1E, 0xF4, 0xF9,
                    /* 0F08 */   0x3C, 0x3B, 0xB0, 0x03, 0x1B, 0xF0, 0x1F, 0x1B,
                    /* 0F10 */   0x9C, 0x1B, 0xC0, 0x53, 0x74, 0x84, 0x63, 0x03,
                    /* 0F18 */   0xFB, 0x89, 0x0D, 0x38, 0x9D, 0xED, 0xE0, 0x5C,
                    /* 0F20 */   0xA1, 0xD8, 0x6D, 0x1F, 0x37, 0x34, 0xB0, 0xD9,
                    /* 0F28 */   0x18, 0x1A, 0xC8, 0xFE, 0xFF, 0x87, 0x4F, 0xE0,
                    /* 0F30 */   0x75, 0xE8, 0xE2, 0x97, 0x8A, 0xE7, 0x2F, 0x7E,
                    /* 0F38 */   0xB8, 0x03, 0x9C, 0x4B, 0x3B, 0xD9, 0xA1, 0xC4,
                    /* 0F40 */   0x1C, 0xEE, 0x00, 0x29, 0xFF, 0xFF, 0xC3, 0x1D,
                    /* 0F48 */   0xB8, 0xEE, 0x72, 0xEF, 0x0C, 0x2F, 0x0D, 0x9E,
                    /* 0F50 */   0xD3, 0xBB, 0x9D, 0x31, 0x5E, 0xEA, 0x8C, 0x10,
                    /* 0F58 */   0x85, 0xDD, 0x06, 0xA2, 0xD9, 0xDB, 0xE1, 0x8E,
                    /* 0F60 */   0x9C, 0xF0, 0x38, 0x66, 0xA4, 0x27, 0xBD, 0x60,
                    /* 0F68 */   0x91, 0x22, 0x1E, 0x4E, 0x94, 0x10, 0xC1, 0x5E,
                    /* 0F70 */   0x27, 0x9E, 0xF2, 0x1E, 0xEE, 0x98, 0x90, 0xC3,
                    /* 0F78 */   0x1D, 0xD0, 0x71, 0x7D, 0xB8, 0x03, 0x2A, 0x27,
                    /* 0F80 */   0x2A, 0xFC, 0xE1, 0x0E, 0x30, 0xFB, 0xFF, 0x3F,
                    /* 0F88 */   0xDC, 0x01, 0x8C, 0x3A, 0xA3, 0xE1, 0x0E, 0x77,
                    /* 0F90 */   0x60, 0x3B, 0xFD, 0x00, 0xE7, 0xFF, 0xFF, 0xE9,
                    /* 0F98 */   0x07, 0x78, 0x8F, 0x15, 0xC6, 0x18, 0x78, 0xB4,
                    /* 0FA0 */   0x25, 0x51, 0x20, 0x87, 0x81, 0x41, 0x11, 0x38,
                    /* 0FA8 */   0xC8, 0xA1, 0x8E, 0x06, 0x3B, 0xBD, 0x40, 0x99,
                    /* 0FB0 */   0xCB, 0x81, 0x9E, 0xC2, 0x33, 0x82, 0x0F, 0x60,
                    /* 0FB8 */   0x60, 0x3F, 0xD5, 0x01, 0x87, 0x53, 0x03, 0x3E,
                    /* 0FC0 */   0xD0, 0x09, 0x05, 0x3D, 0x0A, 0x9F, 0x4D, 0xC0,
                    /* 0FC8 */   0x7B, 0xA4, 0x03, 0x36, 0xFF, 0xFF, 0xB3, 0x09,
                    /* 0FD0 */   0x7B, 0x35, 0xFA, 0x6C, 0x82, 0x63, 0x31, 0xEA,
                    /* 0FD8 */   0x1B, 0xC4, 0x21, 0xBE, 0x74, 0xF8, 0xDC, 0xF8,
                    /* 0FE0 */   0x4E, 0xE3, 0x4B, 0x00, 0xE6, 0xFA, 0x61, 0x82,
                    /* 0FE8 */   0x31, 0x21, 0xF4, 0xC9, 0xF2, 0xA9, 0x0E, 0x38,
                    /* 0FF0 */   0x1D, 0x4E, 0xE0, 0x8D, 0x1E, 0x77, 0x5A, 0xF0,
                    /* 0FF8 */   0x70, 0x38, 0xB8, 0x67, 0xF3, 0x2C, 0xF1, 0x44,
                    /* 1000 */   0xE4, 0x71, 0xF8, 0x74, 0x02, 0xBC, 0x0E, 0x18,
                    /* 1008 */   0x98, 0x19, 0x84, 0x7F, 0x08, 0x61, 0xA7, 0x4F,
                    /* 1010 */   0x1F, 0x99, 0x3C, 0xF7, 0x77, 0x23, 0x9F, 0x4E,
                    /* 1018 */   0x00, 0x5F, 0xFF, 0xFF, 0xA3, 0x1E, 0xB0, 0x90,
                    /* 1020 */   0xA8, 0xE1, 0x9C, 0x87, 0x11, 0x05, 0x83, 0x3A,
                    /* 1028 */   0xEA, 0x01, 0xD6, 0x2E, 0x7A, 0x36, 0x86, 0xA0,
                    /* 1030 */   0x8B, 0xC0, 0x19, 0x84, 0x78, 0xBC, 0x7B, 0xC5,
                    /* 1038 */   0x8B, 0xE4, 0x3B, 0x40, 0x9C, 0x47, 0x3D, 0x83,
                    /* 1040 */   0xBD, 0x7D, 0x3C, 0x48, 0x44, 0x89, 0xF3, 0xA8,
                    /* 1048 */   0xE7, 0xD1, 0x87, 0xF2, 0xE4, 0x43, 0x9D, 0x7E,
                    /* 1050 */   0xAC, 0xB0, 0x81, 0x9E, 0xF8, 0x5E, 0xF4, 0x42,
                    /* 1058 */   0x1A, 0xE1, 0x51, 0x8F, 0x09, 0x7A, 0x79, 0xE8,
                    /* 1060 */   0x70, 0xE5, 0xA3, 0x1E, 0x60, 0xE5, 0xFF, 0x7F,
                    /* 1068 */   0xD4, 0x03, 0xF8, 0xFF, 0xFF, 0x3F, 0xEA, 0x81,
                    /* 1070 */   0xF9, 0xF4, 0x04, 0xF8, 0x3F, 0xD6, 0xE0, 0x8E,
                    /* 1078 */   0x8A, 0x60, 0x3B, 0x3F, 0x01, 0x2E, 0xFE, 0xFF,
                    /* 1080 */   0xE7, 0x27, 0x30, 0x0D, 0xDD, 0xE7, 0x27, 0x30,
                    /* 1088 */   0x8F, 0x16, 0xE6, 0x01, 0x01, 0x71, 0x56, 0x44,
                    /* 1090 */   0x85, 0x7F, 0xC8, 0x18, 0x0E, 0x15, 0x1C, 0x48,
                    /* 1098 */   0xBF, 0x28, 0x1F, 0x01, 0x81, 0xCB, 0x51, 0x11,
                    /* 10A0 */   0x38, 0x9C, 0x59, 0xF0, 0x42, 0x4E, 0x1D, 0xE8,
                    /* 10A8 */   0xF1, 0x18, 0xF4, 0x95, 0xC3, 0x57, 0x02, 0x7E,
                    /* 10B0 */   0xE4, 0x60, 0xA1, 0x8F, 0x1C, 0xA0, 0x3A, 0x2C,
                    /* 10B8 */   0x82, 0xEF, 0xC8, 0x01, 0x8E, 0xEB, 0x55, 0x60,
                    /* 10C0 */   0xFE, 0xFF, 0x07, 0x66, 0xB7, 0x83, 0xD7, 0x4F,
                    /* 10C8 */   0x4F, 0xE2, 0x31, 0xEA, 0x38, 0x43, 0x14, 0x8E,
                    /* 10D0 */   0x49, 0x0E, 0x06, 0x91, 0xDE, 0xC1, 0xD8, 0x00,
                    /* 10D8 */   0x5F, 0x5E, 0x7C, 0xA8, 0xF2, 0x31, 0x10, 0x18,
                    /* 10E0 */   0x42, 0x9C, 0x0D, 0x3F, 0x5D, 0x18, 0xF3, 0x74,
                    /* 10E8 */   0xF8, 0x31, 0x10, 0xB0, 0x2E, 0xF5, 0x0C, 0x88,
                    /* 10F0 */   0x12, 0x77, 0x0C, 0x04, 0x52, 0xFF, 0xFF, 0x63,
                    /* 10F8 */   0x20, 0x70, 0xBD, 0x04, 0x7A, 0xCC, 0x67, 0xFC,
                    /* 1100 */   0xE6, 0xF7, 0xE4, 0x17, 0xA5, 0xB6, 0xEB, 0x9F,
                    /* 1108 */   0xEE, 0x06, 0xC6, 0x7A, 0x08, 0x78, 0x02, 0xF4,
                    /* 1110 */   0xFD, 0xCF, 0xC7, 0x8A, 0x28, 0x01, 0xA3, 0xC4,
                    /* 1118 */   0x7A, 0x11, 0x34, 0x66, 0x8C, 0x60, 0xEF, 0x80,
                    /* 1120 */   0x31, 0x1F, 0x09, 0x3D, 0xC2, 0x68, 0xC1, 0x0D,
                    /* 1128 */   0xF4, 0x18, 0xC8, 0x84, 0x1D, 0x03, 0x01, 0x12,
                    /* 1130 */   0xFD, 0xFF, 0x8F, 0x81, 0x00, 0x23, 0x4F, 0x50,
                    /* 1138 */   0xC0, 0xF6, 0xFF, 0x7F, 0x82, 0x02, 0x0C, 0x1D,
                    /* 1140 */   0x05, 0xC1, 0x7C, 0x86, 0x02, 0xAC, 0x1D, 0x05,
                    /* 1148 */   0xC1, 0x3E, 0x5A, 0x98, 0xA3, 0xE0, 0x31, 0x5F,
                    /* 1150 */   0x1E, 0x06, 0xA2, 0xC1, 0x24, 0xFC, 0xFF, 0x8F,
                    /* 1158 */   0x82, 0xD8, 0x50, 0x40, 0x3A, 0x77, 0x38, 0xD4,
                    /* 1160 */   0xE9, 0x05, 0x7D, 0x50, 0xF0, 0xB0, 0x9F, 0x0A,
                    /* 1168 */   0x3C, 0x89, 0x53, 0xF5, 0xB5, 0xE0, 0x28, 0x9E,
                    /* 1170 */   0x00, 0x7C, 0x18, 0x04, 0xFE, 0x43, 0x83, 0x35,
                    /* 1178 */   0x89, 0xE2, 0x87, 0x06, 0xEA, 0xB3, 0x07, 0xF8,
                    /* 1180 */   0x86, 0x06, 0x8E, 0xA8, 0x67, 0x1C, 0xF4, 0x89,
                    /* 1188 */   0xC8, 0x67, 0x83, 0x98, 0x6F, 0x1E, 0x11, 0x9E,
                    /* 1190 */   0x3C, 0x7C, 0x7D, 0x60, 0x27, 0x4F, 0x9F, 0x9A,
                    /* 1198 */   0x02, 0x45, 0x79, 0xDF, 0xE0, 0x71, 0x4E, 0x39,
                    /* 11A0 */   0xA0, 0x3A, 0xFC, 0x82, 0xE3, 0xC0, 0x0B, 0xE3,
                    /* 11A8 */   0xFF, 0x7F, 0xE0, 0x65, 0xC7, 0x29, 0x1F, 0x4B,
                    /* 11B0 */   0xC0, 0x77, 0x26, 0x85, 0x73, 0x73, 0xF1, 0x1D,
                    /* 11B8 */   0x8F, 0x9D, 0x06, 0xC0, 0xA6, 0xE3, 0x34, 0x00,
                    /* 11C0 */   0x94, 0x62, 0x0D, 0x0C, 0x7D, 0x54, 0x31, 0x6A,
                    /* 11C8 */   0xEF, 0x93, 0xD0, 0xC4, 0xD8, 0x75, 0xE4, 0x25,
                    /* 11D0 */   0xC5, 0xD7, 0x93, 0x67, 0x2D, 0xF0, 0xF9, 0x18,
                    /* 11D8 */   0x1B, 0x50, 0x3A, 0x81, 0xF1, 0xA3, 0x27, 0x98,
                    /* 11E0 */   0x60, 0x0E, 0xE6, 0x55, 0xDC, 0x83, 0x7C, 0x12,
                    /* 11E8 */   0x62, 0xA7, 0x1C, 0xF0, 0xFE, 0xFF, 0x0F, 0x9E,
                    /* 11F0 */   0x80, 0x3D, 0x11, 0xA7, 0x4E, 0x54, 0xEC, 0x37,
                    /* 11F8 */   0x97, 0x0F, 0x9E, 0x80, 0xBC, 0x3B, 0x83, 0x11,
                    /* 1200 */   0xCE, 0x3F, 0xC4, 0x03, 0x44, 0x88, 0x67, 0x4E,
                    /* 1208 */   0x83, 0xC4, 0x09, 0xF2, 0x32, 0xF0, 0xE0, 0xE9,
                    /* 1210 */   0x7B, 0x67, 0x9C, 0x67, 0xCF, 0x28, 0x6F, 0x9E,
                    /* 1218 */   0x46, 0x38, 0xFA, 0x78, 0x06, 0x7A, 0xE7, 0x0C,
                    /* 1220 */   0xF1, 0xD6, 0xF9, 0x0C, 0xFA, 0xEA, 0x69, 0xB4,
                    /* 1228 */   0x58, 0xC1, 0x8F, 0xF1, 0xC1, 0x93, 0x45, 0x3E,
                    /* 1230 */   0x23, 0xD1, 0x83, 0x27, 0xEC, 0xFF, 0xFF, 0xC1,
                    /* 1238 */   0x13, 0xE0, 0xFF, 0xFF, 0xFF, 0xE0, 0x09, 0x18,
                    /* 1240 */   0x3B, 0x83, 0x01, 0xC7, 0x13, 0x1B, 0x38, 0xCE,
                    /* 1248 */   0x60, 0xC0, 0xE5, 0xE8, 0x0F, 0x9E, 0x93, 0x26,
                    /* 1250 */   0x8C, 0x23, 0x13, 0xF8, 0xFF, 0xFF, 0x47, 0x26,
                    /* 1258 */   0xC0, 0xD5, 0x58, 0x61, 0x8C, 0x81, 0x27, 0x7B,
                    /* 1260 */   0x1A, 0xD0, 0xE3, 0x80, 0x45, 0x1D, 0x98, 0x04,
                    /* 1268 */   0xC3, 0x59, 0x7C, 0x58, 0xF0, 0x11, 0x81, 0x1F,
                    /* 1270 */   0x16, 0x3C, 0x82, 0x8A, 0xC7, 0x49, 0x8F, 0x45,
                    /* 1278 */   0x3E, 0x77, 0xB2, 0x43, 0x82, 0x0F, 0x21, 0x1E,
                    /* 1280 */   0xA4, 0x0F, 0xB3, 0xE0, 0x39, 0x58, 0xC1, 0xBB,
                    /* 1288 */   0x2E, 0xC1, 0x39, 0x15, 0x00, 0x66, 0xFE, 0xFF,
                    /* 1290 */   0x04, 0xB5, 0xAB, 0x38, 0x5D, 0xB0, 0x00, 0x07,
                    /* 1298 */   0x30, 0xD9, 0x38, 0x86, 0x50, 0x0E, 0x1F, 0x5D,
                    /* 12A0 */   0x3D, 0x4D, 0x76, 0x24, 0x83, 0x19, 0x0B, 0x52,
                    /* 12A8 */   0x27, 0x01, 0x0F, 0xC0, 0x81, 0x60, 0xA4, 0x9D,
                    /* 12B0 */   0x44, 0xA3, 0x31, 0x9C, 0xD5, 0xC2, 0x08, 0xCE,
                    /* 12B8 */   0x20, 0x3E, 0x8E, 0x38, 0xD7, 0x91, 0x0A, 0xBD,
                    /* 12C0 */   0x1B, 0x1D, 0xA7, 0x50, 0x41, 0xEE, 0x25, 0x74,
                    /* 12C8 */   0xDE, 0xBE, 0x1B, 0xF0, 0x77, 0x9A, 0xC7, 0x62,
                    /* 12D0 */   0x60, 0xDF, 0x4E, 0xC0, 0x31, 0x17, 0xAB, 0x01,
                    /* 12D8 */   0x45, 0x0D, 0xC0, 0x68, 0x98, 0x53, 0xC0, 0x53,
                    /* 12E0 */   0x09, 0xB8, 0x82, 0xCD, 0x0D, 0x7D, 0x61, 0xB1,
                    /* 12E8 */   0xD6, 0xA9, 0xE8, 0xF8, 0xF4, 0x3E, 0x70, 0x70,
                    /* 12F0 */   0xC0, 0x63, 0xF6, 0x1E, 0x1C, 0x2C, 0x34, 0x0F,
                    /* 12F8 */   0x0E, 0x6C, 0xD9, 0x06, 0x87, 0x56, 0x72, 0x17,
                    /* 1300 */   0x21, 0x87, 0x0F, 0xFC, 0xEC, 0x60, 0xFC, 0xFF,
                    /* 1308 */   0x67, 0x07, 0x46, 0x40, 0xCF, 0x0E, 0x16, 0x92,
                    /* 1310 */   0x67, 0x07, 0x36, 0x7D, 0x67, 0x11, 0x50, 0x00,
                    /* 1318 */   0xF9, 0xDE, 0xE1, 0x73, 0xCB, 0xB3, 0x07, 0x1B,
                    /* 1320 */   0xC3, 0xA3, 0x8B, 0xD1, 0x8C, 0xCE, 0x35, 0xDD,
                    /* 1328 */   0x26, 0x50, 0x2A, 0x6E, 0x13, 0x14, 0xC4, 0x37,
                    /* 1330 */   0x00, 0x27, 0xA4, 0xD1, 0x3D, 0x0D, 0x37, 0x13,
                    /* 1338 */   0xE3, 0x3F, 0x62, 0xF8, 0x88, 0x70, 0x48, 0x67,
                    /* 1340 */   0x6B, 0x82, 0x79, 0x20, 0xF5, 0x7E, 0xF4, 0x65,
                    /* 1348 */   0x0F, 0x3F, 0xFB, 0x90, 0x0F, 0x2E, 0x9E, 0x86,
                    /* 1350 */   0xAF, 0x37, 0xE4, 0xDE, 0x41, 0xA7, 0xED, 0x33,
                    /* 1358 */   0x03, 0xE6, 0x30, 0xED, 0xEB, 0x54, 0x02, 0xCB,
                    /* 1360 */   0xBA, 0x4A, 0x50, 0x0F, 0x17, 0x10, 0x7A, 0xA1,
                    /* 1368 */   0xF1, 0xBD, 0x30, 0xC1, 0xC3, 0x99, 0x6F, 0x67,
                    /* 1370 */   0xEF, 0x25, 0xEC, 0x70, 0x98, 0xE0, 0xDD, 0x30,
                    /* 1378 */   0xC1, 0xBC, 0x83, 0x40, 0x8D, 0xCA, 0x83, 0xC0,
                    /* 1380 */   0x1C, 0xBF, 0x4C, 0x30, 0xDF, 0x18, 0x50, 0xC9,
                    /* 1388 */   0x2E, 0x5A, 0xF4, 0x0C, 0xF3, 0x0E, 0xE3, 0x4B,
                    /* 1390 */   0x82, 0xAF, 0x1F, 0x3E, 0xB7, 0x78, 0x01, 0xAF,
                    /* 1398 */   0x5B, 0x30, 0x08, 0x9E, 0x81, 0x5E, 0x5D, 0x0C,
                    /* 13A0 */   0x15, 0x27, 0xF0, 0xAB, 0xC0, 0x1B, 0x4D, 0x88,
                    /* 13A8 */   0x60, 0x86, 0x3D, 0xFC, 0x90, 0x6F, 0x31, 0x3E,
                    /* 13B0 */   0x5F, 0xFA, 0x06, 0x10, 0xEB, 0x75, 0xC4, 0xFF,
                    /* 13B8 */   0xFF, 0x91, 0xF2, 0x63, 0xCB, 0x01, 0x45, 0x7A,
                    /* 13C0 */   0xEB, 0xF3, 0x04, 0x7C, 0x96, 0xF1, 0x71, 0xF0,
                    /* 13C8 */   0xA4, 0x7C, 0xAF, 0x34, 0xFA, 0x2B, 0x84, 0x0F,
                    /* 13D0 */   0x3F, 0x46, 0xF6, 0x39, 0x87, 0x1D, 0x0C, 0xD9,
                    /* 13D8 */   0xA0, 0x38, 0xE2, 0x03, 0xC3, 0x4B, 0x8D, 0xA7,
                    /* 13E0 */   0xC2, 0xCE, 0x5D, 0x30, 0x0E, 0x0E, 0xEC, 0x58,
                    /* 13E8 */   0x84, 0x39, 0xEA, 0x81, 0xEB, 0x64, 0xE3, 0x93,
                    /* 13F0 */   0x03, 0x98, 0xE1, 0x31, 0x87, 0x6B, 0x9F, 0x37,
                    /* 13F8 */   0x7C, 0x33, 0xF0, 0xB8, 0xF8, 0x91, 0xC3, 0xC7,
                    /* 1400 */   0x3B, 0x86, 0x7D, 0x9A, 0x3E, 0x1A, 0xBD, 0xBC,
                    /* 1408 */   0xF9, 0xF4, 0x82, 0x81, 0xF5, 0xA5, 0x81, 0xC3,
                    /* 1410 */   0x1A, 0x2D, 0xEC, 0x63, 0xC0, 0x99, 0xFB, 0x42,
                    /* 1418 */   0x84, 0x3B, 0x75, 0x82, 0x05, 0x10, 0x7F, 0x2B,
                    /* 1420 */   0x79, 0xE4, 0xF0, 0x04, 0x0C, 0xC8, 0x72, 0xAF,
                    /* 1428 */   0x4B, 0x07, 0x22, 0x7E, 0xCA, 0xB3, 0xBA, 0x03,
                    /* 1430 */   0x11, 0x02, 0xE3, 0x71, 0xF4, 0xF1, 0xC3, 0xB3,
                    /* 1438 */   0xF1, 0x51, 0xC0, 0xC7, 0x28, 0xCF, 0xFC, 0x8C,
                    /* 1440 */   0x22, 0xBD, 0x32, 0x58, 0xCB, 0x89, 0x08, 0xA5,
                    /* 1448 */   0x02, 0x46, 0x81, 0x69, 0x74, 0xE7, 0xE0, 0x11,
                    /* 1450 */   0x61, 0x04, 0x67, 0x10, 0x8F, 0xD6, 0x37, 0x17,
                    /* 1458 */   0x18, 0xFF, 0xFF, 0x9B, 0x0B, 0xF0, 0x3A, 0x13,
                    /* 1460 */   0x01, 0x97, 0xEB, 0xA5, 0x67, 0x87, 0xBB, 0x2C,
                    /* 1468 */   0xB2, 0x69, 0x1B, 0xF7, 0x15, 0xD5, 0xA7, 0x63,
                    /* 1470 */   0x4F, 0xFC, 0xB4, 0x61, 0x9C, 0x8C, 0x00, 0x1F,
                    /* 1478 */   0x77, 0x1D, 0xC0, 0xC9, 0xFF, 0xFF, 0xAE, 0x03,
                    /* 1480 */   0xF0, 0xFF, 0xFF, 0x7F, 0xD7, 0xE1, 0xF7, 0x07,
                    /* 1488 */   0xDF, 0x75, 0x80, 0x6B, 0xA4, 0x55, 0x51, 0x11,
                    /* 1490 */   0xBF, 0x05, 0x85, 0x80, 0x41, 0x8D, 0xCE, 0xD7,
                    /* 1498 */   0x0A, 0xFC, 0xB1, 0x84, 0x81, 0xB3, 0xF3, 0x8A,
                    /* 14A0 */   0xE1, 0xF8, 0xC0, 0x3D, 0xBE, 0xD7, 0x95, 0xD3,
                    /* 14A8 */   0x7A, 0x36, 0xF0, 0x8D, 0xC5, 0x90, 0xEC, 0x82,
                    /* 14B0 */   0x8A, 0xBB, 0x5F, 0xF8, 0x46, 0xED, 0xA9, 0xBE,
                    /* 14B8 */   0x28, 0xBC, 0x27, 0xF8, 0x8E, 0xC0, 0xA0, 0x60,
                    /* 14C0 */   0xDC, 0x51, 0x31, 0x07, 0x54, 0x38, 0x04, 0x67,
                    /* 14C8 */   0x7C, 0x14, 0x98, 0x41, 0xFA, 0x90, 0xF2, 0x7A,
                    /* 14D0 */   0xE0, 0xC1, 0x32, 0xF7, 0xC7, 0x0D, 0x5D, 0x22,
                    /* 14D8 */   0x1E, 0x36, 0x9E, 0x0C, 0x9A, 0x43, 0xD1, 0x99,
                    /* 14E0 */   0xE0, 0x14, 0xDA, 0x1A, 0x96, 0x70, 0xDE, 0x37,
                    /* 14E8 */   0x42, 0x44, 0x09, 0xF6, 0xC2, 0xF1, 0xC6, 0xF0,
                    /* 14F0 */   0x34, 0x1B, 0x25, 0x5E, 0xA4, 0x80, 0xD1, 0xA2,
                    /* 14F8 */   0x04, 0xEB, 0x0D, 0x42, 0xA0, 0x91, 0x42, 0x04,
                    /* 1500 */   0x0C, 0x51, 0x1C, 0x96, 0xE0, 0xA2, 0xB7, 0x7F,
                    /* 1508 */   0x8D, 0x67, 0x6F, 0x02, 0x1D, 0x65, 0x1C, 0xE9,
                    /* 1510 */   0xB8, 0x83, 0x1E, 0xB6, 0x6F, 0xAC, 0xFC, 0x7C,
                    /* 1518 */   0xEF, 0x71, 0xF9, 0x02, 0x8A, 0x21, 0x78, 0xCD,
                    /* 1520 */   0xF0, 0x17, 0xC0, 0x07, 0x00, 0xBC, 0x6B, 0x40,
                    /* 1528 */   0xCD, 0xFC, 0xB1, 0x00, 0xD6, 0xFF, 0xFF, 0x46,
                    /* 1530 */   0x0F, 0xBE, 0xEB, 0x35, 0x5E, 0xFE, 0x20, 0x50,
                    /* 1538 */   0x97, 0x19, 0x7E, 0xF6, 0xF0, 0xCD, 0xD5, 0xF7,
                    /* 1540 */   0x80, 0xC3, 0x62, 0xB7, 0x6E, 0x3E, 0x1E, 0xF0,
                    /* 1548 */   0x0F, 0xFD, 0xA5, 0xD7, 0x87, 0x0A, 0xCF, 0xD7,
                    /* 1550 */   0x57, 0x5F, 0xDF, 0xBE, 0xC1, 0x7B, 0x39, 0x06,
                    /* 1558 */   0xEC, 0x09, 0xBE, 0x81, 0x83, 0x7C, 0xBC, 0xD8,
                    /* 1560 */   0xFF, 0xFF, 0x78, 0xE1, 0x8C, 0x83, 0x2B, 0x27,
                    /* 1568 */   0xA1, 0xC7, 0x02, 0x6B, 0x85, 0x41, 0xDD, 0xC2,
                    /* 1570 */   0xC1, 0xA5, 0x09, 0x5C, 0x57, 0x65, 0x1F, 0x6A,
                    /* 1578 */   0x7C, 0x08, 0xC6, 0x9F, 0x2F, 0x70, 0x01, 0x86,
                    /* 1580 */   0x4C, 0x4F, 0x65, 0x30, 0xAE, 0x29, 0x3E, 0x95,
                    /* 1588 */   0x61, 0xEE, 0x0E, 0x1E, 0x90, 0x8F, 0x18, 0xC0,
                    /* 1590 */   0x67, 0x15, 0x1E, 0x18, 0xEE, 0xB4, 0xE0, 0x9B,
                    /* 1598 */   0x92, 0x41, 0xCF, 0x31, 0xA8, 0x8F, 0x3C, 0x27,
                    /* 15A0 */   0xEF, 0x7B, 0xC2, 0xE3, 0x84, 0xA3, 0x9E, 0x83,
                    /* 15A8 */   0xE8, 0xD8, 0xC0, 0x71, 0xDC, 0x00, 0xC7, 0xE1,
                    /* 15B0 */   0x06, 0x77, 0xCE, 0x63, 0xE3, 0xC2, 0xC0, 0x3D,
                    /* 15B8 */   0x17, 0x78, 0x18, 0xBE, 0xE9, 0x78, 0x44, 0x98,
                    /* 15C0 */   0xF1, 0x3F, 0xEA, 0x19, 0x21, 0x20, 0xFE, 0x62,
                    /* 15C8 */   0xC4, 0x06, 0x0C, 0xA6, 0xFF, 0xFF, 0x80, 0xF9,
                    /* 15D0 */   0xAD, 0xCD, 0xD7, 0x37, 0xDC, 0x80, 0x7D, 0x75,
                    /* 15D8 */   0xF0, 0x05, 0xC3, 0x27, 0x30, 0xA3, 0xBF, 0xC0,
                    /* 15E0 */   0x3C, 0x89, 0xF9, 0xD8, 0x40, 0x2E, 0x70, 0x74,
                    /* 15E8 */   0xC0, 0xE0, 0x00, 0xF4, 0x80, 0xE1, 0x1F, 0x2E,
                    /* 15F0 */   0xDE, 0xE5, 0xC0, 0x70, 0x15, 0xF4, 0x71, 0xC1,
                    /* 15F8 */   0xC7, 0x1E, 0x2B, 0xBA, 0xCB, 0xA1, 0x6F, 0x72,
                    /* 1600 */   0x86, 0x89, 0x63, 0x88, 0x37, 0x30, 0x76, 0x97,
                    /* 1608 */   0x20, 0x87, 0x39, 0xA8, 0x77, 0x09, 0xCF, 0x81,
                    /* 1610 */   0x9F, 0x2D, 0x7C, 0x82, 0xF3, 0xCD, 0x27, 0xC4,
                    /* 1618 */   0xA9, 0x3E, 0x5A, 0xBD, 0x07, 0xF8, 0xE8, 0xF1,
                    /* 1620 */   0xDE, 0xE5, 0xB3, 0x13, 0xBB, 0x08, 0xF8, 0xC8,
                    /* 1628 */   0x65, 0x1C, 0x4F, 0xD3, 0x57, 0x40, 0x0F, 0xD9,
                    /* 1630 */   0x60, 0xAF, 0x1A, 0x3E, 0x81, 0xF9, 0xE8, 0x86,
                    /* 1638 */   0x3B, 0x46, 0x79, 0x26, 0x9E, 0xBE, 0xEF, 0x20,
                    /* 1640 */   0xEC, 0x48, 0x72, 0xD4, 0xA1, 0xAE, 0xE9, 0x11,
                    /* 1648 */   0xE5, 0x84, 0x0E, 0xC4, 0xB7, 0x36, 0x70, 0x46,
                    /* 1650 */   0xBB, 0x7F, 0xA0, 0xB7, 0xE9, 0x91, 0x61, 0x8E,
                    /* 1658 */   0x06, 0xB0, 0x2E, 0x21, 0x60, 0xF9, 0xFF, 0xDF,
                    /* 1660 */   0x0C, 0xD8, 0x1D, 0xC3, 0x97, 0x10, 0xE0, 0x13,
                    /* 1668 */   0xF4, 0x12, 0x81, 0xBE, 0x66, 0x78, 0x74, 0x8F,
                    /* 1670 */   0x00, 0x98, 0x2B, 0x06, 0x3B, 0x16, 0xF8, 0xB0,
                    /* 1678 */   0xE1, 0x6B, 0x00, 0xBB, 0x17, 0x38, 0xCC, 0x3D,
                    /* 1680 */   0x02, 0x54, 0xA0, 0x1E, 0x1E, 0x7C, 0xB5, 0xF7,
                    /* 1688 */   0x08, 0x50, 0x9C, 0x2C, 0x7D, 0x68, 0xF0, 0x40,
                    /* 1690 */   0xAD, 0xEA, 0x8C, 0x09, 0xE5, 0x88, 0xC9, 0xA1,
                    /* 1698 */   0xA2, 0xB1, 0x5B, 0x01, 0xBB, 0x5D, 0xFA, 0x26,
                    /* 16A0 */   0x01, 0x37, 0xCF, 0x2C, 0x50, 0x49, 0x6E, 0x12,
                    /* 16A8 */   0xD0, 0x61, 0xBA, 0xBC, 0xCC, 0xD0, 0xF9, 0x1F,
                    /* 16B0 */   0xB8, 0x6F, 0x75, 0x1E, 0xA1, 0x0F, 0x11, 0x0C,
                    /* 16B8 */   0xE5, 0x3D, 0xCF, 0xA7, 0x30, 0x7E, 0x86, 0xF0,
                    /* 16C0 */   0x01, 0x93, 0x9D, 0x29, 0xF8, 0x59, 0x13, 0x77,
                    /* 16C8 */   0x07, 0x30, 0xCA, 0x9B, 0xA7, 0x27, 0xC0, 0xCE,
                    /* 16D0 */   0x9F, 0x46, 0x7E, 0x37, 0x78, 0x17, 0xF0, 0xF4,
                    /* 16D8 */   0x7D, 0x2F, 0xE2, 0x87, 0x04, 0xF6, 0xFF, 0x3F,
                    /* 16E0 */   0x51, 0x80, 0x29, 0xD8, 0x9D, 0x0E, 0x0A, 0xF4,
                    /* 16E8 */   0x09, 0x79, 0x44, 0x46, 0xF5, 0x11, 0x81, 0x5F,
                    /* 16F0 */   0x92, 0xC0, 0x78, 0x24, 0xF1, 0x81, 0x02, 0x08,
                    /* 16F8 */   0xDD, 0x0B, 0x50, 0xA7, 0x0F, 0x7E, 0x78, 0xF6,
                    /* 1700 */   0x05, 0xD5, 0x98, 0xEF, 0x56, 0x8F, 0x70, 0x9E,
                    /* 1708 */   0x1C, 0xE6, 0x72, 0xC0, 0xE2, 0x5C, 0x93, 0x40,
                    /* 1710 */   0x75, 0xDC, 0xE5, 0xA3, 0x83, 0x7B, 0x6D, 0xC5,
                    /* 1718 */   0x0F, 0xEE, 0x9D, 0xE5, 0x9D, 0xCF, 0x50, 0x1E,
                    /* 1720 */   0x24, 0xF8, 0xAE, 0xAD, 0xE0, 0xB8, 0xAA, 0xC1,
                    /* 1728 */   0x38, 0xB6, 0xF0, 0x4B, 0x1E, 0xBC, 0xFF, 0xFF,
                    /* 1730 */   0x25, 0x0F, 0xB0, 0x30, 0x2C, 0x2E, 0xF8, 0xEF,
                    /* 1738 */   0x61, 0x20, 0x2A, 0x11, 0x06, 0x45, 0x60, 0x79,
                    /* 1740 */   0xF7, 0x56, 0x0A, 0x7F, 0xC8, 0x60, 0xBC, 0x29,
                    /* 1748 */   0xF0, 0x49, 0x63, 0x47, 0x0D, 0xD8, 0x19, 0x2A,
                    /* 1750 */   0xEE, 0xA6, 0x08, 0xD6, 0xA9, 0x62, 0x86, 0xC0,
                    /* 1758 */   0x83, 0x3D, 0x00, 0x7C, 0xBE, 0xF2, 0x19, 0x40,
                    /* 1760 */   0x51, 0x60, 0xC8, 0xFF, 0x1F, 0x86, 0x1D, 0xDA,
                    /* 1768 */   0xE1, 0xDC, 0x86, 0x01, 0x07, 0x23, 0xC6, 0x5D,
                    /* 1770 */   0x0A, 0xE1, 0x4E, 0xF9, 0x1D, 0x25, 0xF6, 0x73,
                    /* 1778 */   0x39, 0x9B, 0x2E, 0xEE, 0x6A, 0xEE, 0xD3, 0x09,
                    /* 1780 */   0xBB, 0x20, 0xC3, 0x38, 0x0B, 0x3C, 0x02, 0xBC,
                    /* 1788 */   0x9A, 0xF3, 0x0B, 0xF2, 0x0B, 0xF1, 0x0B, 0xC1,
                    /* 1790 */   0x1B, 0xB2, 0x6F, 0x4A, 0xCF, 0x06, 0x2F, 0x3B,
                    /* 1798 */   0x31, 0xDE, 0x8D, 0x7D, 0x4A, 0xF6, 0x79, 0xE7,
                    /* 17A0 */   0x05, 0xD9, 0x18, 0x47, 0x13, 0x31, 0xCA, 0xB9,
                    /* 17A8 */   0x3D, 0x0C, 0xBC, 0x26, 0x1B, 0xE5, 0xFD, 0xE4,
                    /* 17B0 */   0x85, 0x20, 0x62, 0x34, 0x43, 0x04, 0x8D, 0x11,
                    /* 17B8 */   0xE8, 0x7D, 0xD9, 0x78, 0x2F, 0xC8, 0x4C, 0xE0,
                    /* 17C0 */   0x5B, 0x41, 0x07, 0x17, 0x5F, 0x90, 0x01, 0x43,
                    /* 17C8 */   0xFF, 0xFF, 0x0B, 0x32, 0xB0, 0x3F, 0x19, 0x01,
                    /* 17D0 */   0x3E, 0x4F, 0x1C, 0xB8, 0x4B, 0x35, 0xF8, 0x4E,
                    /* 17D8 */   0x36, 0xC0, 0xFA, 0xFF, 0x7F, 0xB2, 0x01, 0xFB,
                    /* 17E0 */   0xD0, 0x7D, 0xB2, 0x01, 0xF7, 0x68, 0xE1, 0x1D,
                    /* 17E8 */   0x4D, 0x10, 0x27, 0x1B, 0x0A, 0xE4, 0xE0, 0xEB,
                    /* 17F0 */   0xA2, 0x70, 0x3C, 0xF4, 0x49, 0x84, 0x1E, 0x9D,
                    /* 17F8 */   0x7C, 0x94, 0xC4, 0x9D, 0x19, 0x3C, 0x91, 0x77,
                    /* 1800 */   0x16, 0x8F, 0xE2, 0x65, 0xD0, 0xF7, 0x82, 0x13,
                    /* 1808 */   0x79, 0x7D, 0xB0, 0x9C, 0x63, 0x24, 0xA8, 0x46,
                    /* 1810 */   0xE2, 0xE3, 0x03, 0xFC, 0xEB, 0x8B, 0x8F, 0x91,
                    /* 1818 */   0xF0, 0xF9, 0xFC, 0xC3, 0xF2, 0x60, 0x0C, 0xE9,
                    /* 1820 */   0x53, 0x24, 0x07, 0x79, 0x76, 0x79, 0x0C, 0xE1,
                    /* 1828 */   0x17, 0x48, 0xB8, 0xA7, 0x99, 0x03, 0xC0, 0xC8,
                    /* 1830 */   0xBA, 0x3C, 0xA2, 0xCF, 0x8E, 0x1C, 0x23, 0xAE,
                    /* 1838 */   0x2F, 0x8A, 0xBE, 0x02, 0xFB, 0x20, 0x70, 0x3E,
                    /* 1840 */   0xCF, 0x89, 0xE0, 0xFA, 0xFF, 0x9F, 0x13, 0x31,
                    /* 1848 */   0xA3, 0xE6, 0x47, 0x1B, 0x3E, 0x7E, 0x0E, 0xFE,
                    /* 1850 */   0x56, 0xF0, 0x40, 0xE9, 0x63, 0x51, 0x88, 0x47,
                    /* 1858 */   0x24, 0x7E, 0x4E, 0x04, 0x97, 0x89, 0x73, 0x22,
                    /* 1860 */   0x90, 0x38, 0xF4, 0xC2, 0x38, 0x2D, 0xE0, 0x06,
                    /* 1868 */   0xE2, 0x33, 0x25, 0x76, 0xCA, 0x27, 0xC2, 0xCE,
                    /* 1870 */   0x25, 0x98, 0xD1, 0x81, 0xEB, 0x72, 0xEF, 0xD1,
                    /* 1878 */   0x81, 0xFF, 0x24, 0x80, 0xC7, 0x7A, 0xBC, 0x03,
                    /* 1880 */   0xDF, 0x49, 0xDD, 0x77, 0x13, 0x5F, 0x64, 0x7C,
                    /* 1888 */   0x28, 0x7A, 0x6C, 0x01, 0x56, 0xFF, 0xFF, 0xF3,
                    /* 1890 */   0x1D, 0x60, 0x2A, 0xDC, 0xE1, 0x0E, 0x15, 0xE7,
                    /* 1898 */   0x7C, 0x07, 0x50, 0xE3, 0x6C, 0xFD, 0x7C, 0x07,
                    /* 18A0 */   0xAE, 0xFF, 0xFF, 0xF9, 0x0E, 0x86, 0xC8, 0xF3,
                    /* 18A8 */   0x1D, 0x40, 0xF6, 0xFF, 0xFF, 0x19, 0x00, 0x73,
                    /* 18B0 */   0x46, 0xC3, 0x9D, 0xEF, 0xC0, 0x76, 0xB4, 0x01,
                    /* 18B8 */   0xCC, 0x4D, 0xE3, 0xD1, 0x06, 0xDC, 0xC3, 0x85,
                    /* 18C0 */   0x3D, 0x0C, 0x9E, 0xE1, 0x0D, 0xE5, 0x43, 0x01,
                    /* 18C8 */   0x95, 0x74, 0xCA, 0xA6, 0x30, 0x66, 0xF1, 0x91,
                    /* 18D0 */   0xC1, 0x07, 0x05, 0x7E, 0x64, 0xF0, 0x39, 0xE1,
                    /* 18D8 */   0xF1, 0xE1, 0x50, 0xD9, 0x11, 0xC6, 0x97, 0x10,
                    /* 18E0 */   0x1F, 0x15, 0x58, 0xF4, 0x71, 0xD2, 0x13, 0x14,
                    /* 18E8 */   0x18, 0x87, 0xF8, 0xC8, 0xE7, 0x41, 0x3C, 0xD9,
                    /* 18F0 */   0xC0, 0x3A, 0x17, 0xFC, 0xFF, 0x9F, 0x0B, 0x00,
                    /* 18F8 */   0x33, 0x3A, 0x9F, 0x6F, 0x1A, 0xB9, 0x35, 0x82,
                    /* 1900 */   0xC8, 0xC6, 0x51, 0x84, 0x72, 0x38, 0xC9, 0xE2,
                    /* 1908 */   0x74, 0x11, 0xF4, 0x09, 0xC9, 0xD7, 0x8B, 0x53,
                    /* 1910 */   0x39, 0x55, 0xFC, 0x55, 0xC4, 0xCA, 0x21, 0x05,
                    /* 1918 */   0xEF, 0xE3, 0x8A, 0x35, 0xC3, 0x28, 0xDE, 0x6B,
                    /* 1920 */   0x44, 0xA3, 0xF1, 0x08, 0x1C, 0x08, 0x46, 0x70,
                    /* 1928 */   0x06, 0xF1, 0x49, 0xC4, 0xD9, 0x8E, 0x3A, 0x68,
                    /* 1930 */   0x25, 0xE7, 0x3D, 0x32, 0x06, 0x76, 0xD0, 0xC1,
                    /* 1938 */   0x04, 0xB9, 0x9E, 0xD0, 0x99, 0xFB, 0x72, 0xC0,
                    /* 1940 */   0x35, 0x40, 0xE8, 0x00, 0x62, 0x70, 0x5F, 0x52,
                    /* 1948 */   0x60, 0x5C, 0xA8, 0x7C, 0x49, 0xC1, 0x9C, 0x8D,
                    /* 1950 */   0x3C, 0x1B, 0xAB, 0x01, 0x45, 0x0D, 0xC0, 0x68,
                    /* 1958 */   0x98, 0x73, 0xC0, 0xC3, 0x09, 0xB8, 0x72, 0x5D,
                    /* 1960 */   0xF8, 0xD0, 0x2F, 0x09, 0xDF, 0x2D, 0x1E, 0x6C,
                    /* 1968 */   0xD8, 0xDC, 0xC0, 0xF5, 0xFF, 0x9F, 0x1B, 0xCC,
                    /* 1970 */   0xF1, 0x7B, 0x6E, 0xB0, 0xD0, 0x3C, 0x37, 0xF8,
                    /* 1978 */   0xF7, 0x3D, 0xEC, 0xE1, 0x10, 0x8F, 0xCC, 0xE6,
                    /* 1980 */   0xF6, 0x1C, 0x10, 0xE1, 0x15, 0xC1, 0x97, 0x1C,
                    /* 1988 */   0x8F, 0x0E, 0x38, 0x00, 0x7A, 0x74, 0xB0, 0x90,
                    /* 1990 */   0x3C, 0x3A, 0xB0, 0x25, 0x1C, 0x1D, 0x5A, 0x0F,
                    /* 1998 */   0x88, 0x5C, 0x9E, 0xB1, 0xC8, 0xC9, 0xE4, 0xF4,
                    /* 19A0 */   0x4E, 0xE6, 0x99, 0xE0, 0xEC, 0x9E, 0x2E, 0x82,
                    /* 19A8 */   0x04, 0x8A, 0x13, 0xFD, 0xD9, 0xC4, 0x13, 0x04,
                    /* 19B0 */   0x0E, 0x03, 0xF0, 0x04, 0x61, 0xA1, 0x79, 0x82,
                    /* 19B8 */   0x60, 0x8B, 0x78, 0xCD, 0x40, 0xDF, 0x3C, 0x61,
                    /* 19C0 */   0x60, 0xFF, 0xFF, 0x5F, 0xE7, 0x98, 0xF7, 0xDB,
                    /* 19C8 */   0x0D, 0xB9, 0x11, 0x00, 0x8F, 0x4B, 0xA1, 0x47,
                    /* 19D0 */   0x08, 0x0B, 0xCD, 0x47, 0x0D, 0xB0, 0xC5, 0x1B,
                    /* 19D8 */   0x21, 0x7A, 0x58, 0xBE, 0x95, 0x9C, 0xDF, 0xC9,
                    /* 19E0 */   0x1D, 0x1F, 0xB0, 0x02, 0xF6, 0xF8, 0x60, 0xA1,
                    /* 19E8 */   0x78, 0x7C, 0x60, 0xD3, 0x77, 0x37, 0x02, 0x05,
                    /* 19F0 */   0x90, 0x4F, 0x42, 0x3E, 0x9F, 0xBC, 0x0C, 0xB1,
                    /* 19F8 */   0x31, 0xBC, 0x4D, 0x19, 0xCD, 0xE8, 0x3C, 0xD3,
                    /* 1A00 */   0x96, 0x74, 0xBE, 0xE1, 0x29, 0x60, 0x74, 0x76,
                    /* 1A08 */   0x31, 0x88, 0x6F, 0x24, 0x56, 0x08, 0xA2, 0x63,
                    /* 1A10 */   0x08, 0xFE, 0xBA, 0xEB, 0x19, 0xBD, 0x29, 0x78,
                    /* 1A18 */   0xB6, 0x26, 0xA8, 0x07, 0x52, 0x27, 0x4F, 0x38,
                    /* 1A20 */   0xB7, 0x0B, 0xF6, 0xFF, 0x3F, 0x48, 0xB1, 0xBB,
                    /* 1A28 */   0xB5, 0xCF, 0xD8, 0xF0, 0x0F, 0x99, 0x1E, 0x8F,
                    /* 1A30 */   0x6D, 0x1C, 0x8C, 0xE8, 0x09, 0xCB, 0x87, 0x6C,
                    /* 1A38 */   0x7E, 0x98, 0x78, 0x52, 0x62, 0xE7, 0xC9, 0x04,
                    /* 1A40 */   0x6F, 0x94, 0x09, 0x7A, 0x3B, 0x5F, 0xD3, 0x9B,
                    /* 1A48 */   0xB6, 0x21, 0xA3, 0x32, 0x58, 0x43, 0x3C, 0xF3,
                    /* 1A50 */   0x32, 0x7D, 0xEB, 0xD3, 0x71, 0x1B, 0xAE, 0x1E,
                    /* 1A58 */   0x40, 0x8D, 0x85, 0x2B, 0x81, 0xD1, 0xA0, 0xC3,
                    /* 1A60 */   0x3D, 0x5D, 0xBD, 0x5D, 0xF9, 0xB2, 0xE0, 0x0B,
                    /* 1A68 */   0x83, 0x2F, 0x54, 0x3E, 0x7C, 0x1A, 0xEC, 0xBC,
                    /* 1A70 */   0x22, 0xBC, 0x30, 0xF8, 0x36, 0xC5, 0x8E, 0xD7,
                    /* 1A78 */   0x0C, 0x32, 0x54, 0x9C, 0xC0, 0x6F, 0xD7, 0x1C,
                    /* 1A80 */   0x2C, 0xEC, 0x63, 0xC0, 0xE3, 0x86, 0xEF, 0x65,
                    /* 1A88 */   0xEC, 0x26, 0x10, 0xEB, 0x31, 0xC9, 0x23, 0xE6,
                    /* 1A90 */   0xF7, 0xA9, 0x03, 0x8A, 0xF4, 0xFC, 0xE3, 0x09,
                    /* 1A98 */   0xF8, 0x92, 0xE5, 0xFB, 0xE3, 0x49, 0xF9, 0xAC,
                    /* 1AA0 */   0x6A, 0xF4, 0x57, 0x09, 0x5F, 0xCA, 0x8C, 0xEC,
                    /* 1AA8 */   0x13, 0x18, 0xBB, 0x49, 0xB2, 0x41, 0xF1, 0xAB,
                    /* 1AB0 */   0xA9, 0x0F, 0x21, 0x9E, 0x0A, 0xBB, 0x3F, 0x61,
                    /* 1AB8 */   0xC0, 0x8E, 0xC0, 0xA7, 0x43, 0x7E, 0x74, 0x09,
                    /* 1AC0 */   0x14, 0xA5, 0x78, 0x4C, 0xDD, 0x1C, 0x3C, 0x43,
                    /* 1AC8 */   0x83, 0x62, 0xE0, 0x0F, 0x92, 0xCD, 0x2E, 0xAE,
                    /* 1AD0 */   0xB1, 0x7C, 0x2F, 0x31, 0x22, 0x76, 0x40, 0x0C,
                    /* 1AD8 */   0xE5, 0x3D, 0xD2, 0xEA, 0x51, 0xC8, 0x1C, 0x3C,
                    /* 1AE0 */   0x22, 0xCF, 0xC6, 0xD3, 0x61, 0xA7, 0x0E, 0xFC,
                    /* 1AE8 */   0x24, 0x7C, 0x6A, 0xF2, 0xC1, 0xCE, 0x03, 0xF2,
                    /* 1AF0 */   0x50, 0xF8, 0x14, 0x19, 0xB0, 0xFF, 0xFF, 0xC0,
                    /* 1AF8 */   0x78, 0x98, 0x97, 0x00, 0x06, 0xED, 0xE1, 0x33,
                    /* 1B00 */   0xF4, 0x17, 0x23, 0xA3, 0xF3, 0xF3, 0xCE, 0xE9,
                    /* 1B08 */   0xF8, 0x1C, 0xEA, 0xA3, 0x86, 0xEF, 0x01, 0x98,
                    /* 1B10 */   0x33, 0x99, 0x4F, 0x00, 0x3E, 0xB3, 0x31, 0xA0,
                    /* 1B18 */   0x47, 0x7B, 0x06, 0xF2, 0xBE, 0xCA, 0x2E, 0x3F,
                    /* 1B20 */   0x18, 0xA4, 0x77, 0x5D, 0x9F, 0x7E, 0x30, 0xF7,
                    /* 1B28 */   0x33, 0x0E, 0x16, 0xE8, 0x58, 0xF9, 0x64, 0xE2,
                    /* 1B30 */   0x79, 0xC2, 0x1E, 0x29, 0x9C, 0xDB, 0x26, 0x8C,
                    /* 1B38 */   0x2B, 0x2F, 0xBF, 0x06, 0xF2, 0x5B, 0x39, 0xB8,
                    /* 1B40 */   0xAE, 0x18, 0x3E, 0x99, 0x80, 0x19, 0x1E, 0x13,
                    /* 1B48 */   0xE8, 0x3C, 0x43, 0x65, 0x8D, 0x0B, 0x75, 0xA4,
                    /* 1B50 */   0xF1, 0x35, 0x95, 0x61, 0x3F, 0x0C, 0x78, 0xD2,
                    /* 1B58 */   0x87, 0x79, 0x82, 0x2F, 0x6B, 0x18, 0x58, 0x5F,
                    /* 1B60 */   0x4A, 0x38, 0xAC, 0xD1, 0xC2, 0xBE, 0x0E, 0x18,
                    /* 1B68 */   0xF6, 0x11, 0x10, 0x77, 0xFD, 0x05, 0x0B, 0x20,
                    /* 1B70 */   0xFE, 0x92, 0xF0, 0x60, 0xE0, 0x09, 0x18, 0x90,
                    /* 1B78 */   0xC5, 0x59, 0x15, 0x15, 0xB1, 0x1C, 0x05, 0x80,
                    /* 1B80 */   0x41, 0xFD, 0xFF, 0x47, 0xE7, 0xFB, 0x37, 0xE0,
                    /* 1B88 */   0xE4, 0xB2, 0x8D, 0xBF, 0x47, 0xBC, 0x1E, 0x78,
                    /* 1B90 */   0xB0, 0xEC, 0xB2, 0xFD, 0x20, 0xF3, 0x80, 0xF0,
                    /* 1B98 */   0x1C, 0xF3, 0x0E, 0xF3, 0x50, 0xF0, 0x2E, 0x13,
                    /* 1BA0 */   0x21, 0xC8, 0x53, 0xF6, 0x3B, 0x42, 0x84, 0x50,
                    /* 1BA8 */   0x81, 0x5E, 0xB6, 0x8D, 0x17, 0xF4, 0x65, 0x22,
                    /* 1BB0 */   0x4A, 0x9C, 0x28, 0x11, 0x42, 0x19, 0xE3, 0x5C,
                    /* 1BB8 */   0x9E, 0x0E, 0x5E, 0x6A, 0xC2, 0x3D, 0x26, 0x04,
                    /* 1BC0 */   0x7E, 0x72, 0x88, 0x12, 0xD8, 0x63, 0x7C, 0xD9,
                    /* 1BC8 */   0x66, 0xE2, 0x2F, 0x32, 0xBA, 0x27, 0xF9, 0xB2,
                    /* 1BD0 */   0x0D, 0x38, 0xFF, 0xFF, 0x5F, 0xB6, 0xC1, 0x75,
                    /* 1BD8 */   0x71, 0x06, 0xF3, 0x8D, 0x16, 0x30, 0x77, 0x71,
                    /* 1BE0 */   0x06, 0xFB, 0x70, 0x61, 0x0F, 0x83, 0x87, 0x79,
                    /* 1BE8 */   0x4F, 0xF8, 0x50, 0x42, 0xE5, 0xC3, 0xA0, 0xCE,
                    /* 1BF0 */   0x25, 0xC0, 0xF1, 0xFF, 0x7F, 0x2E, 0x01, 0x46,
                    /* 1BF8 */   0x33, 0x7A, 0x03, 0x78, 0x15, 0x38, 0xED, 0x47,
                    /* 1C00 */   0x91, 0x87, 0x92, 0x43, 0x88, 0xF1, 0x3E, 0x12,
                    /* 1C08 */   0xC4, 0x08, 0x87, 0xFE, 0x5C, 0xE2, 0xEB, 0xC8,
                    /* 1C10 */   0x93, 0x5B, 0x88, 0x28, 0xEF, 0x27, 0x4F, 0x28,
                    /* 1C18 */   0x86, 0x88, 0x12, 0x2C, 0x46, 0xB0, 0xD0, 0x4F,
                    /* 1C20 */   0x25, 0xC6, 0x60, 0x87, 0x94, 0x20, 0xE1, 0x9E,
                    /* 1C28 */   0x4B, 0x98, 0xF4, 0xEF, 0x9D, 0xCE, 0xB9, 0x3E,
                    /* 1C30 */   0x97, 0x00, 0xFC, 0x08, 0x77, 0xB7, 0x45, 0x9F,
                    /* 1C38 */   0x1B, 0x7C, 0x4C, 0xF0, 0xF9, 0xC0, 0x10, 0x8D,
                    /* 1C40 */   0x5F, 0x0C, 0xC8, 0xF5, 0xCD, 0x77, 0x04, 0x1F,
                    /* 1C48 */   0x13, 0x5E, 0xE0, 0x18, 0x81, 0xFF, 0xFF, 0x01,
                    /* 1C50 */   0x86, 0x4E, 0xCF, 0x9D, 0xE0, 0x18, 0x94, 0x87,
                    /* 1C58 */   0x07, 0xFE, 0x03, 0x19, 0x3E, 0xFC, 0x75, 0x12,
                    /* 1C60 */   0x75, 0x4C, 0xE0, 0xC3, 0x83, 0x77, 0xFA, 0x73,
                    /* 1C68 */   0xC8, 0xA3, 0x18, 0x1D, 0x1C, 0x38, 0x9E, 0xEF,
                    /* 1C70 */   0x1A, 0x1C, 0x08, 0x0E, 0x27, 0x0F, 0x1E, 0xD8,
                    /* 1C78 */   0xC3, 0x19, 0x9B, 0x38, 0x1F, 0xC2, 0xD1, 0xF8,
                    /* 1C80 */   0x08, 0x00, 0x8E, 0xB3, 0x03, 0xF8, 0xA2, 0x0E,
                    /* 1C88 */   0x17, 0x7D, 0x38, 0xF0, 0x1D, 0x13, 0x06, 0xFA,
                    /* 1C90 */   0x6B, 0x86, 0x6F, 0x6F, 0x46, 0xE7, 0x71, 0x06,
                    /* 1C98 */   0x0C, 0xAA, 0xC1, 0x7A, 0xC0, 0xF0, 0xFF, 0xFF,
                    /* 1CA0 */   0x67, 0x40, 0xFC, 0x0C, 0x5E, 0x2E, 0x9E, 0x2C,
                    /* 1CA8 */   0xF8, 0x28, 0xC1, 0x77, 0xE2, 0xF3, 0x89, 0x02,
                    /* 1CB0 */   0x37, 0x18, 0x9F, 0xEA, 0x31, 0x67, 0x09, 0xB0,
                    /* 1CB8 */   0x5D, 0x57, 0x7D, 0x96, 0x00, 0x3E, 0xF2, 0x0E,
                    /* 1CC0 */   0x58, 0xA0, 0x39, 0x20, 0xC1, 0x38, 0x59, 0x01,
                    /* 1CC8 */   0x76, 0xC6, 0xF1, 0x64, 0x05, 0xE6, 0xFF, 0xFF,
                    /* 1CD0 */   0xF0, 0x7C, 0x04, 0xC7, 0x8F, 0x81, 0x2B, 0xB4,
                    /* 1CD8 */   0xE9, 0x53, 0xA3, 0x51, 0xAB, 0x06, 0x65, 0x6A,
                    /* 1CE0 */   0x94, 0x69, 0x50, 0xAB, 0x4F, 0xA5, 0xC6, 0x8C,
                    /* 1CE8 */   0x09, 0x3B, 0x55, 0x29, 0xE0, 0xB3, 0x41, 0x03,
                    /* 1CF0 */   0xB3, 0x3C, 0x0A, 0x81, 0x58, 0xCC, 0x9B, 0x42,
                    /* 1CF8 */   0x20, 0x0E, 0x0B, 0x42, 0x23, 0x1D, 0x8E, 0x04,
                    /* 1D00 */   0x62, 0xC9, 0x47, 0x2C, 0x81, 0x58, 0xAE, 0x07,
                    /* 1D08 */   0x10, 0x16, 0xF0, 0x4D, 0x22, 0x70, 0xF2, 0x46,
                    /* 1D10 */   0x12, 0x38, 0x79, 0x26, 0x08, 0xC4, 0x91, 0x41,
                    /* 1D18 */   0xA8, 0x50, 0x1D, 0x20, 0x2C, 0x26, 0x08, 0x0D,
                    /* 1D20 */   0xE5, 0x03, 0x84, 0x49, 0x7F, 0x1A, 0x08, 0x90,
                    /* 1D28 */   0x18, 0x01, 0x61, 0xE1, 0x1E, 0x12, 0x02, 0xB1,
                    /* 1D30 */   0xB4, 0xE7, 0x83, 0x40, 0x2C, 0xC4, 0x0A, 0x08,
                    /* 1D38 */   0x8B, 0x0B, 0x42, 0xC3, 0x69, 0x01, 0x61, 0x92,
                    /* 1D40 */   0xCC, 0x80, 0xB0, 0x40, 0x20, 0x54, 0xFE, 0x2B,
                    /* 1D48 */   0x5D, 0x20, 0x16, 0xE9, 0x06, 0x90, 0x2E, 0x5D,
                    /* 1D50 */   0x20, 0x0E, 0xA2, 0x07, 0x84, 0xC9, 0xF0, 0x03,
                    /* 1D58 */   0xC2, 0x42, 0x83, 0xD0, 0x68, 0xEF, 0x09, 0x01,
                    /* 1D60 */   0x12, 0x43, 0x20, 0x2C, 0xBE, 0x23, 0x10, 0x26,
                    /* 1D68 */   0xFE, 0x69, 0x22, 0x10, 0xE7, 0xB7, 0x04, 0x71,
                    /* 1D70 */   0x53, 0x1A, 0x62, 0x4D, 0x40, 0x4C, 0x83, 0x27,
                    /* 1D78 */   0x20, 0xA6, 0x08, 0x44, 0x40, 0x8E, 0xFD, 0xD2,
                    /* 1D80 */   0x10, 0x90, 0x35, 0x98, 0x02, 0x62, 0xD1, 0x41,
                    /* 1D88 */   0x04, 0x64, 0x21, 0xAA, 0x80, 0x58, 0x5E, 0x57,
                    /* 1D90 */   0x40, 0x2C, 0x3C, 0x88, 0x80, 0x9C, 0xF9, 0xCD,
                    /* 1D98 */   0x2A, 0x20, 0x2B, 0x78, 0x74, 0x3D, 0x04, 0xB0,
                    /* 1DA0 */   0xAF, 0xBC, 0x80, 0x9C, 0x1C, 0x44, 0x40, 0x0E,
                    /* 1DA8 */   0xEC, 0x0B, 0x88, 0xC5, 0x07, 0x11, 0x90, 0xB3,
                    /* 1DB0 */   0xFE, 0xC1, 0x05, 0xE4, 0xE0, 0x20, 0x1A, 0x04,
                    /* 1DB8 */   0xF9, 0x68, 0x08, 0xC8, 0xE9, 0x41, 0x04, 0x44,
                    /* 1DC0 */   0x7E, 0xE4, 0x02, 0xB1, 0xDA, 0x2F, 0xB9, 0x40,
                    /* 1DC8 */   0xAC, 0xE7, 0x4F, 0xAE, 0xA1, 0x10, 0x10, 0xAA,
                    /* 1DD0 */   0x5C, 0xDD, 0x49, 0x85, 0xFD, 0xFF, 0x73, 0x80,
                    /* 1DD8 */   0xD0, 0x5C, 0x20, 0x02, 0xB3, 0x0A, 0x77, 0x40,
                    /* 1DE0 */   0x4C, 0x15, 0x88, 0x80, 0x9C, 0x00, 0x88, 0xA6,
                    /* 1DE8 */   0x02, 0xA1, 0x29, 0xC1, 0xA8, 0xAE, 0x37, 0x88,
                    /* 1DF0 */   0x80, 0x9C, 0x00, 0x84, 0xA6, 0x02, 0xA1, 0x29,
                    /* 1DF8 */   0x41, 0x04, 0x68, 0x55, 0xF6, 0x80, 0x98, 0x52,
                    /* 1E00 */   0x10, 0xAA, 0x1C, 0x84, 0xA6, 0x03, 0xA1, 0xB2,
                    /* 1E08 */   0xDF, 0xFD, 0x3A, 0x2C, 0x10, 0x10, 0x01, 0x39,
                    /* 1E10 */   0x3A, 0x08, 0x15, 0xEE, 0x0F, 0x84, 0xE9, 0x7D,
                    /* 1E18 */   0x66, 0x08, 0xD0, 0xE9, 0x40, 0x04, 0xE4, 0xC4,
                    /* 1E20 */   0x20, 0x54, 0xC1, 0x0F, 0x23, 0x08, 0x11, 0x0B,
                    /* 1E28 */   0x42, 0x15, 0xFC, 0x30, 0x82, 0x12, 0x2D, 0x2F,
                    /* 1E30 */   0x0E, 0x01, 0x59, 0x1F, 0x08, 0xD5, 0x0B, 0x22,
                    /* 1E38 */   0x30, 0x67, 0x03, 0xA2, 0x79, 0x41, 0x68, 0x7E,
                    /* 1E40 */   0x30, 0xAA, 0xD5, 0x28, 0x10, 0xD3, 0x0F, 0x42,
                    /* 1E48 */   0xF3, 0x80, 0x08, 0xCC, 0x0A, 0xDE, 0x1E, 0x07,
                    /* 1E50 */   0xCC, 0x40, 0xA8, 0x4A, 0x10, 0x81, 0x39, 0x17,
                    /* 1E58 */   0x10, 0xCD, 0x0A, 0x42, 0xB3, 0x83, 0x51, 0xED,
                    /* 1E60 */   0x9F, 0x10, 0x0D, 0x80, 0x80, 0xD0, 0x7C, 0x20,
                    /* 1E68 */   0x3A, 0x0C, 0x90, 0xE7, 0xA0, 0x80, 0xAC, 0x11,
                    /* 1E70 */   0x84, 0x6A, 0x06, 0xD1, 0xF1, 0x80, 0x00, 0xD1,
                    /* 1E78 */   0xFC, 0x20, 0x54, 0xCF, 0xC7, 0x24, 0x18, 0xC9,
                    /* 1E80 */   0x00, 0x22, 0x20, 0x6B, 0xF9, 0xF2, 0x07, 0x22,
                    /* 1E88 */   0xFA, 0x41, 0x04, 0xE4, 0x4C, 0x20, 0x34, 0x23,
                    /* 1E90 */   0x18, 0x55, 0xFB, 0x2E, 0xD2, 0x71, 0x80, 0x80,
                    /* 1E98 */   0xD0, 0x44, 0x20, 0x1A, 0x1E, 0x79, 0xED, 0x1C,
                    /* 1EA0 */   0x1E, 0x03, 0xA1, 0x2A, 0x41, 0x04, 0x66, 0x8D,
                    /* 1EA8 */   0x0F, 0x4C, 0x81, 0x38, 0x21, 0x08, 0x55, 0x6F,
                    /* 1EB0 */   0xF7, 0xC0, 0x40, 0xF5, 0x82, 0xB0, 0xFF, 0xBF,
                    /* 1EB8 */   0x5A, 0xC1, 0x83, 0xA0, 0x20, 0x34, 0x11, 0x88,
                    /* 1EC0 */   0x0E, 0x19, 0xE4, 0xD5, 0x12, 0x88, 0xE8, 0x02,
                    /* 1EC8 */   0xA1, 0x3A, 0x41, 0x34, 0x64, 0x02, 0x44, 0xB3,
                    /* 1ED0 */   0x82, 0xD0, 0xEC, 0x60, 0x34, 0xFB, 0xF3, 0x45,
                    /* 1ED8 */   0xC3, 0x20, 0x5F, 0x25, 0x1D, 0x18, 0xC8, 0xE3,
                    /* 1EE0 */   0x31, 0x08, 0x51, 0xF4, 0x6D, 0x12, 0x88, 0x73,
                    /* 1EE8 */   0x3F, 0x80, 0x34, 0x50, 0xF2, 0x29, 0x0A, 0x42,
                    /* 1EF0 */   0xB4, 0x81, 0x08, 0xCC, 0x39, 0x80, 0x68, 0x36,
                    /* 1EF8 */   0x10, 0x9A, 0x15, 0x8C, 0x66, 0x55, 0x7D, 0xC4,
                    /* 1F00 */   0xA0, 0x4F, 0x9F, 0x43, 0x63, 0x2F, 0x3D, 0x81,
                    /* 1F08 */   0x58, 0xC9, 0xCB, 0xE6, 0xD1, 0x82, 0xFD, 0xBC,
                    /* 1F10 */   0x82, 0xB0, 0x4F, 0x59, 0x60, 0xF6, 0x32, 0xD2,
                    /* 1F18 */   0x31, 0x80, 0x80, 0x50, 0x3D, 0xCF, 0x33, 0x1D,
                    /* 1F20 */   0x01, 0x08, 0x88, 0x8E, 0x00, 0x04, 0x84, 0x66,
                    /* 1F28 */   0x04, 0xA1, 0xD9, 0x41, 0xA8, 0xAE, 0xA7, 0xA3,
                    /* 1F30 */   0x40, 0xAD, 0xED, 0xBF, 0x13, 0x84, 0x24, 0x03,
                    /* 1F38 */   0xA1, 0xAA, 0x7F, 0xF3, 0x41, 0x88, 0xE2, 0xB7,
                    /* 1F40 */   0xA3, 0x86, 0x49, 0x9E, 0x6A, 0x0F, 0x01, 0xEC,
                    /* 1F48 */   0xA5, 0x28, 0x70, 0xEB, 0x06, 0xA1, 0x39, 0x40,
                    /* 1F50 */   0x34, 0x50, 0x02, 0x44, 0xB5, 0xFC, 0x2E, 0x35,
                    /* 1F58 */   0x50, 0x02, 0x22, 0x30, 0x67, 0x02, 0xA2, 0x39,
                    /* 1F60 */   0x41, 0xA8, 0x0A, 0xFD, 0xC3, 0xA0, 0x20, 0x02,
                    /* 1F68 */   0x72, 0x0A, 0x10, 0x9A, 0x0A, 0x8C, 0xEA, 0xF0,
                    /* 1F70 */   0x3F, 0x00, 0x0A, 0x42, 0xB5, 0x82, 0xE8, 0x70,
                    /* 1F78 */   0x41, 0x12, 0x80, 0xB0, 0xA4, 0x20, 0x34, 0x45,
                    /* 1F80 */   0x83, 0x83, 0x09, 0x8D, 0x00, 0x48, 0x2B, 0x1C,
                    /* 1F88 */   0x6E, 0x68, 0x08, 0x70, 0x16, 0x0A, 0x84, 0x06,
                    /* 1F90 */   0x05, 0xD1, 0xB1, 0xC5, 0xA9, 0x41, 0x04, 0x68,
                    /* 1F98 */   0x81, 0x25, 0x0E, 0x20, 0x14, 0x84, 0xFE, 0xFF,
                    /* 1FA0 */   0x03, 0x80, 0x08, 0xD0, 0x69, 0x40, 0x74, 0x44,
                    /* 1FA8 */   0x20, 0x60, 0x54, 0x47, 0x8A, 0x21, 0x51, 0x10,
                    /* 1FB0 */   0x01, 0x5A, 0x28, 0x88, 0x8E, 0x3E, 0xA4, 0x05,
                    /* 1FB8 */   0x18, 0x13, 0x05, 0x42, 0xC5, 0x83, 0x50, 0xAD,
                    /* 1FC0 */   0x31, 0x40, 0x99, 0x72, 0x10, 0x81, 0x3A, 0x39,
                    /* 1FC8 */   0x88, 0x8E, 0x04, 0xA4, 0xC6, 0xA1, 0x82, 0x82,
                    /* 1FD0 */   0x50, 0xD5, 0x20, 0x54, 0x4E, 0x0E, 0x10, 0x26,
                    /* 1FD8 */   0x0D, 0x84, 0xCA, 0x05, 0xD1, 0x00, 0xAC, 0x1D,
                    /* 1FE0 */   0x44, 0xC7, 0x26, 0x02, 0x46, 0xE3, 0x83, 0x50,
                    /* 1FE8 */   0x49, 0x3D, 0x00, 0x99, 0x3E, 0x10, 0x01, 0x3A,
                    /* 1FF0 */   0x3D, 0x88, 0x0E, 0x03, 0x24, 0xC8, 0x41, 0x84,
                    /* 1FF8 */   0x82, 0x50, 0x89, 0x45, 0x40, 0x99, 0x60, 0x10,
                    /* 2000 */   0x1D, 0x7F, 0x08, 0x88, 0xC0, 0x2C, 0x23, 0x09,
                    /* 2008 */   0x08, 0x13, 0x07, 0x42, 0xC5, 0x82, 0x50, 0x21,
                    /* 2010 */   0x51, 0x40, 0x59, 0x0C, 0x10, 0x1A, 0x24, 0x0B,
                    /* 2018 */   0x18, 0x0B, 0x07, 0x42, 0xC3, 0x82, 0xE8, 0x78,
                    /* 2020 */   0x45, 0xBA, 0x00, 0x31, 0xC9, 0x20, 0x34, 0x02,
                    /* 2028 */   0x08, 0x0D, 0x0B, 0x22, 0x40, 0x12, 0x06, 0x90,
                    /* 2030 */   0x82, 0xD0, 0x08, 0x20, 0x34, 0x2B, 0x08, 0xD5,
                    /* 2038 */   0x5E, 0x06, 0x94, 0x25, 0x06, 0xD1, 0x91, 0x81,
                    /* 2040 */   0xA4, 0x39, 0x9C, 0x50, 0x10, 0x81, 0x39, 0x0D,
                    /* 2048 */   0x10, 0x4D, 0x08, 0x42, 0x13, 0x83, 0x50, 0x79,
                    /* 2050 */   0x6D, 0x40, 0x58, 0x7A, 0x10, 0x1D, 0x1F, 0xC8,
                    /* 2058 */   0x83, 0x51, 0xC7, 0x07, 0x02, 0x42, 0x53, 0x81,
                    /* 2060 */   0xE8, 0xC0, 0x43, 0xEA, 0x1C, 0x78, 0x28, 0x08,
                    /* 2068 */   0x55, 0x0F, 0xA2, 0xC3, 0x03, 0x29, 0x04, 0xC2,
                    /* 2070 */   0x74, 0x26, 0x3A, 0xD6, 0xD0, 0x46, 0x07, 0x03,
                    /* 2078 */   0xFA, 0x08, 0x16, 0xA8, 0xFF, 0xFF, 0x6A, 0x2A,
                    /* 2080 */   0x81, 0x30, 0x75, 0x20, 0x54, 0x3F, 0x08, 0xCD,
                    /* 2088 */   0x0A, 0x22, 0x50, 0xEB, 0xCB, 0x74, 0x10, 0xA0,
                    /* 2090 */   0x20, 0x34, 0x03, 0x88, 0x06, 0x40, 0x80, 0xA8,
                    /* 2098 */   0x9A, 0x4E, 0x03, 0xA0, 0x20, 0x3A, 0xA4, 0x90,
                    /* 20A0 */   0x54, 0xC7, 0x12, 0xDA, 0x0A, 0x84, 0xA5, 0x05,
                    /* 20A8 */   0xA1, 0xC2, 0x7A, 0x81, 0x32, 0x91, 0x20, 0x54,
                    /* 20B0 */   0x38, 0x88, 0x8E, 0x06, 0x4E, 0x01, 0xA2, 0xA3,
                    /* 20B8 */   0x0A, 0x01, 0xA3, 0xD9, 0x41, 0xA8, 0x9E, 0x60,
                    /* 20C0 */   0x80, 0x4C, 0x1C, 0x88, 0x00, 0x9D, 0x04, 0x44,
                    /* 20C8 */   0x83, 0x25, 0x20, 0x34, 0x29, 0x20, 0x8D, 0x0D,
                    /* 20D0 */   0x48, 0xA5, 0x16, 0x3B, 0x46, 0x51, 0x10, 0x1A,
                    /* 20D8 */   0x05, 0x44, 0x80, 0xCE, 0x05, 0xA2, 0xC3, 0x1C,
                    /* 20E0 */   0x49, 0x76, 0xCA, 0xA4, 0x20, 0x54, 0x2C, 0x88,
                    /* 20E8 */   0x0E, 0x17, 0x04, 0x44, 0x80, 0x8E, 0x0A, 0x46,
                    /* 20F0 */   0x63, 0x83, 0x50, 0x29, 0xCD, 0x00, 0x99, 0x2E,
                    /* 20F8 */   0x10, 0x01, 0x3A, 0x35, 0x88, 0xC0, 0xAC, 0x21,
                    /* 2100 */   0xDA, 0x21, 0x81, 0x82, 0xD0, 0x68, 0xD9, 0x40,
                    /* 2108 */   0x59, 0x50, 0x10, 0x1D, 0xED, 0x48, 0x37, 0x30,
                    /* 2110 */   0x26, 0x1F, 0x84, 0x86, 0x02, 0xA1, 0x21, 0x41,
                    /* 2118 */   0x68, 0x80, 0x72, 0x87, 0x38, 0x0A, 0x42, 0xE5,
                    /* 2120 */   0xD4, 0x03, 0x61, 0x61, 0x40, 0xA8, 0xD0, 0x7C,
                    /* 2128 */   0x47, 0x3B, 0xDA, 0x0F, 0x90, 0x06, 0x04, 0x61,
                    /* 2130 */   0xF1, 0x40, 0xE8, 0xFF, 0x1F
                })
                Method (WGWE, 2, NotSerialized)
                {
                    Sleep (0xC8)
                    If (LEqual (WEI1, Zero))
                    {
                        Store (Arg0, WEI1)
                        Store (Arg1, WED1)
                    }
                    Else
                    {
                        Store (Arg0, WEI2)
                        Store (Arg1, WED2)
                    }
                    \RMDT.P3("Notify WMID from WGWE", Arg0, Arg1)
                    Notify (WMID, 0x80)
                }
            }
        }
    }
    
    OperationRegion (CMS1, SystemIO, 0x72, 0x02)
    Field (CMS1, ByteAcc, NoLock, Preserve)
    {
        CMSI,   8,
        CMSD,   8
    }
    
    IndexField (CMSI, CMSD, ByteAcc, NoLock, Preserve)
    {
        Offset (0x77),
        HSDC,   8,
        HSDS,   8,
        HBUC,   8,
        HBUS,   8
    }
    
    Method (CMSW, 2, NotSerialized)
    {
        Store (Arg0, CMSI)
        Store (Arg1, CMSD)
    }
    
    Scope (\)
    {
        Device (NFC1)
        {
            Name (_HID, EisaId ("SKTD000"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (NFCE, 0x03))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
        
        Device (NFC2)
        {
            Name (_HID, EisaId ("NXP5442"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (NFCE, 0x02))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
        
        Device (NFC3)
        {
            Name (_HID, EisaId ("ICV0A12"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (NFCE, One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
    
    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }
    
    Method (P8XH, 3, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D)
        }
        
        If (LEqual (Arg0, One))
        {
            Store (Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)
            ), P80D)
        }
        
        If (LEqual (Arg0, 0x02))
        {
            Store (Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)
            ), P80D)
        }
        
        If (LEqual (Arg0, 0x03))
        {
            Store (Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)
            ), P80D)
        }
        
        If (LEqual (Arg0, 0x04))
        {
            Store (Or (And (P80D, Zero), Arg1), P80D)
        }
        
        If (LEqual (Arg2, Zero)) {}
        If (LEqual (Arg2, One))
        {
            Store (P80D, P80H)
        }
    }
    
    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8,
        SSMF,   8
    }
    
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }
    
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Arg0, \_SB.PCI0.LPCB.H_EC.SLPT)
        Store (Zero, P80D)
        P8XH (Zero, Arg0, Zero)
        Store (Arg0, SLPS)
        If (And (ICNF, 0x10))
        {
            If (CondRefOf (\_SB.IAOE.PTSL))
            {
                Store (Arg0, \_SB.IAOE.PTSL)
            }
        }
        
        If (LEqual (Arg0, 0x03))
        {
            P8XH (0x04, 0x53, Zero)
            P8XH (0x04, 0x53, One)
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }
        
        If (LEqual (Arg0, 0x04))
        {
            P8XH (0x04, 0x54, Zero)
            P8XH (0x04, 0x54, One)
            CMSW (0x60, 0x60)
        }
        
        If (LEqual (Arg0, 0x05))
        {
            P8XH (0x04, 0x55, Zero)
            P8XH (0x04, 0x55, One)
        }
        
        GLSD ()
        Store (One, AOAL)
        GLRS ()
        If (CondRefOf (\_SB.TPM.PTS))
        {
            \_SB.TPM.PTS (Arg0)
        }
        
        If (LEqual (\_SB.PCI0.RP07.PSPX, One))
        {
            Store (One, \_SB.PCI0.RP07.PSPX)
            Store (One, \_SB.PCI0.RP07.PSPX)
            Store (One, \_SB.PCI0.RP07.PMSX)
        }
    }
    
    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        If (LOr(LLess(Arg0,1),LGreater(Arg0,5))) { Store(3,Arg0) }
        Store (0xC4, SSMP)
        \_TZ.TZ00.HOTI ()
        Notify (\_TZ.TZ00, 0x80)
        Store (0x02, \_SB.PCI0.LPCB.GR03)
        Store (Zero, P80D)
        Store (0x02, \_SB.PCI0.LPCB.GH01)
        CMSW (0x60, Zero)
        If (LLess (OSYS, 0x07DC))
        {
            GLSD ()
            Store (WLON, WLRF)
            Store (BTON, WL2F)
            GLRS ()
        }
        
        If (LEqual (\_SB.PCI0.LPCB.H_EC.AOAM, Zero))
        {
            Store (One, WLRF)
        }
        
        Store (CMST, \_SB.PCI0.LPCB.H_EC.MMST)
        Store (CDST, \_SB.PCI0.LPCB.H_EC.DMST)
        If (And (ICNF, 0x10))
        {
            If (And (\_SB.PCI0.GFX0.TCHE, 0x0100))
            {
                If (LEqual (\_SB.IAOE.ITMR, One))
                {
                    If (LAnd (And (\_SB.IAOE.IBT1, One), And (\_SB.IAOE.WKRS, 0x02)))
                    {
                        Store (Or (And (\_SB.PCI0.GFX0.STAT, 0xFFFFFFFC), One), \_SB.PCI0.GFX0.STAT)
                    }
                    Else
                    {
                        Store (And (\_SB.PCI0.GFX0.STAT, 0xFFFFFFFC), \_SB.PCI0.GFX0.STAT)
                    }
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.AOAM))
                    {
                        If (LAnd (And (\_SB.PCI0.LPCB.H_EC.AOAM, One), LOr (And (\_SB.PCI0.LPCB.H_EC.ECWK, One
                        ), And (\_SB.PCI0.LPCB.H_EC.WKWL, One))))
                        {
                            Store (Or (And (\_SB.PCI0.GFX0.STAT, 0xFFFFFFFC), One), \_SB.PCI0.GFX0.STAT)
                        }
                        Else
                        {
                            Store (And (\_SB.PCI0.GFX0.STAT, 0xFFFFFFFC), \_SB.PCI0.GFX0.STAT)
                        }
                    }
                }
            }
        }
        
        If (NEXP)
        {
            If (And (OSCC, 0x02))
            {
                \_SB.PCI0.NHPG ()
            }
            
            If (And (OSCC, 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }
        
        If (LEqual (Arg0, 0x03))
        {
            Store (0xC9, SSMP)
            P8XH (0x04, 0xE3, Zero)
            P8XH (0x04, 0xE3, One)
        }
        
        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
            Store (One, \_SB.PCI0.LPCB.H_EC.AMPC)
            Release (\_SB.PCI0.LPCB.H_EC.ECMX)
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x14)
            }
            
            If (LEqual (Arg0, 0x03))
            {
                \_SB.PCI0.ACEL.WAKE ()
            }
            
            If (LEqual (Arg0, 0x04))
            {
                \_SB.PCI0.ACEL._INI ()
            }
            
            If (LEqual (OSYS, 0x07D2))
            {
                If (And (\_PR.CFGD, One))
                {
                    If (LGreater (\_PR.CPU0._PPC, Zero))
                    {
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                    Else
                    {
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                }
            }
            
            If (LEqual (ECON, One))
            {
                If (LNotEqual (LIDS, \_SB.PCI0.GFX0.CLID))
                {
                    If (IGDS)
                    {
                        If (LEqual (LIDS, Zero))
                        {
                            Store (0x80000000, \_SB.PCI0.GFX0.CLID)
                        }
                        
                        If (LEqual (LIDS, One))
                        {
                            Store (0x80000003, \_SB.PCI0.GFX0.CLID)
                        }
                    }
                    
                    Notify (\_SB.LID0, 0x80)
                }
                
                If (LOr (LGreaterEqual (OSYS, 0x07D9), LEqual (OSYS, 0x03E9)))
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.WIN7)
                }
                Else
                {
                    Store (Zero, \_SB.PCI0.LPCB.H_EC.WIN7)
                }
                
                \_SB.PCI0.LPCB.H_EC.PWUP (0x07, One)
                \_SB.PCI0.LPCB.H_EC.GBAP ()
                Notify (\_SB.AC, 0x80)
                Notify (\_SB.BAT0, 0x80)
                Notify (\_SB.BAT0, 0x81)
                If (LNotEqual (\_SB.PCI0.LPCB.H_EC.RPWR, PWRS))
                {
                    Store (\_SB.PCI0.LPCB.H_EC.RPWR, PWRS)
                    PNOT ()
                }
            }
            
            If (LEqual (RP1D, Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero)
            }
            
            If (LEqual (RP2D, Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero)
            }
            
            If (LEqual (RP3D, Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero)
            }
            
            If (LEqual (RP4D, Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero)
            }
            
            If (LEqual (RP5D, Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero)
            }
            
            If (LEqual (RP6D, Zero))
            {
                Notify (\_SB.PCI0.RP06, Zero)
            }
            
            If (LEqual (RP7D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP07, Zero)
                }
            }
            
            If (LEqual (RP8D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP08, Zero)
                }
            }
        }
        
        If (LEqual (Arg0, 0x04))
        {
            \_SB.PCI0.GFX0._DOD ()
            Store (0xC9, SSMP)
            P8XH (0x04, 0xE4, Zero)
            P8XH (0x04, 0xE4, One)
        }
        
        If (LEqual (Arg0, 0x05))
        {
            Store (0xC9, SSMP)
            P8XH (0x04, 0xE5, Zero)
            P8XH (0x04, 0xE5, One)
        }
        
        If (\_SB.PCI0.LPCB.H_EC.HOTF)
        {
            Store (Zero, \_SB.PCI0.LPCB.H_EC.HOTF)
            Notify (\_TZ.TZ00, 0x81)
        }
        
        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            \_SB.PCI0.XHC.XWAK ()
        }
        
        If (LEqual (\_SB.PCI0.LPCB.H_EC.PWBW, One))
        {
            Notify (\_SB.PWRB, 0x02)
        }
        
        Return (Package (0x02)
        {
            Zero,
            Zero
        })
    }
    
    Method (GETB, 3, Serialized)
    {
        Multiply (Arg0, 0x08, Local0)
        Multiply (Arg1, 0x08, Local1)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }
    
    Method (PNOT, 0, Serialized)
    {
        If (LGreater (TCNT, One))
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Notify (\_PR.CPU0, 0x81)
                }
            }
            
            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Notify (\_PR.CPU1, 0x81)
                }
            }
            
            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Notify (\_PR.CPU2, 0x81)
                }
            }
            
            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Notify (\_PR.CPU3, 0x81)
                }
            }
            
            If (And (PDC4, 0x08))
            {
                Notify (\_PR.CPU4, 0x80)
                If (And (PDC4, 0x10))
                {
                    Notify (\_PR.CPU4, 0x81)
                }
            }
            
            If (And (PDC5, 0x08))
            {
                Notify (\_PR.CPU5, 0x80)
                If (And (PDC5, 0x10))
                {
                    Notify (\_PR.CPU5, 0x81)
                }
            }
            
            If (And (PDC6, 0x08))
            {
                Notify (\_PR.CPU6, 0x80)
                If (And (PDC6, 0x10))
                {
                    Notify (\_PR.CPU6, 0x81)
                }
            }
            
            If (And (PDC7, 0x08))
            {
                Notify (\_PR.CPU7, 0x80)
                If (And (PDC7, 0x10))
                {
                    Notify (\_PR.CPU7, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Notify (\_PR.CPU0, 0x81)
        }
        
        If (LEqual (ECON, One))
        {
            \_SB.PCI0.LPCB.H_EC.PWUP (0x07, One)
            If (LGreaterEqual (OSYS, 0x07D6))
            {
                Notify (\_SB.AC, 0x81)
                Notify (\_SB.BAT0, 0x81)
            }
            Else
            {
                Notify (\_SB.AC, 0x80)
                Notify (\_SB.BAT0, 0x80)
            }
        }
    }
    
    OperationRegion (MBAR, SystemMemory, Add (ShiftLeft (\_SB.PCI0.MHBR, 0x0F), 0x5000), 0x1000)
    Field (MBAR, ByteAcc, NoLock, Preserve)
    {
        Offset (0x938),
        PWRU,   4,
        Offset (0x9A0),
        PPL1,   15,
        PL1E,   1,
        CLP1,   1
    }
    
    Name (CLMP, Zero)
    Name (PLEN, Zero)
    Name (PLSV, 0x8000)
    Name (CSEM, Zero)
    Method (SPL1, 0, Serialized)
    {
        Name (PPUU, Zero)
        If (LEqual (CSEM, One))
        {
            Return (Zero)
        }
        
        Store (One, CSEM)
        Store (PPL1, PLSV)
        Store (PL1E, PLEN)
        Store (CLP1, CLMP)
        If (LEqual (PWRU, Zero))
        {
            Store (One, PPUU)
        }
        Else
        {
            ShiftLeft (Decrement (PWRU), 0x02, PPUU)
        }
        
        Multiply (PLVL, PPUU, Local0)
        Divide (Local0, 0x03E8, , Local1)
        Store (Local1, PPL1)
        Store (One, PL1E)
        Store (One, CLP1)
    }
    
    Method (RPL1, 0, Serialized)
    {
        Store (PLSV, PPL1)
        Store (PLEN, PL1E)
        Store (CLMP, CLP1)
        Store (Zero, CSEM)
    }
    
    Name (DDPS, Zero)
    Name (UAMS, Zero)
    Method (GUAM, 1, Serialized)
    {
        If (LNotEqual (Arg0, DDPS))
        {
            Store (Arg0, DDPS)
            Store (LAnd (Arg0, Not (PWRS)), UAMS)
            If (Arg0)
            {
                P8XH (Zero, 0xC5, Zero)
                P8XH (One, Zero, Zero)
                ADBG ("Enter CS")
                If (PSCP)
                {
                    If (LAnd (CondRefOf (\_PR.CPU0._PSS), CondRefOf (\_PR.CPU0._PPC)))
                    {
                        Subtract (SizeOf (\_PR.CPU0._PSS), One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                }
                
                If (PLCS)
                {
                    SPL1 ()
                }
            }
            Else
            {
                P8XH (Zero, 0xC5, Zero)
                P8XH (One, 0xAB, Zero)
                ADBG ("Exit CS")
                If (PSCP)
                {
                    If (CondRefOf (\_PR.CPU0._PPC))
                    {
                        Store (Zero, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                }
                
                If (PLCS)
                {
                    RPL1 ()
                }
            }
            
            Sleep (VRRD)
            If (CondRefOf (\_SB.PCI0.I2C0.SHUB.PI2C.PUAM))
            {
                \_SB.PCI0.I2C0.SHUB.PI2C.PUAM ()
            }
            
            Sleep (VRRD)
            If (CondRefOf (\_SB.PCI0.PAUD.PUAM))
            {
                \_SB.PCI0.PAUD.PUAM ()
            }
            
            Sleep (VRRD)
        }
    }
    
    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, TRTD))
        {
            Store (Arg1, DTSF)
            Store (Zero, TRPD)
            Return (DTSF)
        }
        
        If (LEqual (Arg0, TRTI))
        {
            Store (Zero, TRPH)
        }
        
        If (LEqual (Arg0, PFTI))
        {
            Store (Zero, TRPF)
        }
        
        Return (SMIF)
    }
    
    Scope (_SB)
    {
        Device (BIND)
        {
            Name (_HID, "INT33D2")  // _HID: Hardware ID
            Name (_CID, "PNP0C40")  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LAnd (And (IUBE, One), LEqual (OSYS, 0x07DC)))
                {
                    Return (0x0F)
                }
                
                Return (Zero)
            }
        }
        
        Device (CIND)
        {
            Name (_HID, "INT33D3")  // _HID: Hardware ID
            Name (_CID, "PNP0C60")  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LAnd (And (IUCE, One), LEqual (OSYS, 0x07DC)))
                {
                    Return (0x0F)
                }
                
                Return (Zero)
            }
        }
        
        Device (DIND)
        {
            Name (_HID, "INT33D4")  // _HID: Hardware ID
            Name (_CID, "PNP0C70")  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LAnd (And (IUDE, One), LEqual (OSYS, 0x07DC)))
                {
                    Return (0x0F)
                }
                
                Return (Zero)
            }
        }
    }
    
    Name (LPBR, 0x000F804C)
    OperationRegion (GPLR, SystemMemory, Or (PEBS, LPBR, LPBR), One)
    Field (GPLR, AnyAcc, NoLock, Preserve)
    {
        GPCE,   1
    }
    
    Name (GPL, Zero)
    Name (RAPM, Zero)
    Method (GLSD, 0, Serialized)
    {
        Store (GPCE, GPL)
        Store (SSMF, RAPM)
        If (LEqual (GPCE, One))
        {
            Store (0xFF, SSMF)
            Store (Zero, GPCE)
        }
    }
    
    Method (GLRS, 0, Serialized)
    {
        Store (RAPM, SSMF)
        Store (GPL, GPCE)
    }
    
    Scope (_SB.PCI0)
    {
        Method (PTMA, 0, NotSerialized)
        {
            Return (PFMA)
        }
        
        Method (PTMS, 0, NotSerialized)
        {
            Return (PFMS)
        }
        
        Method (PTIA, 0, NotSerialized)
        {
            Return (PFIA)
        }
        
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            CMSW (0x60, Zero)
            Store (0x07D0, OSYS)
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Linux"))
                {
                    Store (0x03E8, OSYS)
                }
                
                If (_OSI ("Windows 2001"))
                {
                    Store (0x07D1, OSYS)
                }
                
                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (0x07D1, OSYS)
                }
                
                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x07D2, OSYS)
                }
                
                If (_OSI ("Windows 2001.1"))
                {
                    Store (0x07D3, OSYS)
                }
                
                If (_OSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS)
                }
                
                If (_OSI ("Windows 2009"))
                {
                    If (LOr (LEqual (_REV, 0x03), LEqual (_REV, 0x05)))
                    {
                        Store (0x03E9, OSYS)
                    }
                    Else
                    {
                        Store (0x07D9, OSYS)
                    }
                }
                
                If (_OSI ("Windows 2012"))
                {
                    Store (0x07DC, OSYS)
                }
                
                If (_OSI ("!Windows 2009"))
                {
                    Store (0x03E8, OSYS)
                }
                
                If (_OSI ("NOT_WINP_KEY"))
                {
                    Store (0x03E8, OSYS)
                }
                
                If (_OSI ("WINP_NOT"))
                {
                    Store (0x03E9, OSYS)
                }
            }
        }
        
        Method (NHPG, 0, Serialized)
        {
            Store (Zero, ^RP01.HPEX)
            Store (Zero, ^RP02.HPEX)
            Store (Zero, ^RP03.HPEX)
            Store (Zero, ^RP04.HPEX)
            Store (Zero, ^RP05.HPEX)
            Store (Zero, ^RP06.HPEX)
            Store (Zero, ^RP07.HPEX)
            Store (Zero, ^RP08.HPEX)
            Store (One, ^RP01.HPSX)
            Store (One, ^RP02.HPSX)
            Store (One, ^RP03.HPSX)
            Store (One, ^RP04.HPSX)
            Store (One, ^RP05.HPSX)
            Store (One, ^RP06.HPSX)
            Store (One, ^RP07.HPSX)
            Store (One, ^RP08.HPSX)
        }
        
        Method (NPME, 0, Serialized)
        {
            Store (Zero, ^RP01.PMEX)
            Store (Zero, ^RP02.PMEX)
            Store (Zero, ^RP03.PMEX)
            Store (Zero, ^RP04.PMEX)
            Store (Zero, ^RP05.PMEX)
            Store (Zero, ^RP06.PMEX)
            Store (Zero, ^RP07.PMEX)
            Store (Zero, ^RP08.PMEX)
            Store (One, ^RP01.PMSX)
            Store (One, ^RP02.PMSX)
            Store (One, ^RP03.PMSX)
            Store (One, ^RP04.PMSX)
            Store (One, ^RP05.PMSX)
            Store (One, ^RP06.PMSX)
            Store (One, ^RP07.PMSX)
            Store (One, ^RP08.PMSX)
        }
    }
    
    Scope (\)
    {
        Name (PICM, Zero)
        Name (PRWP, Package (0x02)
        {
            Zero,
            Zero
        })
        Method (GPRW, 2, NotSerialized)
        {
            Store (Arg0, Index (PRWP, Zero))
            Store (ShiftLeft (SS1, One), Local0)
            Or (Local0, ShiftLeft (SS2, 0x02), Local0)
            Or (Local0, ShiftLeft (SS3, 0x03), Local0)
            Or (Local0, ShiftLeft (SS4, 0x04), Local0)
            If (And (ShiftLeft (One, Arg1), Local0))
            {
                Store (Arg1, Index (PRWP, One))
            }
            Else
            {
                ShiftRight (Local0, One, Local0)
                FindSetLeftBit (Local0, Index (PRWP, One))
            }
            
            Return (PRWP)
        }
    }
    
    Scope (_SB)
    {
        Name (OSCI, Zero)
        Name (OSCO, Zero)
        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            If (LEqual (Arg0, Buffer (0x10)
            {
                /* 0000 */   0x6E, 0xB0, 0x11, 0x08, 0x27, 0x4A, 0xF9, 0x44,
                /* 0008 */   0x8D, 0x60, 0x3C, 0xBB, 0xC2, 0x2E, 0x7B, 0x48
            }))
            {
                If (LEqual (Arg1, One))
                {
                    If (And (CAP0, 0x04))
                    {
                        If (LEqual (RTD3, Zero))
                        {
                            And (CAP0, 0x3B, CAP0)
                            Or (STS0, 0x10, STS0)
                        }
                    }
                    
                    If (And (CAP0, 0x20))
                    {
                        If (CondRefOf (\_SB.PCCD.PENB))
                        {
                            If (LEqual (^PCCD.PENB, Zero))
                            {
                                And (CAP0, 0x1F, CAP0)
                                Or (STS0, 0x10, STS0)
                            }
                        }
                        Else
                        {
                            And (CAP0, 0x1F, CAP0)
                            Or (STS0, 0x10, STS0)
                        }
                    }
                }
                Else
                {
                    And (STS0, 0xFFFFFF00, STS0)
                    Or (STS0, 0x0A, STS0)
                }
            }
            Else
            {
                And (STS0, 0xFFFFFF00, STS0)
                Or (STS0, 0x06, STS0)
            }
            
            Return (Arg3)
        }
        
        Device (PEPD)
        {
            Name (_HID, "INT33A1")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80"))  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PEPP, Zero)
            Name (DEVS, Package (0x03)
            {
                0x02,
                Package (0x01)
                {
                    "\\_SB.PCI0.GFX0"
                },
                
                Package (0x01)
                {
                    "\\_SB.PCI0.SAT0.PRT1"
                }
            })
            Name (DEVX, Package (0x08)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0",
                    Ones
                },
                
                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT1",
                    Ones
                },
                
                Package (0x02)
                {
                    "\\_SB.PCI0.UA01",
                    Ones
                },
                
                Package (0x02)
                {
                    "\\_SB.PCI0.SDHC",
                    Ones
                },
                
                Package (0x02)
                {
                    "\\_SB.PCI0.I2C0",
                    Ones
                },
                
                Package (0x02)
                {
                    "\\_SB.PCI0.I2C1",
                    Ones
                },
                
                Package (0x02)
                {
                    "\\_SB.PCI0.XHC",
                    Ones
                },
                
                Package (0x02)
                {
                    "HDAUDIOFUNC_01&VEN_10EC&DEV_0282&SUBSYS_00000000&REV_1000\x04&a02b74b&0&0001",
                    Ones
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (OSYS, 0x07DC))
                {
                    If (LEqual (And (CDID, 0xF000), 0x9000))
                    {
                        If (LEqual (S0ID, One))
                        {
                            Return (0x0F)
                        }
                    }
                }
                
                Return (Zero)
            }
            
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LEqual (Arg0, Buffer (0x10)
                {
                    /* 0000 */   0xE0, 0xBF, 0xFE, 0xB8, 0xF8, 0xBA, 0x4B, 0x45,
                    /* 0008 */   0xAE, 0xCD, 0x49, 0xFB, 0x91, 0x13, 0x7B, 0x21
                }))
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                            0x07
                        })
                    }
                    
                    If (LEqual (Arg2, One))
                    {
                        Store (One, PEPP)
                        Return (0x0F)
                    }
                    
                    If (LEqual (Arg2, 0x02))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            While (One)
                            {
                                Store (PEPY, _T_0)
                                If (LEqual (_T_0, One))
                                {
                                    Return (Package (0x02)
                                    {
                                        One,
                                        Package (0x01)
                                        {
                                            "\\_SB.PCI0.GFX0"
                                        }
                                    })
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x02))
                                    {
                                        Return (Package (0x02)
                                        {
                                            One,
                                            Package (0x01)
                                            {
                                                "\\_SB.PCI0.SAT0.PRT1"
                                            }
                                        })
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x03))
                                        {
                                            Return (DEVS)
                                        }
                                        Else
                                        {
                                            Return (Package (0x01)
                                            {
                                                Zero
                                            })
                                        }
                                    }
                                }
                                
                                Break
                            }
                        }
                        
                        If (LEqual (Arg1, One))
                        {
                            If (LNot (And (PEPY, One)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, Zero)), One))
                            }
                            
                            If (LNot (And (PEPY, 0x02)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, One)), One))
                            }
                            
                            If (LNot (And (PEPY, 0x04)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x02)), One))
                            }
                            
                            If (LNot (And (PEPY, 0x08)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x03)), One))
                            }
                            
                            If (LNot (And (PEPY, 0x10)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x04)), One))
                            }
                            
                            If (LNot (And (PEPY, 0x20)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x05)), One))
                            }
                            
                            If (LNot (And (PEPY, 0x40)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x06)), One))
                            }
                            
                            If (LNot (And (PEPY, 0x80)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x07)), One))
                            }
                            
                            Return (DEVX)
                        }
                    }
                }
                
                Return (One)
            }
        }
    }
    
    Scope (_SB)
    {
        Device (BTKL)
        {
            Name (_HID, "INT3420")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Windows 2012"))
                {
                    If (LEqual (BID, BW2C))
                    {
                        Return (0x0F)
                    }
                }
                
                Return (Zero)
            }
            
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                And (GL0A, 0x7F, GL0A)
            }
            
            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                Or (GL0A, 0x80, GL0A)
            }
            
            Method (PSTS, 0, NotSerialized)
            {
                Return (RDGP (0x57))
            }
        }
    }
    
    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00001810, 0x06) {}
        Processor (CPU1, 0x02, 0x00001810, 0x06) {}
        Processor (CPU2, 0x03, 0x00001810, 0x06) {}
        Processor (CPU3, 0x04, 0x00001810, 0x06) {}
        Processor (CPU4, 0x05, 0x00001810, 0x06) {}
        Processor (CPU5, 0x06, 0x00001810, 0x06) {}
        Processor (CPU6, 0x07, 0x00001810, 0x06) {}
        Processor (CPU7, 0x08, 0x00001810, 0x06) {}
    }
    
    Scope (_TZ)
    {
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (One)
            }
            
            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                Store (One, VFN0)
            }
            
            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                Store (Zero, VFN0)
            }
        }
        
        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
        }
        
        ThermalZone (TZ00)
        {
            Name (REGN, "Processor Thermal Zone")
            Method (FMAX, 0, NotSerialized)
            {
                Return (0x11F8)
            }
            
            Name (FMIN, Zero)
            Method (FRSP, 0, NotSerialized)
            {
                Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.H_EC.ECRG)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.FANR, Local1)
                }
                
                Release (\_SB.PCI0.LPCB.H_EC.ECMX)
                Return (Local1)
            }
            
            Method (FSSP, 1, NotSerialized)
            {
                Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.H_EC.ECRG)
                {
                    XOr (Arg0, One, \_SB.PCI0.LPCB.H_EC.FANE)
                }
                
                Release (\_SB.PCI0.LPCB.H_EC.ECMX)
            }
            
            Name (PFPT, Package (0x02)
            {
                Package (0x07)
                {
                    Zero,
                    0x0AAA,
                    0x0B28,
                    0x0CA0,
                    0x0EFE,
                    0x11C6,
                    0x16DA
                },
                
                Package (0x07)
                {
                    Zero,
                    0x0AAA,
                    0x0B28,
                    0x0CA0,
                    0x0EFE,
                    0x11C6,
                    0x16DA
                }
            })
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, CTYP)
                Store (Arg0, \_SB.PCI0.LPCB.H_EC.SCP)
            }
            
            Name (HOTP, Zero)
            Name (HOTT, 0x6D)
            Method (HOTI, 0, NotSerialized)
            {
                Store (Zero, HOTP)
            }
            
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.H_EC.ECRG)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.DTMP, Local0)
                    If (LEqual (HOTP, One))
                    {
                        Store (HOTT, Local0)
                        Subtract (Local0, One, Local0)
                    }
                    
                    If (LGreaterEqual (Local0, HOTT))
                    {
                        Store (One, HOTP)
                    }
                    
                    If (LGreater (Local0, 0x78))
                    {
                        Store (0x32, Local0)
                    }
                    
                    Release (\_SB.PCI0.LPCB.H_EC.ECMX)
                    Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                }
                
                Release (\_SB.PCI0.LPCB.H_EC.ECMX)
                Return (PTMP)
            }
            
            Method (_AC0, 0, NotSerialized)  // _ACx: Active Cooling
            {
                Store (0x46, Local0)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
            
            Name (_AL0, Package (0x01)  // _ALx: Active List
            {
                FAN0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.H_EC.ECRG)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.PSV, Local0)
                    Release (\_SB.PCI0.LPCB.H_EC.ECMX)
                    Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                }
                
                Release (\_SB.PCI0.LPCB.H_EC.ECMX)
                Return (0x0FA2)
            }
            
            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If (LEqual (TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.CPU0,
                        \_PR.CPU1,
                        \_PR.CPU2,
                        \_PR.CPU3,
                        \_PR.CPU4,
                        \_PR.CPU5,
                        \_PR.CPU6,
                        \_PR.CPU7
                    })
                }
                
                If (LEqual (TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0,
                        \_PR.CPU1,
                        \_PR.CPU2,
                        \_PR.CPU3
                    })
                }
                
                If (LEqual (TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0,
                        \_PR.CPU1
                    })
                }
                
                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }
            
            Method (_HOT, 0, NotSerialized)  // _HOT: Hot Temperature
            {
                Store (0x69, Local0)
                Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.H_EC.ECRG)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.CRT, Local0)
                    Decrement (Local0)
                    If (\_SB.PCI0.LPCB.H_EC.HOTF)
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.DTMP, Local0)
                        Subtract (Local0, 0x03)
                    }
                }
                
                Release (\_SB.PCI0.LPCB.H_EC.ECMX)
                Store (Local0, HOTT)
                Multiply (Local0, 0x0A, Local0)
                Add (Local0, 0x0AAC, Local0)
                Return (Local0)
            }
            
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.H_EC.ECRG)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.CRT, Local0)
                    Add (Local0, 0x14, Local0)
                    Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                }
                
                Release (\_SB.PCI0.LPCB.H_EC.ECMX)
                Return (0x0FA2)
            }
            
            Name (_TC1, 0x02)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x05)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x96)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
        }
        
        ThermalZone (TZ01)
        {
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (0x0FA2)
            }
            
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Store (0x3C, Local0)
                Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.H_EC.ECRG)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.VTMP, Local0)
                }
                
                Release (\_SB.PCI0.LPCB.H_EC.ECMX)
                If (LGreater (Local0, 0x78))
                {
                    Store (0x32, Local0)
                }
                
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
        }
        
        ThermalZone (TZ02)
        {
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Store (0x3C, Local0)
                Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.H_EC.ECRG)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.LTMP, Local0)
                }
                
                Release (\_SB.PCI0.LPCB.H_EC.ECMX)
                If (LGreater (Local0, 0x78))
                {
                    Store (0x32, Local0)
                }
                
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
            
            Method (_HOT, 0, NotSerialized)  // _HOT: Hot Temperature
            {
                Store (0x55, Local0)
                Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
                If (\_SB.PCI0.LPCB.H_EC.ECRG)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.LHT, Local0)
                    If (\_SB.PCI0.LPCB.H_EC.HOTF)
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.LTMP, Local0)
                        Subtract (Local0, 0x03)
                    }
                }
                
                Release (\_SB.PCI0.LPCB.H_EC.ECMX)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
        }
    }
    
    Name (SRMB, Ones)
    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                0x00000000,         // Address Base
                0x00004000,         // Address Length
                _Y10)
                Memory32Fixed (ReadWrite,
                0x00000000,         // Address Base
                0x00008000,         // Address Length
                _Y13)
                Memory32Fixed (ReadWrite,
                0x00000000,         // Address Base
                0x00001000,         // Address Length
                _Y14)
                Memory32Fixed (ReadWrite,
                0x00000000,         // Address Base
                0x00001000,         // Address Length
                _Y15)
                Memory32Fixed (ReadWrite,
                0x00000000,         // Address Base
                0x00000000,         // Address Length
                _Y16)
                Memory32Fixed (ReadWrite,
                0xFED20000,         // Address Base
                0x00020000,         // Address Length
                )
                Memory32Fixed (ReadOnly,
                0xFED90000,         // Address Base
                0x00004000,         // Address Length
                )
                Memory32Fixed (ReadOnly,
                0xFF000000,         // Address Base
                0x01000000,         // Address Length
                )
                Memory32Fixed (ReadOnly,
                0xFEE00000,         // Address Base
                0x00100000,         // Address Length
                )
                Memory32Fixed (ReadWrite,
                0x00000000,         // Address Base
                0x00001000,         // Address Length
                _Y11)
                Memory32Fixed (ReadWrite,
                0x00000000,         // Address Base
                0x00001000,         // Address Length
                _Y12)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TBR0)  // _BAS: Base Address
                Store (TBAB, TBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._LEN, TBLN)  // _LEN: Length
                If (LEqual (TBAB, Zero))
                {
                    Store (Zero, TBLN)
                }
                
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, SNR0)  // _BAS: Base Address
                Store (SRMB, SNR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, MBR0)  // _BAS: Base Address
                ShiftLeft (MHBR, 0x0F, MBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, EBR0)  // _BAS: Base Address
                ShiftLeft (EPBR, 0x0C, EBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (PXBR, 0x1A, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, PXSZ, XSZ0)
                Return (BUF0)
            }
        }
    }
    
    Method (BRTN, 1, Serialized)
    {
        If (LEqual (And (DIDX, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD1F, Arg0)
        }
    }
    
    Scope (_GPE)
    {
        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P1, 0x02)
        }
        
        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (RP1D, Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02)
            }
            
            If (LEqual (RP2D, Zero))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02)
            }
            
            If (LEqual (RP3D, Zero))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02)
            }
            
            If (LEqual (RP4D, Zero))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02)
            }
            
            If (LEqual (RP5D, Zero))
            {
                \_SB.PCI0.RP05.HPME ()
                Notify (\_SB.PCI0.RP05, 0x02)
            }
            
            If (LEqual (RP6D, Zero))
            {
                \_SB.PCI0.RP06.HPME ()
                Notify (\_SB.PCI0.RP06, 0x02)
            }
            
            If (LEqual (RP7D, Zero))
            {
                \_SB.PCI0.RP07.HPME ()
                Notify (\_SB.PCI0.RP07, 0x02)
            }
            
            If (LEqual (RP8D, Zero))
            {
                \_SB.PCI0.RP08.HPME ()
                Notify (\_SB.PCI0.RP08, 0x02)
            }
            
            If (LEqual (\_SB.PCI0.D1F0, One))
            {
                \_SB.PCI0.PEG0.HPME ()
                Notify (\_SB.PCI0.PEG0, 0x02)
                Notify (\_SB.PCI0.PEG0.PEGP, 0x02)
            }
            
            If (LEqual (\_SB.PCI0.D1F1, One))
            {
                \_SB.PCI0.PEG1.HPME ()
                Notify (\_SB.PCI0.PEG1, 0x02)
            }
            
            If (LEqual (\_SB.PCI0.D1F2, One))
            {
                \_SB.PCI0.PEG2.HPME ()
                Notify (\_SB.PCI0.PEG2, 0x02)
            }
        }
        
        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.EHC1.PMEE, \_SB.PCI0.EHC1.PMES))
            {
                Store (One, \_SB.PCI0.EHC1.PMES)
                Store (Zero, \_SB.PCI0.EHC1.PMEE)
                Notify (\_SB.PCI0.EHC1, 0x02)
            }
            
            If (LAnd (\_SB.PCI0.EHC2.PMEE, \_SB.PCI0.EHC2.PMES))
            {
                Store (One, \_SB.PCI0.EHC2.PMES)
                Store (Zero, \_SB.PCI0.EHC2.PMEE)
                Notify (\_SB.PCI0.EHC2, 0x02)
            }
            
            If (LAnd (\_SB.PCI0.XHC.PMEE, \_SB.PCI0.XHC.PMES))
            {
                Store (One, \_SB.PCI0.XHC.PMES)
                Store (Zero, \_SB.PCI0.XHC.PMEE)
                Notify (\_SB.PCI0.XHC, 0x02)
            }
            
            If (LAnd (\_SB.PCI0.HDEF.PMEE, \_SB.PCI0.HDEF.PMES))
            {
                Store (One, \_SB.PCI0.HDEF.PMES)
                Store (Zero, \_SB.PCI0.HDEF.PMEE)
                Notify (\_SB.PCI0.HDEF, 0x02)
            }
        }
        
        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Add (L01C, One, L01C)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPSX))
            {
                P8XH (One, One, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    Store (One, \_SB.PCI0.RP01.PDCX)
                    Store (One, \_SB.PCI0.RP01.HPSX)
                    If (LNot (\_SB.PCI0.RP01.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP01.L0SE)
                    }
                    
                    Notify (\_SB.PCI0.RP01, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP01.HPSX)
                }
            }
            
            If (LAnd (LEqual (RP2D, Zero), \_SB.PCI0.RP02.HPSX))
            {
                P8XH (One, 0x02, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    Store (One, \_SB.PCI0.RP02.PDCX)
                    Store (One, \_SB.PCI0.RP02.HPSX)
                    If (LNot (\_SB.PCI0.RP02.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP02.L0SE)
                    }
                    
                    Notify (\_SB.PCI0.RP02, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP02.HPSX)
                }
            }
            
            If (LAnd (LEqual (RP3D, Zero), \_SB.PCI0.RP03.HPSX))
            {
                P8XH (One, 0x03, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    Store (One, \_SB.PCI0.RP03.PDCX)
                    Store (One, \_SB.PCI0.RP03.HPSX)
                    If (LNot (\_SB.PCI0.RP03.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP03.L0SE)
                    }
                    
                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP03.HPSX)
                }
            }
            
            If (LAnd (LEqual (RP4D, Zero), \_SB.PCI0.RP04.HPSX))
            {
                P8XH (One, 0x04, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    Store (One, \_SB.PCI0.RP04.PDCX)
                    Store (One, \_SB.PCI0.RP04.HPSX)
                    If (LNot (\_SB.PCI0.RP04.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP04.L0SE)
                    }
                    
                    Notify (\_SB.PCI0.RP04, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP04.HPSX)
                }
            }
            
            If (LAnd (LEqual (RP5D, Zero), \_SB.PCI0.RP05.HPSX))
            {
                P8XH (One, 0x05, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    Store (One, \_SB.PCI0.RP05.PDCX)
                    Store (One, \_SB.PCI0.RP05.HPSX)
                    If (LNot (\_SB.PCI0.RP05.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP05.L0SE)
                    }
                    
                    Notify (\_SB.PCI0.RP05, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP05.HPSX)
                }
            }
            
            If (LAnd (LEqual (RP6D, Zero), \_SB.PCI0.RP06.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP06.PDCX)
                {
                    Store (One, \_SB.PCI0.RP06.PDCX)
                    Store (One, \_SB.PCI0.RP06.HPSX)
                    If (LNot (\_SB.PCI0.RP06.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP06.L0SE)
                    }
                    
                    Notify (\_SB.PCI0.RP06, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP06.HPSX)
                }
            }
        }
        
        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (Zero, GPEC)
            If (CondRefOf (DTSE))
            {
                If (LGreaterEqual (DTSE, One))
                {
                    Notify (\_TZ.TZ00, 0x80)
                    Notify (\_TZ.TZ01, 0x80)
                }
            }
            
            If (CondRefOf (\_SB.PCCD.PENB))
            {
                If (LEqual (\_SB.PCCD.PENB, One))
                {
                    Notify (\_SB.PCCD, 0x80)
                }
            }
        }
        
        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.GFX0.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }
        
        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (0x20, \_SB.PCI0.SBUS.HSTS)
        }
        
        Method (_L11, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (\_SB.PCI0.LPCB.H_EC.HDSD, One))
            {
                Store (Zero, \_SB.PCI0.LPCB.H_EC.HDSD)
                Store (Zero, GPE1)
                Store (0xD5, SSMP)
                Store (One, GPS1)
                Store (One, GPE1)
            }
        }
        
        OperationRegion (CMS1, SystemIO, 0x70, 0x02)
        Field (CMS1, ByteAcc, NoLock, Preserve)
        {
            IDX0,   7,
            Offset (0x01),
            DAT0,   8
        }
        
        IndexField (IDX0, DAT0, ByteAcc, NoLock, Preserve)
        {
            Offset (0x58),
            NEHP,   1,
            SEHP,   1,
            SPPI,   1,
            SWAK,   5
        }
        
        Method (NOHP, 0, NotSerialized)
        {
            Store (CMUE, Local0)
            Store (Zero, CMUE)
            Store (NEHP, Local1)
            Store (Local0, CMUE)
            Return (Local1)
        }
        
        Method (SOHP, 0, NotSerialized)
        {
            Store (CMUE, Local0)
            Store (Zero, CMUE)
            Store (SEHP, Local1)
            Store (Local0, CMUE)
            Return (Local1)
        }
        
        Method (SWKE, 0, NotSerialized)
        {
            Store (CMUE, Local0)
            Store (Zero, CMUE)
            Store (SWAK, Local1)
            Store (Local0, CMUE)
            Return (Local1)
        }
        
        Method (SPIP, 1, NotSerialized)
        {
            Store (CMUE, Local0)
            Store (Zero, CMUE)
            Store (Arg0, SPPI)
            Store (Local0, CMUE)
        }
        
        Method (_E2A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE
        {
            OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
            Field (SPRT, ByteAcc, Lock, Preserve)
            {
                SSMP,   8
            }
            
            ADBG ("_E2A")
            ADBG (ToHexString (Timer))
            If (SOHP ())
            {
                ADBG ("_E1B SMI")
                Store (0x15, TBSF)
                Store (0xF7, SSMP)
                ADBG (ToHexString (Timer))
            }
            
            If (NOHP ())
            {
                Notify (\_SB.PCI0.RP01, Zero)
                ADBG (ToHexString (Timer))
            }
            
            Sleep (0x06)
        }
    }
    
    Name (RPA0, 0x001C0000)
    Name (RPA1, 0x001C0001)
    Name (RPA2, 0x001C0002)
    Name (RPA3, 0x001C0003)
    Name (RPA4, 0x001C0004)
    Name (RPA5, 0x001C0005)
    Name (RPA6, 0x001C0006)
    Name (RPA7, 0x001C0007)
    Name (PCHS, Ones)
    Scope (\)
    {
        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }
        
        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }
        
        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            PM1S,   16,
            Offset (0x03),
            ,   1,
            ,   1,
            RTCE,   1,
            Offset (0x10),
            ,   1,
            THDY,   3,
            THEN,   1,
            Offset (0x28),
            Offset (0x2A),
            ,   1,
            GPE1,   1,
            GPE2,   1,
            GPE3,   1,
            ,   7,
            GPEB,   1,
            Offset (0x3C),
            PMEN,   1,
            UPRW,   1,
            Offset (0x42),
            ,   1,
            GPEC,   1
        }
        
        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20),
            Offset (0x22),
            ,   1,
            GPS1,   1,
            GPS2,   1,
            GPS3,   1,
            ,   7,
            GPSB,   1,
            Offset (0x64),
            ,   9,
            SCIS,   1,
            Offset (0x66)
        }
        
        OperationRegion (PMLP, SystemIO, Add (PMBS, 0x80), 0x20)
        Field (PMLP, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10),
            Offset (0x11),
            GE08,   1,
            ,   8,
            GE17,   1,
            ,   17,
            GE35,   1,
            ,   9,
            GE45,   1,
            ,   5,
            GE51,   1,
            Offset (0x20)
        }
        
        Field (PMLP, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x01),
            GS08,   1,
            ,   8,
            GS17,   1,
            ,   17,
            GS35,   1,
            ,   9,
            GS45,   1,
            ,   5,
            GS51,   1,
            Offset (0x10)
        }
        
        OperationRegion (GPRL, SystemIO, GPBS, 0x40)
        Field (GPRL, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01),
            GO08,   1,
            GO09,   1,
            ,   4,
            GO14,   1,
            ,   2,
            GO17,   1,
            ,   27,
            GO45,   1,
            ,   5,
            GO51,   1,
            Offset (0x10),
            Offset (0x30),
            GR00,   32,
            GR01,   32,
            GR02,   32
        }
        
        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000),
            Offset (0x2330),
            AFEA,   32,
            AFED,   32,
            AFES,   16,
            AFER,   16,
            Offset (0x3000),
            Offset (0x3400),
            ,   2,
            CMUE,   1,
            Offset (0x3404),
            HPAS,   2,
            ,   5,
            HPAE,   1,
            Offset (0x3418),
            ,   1,
            ADSD,   1,
            SATD,   1,
            SMBD,   1,
            HDAD,   1,
            Offset (0x341A),
            RP1D,   1,
            RP2D,   1,
            RP3D,   1,
            RP4D,   1,
            RP5D,   1,
            RP6D,   1,
            RP7D,   1,
            RP8D,   1,
            Offset (0x359C),
            UP0D,   1,
            UP1D,   1,
            UP2D,   1,
            UP3D,   1,
            UP4D,   1,
            UP5D,   1,
            UP6D,   1,
            UP7D,   1,
            UP8D,   1,
            UP9D,   1,
            UPAD,   1,
            UPBD,   1,
            UPCD,   1,
            UPDD,   1,
            ,   1,
            Offset (0x359E)
        }
        
        OperationRegion (IO_P, SystemIO, 0x1000, 0x04)
        Field (IO_P, ByteAcc, NoLock, Preserve)
        {
            TRPF,   8
        }
    }
    
    Scope (_SB)
    {
        Method (RDGI, 1, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0100), Multiply (Arg0, 0x08)
                ), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    ,   30,
                    TEMP,   1
                }
                
                Return (TEMP)
            }
        }
        
        Method (RDGP, 1, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0100), Multiply (Arg0, 0x08)
                ), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    ,   31,
                    TEMP,   1
                }
                
                Return (TEMP)
            }
        }
        
        Method (WTGP, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0100), Multiply (Arg0, 0x08)
                ), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    ,   31,
                    TEMP,   1
                }
                
                Store (Arg1, TEMP)
            }
        }
        
        Method (WTIN, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0100), Multiply (Arg0, 0x08)
                ), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, ByteAcc, NoLock, Preserve)
                {
                    ,   3,
                    TEMP,   1
                }
                
                Store (Arg1, TEMP)
            }
        }
        
        Method (WPGP, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0104), Multiply (Arg0, 0x08)
                ), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   2
                }
                
                Store (Arg1, TEMP)
            }
        }
        
        Method (GP2N, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0100), Multiply (Arg0, 0x08)
                ), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   1
                }
                
                Store (Arg1, TEMP)
            }
        }
        
        Method (GP2A, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0104), Multiply (Arg0, 0x08)
                ), Local0)
                OperationRegion (LGP2, SystemIO, Local0, 0x04)
                Field (LGP2, AnyAcc, NoLock, Preserve)
                {
                    GPWP,   2,
                    GPIS,   1
                }
                
                If (LEqual (Arg1, One))
                {
                    Store (Zero, GPIS)
                    Store (Zero, GPWP)
                }
                Else
                {
                    Store (0x02, GPWP)
                    Store (One, GPIS)
                }
                
                Store (Add (GPBS, 0x10), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x02)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   16
                }
                
                If (LGreaterEqual (Arg0, 0x2D))
                {
                    Subtract (Arg0, 0x28, Local1)
                }
                Else
                {
                    If (LLessEqual (Arg0, 0x0A))
                    {
                        Subtract (Arg0, 0x08, Local1)
                    }
                    Else
                    {
                        Subtract (Arg0, 0x0A, Local1)
                    }
                }
                
                Store (ShiftLeft (One, Local1), Local2)
                If (Arg1)
                {
                    Or (TEMP, Local2, TEMP)
                }
                Else
                {
                    And (TEMP, Not (Local2), TEMP)
                }
            }
        }
        
        Method (GP2B, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (GPBS, 0x10), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x02)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   16
                }
                
                If (LGreaterEqual (Arg0, 0x2D))
                {
                    Subtract (Arg0, 0x28, Local1)
                }
                Else
                {
                    If (LLessEqual (Arg0, 0x0A))
                    {
                        Subtract (Arg0, 0x08, Local1)
                    }
                    Else
                    {
                        Subtract (Arg0, 0x0A, Local1)
                    }
                }
                
                Store (ShiftLeft (One, Local1), Local2)
                If (Arg1)
                {
                    Or (TEMP, Local2, TEMP)
                }
                Else
                {
                    And (TEMP, Not (Local2), TEMP)
                }
            }
        }
    }
    
    Scope (_SB.PCI0)
    {
        Name (LTRE, Zero)
        Name (OBFF, Zero)
        Device (GLAN)
        {
            Name (_ADR, 0x00190000)  // _ADR: Address
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x04))
            }
        }
        
        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x54, 0x14)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                Offset (0x01),
                PMEE,   1,
                ,   6,
                PMES,   1,
                Offset (0x0E),
                ,   1,
                PWUC,   8,
                Offset (0x10),
                ,   6,
                PD06,   1
            }
            
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (Ones, PWUC)
                }
                Else
                {
                    Store (Zero, PWUC)
                }
            }
            
            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }
            
            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }
            
            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCA, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        Return (UPCA)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        Return (PLDP)
                    }
                    
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                    }
                    
                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                    }
                    
                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                            If (LEqual (And (CDID, 0xF000), 0x9000))
                            {
                                And (VIS, Zero, VIS)
                            }
                            
                            Return (PLDP)
                        }
                    }
                    
                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                        
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                            }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }
                                    
                                    Break
                                }
                            }
                            
                            Return (Zero)
                        }
                    }
                    
                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                        
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                            }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }
                                    
                                    Break
                                }
                            }
                            
                            Return (Zero)
                        }
                    }
                    
                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                        
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                            }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }
                                    
                                    Break
                                }
                            }
                            
                            Return (Zero)
                        }
                    }
                    
                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0x24, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                        
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                            }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }
                                    
                                    Break
                                }
                            }
                            
                            Return (Zero)
                        }
                    }
                    
                    Device (PR18)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0x24, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                    }
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x03))
            }
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package()
                {
                    "AAPL,clock-id", Buffer() { 0x01 },
                    "built-in", Buffer() { 0x00 },
                    "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
                    "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
                    "AAPL,current-available", 2100,
                    "AAPL,current-extra", 2200,
                    "AAPL,current-extra-in-sleep", 1600,
                    "AAPL,device-internal", 0x02,
                    "AAPL,max-port-current-in-sleep", 2100,
                })
            }
        }
        
        Device (EHC2)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x54, 0x12)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                Offset (0x01),
                PMEE,   1,
                ,   6,
                PMES,   1,
                Offset (0x0E),
                ,   1,
                PWUC,   6
            }
            
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (Ones, PWUC)
                }
                Else
                {
                    Store (Zero, PWUC)
                }
            }
            
            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }
            
            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }
            
            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCA, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        Return (UPCA)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        Return (PLDP)
                    }
                    
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0x24, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                    }
                    
                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                        
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                            }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }
                                    
                                    Break
                                }
                            }
                            
                            Return (Zero)
                        }
                    }
                    
                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0x24, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                        
                        Device (CAM0)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x14)
                                    {
                                        /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */   0x24, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                                    }
                                })
                                Return (PLDP)
                            }
                        }
                        
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                            }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }
                                    
                                    Break
                                }
                            }
                            
                            Return (Zero)
                        }
                    }
                    
                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                    }
                    
                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                    }
                    
                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF,
                                0xFF,
                                Zero,
                                Zero
                            })
                            Return (UPCP)
                        }
                        
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                }
                            })
                            Return (PLDP)
                        }
                    }
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x03))
            }
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package()
                {
                    "AAPL,clock-id", Buffer() { 0x02 },
                    "built-in", Buffer() { 0x00 },
                    "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
                    "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
                    "AAPL,current-available", 2100,
                    "AAPL,current-extra", 2200,
                    "AAPL,current-extra-in-sleep", 1600,
                    "AAPL,device-internal", 0x02,
                    "AAPL,max-port-current-in-sleep", 2100,
                })
            }
        }
        
        Device (XHC)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            OperationRegion (XPRT, PCI_Config, Zero, 0x0100)
            Field (XPRT, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10),
                MEMB,   32,
                Offset (0x74),
                Offset (0x75),
                PMEE,   1,
                ,   6,
                PMES,   1,
                Offset (0xD0),
                PR2,    32,
                PR2M,   32,
                PR3,    32,
                PR3M,   32
            }
            
            Name (XRST, Zero)
            Method (CUID, 1, Serialized)
            {
                If (LEqual (Arg0, Buffer (0x10)
                {
                    /* 0000 */   0xA9, 0x12, 0x95, 0x7C, 0x05, 0x17, 0xB4, 0x4C,
                    /* 0008 */   0xAF, 0x7D, 0x50, 0x6A, 0x24, 0x23, 0xAB, 0x71
                }))
                {
                    Return (One)
                }
                
                Return (Zero)
            }
            
            Method (POSC, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, CDW1)
                CreateDWordField (Arg2, 0x08, CDW3)
                If (LNotEqual (Arg1, One))
                {
                    Or (CDW1, 0x08, CDW1)
                }
                
                If (LEqual (XHCI, Zero))
                {
                    Or (CDW1, 0x02, CDW1)
                }
                
                If (LNot (And (CDW1, One)))
                {
                    If (And (CDW3, One))
                    {
                        ESEL ()
                    }
                    Else
                    {
                        XSEL ()
                    }
                }
                
                Return (Arg2)
            }
            
            Method (XSEL, 0, Serialized)
            {
                If (LOr (LEqual (XHCI, 0x02), LEqual (XHCI, 0x03)))
                {
                    Store (One, XUSB)
                    Store (One, XRST)
                    Store (Zero, Local0)
                    And (PR3, 0xFFFFFFC0, Local0)
                    Or (Local0, PR3M, PR3)
                    Store (Zero, Local0)
                    And (PR2, 0xFFFF8000, Local0)
                    Or (Local0, PR2M, PR2)
                }
            }
            
            Method (ESEL, 0, Serialized)
            {
                If (LOr (LEqual (XHCI, 0x02), LEqual (XHCI, 0x03)))
                {
                    And (PR3, 0xFFFFFFC0, PR3)
                    And (PR2, 0xFFFF8000, PR2)
                    Store (Zero, XUSB)
                    Store (Zero, XRST)
                }
            }
            
            Method (XWAK, 0, Serialized)
            {
                If (LOr (LEqual (XUSB, One), LEqual (XRST, One)))
                {
                    XSEL ()
                }
            }
            
            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }
            
            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }
            
            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, One)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, One)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x02)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x02)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x04)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x71, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x04)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        If (LEqual (And (CDID, 0xF000), 0x9000))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x08)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x71, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x08)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS05)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x10)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x24, 0x0C, 0x80, 0x02, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x10)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS06)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x20)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x20)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS07)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x40)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x24, 0x0C, 0x80, 0x03, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x40)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                    
                    Device (CAM0)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0x24, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                                }
                            })
                            Return (PLDP)
                        }
                    }
                }
                
                Device (HS08)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x80)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x71, 0x0C, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x80)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS09)
                {
                    Name (_ADR, 0x09)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x0100)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x71, 0x0C, 0x80, 0x04, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x0100)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        If (LEqual (And (CDID, 0xF000), 0x9000))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS10)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0A)
                        }
                        Else
                        {
                            Return (0xFA)
                        }
                    }
                    
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x0200)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x71, 0x0C, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x0200)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS11)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0xFB)
                        }
                    }
                    
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x0400)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x68, 0x0C, 0x80, 0x05, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x0400)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                    
                    Device (CAM0)
                    {
                        Name (_ADR, 0x0B)  // _ADR: Address
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */   0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */   0x24, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0010 */   0xFF, 0xFF, 0xFF, 0xFF
                                }
                            })
                            Return (PLDP)
                        }
                    }
                }
                
                Device (HS12)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0C)
                        }
                        Else
                        {
                            Return (0xFC)
                        }
                    }
                    
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x0800)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x0800)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS13)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0D)
                        }
                        Else
                        {
                            Return (0xFD)
                        }
                    }
                    
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x1000)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x24, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x1000)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS14)
                {
                    Name (_ADR, 0x0E)  // _ADR: Address
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x2000)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x24, 0x0C, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x2000)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (HS15)
                {
                    Name (_ADR, 0x0F)  // _ADR: Address
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR2, 0x4000)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x70, 0x0C, 0x80, 0x07, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR2, 0x4000)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (SSP1)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x10)
                        }
                        Else
                        {
                            Return (0x0A)
                        }
                    }
                    
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR3, One)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, One)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (SSP2)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x11)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }
                    
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR3, 0x02)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x69, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x02)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (SSP3)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x12)
                        }
                        Else
                        {
                            Return (0x0C)
                        }
                    }
                    
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR3, 0x04)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x71, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x04)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (SSP4)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x13)
                        }
                        Else
                        {
                            Return (0x0D)
                        }
                    }
                    
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR3, 0x08)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x71, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x08)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (SSP5)
                {
                    Name (_ADR, 0x14)  // _ADR: Address
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR3, 0x10)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x71, 0x0C, 0x80, 0x02, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x10)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
                
                Device (SSP6)
                {
                    Name (_ADR, 0x15)  // _ADR: Address
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero,
                            0x03,
                            Zero,
                            Zero
                        })
                        If (LNot (And (PR3, 0x20)))
                        {
                            Store (Zero, Index (UPCP, Zero))
                        }
                        
                        Return (UPCP)
                    }
                    
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0x71, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00
                            }
                        })
                        CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                        If (LNot (And (PR3, 0x20)))
                        {
                            And (VIS, Zero, VIS)
                        }
                        
                        Return (PLDP)
                    }
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x03))
            }
            
             Method (_DSM, 4, NotSerialized)
             {
             If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
             Return (Package()
             {
             "AAPL,clock-id", Buffer() { 0x00 },
             "built-in", Buffer() { 0x00 },
             "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
             "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
             "AAPL,current-available", 2100,
             "AAPL,current-extra", 2200,
             "AAPL,current-extra-in-sleep", 1600,
             "AAPL,device-internal", 0x02,
             "AAPL,max-port-current-in-sleep", 2100,
             })
             }
        }
        
        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1,
                Offset (0x01),
                DCKM,   1,
                ,   6,
                DCKS,   1,
                Offset (0x08),
                Offset (0x09),
                PMEE,   1,
                ,   6,
                PMES,   1
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x0D, 0x04))
            }
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Return (Package()
                {
                    "layout-id", Buffer() { 12, 0x00, 0x00, 0x00 },
                    "hda-gfx", Buffer() { "onboard-1" },
                    "PinConfigurations", Buffer() { },
                    "MaximumBootBeepVolume", 77,    })
                }
        }
        
        Device (RP01)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA0)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTR1, LTRE)
                Store (OBF1, OBFF)
            }
            
            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32,
                Offset (0x50),
                L0SE,   1,
                ,   3,
                LDIS,   1,
                Offset (0x51),
                Offset (0x52),
                ,   13,
                LASX,   1,
                Offset (0x5A),
                ABPX,   1,
                ,   2,
                PDCX,   1,
                ,   2,
                PDSX,   1,
                Offset (0x5B),
                Offset (0x60),
                Offset (0x62),
                PSPX,   1,
                Offset (0xA4),
                D3HT,   2,
                Offset (0xD8),
                ,   30,
                HPEX,   1,
                PMEX,   1,
                Offset (0xE2),
                ,   2,
                L23E,   1,
                L23R,   1,
                Offset (0x324),
                ,   3,
                LEDM,   1
            }
            
            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC),
                ,   30,
                HPSX,   1,
                PMSX,   1
            }
            
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (VDID, Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRE)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFF)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                Name (MLTR, Zero)
                                                If (LEqual (PCHS, One))
                                                {
                                                    Store (0x0846, MLTR)
                                                }
                                                Else
                                                {
                                                    If (LEqual (PCHS, 0x02))
                                                    {
                                                        Store (0x1003, MLTR)
                                                    }
                                                }
                                                
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
            
            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
                
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                    
                    Notify (PXSX, 0x02)
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Name (PR04, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKD,
                    Zero
                }
            })
            Name (AR04, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x11
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04)
                }
                
                Return (PR04)
            }
        }
        
        Device (RP02)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA1)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTR2, LTRE)
                Store (OBF2, OBFF)
            }
            
            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32,
                Offset (0x50),
                L0SE,   1,
                ,   3,
                LDIS,   1,
                Offset (0x51),
                Offset (0x52),
                ,   13,
                LASX,   1,
                Offset (0x5A),
                ABPX,   1,
                ,   2,
                PDCX,   1,
                ,   2,
                PDSX,   1,
                Offset (0x5B),
                Offset (0x60),
                Offset (0x62),
                PSPX,   1,
                Offset (0xA4),
                D3HT,   2,
                Offset (0xD8),
                ,   30,
                HPEX,   1,
                PMEX,   1,
                Offset (0xE2),
                ,   2,
                L23E,   1,
                L23R,   1,
                Offset (0x324),
                ,   3,
                LEDM,   1
            }
            
            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC),
                ,   30,
                HPSX,   1,
                PMSX,   1
            }
            
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (VDID, Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRE)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFF)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                Name (MLTR, Zero)
                                                If (LEqual (PCHS, One))
                                                {
                                                    Store (0x0846, MLTR)
                                                }
                                                Else
                                                {
                                                    If (LEqual (PCHS, 0x02))
                                                    {
                                                        Store (0x1003, MLTR)
                                                    }
                                                }
                                                
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
            
            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
                
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                    
                    Notify (PXSX, 0x02)
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Name (PR05, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKA,
                    Zero
                }
            })
            Name (AR05, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x11
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x10
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05)
                }
                
                Return (PR05)
            }
        }
        
        Device (RP03)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA2)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTR3, LTRE)
                Store (OBF3, OBFF)
            }
            
            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32,
                Offset (0x50),
                L0SE,   1,
                ,   3,
                LDIS,   1,
                Offset (0x51),
                Offset (0x52),
                ,   13,
                LASX,   1,
                Offset (0x5A),
                ABPX,   1,
                ,   2,
                PDCX,   1,
                ,   2,
                PDSX,   1,
                Offset (0x5B),
                Offset (0x60),
                Offset (0x62),
                PSPX,   1,
                Offset (0xA4),
                D3HT,   2,
                Offset (0xD8),
                ,   30,
                HPEX,   1,
                PMEX,   1,
                Offset (0xE2),
                ,   2,
                L23E,   1,
                L23R,   1,
                Offset (0x324),
                ,   3,
                LEDM,   1
            }
            
            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC),
                ,   30,
                HPSX,   1,
                PMSX,   1
            }
            
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (VDID, Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRE)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFF)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                Name (MLTR, Zero)
                                                If (LEqual (PCHS, One))
                                                {
                                                    Store (0x0846, MLTR)
                                                }
                                                Else
                                                {
                                                    If (LEqual (PCHS, 0x02))
                                                    {
                                                        Store (0x1003, MLTR)
                                                    }
                                                }
                                                
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
            
            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
                
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                    
                    Notify (PXSX, 0x02)
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Device (WLAN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (WREG, PCI_Config, Zero, 0x40)
                Field (WREG, AnyAcc, NoLock, Preserve)
                {
                    VIDL,   8,
                    VIDH,   8,
                    DIDL,   8,
                    DIDH,   8,
                    Offset (0x2C),
                    SVDL,   8,
                    SVDH,   8,
                    SSDL,   8,
                    SSDH,   8
                }
            }
            
            Name (PR06, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKB,
                    Zero
                }
            })
            Name (AR06, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x11
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06)
                }
                
                Return (PR06)
            }
        }
        
        Device (RP04)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA3)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTR4, LTRE)
                Store (OBF4, OBFF)
            }
            
            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32,
                Offset (0x50),
                L0SE,   1,
                ,   3,
                LDIS,   1,
                Offset (0x51),
                Offset (0x52),
                ,   13,
                LASX,   1,
                Offset (0x5A),
                ABPX,   1,
                ,   2,
                PDCX,   1,
                ,   2,
                PDSX,   1,
                Offset (0x5B),
                Offset (0x60),
                Offset (0x62),
                PSPX,   1,
                Offset (0xA4),
                D3HT,   2,
                Offset (0xD8),
                ,   30,
                HPEX,   1,
                PMEX,   1,
                Offset (0xE2),
                ,   2,
                L23E,   1,
                L23R,   1,
                Offset (0x324),
                ,   3,
                LEDM,   1
            }
            
            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC),
                ,   30,
                HPSX,   1,
                PMSX,   1
            }
            
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (VDID, Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRE)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFF)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                Name (MLTR, Zero)
                                                If (LEqual (PCHS, One))
                                                {
                                                    Store (0x0846, MLTR)
                                                }
                                                Else
                                                {
                                                    If (LEqual (PCHS, 0x02))
                                                    {
                                                        Store (0x1003, MLTR)
                                                    }
                                                }
                                                
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
            
            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
                
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                    
                    Notify (PXSX, 0x02)
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Name (PR07, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKC,
                    Zero
                }
            })
            Name (AR07, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x11
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x12
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07)
                }
                
                Return (PR07)
            }
        }
        
        Device (RP05)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA4)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTR5, LTRE)
                Store (OBF5, OBFF)
            }
            
            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32,
                Offset (0x50),
                L0SE,   1,
                ,   3,
                LDIS,   1,
                Offset (0x51),
                Offset (0x52),
                ,   13,
                LASX,   1,
                Offset (0x5A),
                ABPX,   1,
                ,   2,
                PDCX,   1,
                ,   2,
                PDSX,   1,
                Offset (0x5B),
                Offset (0x60),
                Offset (0x62),
                PSPX,   1,
                Offset (0xA4),
                D3HT,   2,
                Offset (0xD8),
                ,   30,
                HPEX,   1,
                PMEX,   1,
                Offset (0xE2),
                ,   2,
                L23E,   1,
                L23R,   1,
                Offset (0x324),
                ,   3,
                LEDM,   1
            }
            
            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC),
                ,   30,
                HPSX,   1,
                PMSX,   1
            }
            
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (VDID, Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRE)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFF)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                Name (MLTR, Zero)
                                                If (LEqual (PCHS, One))
                                                {
                                                    Store (0x0846, MLTR)
                                                }
                                                Else
                                                {
                                                    If (LEqual (PCHS, 0x02))
                                                    {
                                                        Store (0x1003, MLTR)
                                                    }
                                                }
                                                
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
            
            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
                
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                    
                    Notify (PXSX, 0x02)
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Name (PR08, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKD,
                    Zero
                }
            })
            Name (AR08, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x11
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR08)
                }
                
                Return (PR08)
            }
        }
        
        Device (RP06)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA5)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTR6, LTRE)
                Store (OBF6, OBFF)
            }
            
            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32,
                Offset (0x50),
                L0SE,   1,
                ,   3,
                LDIS,   1,
                Offset (0x51),
                Offset (0x52),
                ,   13,
                LASX,   1,
                Offset (0x5A),
                ABPX,   1,
                ,   2,
                PDCX,   1,
                ,   2,
                PDSX,   1,
                Offset (0x5B),
                Offset (0x60),
                Offset (0x62),
                PSPX,   1,
                Offset (0xA4),
                D3HT,   2,
                Offset (0xD8),
                ,   30,
                HPEX,   1,
                PMEX,   1,
                Offset (0xE2),
                ,   2,
                L23E,   1,
                L23R,   1,
                Offset (0x324),
                ,   3,
                LEDM,   1
            }
            
            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC),
                ,   30,
                HPSX,   1,
                PMSX,   1
            }
            
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (VDID, Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRE)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFF)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                Name (MLTR, Zero)
                                                If (LEqual (PCHS, One))
                                                {
                                                    Store (0x0846, MLTR)
                                                }
                                                Else
                                                {
                                                    If (LEqual (PCHS, 0x02))
                                                    {
                                                        Store (0x1003, MLTR)
                                                    }
                                                }
                                                
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
            
            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
                
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                    
                    Notify (PXSX, 0x02)
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Name (PR09, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKB,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKA,
                    Zero
                }
            })
            Name (AR09, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x11
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x10
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR09)
                }
                
                Return (PR09)
            }
        }
        
        Device (RP07)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA6)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTR7, LTRE)
                Store (OBF7, OBFF)
            }
            
            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32,
                Offset (0x50),
                L0SE,   1,
                ,   3,
                LDIS,   1,
                Offset (0x51),
                Offset (0x52),
                ,   13,
                LASX,   1,
                Offset (0x5A),
                ABPX,   1,
                ,   2,
                PDCX,   1,
                ,   2,
                PDSX,   1,
                Offset (0x5B),
                Offset (0x60),
                Offset (0x62),
                PSPX,   1,
                Offset (0xA4),
                D3HT,   2,
                Offset (0xD8),
                ,   30,
                HPEX,   1,
                PMEX,   1,
                Offset (0xE2),
                ,   2,
                L23E,   1,
                L23R,   1,
                Offset (0x324),
                ,   3,
                LEDM,   1
            }
            
            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC),
                ,   30,
                HPSX,   1,
                PMSX,   1
            }
            
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (VDID, Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRE)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFF)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                Name (MLTR, Zero)
                                                If (LEqual (PCHS, One))
                                                {
                                                    Store (0x0846, MLTR)
                                                }
                                                Else
                                                {
                                                    If (LEqual (PCHS, 0x02))
                                                    {
                                                        Store (0x1003, MLTR)
                                                    }
                                                }
                                                
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
            
            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
                
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                    
                    Notify (PXSX, 0x02)
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Device (NIC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09,
                    0x05
                })
                OperationRegion (NREG, PCI_Config, Zero, 0x81)
                Field (NREG, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x02),
                    DID,    16,
                    Offset (0x80),
                    ASPM,   8
                }
                
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    Store (Arg0, Local0)
                    Acquire (^^^LPCB.H_EC.ECMX, 0xFFFF)
                    Store (Local0, ^^^LPCB.H_EC.LWKE)
                    Release (^^^LPCB.H_EC.ECMX)
                }
            }
            
            Name (PR0E, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKB,
                    Zero
                }
            })
            Name (AR0E, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x11
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0E)
                }
                
                Return (PR0E)
            }
        }
        
        Device (RP08)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA7)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTR8, LTRE)
                Store (OBF8, OBFF)
            }
            
            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32,
                Offset (0x50),
                L0SE,   1,
                ,   3,
                LDIS,   1,
                Offset (0x51),
                Offset (0x52),
                ,   13,
                LASX,   1,
                Offset (0x5A),
                ABPX,   1,
                ,   2,
                PDCX,   1,
                ,   2,
                PDSX,   1,
                Offset (0x5B),
                Offset (0x60),
                Offset (0x62),
                PSPX,   1,
                Offset (0xA4),
                D3HT,   2,
                Offset (0xD8),
                ,   30,
                HPEX,   1,
                PMEX,   1,
                Offset (0xE2),
                ,   2,
                L23E,   1,
                L23R,   1,
                Offset (0x324),
                ,   3,
                LEDM,   1
            }
            
            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC),
                ,   30,
                HPSX,   1,
                PMSX,   1
            }
            
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (VDID, Ones))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRE)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFF)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRE)
                                            {
                                                Name (MLTR, Zero)
                                                If (LEqual (PCHS, One))
                                                {
                                                    Store (0x0846, MLTR)
                                                }
                                                Else
                                                {
                                                    If (LEqual (PCHS, 0x02))
                                                    {
                                                        Store (0x1003, MLTR)
                                                    }
                                                }
                                                
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
            
            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
                
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }
                    
                    Notify (PXSX, 0x02)
                }
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Name (PR0E, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    LNKC,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    LNKD,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    LNKA,
                    Zero
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    LNKB,
                    Zero
                }
            })
            Name (AR0E, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF,
                    Zero,
                    Zero,
                    0x12
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    One,
                    Zero,
                    0x13
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x02,
                    Zero,
                    0x10
                },
                
                Package (0x04)
                {
                    0xFFFF,
                    0x03,
                    Zero,
                    0x11
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0E)
                }
                
                Return (PR0E)
            }
        }
        
        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Device (PRT0)
            {
                Name (_ADR, 0xFFFF)  // _ADR: Address
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
                
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    If (LAnd (LAnd (LEqual (DVS0, One), LEqual (And (FDEV, One
                    ), One)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                            0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF
                        })
                        Return (PIB1)
                    }
                    
                    Name (PIB2, Buffer (0x07)
                    {
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                    })
                    Return (PIB2)
                }
            }
            
            Device (PRT1)
            {
                Name (_ADR, 0x0001FFFF)  // _ADR: Address
                Name (FDEV, Zero)
                Name (FDRP, Zero)
                Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
                {
                    ADBG ("SAta DEP")
                    If (LAnd (LEqual (S0ID, One), And (PEPY, 0x02)))
                    {
                        ADBG ("SAta DEP")
                        Return (Package (0x01)
                        {
                            PEPD
                        })
                    }
                    Else
                    {
                        ADBG ("SAta DEP NULL")
                        Return (Package (0x00) {})
                    }
                }
                
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
                
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    If (LAnd (LAnd (LEqual (DVS1, One), LEqual (And (FDEV, One
                    ), One)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                            0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF
                        })
                        Return (PIB1)
                    }
                    
                    Name (PIB2, Buffer (0x07)
                    {
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                    })
                    Return (PIB2)
                }
            }
            
            Device (PRT3)
            {
                Name (_ADR, 0x0003FFFF)  // _ADR: Address
                Name (FDEV, Zero)
                Name (FDRP, Zero)
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
                
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    If (LAnd (LAnd (LEqual (DVS3, One), LEqual (And (FDEV, One
                    ), One)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                            0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF
                        })
                        Return (PIB1)
                    }
                    
                    Name (PIB2, Buffer (0x07)
                    {
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                    })
                    Return (PIB2)
                }
            }
        }
        
        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
        }
        
        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                ,   2,
                I2CE,   1
            }
            
            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                ,   5,
                SBAR,   11
            }
            
            OperationRegion (SMBI, SystemIO, ShiftLeft (SBAR, 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8,
                Offset (0x02),
                HCON,   8,
                HCOM,   8,
                TXSA,   8,
                DAT0,   8,
                DAT1,   8,
                HBDR,   8,
                PECR,   8,
                RXSA,   8,
                SDAT,   16
            }
            
            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }
                
                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }
                
                Return (Zero)
            }
            
            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }
                
                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (0x44, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }
                
                Return (0xFFFF)
            }
            
            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }
                
                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (Arg2, DAT0)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }
                
                Return (Zero)
            }
            
            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }
                
                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }
                
                Return (0xFFFF)
            }
            
            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }
                
                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                And (Arg2, 0xFF, DAT1)
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT0)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }
                
                Return (Zero)
            }
            
            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }
                
                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (Or (ShiftLeft (DAT0, 0x08), DAT1))
                }
                
                Return (Ones)
            }
            
            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }
                
                Store (Arg3, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (SizeOf (Arg2), DAT0)
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR)
                Store (0x54, HCON)
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }
                    
                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }
                    
                    Store (0x80, HSTS)
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR)
                    }
                }
                
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }
                
                Return (Zero)
            }
            
            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }
                
                Store (Arg2, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x54, HCON)
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }
                
                If (LNot (Local0))
                {
                    KILL ()
                    Return (Zero)
                }
                
                Store (DAT0, Index (TBUF, Zero))
                Store (0x80, HSTS)
                Store (One, Local1)
                While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }
                    
                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }
                    
                    Store (HBDR, Index (TBUF, Local1))
                    Store (0x80, HSTS)
                    Increment (Local1)
                }
                
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (TBUF)
                }
                
                Return (Zero)
            }
            
            Method (STRT, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Decrement (Local0)
                        Sleep (One)
                        If (LEqual (Local0, Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }
                
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                
                Return (One)
            }
            
            Method (COMP, 0, Serialized)
            {
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }
                
                Return (Zero)
            }
            
            Method (KILL, 0, Serialized)
            {
                Or (HCON, 0x02, HCON)
                Or (HSTS, 0xFF, HSTS)
            }
        }
    }
    
    Name (BUFN, Zero)
    Name (MBUF, Buffer (0x1000) {})
    OperationRegion (MDBG, SystemMemory, 0x92FB8018, 0x00001004)
    Field (MDBG, AnyAcc, Lock, Preserve)
    {
        MDG0,   32768
    }
    
    Method (DB2H, 1, Serialized)
    {
        If (MDEN)
        {
            SHOW (Arg0)
            MDGC (0x20)
            Store (MBUF, MDG0)
        }
        Else
        {
            Return (Zero)
        }
    }
    
    Method (DW2H, 1, Serialized)
    {
        Store (Arg0, Local0)
        ShiftRight (Arg0, 0x08, Local1)
        And (Local0, 0xFF, Local0)
        And (Local1, 0xFF, Local1)
        DB2H (Local1)
        Decrement (BUFN)
        DB2H (Local0)
    }
    
    Method (DD2H, 1, Serialized)
    {
        Store (Arg0, Local0)
        ShiftRight (Arg0, 0x10, Local1)
        And (Local0, 0xFFFF, Local0)
        And (Local1, 0xFFFF, Local1)
        DW2H (Local1)
        Decrement (BUFN)
        DW2H (Local0)
    }
    
    Method (MBGS, 1, Serialized)
    {
        If (MDEN)
        {
            Store (SizeOf (Arg0), Local0)
            Name (BUFS, Buffer (Local0) {})
            Store (Arg0, BUFS)
            MDGC (0x20)
            While (Local0)
            {
                MDGC (DerefOf (Index (BUFS, Subtract (SizeOf (Arg0), Local0))))
                Decrement (Local0)
            }
            
            Store (MBUF, MDG0)
        }
        Else
        {
            Return (Zero)
        }
    }
    
    Method (ADBG, 1, Serialized)
    {
        If (MDEN)
        {
            Store (SizeOf (Arg0), Local0)
            Name (BUFS, Buffer (Local0) {})
            Store (Arg0, BUFS)
            MDGC (0x20)
            While (Local0)
            {
                MDGC (DerefOf (Index (BUFS, Subtract (SizeOf (Arg0), Local0))))
                Decrement (Local0)
            }
            
            Store (MBUF, MDG0)
        }
        Else
        {
            Return (Zero)
        }
    }
    
    Method (SHOW, 1, Serialized)
    {
        MDGC (NTOC (ShiftRight (Arg0, 0x04)))
        MDGC (NTOC (Arg0))
    }
    
    Method (LINE, 0, Serialized)
    {
        Store (BUFN, Local0)
        And (Local0, 0x0F, Local0)
        While (Local0)
        {
            MDGC (Zero)
            Increment (Local0)
            And (Local0, 0x0F, Local0)
        }
    }
    
    Method (MDGC, 1, Serialized)
    {
        Store (Arg0, Index (MBUF, BUFN))
        Add (BUFN, One, BUFN)
        If (LGreater (BUFN, 0x0FFF))
        {
            And (BUFN, 0x0FFF, BUFN)
            UP_L (One)
        }
    }
    
    Method (UP_L, 1, Serialized)
    {
        Store (Arg0, Local2)
        ShiftLeft (Local2, 0x04, Local2)
        MOVE (Local2)
        Subtract (0x1000, Local2, Local3)
        While (Local2)
        {
            Store (Zero, Index (MBUF, Local3))
            Increment (Local3)
            Decrement (Local2)
        }
    }
    
    Method (MOVE, 1, Serialized)
    {
        Store (Arg0, Local4)
        Store (Zero, BUFN)
        Subtract (0x1000, Local4, Local5)
        While (Local5)
        {
            Decrement (Local5)
            Store (DerefOf (Index (MBUF, Local4)), Index (MBUF, BUFN))
            Increment (BUFN)
            Increment (Local4)
        }
    }
    
    Method (NTOC, 1, Serialized)
    {
        And (Arg0, 0x0F, Local0)
        If (LLess (Local0, 0x0A))
        {
            Add (Local0, 0x30, Local0)
        }
        Else
        {
            Add (Local0, 0x37, Local0)
        }
        
        Return (Local0)
    }
    
    Scope (_SB.PCI0.SAT0)
    {
        Device (PRT2)
        {
            Name (_ADR, 0x0002FFFF)  // _ADR: Address
            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }
            
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LEqual (Arg0, Buffer (0x10)
                {
                    /* 0000 */   0x30, 0xEF, 0xFA, 0xBD, 0xBB, 0xAE, 0xDE, 0x11,
                    /* 0008 */   0x8A, 0x39, 0x08, 0x00, 0x20, 0x0C, 0x9A, 0x66
                }))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg2), _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg1), _T_1)
                                If (LEqual (_T_1, One))
                                {
                                    Return (Buffer (One)
                                    {
                                        0x0F
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                        0x00
                                    })
                                }
                                
                                Break
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_0, One))
                            {
                                Return (One)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x02))
                                {
                                    GLSD ()
                                    And (GP15, Zero, GP15)
                                    GLRS ()
                                    Return (One)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x03))
                                    {
                                        GLSD ()
                                        Or (GP15, One, GP15)
                                        GLRS ()
                                        Return (One)
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                        }
                        
                        Break
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
    
    Scope (_GPE)
    {
        Method (_L13, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            GLSD ()
            XOr (GIV0, 0x08, GIV0)
            GLRS ()
            If (LEqual (And (GIV0, 0x08), Zero))
            {
                If (LEqual (GP15, Zero))
                {
                    Store (0xDD, P80H)
                    Notify (\_SB.PCI0.SAT0, 0x82)
                }
            }
            
            Return (Zero)
        }
    }
    
    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero,
        Zero,
        Zero,
        Zero
    })
    If (Zero)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One,
            Zero,
            Zero,
            Zero
        })
    }
    
    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05,
            Zero,
            Zero,
            Zero
        })
    }
    
    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06,
            Zero,
            Zero,
            Zero
        })
    }
    
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07,
        Zero,
        Zero,
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0) {}
    }
    
    Method (WAK, 1, NotSerialized)
    {
    }
    Device (RMDT)
    {
        Name (_HID, "RMD0000")
        Name (RING, Package(256) { })
        Mutex (RTMX, 0)
        Name (HEAD, 0)
        Name (TAIL, 0)
        // PUSH: Use to push a trace item into RING for ACPIDebug.kext
        Method (PUSH, 1, NotSerialized)
        {
            Acquire(RTMX, 0xFFFF)
            // push new item at HEAD
            Add(HEAD, 1, Local0)
            If (LGreaterEqual(Local0, SizeOf(RING))) { Store(0, Local0) }
            if (LNotEqual(Local0, TAIL))
            {
                Store(Arg0, Index(RING, HEAD))
                Store(Local0, HEAD)
            }
            Release(RTMX)
        }
        // FTCH: Used by ACPIDebug.kext to fetch an item from RING
        Method (FTCH, 0, NotSerialized)
        {
            Acquire(RTMX, 0xFFFF)
            // pull item from TAIL and return it
            Store(0, Local0)
            if (LNotEqual(HEAD, TAIL))
            {
                Store(DerefOf(Index(RING, TAIL)), Local0)
                Increment(TAIL)
                If (LGreaterEqual(TAIL, SizeOf(RING))) { Store(0, TAIL) }
            }
            Release(RTMX)
            Return(Local0)
        }
        // COUN: Used by ACPIDebug.kext to determine number of items in RING
        Method (COUN, 0, NotSerialized)
        {
            Acquire(RTMX, 0xFFFF)
            // return count of items in RING
            Subtract(HEAD, TAIL, Local0)
            if (LLess(Local0, 0)) { Add(Local0, SizeOf(RING), Local0) }
            Release(RTMX)
            Return(Local0)
        }
        // Helper functions for multiple params at one time
        Method (P1, 1, NotSerialized) { PUSH(Arg0) }
        Method (P2, 2, Serialized)
        {
            Name (TEMP, Package(2) { })
            Store(Arg0, Index(TEMP, 0))
            Store(Arg1, Index(TEMP, 1))
            PUSH(TEMP)
        }
        Method (P3, 3, Serialized)
        {
            Name (TEMP, Package(3) { })
            Store(Arg0, Index(TEMP, 0))
            Store(Arg1, Index(TEMP, 1))
            Store(Arg2, Index(TEMP, 2))
            PUSH(TEMP)
        }
        Method (P4, 4, Serialized)
        {
            Name (TEMP, Package(4) { })
            Store(Arg0, Index(TEMP, 0))
            Store(Arg1, Index(TEMP, 1))
            Store(Arg2, Index(TEMP, 2))
            Store(Arg3, Index(TEMP, 3))
            PUSH(TEMP)
        }
        Method (P5, 5, Serialized)
        {
            Name (TEMP, Package(5) { })
            Store(Arg0, Index(TEMP, 0))
            Store(Arg1, Index(TEMP, 1))
            Store(Arg2, Index(TEMP, 2))
            Store(Arg3, Index(TEMP, 3))
            Store(Arg4, Index(TEMP, 4))
            PUSH(TEMP)
        }
        Method (P6, 6, Serialized)
        {
            Name (TEMP, Package(6) { })
            Store(Arg0, Index(TEMP, 0))
            Store(Arg1, Index(TEMP, 1))
            Store(Arg2, Index(TEMP, 2))
            Store(Arg3, Index(TEMP, 3))
            Store(Arg4, Index(TEMP, 4))
            Store(Arg5, Index(TEMP, 5))
            PUSH(TEMP)
        }
        Method (P7, 7, Serialized)
        {
            Name (TEMP, Package(7) { })
            Store(Arg0, Index(TEMP, 0))
            Store(Arg1, Index(TEMP, 1))
            Store(Arg2, Index(TEMP, 2))
            Store(Arg3, Index(TEMP, 3))
            Store(Arg4, Index(TEMP, 4))
            Store(Arg5, Index(TEMP, 5))
            Store(Arg6, Index(TEMP, 6))
            PUSH(TEMP)
        }
    }
    
    /*
     * iASL Warning: There were 6 external control methods found during
     * disassembly, but only 3 were resolved (3 unresolved). Additional
     * ACPI tables are required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods.
     */
    External (HDOS, MethodObj)    // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)
    External (HNOT, MethodObj)    // Warning: Unresolved Method, guessing 1 arguments (may be incorrect, see warning above)
    External (IDAB, MethodObj)    // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)
    
    
    External (AR02, PkgObj)
    External (AR0A, PkgObj)
    External (AR0B, PkgObj)
    
    
    
    External (PR02, PkgObj)
    External (PR0A, PkgObj)
    External (PR0B, PkgObj)
    
    External (SNXD)
    
    OperationRegion (SANV, SystemMemory, 0x92FB6D98, 0x013F)
    Field (SANV, AnyAcc, Lock, Preserve)
    {
        SARV,   32,
        ASLB,   32,
        IMON,   8,
        IGDS,   8,
        CADL,   8,
        PADL,   8,
        CSTE,   16,
        NSTE,   16,
        DID9,   32,
        DIDA,   32,
        DIDB,   32,
        IBTT,   8,
        IPAT,   8,
        IPSC,   8,
        IBLC,   8,
        IBIA,   8,
        ISSC,   8,
        IPCF,   8,
        IDMS,   8,
        IF1E,   8,
        HVCO,   8,
        NXD1,   32,
        NXD2,   32,
        NXD3,   32,
        NXD4,   32,
        NXD5,   32,
        NXD6,   32,
        NXD7,   32,
        NXD8,   32,
        GSMI,   8,
        PAVP,   8,
        LIDS,   8,
        KSV0,   32,
        KSV1,   8,
        BBAR,   32,
        BLCS,   8,
        BRTL,   8,
        ALSE,   8,
        ALAF,   8,
        LLOW,   8,
        LHIH,   8,
        ALFP,   8,
        AUDA,   32,
        AUDB,   32,
        AUDC,   32,
        DIDC,   32,
        DIDD,   32,
        DIDE,   32,
        DIDF,   32,
        CADR,   32,
        CCNT,   8,
        Offset (0xC8),
        SGMD,   8,
        SGFL,   8,
        PWOK,   8,
        HLRS,   8,
        PWEN,   8,
        PRST,   8,
        CPSP,   32,
        EECP,   8,
        EVCP,   16,
        XBAS,   32,
        GBAS,   16,
        SGGP,   8,
        NVGA,   32,
        NVHA,   32,
        AMDA,   32,
        NDID,   8,
        DID1,   32,
        DID2,   32,
        DID3,   32,
        DID4,   32,
        DID5,   32,
        DID6,   32,
        DID7,   32,
        DID8,   32,
        OBS1,   32,
        OBS2,   32,
        OBS3,   32,
        OBS4,   32,
        OBS5,   32,
        OBS6,   32,
        OBS7,   32,
        OBS8,   32,
        LTRA,   8,
        OBFA,   8,
        LTRB,   8,
        OBFB,   8,
        LTRC,   8,
        OBFC,   8,
        SMSL,   16,
        SNSL,   16,
        P0UB,   8,
        P1UB,   8,
        P2UB,   8,
        EDPV,   8,
        NXDX,   32,
        DIDX,   32
    }
    
    Scope (\_SB.PCI0)
    {
        Name (LTRS, Zero)
        Name (OBFS, Zero)
        Device (PEG0)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
            OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
            Field (PEGR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02),
                PSTS,   1,
                Offset (0x2C),
                GENG,   1,
                ,   1,
                PMEG,   1
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (One, GENG)
                    Store (One, PMEG)
                }
                Else
                {
                    Store (Zero, GENG)
                    Store (Zero, PMEG)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                Store (One, PSTS)
            }
            
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR02)
                }
                
                Return (PR02)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTRA, LTRS)
                Store (OBFA, OBFS)
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRS)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFS)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFS)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRS)
                                            {
                                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
            
            Device (PEGP)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }
            }
        }
        
        Device (PEG1)
        {
            Name (_ADR, 0x00010001)  // _ADR: Address
            OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
            Field (PEGR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02),
                PSTS,   1,
                Offset (0x2C),
                GENG,   1,
                ,   1,
                PMEG,   1
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (One, GENG)
                    Store (One, PMEG)
                }
                Else
                {
                    Store (Zero, GENG)
                    Store (Zero, PMEG)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                Store (One, PSTS)
            }
            
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0A)
                }
                
                Return (PR0A)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTRB, LTRS)
                Store (OBFB, OBFS)
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRS)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFS)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFS)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRS)
                                            {
                                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
        }
        
        Device (PEG2)
        {
            Name (_ADR, 0x00010002)  // _ADR: Address
            OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
            Field (PEGR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02),
                PSTS,   1,
                Offset (0x2C),
                GENG,   1,
                ,   1,
                PMEG,   1
            }
            
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }
            
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (One, GENG)
                    Store (One, PMEG)
                }
                Else
                {
                    Store (Zero, GENG)
                    Store (Zero, PMEG)
                }
            }
            
            Method (HPME, 0, Serialized)
            {
                Store (One, PSTS)
            }
            
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0B)
                }
                
                Return (PR0B)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (LTRC, LTRS)
                Store (OBFC, OBFS)
            }
            
            Name (LTRV, Package (0x04)
            {
                Zero,
                Zero,
                Zero,
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, Buffer (0x10)
                    {
                        /* 0000 */   0xD0, 0x37, 0xC9, 0xE5, 0x53, 0x35, 0x7A, 0x4D,
                        /* 0008 */   0x91, 0x17, 0xEA, 0x4D, 0x19, 0xC3, 0x43, 0x4D
                    }))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, Zero))
                            {
                                If (LEqual (Arg1, 0x02))
                                {
                                    Store (One, OPTS)
                                    If (LTRS)
                                    {
                                        Or (OPTS, 0x40, OPTS)
                                    }
                                    
                                    If (OBFS)
                                    {
                                        Or (OPTS, 0x10, OPTS)
                                    }
                                    
                                    Return (OPTS)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFS)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                            })
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x06))
                                    {
                                        If (LEqual (Arg1, 0x02))
                                        {
                                            If (LTRS)
                                            {
                                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV,
                                                Zero))
                                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV,
                                                0x02))
                                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                                Return (LTRV)
                                            }
                                            Else
                                            {
                                                Return (Zero)
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Break
                        }
                    }
                    
                    Break
                }
                
                Return (Buffer (One)
                {
                    0x00
                })
            }
        }
        
        Device (B0D3)
        {
            Name (_ADR, 0x00030000)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNotEqual (AUVD, 0xFFFF))
                {
                    Return (0x0F)
                }
                
                Return (Zero)
            }
            
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }
            
            OperationRegion (RPCZ, PCI_Config, Zero, 0x40)
            Field (RPCZ, DWordAcc, Lock, Preserve)
            {
                AUVD,   16,
                Offset (0x10),
                ABAR,   32
            }
            
            Method (ASTR, 0, Serialized)
            {
                Store (ABAR, Local0)
                If (LAnd (LNotEqual (Local0, Ones), LNotEqual (And (Local0,
                0xFFFFC000), Zero)))
                {
                    And (Local0, 0xFFFFFFF0, Local0)
                    Add (Local0, 0x1000, Local0)
                    OperationRegion (RPCY, SystemMemory, Local0, 0x25)
                    Field (RPCY, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x0C),
                        EM4W,   32,
                        EMWA,   32,
                        Offset (0x1C),
                        ADWA,   32
                    }
                    
                    Store (AUDA, EMWA)
                    Store (AUDB, ADWA)
                    Store (AUDC, EM4W)
                }
            }
            
            Method (VSTR, 1, Serialized)
            {
                Name (CONT, 0x03E8)
                Name (ADDR, 0x80000000)
                Store (Arg0, ADDR)
                OperationRegion (CCDC, SystemMemory, ADDR, 0x04)
                Field (CCDC, ByteAcc, NoLock, Preserve)
                {
                    CDEC,   32
                }
                
                Store (ABAR, Local0)
                If (LAnd (LNotEqual (Local0, Ones), LNotEqual (And (Local0,
                0xFFFFC000), Zero)))
                {
                    If (LNotEqual (CDEC, Zero))
                    {
                        And (Local0, 0xFFFFFFF0, Local0)
                        OperationRegion (IPCV, SystemMemory, Local0, 0x70)
                        Field (IPCV, DWordAcc, NoLock, Preserve)
                        {
                            Offset (0x60),
                            AVIC,   32,
                            Offset (0x68),
                            AIRS,   16
                        }
                        
                        Store (0x03E8, CONT)
                        While (LAnd (LEqual (And (AIRS, One), One), LNotEqual (
                        CONT, Zero)))
                        {
                            Stall (One)
                            Decrement (CONT)
                        }
                        
                        Or (AIRS, 0x02, AIRS)
                        Store (CDEC, AVIC)
                        Or (AIRS, One, AIRS)
                        Store (0x03E8, CONT)
                        While (LAnd (LEqual (And (AIRS, One), One), LNotEqual (
                        CONT, Zero)))
                        {
                            Stall (One)
                            Decrement (CONT)
                        }
                    }
                }
            }
            
            Method (CXDC, 0, Serialized)
            {
                Name (IDDX, 0x80000000)
                If (LAnd (LNotEqual (CADR, Zero), LNotEqual (CCNT, Zero)))
                {
                    Store (CADR, IDDX)
                    While (LLess (IDDX, Add (CADR, Multiply (CCNT, 0x04))))
                    {
                        VSTR (IDDX)
                        Add (IDDX, 0x04, IDDX)
                    }
                }
            }
            
            Method (AINI, 0, Serialized)
            {
                Name (CONT, 0x03E8)
                Store (ABAR, Local0)
                If (LAnd (LNotEqual (Local0, Ones), LNotEqual (And (Local0,
                0xFFFFC000), Zero)))
                {
                    And (Local0, 0xFFFFFFF0, Local0)
                    OperationRegion (IPCV, SystemMemory, Local0, 0x70)
                    Field (IPCV, DWordAcc, NoLock, Preserve)
                    {
                        GCAP,   16,
                        Offset (0x08),
                        GCTL,   32,
                        Offset (0x0E),
                        SSTS,   8,
                        Offset (0x60),
                        AVIC,   32,
                        Offset (0x68),
                        AIRS,   16
                    }
                    
                    Or (GCTL, One, GCTL)
                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (GCTL, One), One), LNotEqual (
                    CONT, Zero)))
                    {
                        Stall (One)
                        Decrement (CONT)
                    }
                    
                    And (GCAP, 0xFFFF, GCAP)
                    Or (SSTS, 0x0F, SSTS)
                    And (GCTL, 0xFFFFFFFE, GCTL)
                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (GCTL, One), One), LNotEqual (
                    CONT, Zero)))
                    {
                        Stall (One)
                        Decrement (CONT)
                    }
                    
                    Or (GCTL, One, GCTL)
                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (GCTL, One), One), LNotEqual (
                    CONT, Zero)))
                    {
                        Stall (One)
                        Decrement (CONT)
                    }
                }
            }
        }
        
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If (LAnd (LEqual (S0ID, One), And (PEPY, One)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    Return (Package (0x00) {})
                }
            }
            
            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                Store (And (Arg0, 0x07), DSEN)
                If (LEqual (And (Arg0, 0x03), Zero))
                {
                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }
            }
            
            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                If (CondRefOf (IDAB))
                {
                    IDAB ()
                }
                Else
                {
                    Store (Zero, NDID)
                    If (LNotEqual (DIDL, Zero))
                    {
                        Store (SDDL (DIDL), DID1)
                    }
                    
                    If (LNotEqual (DDL2, Zero))
                    {
                        Store (SDDL (DDL2), DID2)
                    }
                    
                    If (LNotEqual (DDL3, Zero))
                    {
                        Store (SDDL (DDL3), DID3)
                    }
                    
                    If (LNotEqual (DDL4, Zero))
                    {
                        Store (SDDL (DDL4), DID4)
                    }
                    
                    If (LNotEqual (DDL5, Zero))
                    {
                        Store (SDDL (DDL5), DID5)
                    }
                    
                    If (LNotEqual (DDL6, Zero))
                    {
                        Store (SDDL (DDL6), DID6)
                    }
                    
                    If (LNotEqual (DDL7, Zero))
                    {
                        Store (SDDL (DDL7), DID7)
                    }
                    
                    If (LNotEqual (DDL8, Zero))
                    {
                        Store (SDDL (DDL8), DID8)
                    }
                    
                    If (LNotEqual (DDL9, Zero))
                    {
                        Store (SDDL (DDL9), DID9)
                    }
                    
                    If (LNotEqual (DD10, Zero))
                    {
                        Store (SDDL (DD10), DIDA)
                    }
                    
                    If (LNotEqual (DD11, Zero))
                    {
                        Store (SDDL (DD11), DIDB)
                    }
                    
                    If (LNotEqual (DD12, Zero))
                    {
                        Store (SDDL (DD12), DIDC)
                    }
                    
                    If (LNotEqual (DD13, Zero))
                    {
                        Store (SDDL (DD13), DIDD)
                    }
                    
                    If (LNotEqual (DD14, Zero))
                    {
                        Store (SDDL (DD14), DIDE)
                    }
                    
                    If (LNotEqual (DD15, Zero))
                    {
                        Store (SDDL (DD15), DIDF)
                    }
                }
                
                If (LEqual (NDID, One))
                {
                    Name (TMP1, Package (0x01)
                    {
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                    Return (TMP1)
                }
                
                If (LEqual (NDID, 0x02))
                {
                    Name (TMP2, Package (0x02)
                    {
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP2, One))
                    Return (TMP2)
                }
                
                If (LEqual (NDID, 0x03))
                {
                    Name (TMP3, Package (0x03)
                    {
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP3, One))
                    Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                    Return (TMP3)
                }
                
                If (LEqual (NDID, 0x04))
                {
                    Name (TMP4, Package (0x04)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP4, One))
                    Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                    Return (TMP4)
                }
                
                If (LEqual (NDID, 0x05))
                {
                    Name (TMP5, Package (0x05)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP5, One))
                    Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                    Return (TMP5)
                }
                
                If (LEqual (NDID, 0x06))
                {
                    Name (TMP6, Package (0x06)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP6, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP6, One))
                    Store (Or (0x00010000, DID3), Index (TMP6, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP6, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP6, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP6, 0x05))
                    Return (TMP6)
                }
                
                If (LEqual (NDID, 0x07))
                {
                    Name (TMP7, Package (0x07)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP7, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP7, One))
                    Store (Or (0x00010000, DID3), Index (TMP7, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP7, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP7, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP7, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP7, 0x06))
                    Return (TMP7)
                }
                
                If (LEqual (NDID, 0x08))
                {
                    Name (TMP8, Package (0x08)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP8, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP8, One))
                    Store (Or (0x00010000, DID3), Index (TMP8, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP8, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP8, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP8, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP8, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMP8, 0x07))
                    Return (TMP8)
                }
                
                If (LEqual (NDID, 0x09))
                {
                    Name (TMP9, Package (0x09)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP9, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP9, One))
                    Store (Or (0x00010000, DID3), Index (TMP9, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP9, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP9, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP9, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP9, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMP9, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMP9, 0x08))
                    Return (TMP9)
                }
                
                If (LEqual (NDID, 0x0A))
                {
                    Name (TMPA, Package (0x0A)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPA, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPA, One))
                    Store (Or (0x00010000, DID3), Index (TMPA, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPA, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPA, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPA, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPA, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPA, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPA, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPA, 0x09))
                    Return (TMPA)
                }
                
                If (LEqual (NDID, 0x0B))
                {
                    Name (TMPB, Package (0x0B)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPB, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPB, One))
                    Store (Or (0x00010000, DID3), Index (TMPB, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPB, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPB, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPB, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPB, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPB, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPB, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPB, 0x09))
                    Store (Or (0x00010000, DIDB), Index (TMPB, 0x0A))
                    Return (TMPB)
                }
                
                If (LEqual (NDID, 0x0C))
                {
                    Name (TMPC, Package (0x0C)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPC, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPC, One))
                    Store (Or (0x00010000, DID3), Index (TMPC, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPC, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPC, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPC, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPC, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPC, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPC, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPC, 0x09))
                    Store (Or (0x00010000, DIDB), Index (TMPC, 0x0A))
                    Store (Or (0x00010000, DIDC), Index (TMPC, 0x0B))
                    Return (TMPC)
                }
                
                If (LEqual (NDID, 0x0D))
                {
                    Name (TMPD, Package (0x0D)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPD, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPD, One))
                    Store (Or (0x00010000, DID3), Index (TMPD, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPD, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPD, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPD, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPD, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPD, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPD, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPD, 0x09))
                    Store (Or (0x00010000, DIDB), Index (TMPD, 0x0A))
                    Store (Or (0x00010000, DIDC), Index (TMPD, 0x0B))
                    Store (Or (0x00010000, DIDD), Index (TMPD, 0x0C))
                    Return (TMPD)
                }
                
                If (LEqual (NDID, 0x0E))
                {
                    Name (TMPE, Package (0x0E)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPE, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPE, One))
                    Store (Or (0x00010000, DID3), Index (TMPE, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPE, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPE, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPE, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPE, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPE, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPE, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPE, 0x09))
                    Store (Or (0x00010000, DIDB), Index (TMPE, 0x0A))
                    Store (Or (0x00010000, DIDC), Index (TMPE, 0x0B))
                    Store (Or (0x00010000, DIDD), Index (TMPE, 0x0C))
                    Store (Or (0x00010000, DIDE), Index (TMPE, 0x0D))
                    Return (TMPE)
                }
                
                If (LEqual (NDID, 0x0F))
                {
                    Name (TMPF, Package (0x0F)
                    {
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones,
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMPF, Zero))
                    Store (Or (0x00010000, DID2), Index (TMPF, One))
                    Store (Or (0x00010000, DID3), Index (TMPF, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMPF, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMPF, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMPF, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMPF, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMPF, 0x07))
                    Store (Or (0x00010000, DID9), Index (TMPF, 0x08))
                    Store (Or (0x00010000, DIDA), Index (TMPF, 0x09))
                    Store (Or (0x00010000, DIDB), Index (TMPF, 0x0A))
                    Store (Or (0x00010000, DIDC), Index (TMPF, 0x0B))
                    Store (Or (0x00010000, DIDD), Index (TMPF, 0x0C))
                    Store (Or (0x00010000, DIDE), Index (TMPF, 0x0D))
                    Store (Or (0x00010000, DIDF), Index (TMPF, 0x0E))
                    Return (TMPF)
                }
                
                Return (Package (0x01)
                {
                    0x0400
                })
            }
            
            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID1), 0x0400))
                    {
                        Store (One, EDPV)
                        Store (NXD1, NXDX)
                        Store (DID1, DIDX)
                        Return (One)
                    }
                    
                    If (LEqual (DID1, Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID1))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD1)
                    }
                    
                    Return (NDDS (DID1))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID2), 0x0400))
                    {
                        Store (0x02, EDPV)
                        Store (NXD2, NXDX)
                        Store (DID2, DIDX)
                        Return (0x02)
                    }
                    
                    If (LEqual (DID2, Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID2))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (LIDS, Zero))
                    {
                        Return (Zero)
                    }
                    
                    Return (CDDS (DID2))
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD2)
                    }
                    
                    Return (NDDS (DID2))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID3), 0x0400))
                    {
                        Store (0x03, EDPV)
                        Store (NXD3, NXDX)
                        Store (DID3, DIDX)
                        Return (0x03)
                    }
                    
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID3))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD3)
                    }
                    
                    Return (NDDS (DID3))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID4), 0x0400))
                    {
                        Store (0x04, EDPV)
                        Store (NXD4, NXDX)
                        Store (DID4, DIDX)
                        Return (0x04)
                    }
                    
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID4))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD4)
                    }
                    
                    Return (NDDS (DID4))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID5), 0x0400))
                    {
                        Store (0x05, EDPV)
                        Store (NXD5, NXDX)
                        Store (DID5, DIDX)
                        Return (0x05)
                    }
                    
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID5))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD5)
                    }
                    
                    Return (NDDS (DID5))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID6), 0x0400))
                    {
                        Store (0x06, EDPV)
                        Store (NXD6, NXDX)
                        Store (DID6, DIDX)
                        Return (0x06)
                    }
                    
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID6))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD6)
                    }
                    
                    Return (NDDS (DID6))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID7), 0x0400))
                    {
                        Store (0x07, EDPV)
                        Store (NXD7, NXDX)
                        Store (DID7, DIDX)
                        Return (0x07)
                    }
                    
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID7))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD7)
                    }
                    
                    Return (NDDS (DID7))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID8), 0x0400))
                    {
                        Store (0x08, EDPV)
                        Store (NXD8, NXDX)
                        Store (DID8, DIDX)
                        Return (0x08)
                    }
                    
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID8))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD8)
                    }
                    
                    Return (NDDS (DID8))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD09)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID9), 0x0400))
                    {
                        Store (0x09, EDPV)
                        Store (NXD8, NXDX)
                        Store (DID9, DIDX)
                        Return (0x09)
                    }
                    
                    If (LEqual (DID9, Zero))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID9))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID9, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID9))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD8)
                    }
                    
                    Return (NDDS (DID9))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD0A)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDA), 0x0400))
                    {
                        Store (0x0A, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDA, DIDX)
                        Return (0x0A)
                    }
                    
                    If (LEqual (DIDA, Zero))
                    {
                        Return (0x0A)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDA))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDA, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DIDA))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD8)
                    }
                    
                    Return (NDDS (DIDA))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD0B)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDB), 0x0400))
                    {
                        Store (0x0B, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDB, DIDX)
                        Return (0x0B)
                    }
                    
                    If (LEqual (DIDB, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDB))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDB, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DIDB))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD8)
                    }
                    
                    Return (NDDS (DIDB))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD0C)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDC), 0x0400))
                    {
                        Store (0x0C, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDC, DIDX)
                        Return (0x0C)
                    }
                    
                    If (LEqual (DIDC, Zero))
                    {
                        Return (0x0C)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDC))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDC, Zero))
                    {
                        Return (0x0C)
                    }
                    Else
                    {
                        Return (CDDS (DIDC))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD8)
                    }
                    
                    Return (NDDS (DIDC))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD0D)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDD), 0x0400))
                    {
                        Store (0x0D, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDD, DIDX)
                        Return (0x0D)
                    }
                    
                    If (LEqual (DIDD, Zero))
                    {
                        Return (0x0D)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDD))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDD, Zero))
                    {
                        Return (0x0D)
                    }
                    Else
                    {
                        Return (CDDS (DIDD))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD8)
                    }
                    
                    Return (NDDS (DIDD))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD0E)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDE), 0x0400))
                    {
                        Store (0x0E, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDE, DIDX)
                        Return (0x0E)
                    }
                    
                    If (LEqual (DIDE, Zero))
                    {
                        Return (0x0E)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDE))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDE, Zero))
                    {
                        Return (0x0E)
                    }
                    Else
                    {
                        Return (CDDS (DIDE))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD8)
                    }
                    
                    Return (NDDS (DIDE))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD0F)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DIDF), 0x0400))
                    {
                        Store (0x0F, EDPV)
                        Store (NXD8, NXDX)
                        Store (DIDF, DIDX)
                        Return (0x0F)
                    }
                    
                    If (LEqual (DIDF, Zero))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDF))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DIDC, Zero))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (CDDS (DIDF))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXD8)
                    }
                    
                    Return (NDDS (DIDF))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }
            
            Device (DD1F)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (EDPV, Zero))
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDX))
                    }
                }
                
                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (EDPV, Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (CDDS (DIDX))
                    }
                }
                
                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD
                    )))
                    {
                        Return (NXDX)
                    }
                    
                    Return (NDDS (DIDX))
                }
                
                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
                
                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (\_SB.PCI0.LPCB.H_EC.OBCL ())
                }
                
                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                    {
                        \_SB.PCI0.GFX0.AINT (One, Arg0)
                        Store (Arg0, BRTL)
                    }
                }
                
                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL)
                }
            }
            
            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                Store (And (Arg0, 0x0F0F), Local0)
                Or (0x80000000, Local0, Local1)
                If (LEqual (DIDL, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DDL2, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DDL3, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DDL4, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DDL5, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DDL6, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DDL7, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DDL8, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DDL9, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DD10, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DD11, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DD12, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DD13, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DD14, Local0))
                {
                    Return (Local1)
                }
                
                If (LEqual (DD15, Local0))
                {
                    Return (Local1)
                }
                
                Return (Zero)
            }
            
            Method (CDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (0x1D)
                }
                
                If (LEqual (CADL, Local0))
                {
                    Return (0x1F)
                }
                
                If (LEqual (CAL2, Local0))
                {
                    Return (0x1F)
                }
                
                If (LEqual (CAL3, Local0))
                {
                    Return (0x1F)
                }
                
                If (LEqual (CAL4, Local0))
                {
                    Return (0x1F)
                }
                
                If (LEqual (CAL5, Local0))
                {
                    Return (0x1F)
                }
                
                If (LEqual (CAL6, Local0))
                {
                    Return (0x1F)
                }
                
                If (LEqual (CAL7, Local0))
                {
                    Return (0x1F)
                }
                
                If (LEqual (CAL8, Local0))
                {
                    Return (0x1F)
                }
                
                Return (0x1D)
            }
            
            Method (NDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (Zero)
                }
                
                If (LEqual (NADL, Local0))
                {
                    Return (One)
                }
                
                If (LEqual (NDL2, Local0))
                {
                    Return (One)
                }
                
                If (LEqual (NDL3, Local0))
                {
                    Return (One)
                }
                
                If (LEqual (NDL4, Local0))
                {
                    Return (One)
                }
                
                If (LEqual (NDL5, Local0))
                {
                    Return (One)
                }
                
                If (LEqual (NDL6, Local0))
                {
                    Return (One)
                }
                
                If (LEqual (NDL7, Local0))
                {
                    Return (One)
                }
                
                If (LEqual (NDL8, Local0))
                {
                    Return (One)
                }
                
                Return (Zero)
            }
            
            Scope (\_SB.PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x14),
                    AUDE,   8,
                    Offset (0x60),
                    TASM,   10,
                    Offset (0x62)
                }
            }
            
            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12),
                ,   1,
                GIVD,   1,
                ,   2,
                GUMA,   3,
                Offset (0x14),
                ,   4,
                GMFN,   1,
                Offset (0x18),
                Offset (0xA4),
                ASLE,   8,
                Offset (0xA8),
                GSSE,   1,
                GSSB,   14,
                GSES,   1,
                Offset (0xB0),
                ,   12,
                CDVL,   1,
                Offset (0xB2),
                Offset (0xB5),
                LBPC,   8,
                Offset (0xBC),
                ASLS,   32
            }
            
            OperationRegion (IGDM, SystemMemory, /*rehab: 0x92fb3018*/ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128,
                SIZE,   32,
                OVER,   32,
                SVER,   256,
                VVER,   128,
                GVER,   128,
                MBOX,   32,
                DMOD,   32,
                PCON,   32,
                DVER,   64,
                Offset (0x100),
                DRDY,   32,
                CSTS,   32,
                CEVT,   32,
                Offset (0x120),
                DIDL,   32,
                DDL2,   32,
                DDL3,   32,
                DDL4,   32,
                DDL5,   32,
                DDL6,   32,
                DDL7,   32,
                DDL8,   32,
                CPDL,   32,
                CPL2,   32,
                CPL3,   32,
                CPL4,   32,
                CPL5,   32,
                CPL6,   32,
                CPL7,   32,
                CPL8,   32,
                CADL,   32,
                CAL2,   32,
                CAL3,   32,
                CAL4,   32,
                CAL5,   32,
                CAL6,   32,
                CAL7,   32,
                CAL8,   32,
                NADL,   32,
                NDL2,   32,
                NDL3,   32,
                NDL4,   32,
                NDL5,   32,
                NDL6,   32,
                NDL7,   32,
                NDL8,   32,
                ASLP,   32,
                TIDX,   32,
                CHPD,   32,
                CLID,   32,
                CDCK,   32,
                SXSW,   32,
                EVTS,   32,
                CNOT,   32,
                NRDY,   32,
                DDL9,   32,
                DD10,   32,
                DD11,   32,
                DD12,   32,
                DD13,   32,
                DD14,   32,
                DD15,   32,
                CPL9,   32,
                CP10,   32,
                CP11,   32,
                CP12,   32,
                CP13,   32,
                CP14,   32,
                CP15,   32,
                Offset (0x200),
                SCIE,   1,
                GEFC,   4,
                GXFC,   3,
                GESF,   8,
                Offset (0x204),
                PARM,   32,
                DSLP,   32,
                Offset (0x300),
                ARDY,   32,
                ASLC,   32,
                TCHE,   32,
                ALSI,   32,
                BCLP,   32,
                PFIT,   32,
                CBLV,   32,
                BCL0,   8,
                Offset (0x31E),
                BCL1,   8,
                Offset (0x320),
                BCL2,   8,
                Offset (0x322),
                BCL3,   8,
                Offset (0x324),
                BCL4,   8,
                Offset (0x326),
                BCL5,   8,
                Offset (0x328),
                BCL6,   8,
                Offset (0x32A),
                BCL7,   8,
                Offset (0x32C),
                BCL8,   8,
                Offset (0x32E),
                BCL9,   8,
                Offset (0x330),
                BCLA,   8,
                Offset (0x332),
                Offset (0x344),
                CPFM,   32,
                EPFM,   32,
                PLUT,   592,
                PFMB,   32,
                CCDV,   32,
                PCFT,   32,
                SROT,   32,
                IUER,   32,
                FDSP,   64,
                FDSS,   32,
                STAT,   32,
                Offset (0x400),
                GVD1,   49152,
                PHED,   32,
                BDDC,   2048
            }
            
            Name (DBTB, Package (0x15)
            {
                Zero,
                0x07,
                0x38,
                0x01C0,
                0x0E00,
                0x3F,
                0x01C7,
                0x0E07,
                0x01F8,
                0x0E38,
                0x0FC0,
                Zero,
                Zero,
                Zero,
                Zero,
                Zero,
                0x7000,
                0x7007,
                0x7038,
                0x71C0,
                0x7E00
            })
            Name (CDCT, Package (0x05)
            {
                Package (0x02)
                {
                    0xE4,
                    0x0140
                },
                
                Package (0x02)
                {
                    0xDE,
                    0x014D
                },
                
                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 
                
                Package (0x02)
                {
                    Zero, 
                    Zero
                }, 
                
                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0659, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, One))
                    {
                        Store (0x00300482, PARM)
                        If (LEqual (S0ID, One))
                        {
                            Or (PARM, 0x0100, PARM)
                        }
                        
                        Store (Zero, GESF)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), 
                        PARM)
                        Or (IBTT, PARM, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x05))
                    {
                        Store (IPSC, PARM)
                        Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, One, PARM)
                        Or (PARM, ShiftLeft (GMFN, One), PARM)
                        Or (PARM, 0x1800, PARM)
                        Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                        Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL
                        )), 0x15), PARM, PARM)
                        Store (One, GESF)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM)
                        If (ISSC)
                        {
                            Or (PARM, 0x03, PARM)
                        }
                        
                        Store (Zero, GESF)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x0B))
                    {
                        Store (KSV0, PARM)
                        Store (KSV1, GESF)
                        Return (SUCC)
                    }
                    
                    Store (Zero, GESF)
                    Return (CRIT)
                }
                
                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (Zero, PARM)
                        Store (0x000F87DD, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x07))
                    {
                        If (LEqual (PARM, Zero))
                        {
                            Store (CLID, Local0)
                            If (And (0x80000000, Local0))
                            {
                                And (CLID, 0x0F, CLID)
                                GLID (CLID)
                            }
                        }
                        
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x08))
                    {
                        If (LEqual (S0ID, One))
                        {
                            Store (And (ShiftRight (PARM, 0x08), 0xFF), Local0)
                            \GUAM (Local0)
                        }
                        
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC)
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                            Decrement (IPAT)
                        }
                        
                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E)
                        If (And (PARM, 0x0001E000))
                        {
                            And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                        }
                        Else
                        {
                            And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                        }
                        
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, One))
                        {
                            If (LEqual (ShiftRight (PARM, One), One))
                            {
                                Store (One, ISSC)
                            }
                            Else
                            {
                                Store (Zero, GESF)
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            Store (Zero, ISSC)
                        }
                        
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    If (LEqual (GESF, 0x15))
                    {
                        If (LEqual (PARM, One))
                        {
                            Or (\_SB.PCI0.AUDE, 0x20, \_SB.PCI0.AUDE)
                            \_SB.PCI0.B0D3.ASTR ()
                            \_SB.PCI0.B0D3.AINI ()
                            \_SB.PCI0.B0D3.CXDC ()
                            Notify (\_SB.PCI0, Zero)
                        }
                        
                        If (LEqual (PARM, Zero))
                        {
                            And (\_SB.PCI0.AUDE, 0xDF, \_SB.PCI0.AUDE)
                            Notify (\_SB.PCI0, Zero)
                        }
                        
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }
                    
                    Store (Zero, GESF)
                    Return (SUCC)
                }
                
                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC)
                }
                
                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC)
                }
                
                Store (Zero, GEFC)
                Store (One, SCIS)
                Store (Zero, GSSE)
                Store (Zero, SCIE)
                Return (Zero)
            }
            
            Method (PDRD, 0, NotSerialized)
            {
                Return (LNot (DRDY))
            }
            
            Method (PSTS, 0, NotSerialized)
            {
                If (LGreater (CSTS, 0x02))
                {
                    Sleep (ASLP)
                }
                
                Return (LEqual (CSTS, 0x03))
            }
            
            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }
                
                Store (Arg0, CEVT)
                Store (0x03, CSTS)
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (\_SB.PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.GFX0, Arg1)
                    }
                }
                
                If (CondRefOf (HNOT))
                {
                    HNOT (Arg0)
                }
                Else
                {
                    Notify (\_SB.PCI0.GFX0, 0x80)
                }
                
                Return (Zero)
            }
            
            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX)
                Return (GNOT (One, Zero))
            }
            
            Method (GLID, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (0x03, CLID)
                }
                Else
                {
                    Store (Arg0, CLID)
                }
                
                If (GNOT (0x02, Zero))
                {
                    Or (CLID, 0x80000000, CLID)
                    Return (One)
                }
                
                Return (Zero)
            }
            
            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK)
                Return (GNOT (0x04, Zero))
            }
            
            Method (PARD, 0, NotSerialized)
            {
                If (LNot (ARDY))
                {
                    Sleep (ASLP)
                }
                
                Return (LNot (ARDY))
            }
            
            Method (IUEH, 1, Serialized)
            {
                And (IUER, 0xC0, IUER)
                XOr (IUER, ShiftLeft (One, Arg0), IUER)
                If (LLessEqual (Arg0, 0x04))
                {
                    Return (AINT (0x05, Zero))
                }
                Else
                {
                    Return (AINT (Arg0, Zero))
                }
            }
            
            Method (AINT, 2, NotSerialized)
            {
                \RMDT.P3 ("AINT called", Arg0, Arg1)
                If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                {
                    \RMDT.P1 ("AINT bailing b/c TCHE")
                    Return (One)
                }
                
                If (PARD ())
                {
                    \RMDT.P1 ("AINT bailing b/c PARD")
                    Return (One)
                }
                
                If (LAnd (LGreaterEqual (Arg0, 0x05), LLessEqual (Arg0, 0x07)))
                {
                    Store (ShiftLeft (One, Arg0), ASLC)
                    Store (One, ASLE)
                    Store (Zero, Local2)
                    While (LAnd (LLess (Local2, 0xFA), LNotEqual (ASLC, Zero)))
                    {
                        Sleep (0x04)
                        Increment (Local2)
                    }
                    
                    Return (Zero)
                }
                
                If (LEqual (Arg0, 0x02))
                {
                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)
                        If (LEqual (Local0, One))
                        {
                            If (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x08))
                                {
                                    Store (0x08, PFIT)
                                }
                                Else
                                {
                                    Store (One, PFIT)
                                }
                            }
                        }
                        
                        If (LEqual (Local0, 0x06))
                        {
                            If (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, One))
                                {
                                    Store (One, PFIT)
                                }
                                Else
                                {
                                    Store (0x06, PFIT)
                                }
                            }
                        }
                        
                        If (LEqual (Local0, 0x08))
                        {
                            If (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x06))
                                {
                                    Store (0x06, PFIT)
                                }
                                Else
                                {
                                    Store (0x08, PFIT)
                                }
                            }
                        }
                    }
                    Else
                    {
                        XOr (PFIT, 0x07, PFIT)
                    }
                    
                    Or (PFIT, 0x80000000, PFIT)
                    Store (0x04, ASLC)
                }
                Else
                {
                    If (LEqual (Arg0, One))
                    {
                        \RMDT.P1 ("AINT Arg=1")
                        Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                        Or (BCLP, 0x80000000, BCLP)
                        \RMDT.P2 ("AINT BCLP=", BCLP)
                        Store (0x02, ASLC)
                    }
                    Else
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Arg1, ALSI)
                            Store (One, ASLC)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }
                
                Store (One, ASLE)
                Return (Zero)
            }
            
            Method (SCIP, 0, NotSerialized)
            {
                If (LNotEqual (OVER, Zero))
                {
                    Return (LNot (GSMI))
                }
                
                Return (Zero)
            }
            
            Device (\_SB.MEM2)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (CRS2, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                    0x20000000,         // Address Base
                    0x00200000,         // Address Length
                    )
                    Memory32Fixed (ReadWrite,
                    0x40004000,         // Address Base
                    0x00001000,         // Address Length
                    )
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (IGDS)
                    {
                        If (LEqual (PNHM, 0x000306C1))
                        {
                            Return (0x0F)
                        }
                    }
                    
                    Return (Zero)
                }
                
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (CRS2)
                }
            }
        }
    }
    
    Scope (_SB)
    {
        Device (PNLF)
        {
            Name (_HID, EisaId ("APP0002"))
            Name (_CID, "backlight")
            Name (_UID, 0x0A)
            Name (_STA, 0x0B)
            Method (_BCL, 0, NotSerialized)
            {
                
                \RMDT.P2("PNLF._BCL: ASLB=", ASLB)
                //Return (\_SB.PCI0.IGPU.DD1F._BCL()) }
                Store(\_SB.PCI0.GFX0.DD1F._BCL(), Local0)
                \RMDT.P2("PNLF._BCL: GFX0.DD1F._BCL() =", Local0)
                Return (Package ()
                {
                    100, 62,
                    0,
                    6,
                    12,
                    18,
                    25,
                    31,
                    37,
                    43,
                    49,
                    56,
                    62,
                    68,
                    74,
                    81,
                    87,
                    93,
                    100,
                })
            }
            Method (_BCM, 1, NotSerialized) { \_SB.PCI0.GFX0.DD1F._BCM(Arg0) }
            Method (_BQC, 0, NotSerialized) { Return (\_SB.PCI0.GFX0.DD1F._BQC()) }
            Method (_DOS, 1, NotSerialized) { \_SB.PCI0.GFX0._DOS(Arg0) }
        }
    }
    
    External (_SB_.PCI0.I2C0.SHUB.PI2C.PUAM, MethodObj)    // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)
    External (_SB_.PCI0.PAUD.PUAM, MethodObj)    // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)
    External (_SB_.TPM_.PTS_, MethodObj)    // Warning: Unresolved Method, guessing 1 arguments (may be incorrect, see warning above)
    
    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU1._PPC, MethodObj)    // 0 Arguments
    External (_PR_.CPU2._PPC, MethodObj)    // 0 Arguments
    External (_PR_.CPU3._PPC, MethodObj)    // 0 Arguments
    External (_PR_.CPU4._PPC, MethodObj)    // 0 Arguments
    External (_PR_.CPU5._PPC, MethodObj)    // 0 Arguments
    External (_PR_.CPU6._PPC, MethodObj)    // 0 Arguments
    External (_PR_.CPU7._PPC, MethodObj)    // 0 Arguments
    External (_SB_.IAOE.IBT1, IntObj)
    External (_SB_.IAOE.ITMR, FieldUnitObj)
    External (_SB_.IAOE.PTSL, IntObj)
    External (_SB_.IAOE.WKRS, FieldUnitObj)
    External (_SB_.PCCD)
    External (_SB_.PCCD.PENB)
    
    
    
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)
    External (PDC4, IntObj)
    External (PDC5, IntObj)
    External (PDC6, IntObj)
    External (PDC7, IntObj)
}

