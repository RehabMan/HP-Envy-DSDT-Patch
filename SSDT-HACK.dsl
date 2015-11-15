// Instead of providing patched DSDT/SSDT, just include a single SSDT
// and do the rest of the work in config.plist

// A bit experimental, and a bit more difficult with laptops, but
// still possible.

// Note: No solution for missing IAOE here, but so far, not a problem.

DefinitionBlock ("SSDT-HACK.aml", "SSDT", 1, "hack", "hack", 0x00003000)
{
    External(_SB.PCI0, DeviceObj)
    External(_SB.PCI0.LPCB, DeviceObj)

    // All _OSI calls in DSDT are routed to XOSI...
    // XOSI simulates "Windows 2012" (which is Windows 8)
    // Note: According to ACPI spec, _OSI("Windows") must also return true
    //  Also, it should return true for all previous versions of Windows.
    Method(XOSI, 1)
    {
        // simulation targets
        // source: (google 'Microsoft Windows _OSI')
        //  http://download.microsoft.com/download/7/E/7/7E7662CF-CBEA-470B-A97E-CE7CE0D98DC2/WinACPI_OSI.docx
        Store(Package()
        {
            "Windows",              // generic Windows query
            "Windows 2001",         // Windows XP
            "Windows 2001 SP2",     // Windows XP SP2
            //"Windows 2001.1",     // Windows Server 2003
            //"Windows 2001.1 SP1", // Windows Server 2003 SP1
            "Windows 2006",         // Windows Vista
            "Windows 2006 SP1",     // Windows Vista SP1
            //"Windows 2006.1",     // Windows Server 2008
            "Windows 2009",         // Windows 7/Windows Server 2008 R2
            "Windows 2012",         // Windows 8/Windows Sesrver 2012
            //"Windows 2013",       // Windows 8.1/Windows Server 2012 R2
            //"Windows 2015",       // Windows 10/Windows Server TP
        }, Local0)
        Return (LNotEqual(Match(Local0, MEQ, Arg0, MTR, 0, 0), Ones))
    }

//
// ACPISensors configuration (ACPISensors.kext is not installed by default)
//

    // Not implemented for the Haswell Envy

//
// USB related
//

    // In DSDT, native GPRW is renamed to XPRW with Clover binpatch.
    // As a result, calls to GPRW land here.
    // The purpose of this implementation is to avoid "instant wake"
    // by returning 0 in the second position (sleep state supported)
    // of the return package.
    Method(GPRW, 2)
    {
        If (LEqual(Arg0, 0x0d)) { Return(Package() { 0x0d, 0 }) }
        If (LEqual(Arg0, 0x6d)) { Return(Package() { 0x6d, 0 }) }
        External(\XPRW, MethodObj)
        Return(XPRW(Arg0, Arg1))
    }

#if 0
    // In DSDT, native XSEL is renamed XXEL with Clover binpatch.
    // Calls to it will land here.
    // ... which does nothing
    External(_SB.PCI0.XHC, DeviceObj)
    Method(_SB.PCI0.XHC.XSEL)
    {
        // nothing
    }
#endif

#if 0   //REVIEW: disabled for now
    // Override for USBInjectAll.kext (not currently using USBInjectAll.kext)
    Device(UIAC)
    {
        Name(_HID, "UIA00000")
        Name(RMCF, Package()
        {
            // EH01 has no ports (XHCIMux is used to force USB3 routing OFF)
            "EH01", Package()
            {
                "port-count", Buffer() { 0, 0, 0, 0 },
                "ports", Package() { },
            },
            // EH02 not present
            // XHC overrides
            "8086_8xxx", Package()
            {
                //"port-count", Buffer() { 0x15, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x01, 0, 0, 0 },
                    },
                    "HS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x02, 0, 0, 0 },
                    },
                    "HS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x03, 0, 0, 0 },
                    },
                    "HS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x04, 0, 0, 0 },
                    },
                    "HS05", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 0x05, 0, 0, 0 },
                    },
                    "HS06", Package()
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 0x06, 0, 0, 0 },
                    },
                    "HS07", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 0x07, 0, 0, 0 },
                    },
                    "SS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x10, 0, 0, 0 },
                    },
                    "SS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x11, 0, 0, 0 },
                    },
                    "SS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x12, 0, 0, 0 },
                    },
                    "SS04", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x13, 0, 0, 0 },
                    },
                    "SS05", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x14, 0, 0, 0 },
                    },
                    "SS06", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x15, 0, 0, 0 },
                    },
                },
            },
        })
    }
#endif

//
// Disabling EHCI #1
//
#if 0
    External(_SB.PCI0.EH01, DeviceObj)
    Scope(_SB.PCI0)
    {
        // registers needed for disabling EHC#1
        Scope(EH01)
        {
            OperationRegion(PSTS, PCI_Config, 0x54, 2)
            Field(PSTS, WordAcc, NoLock, Preserve)
            {
                PSTE, 2  // bits 2:0 are power state
            }
        }
        Scope(LPCB)
        {
            OperationRegion(RMLP, PCI_Config, 0xF0, 4)
            Field(RMLP, DWordAcc, NoLock, Preserve)
            {
                RCB1, 32, // Root Complex Base Address
            }
            // address is in bits 31:14
            OperationRegion(FDM1, SystemMemory, Add(And(RCB1,Not(Subtract(ShiftLeft(1,14),1))),0x3418), 4)
            Field(FDM1, DWordAcc, NoLock, Preserve)
            {
                ,15,    // skip first 15 bits
                FDE1,1, // should be bit 15 (0-based) (FD EHCI#1)
            }
        }
        Device(RMD1)
        {
            //Name(_ADR, 0)
            Name(_HID, "RMD10000")
            Method(_INI)
            {
                // disable EHCI#1
                // put EHCI#1 in D3hot (sleep mode)
                Store(3, ^^EH01.PSTE)
                // disable EHCI#1 PCI space
                Store(1, ^^LPCB.FDE1)
            }
        }
    }
#endif

//
// Backlight control
//

    Device(PNLF)
    {
        Name(_ADR, Zero)
        Name(_HID, EisaId ("APP0002"))
        Name(_CID, "backlight")
        Name(_UID, 10)
        Name(_STA, 0x0B)
        Name(RMCF, Package()
        {
            "PWMMax", 0,
        })
        Method(_INI)
        {
            // disable discrete graphics (Nvidia) if it is present
            External(\_SB.PCI0.PEG0.PEGP._OFF, MethodObj)
            If (CondRefOf(\_SB.PCI0.PEG0.PEGP._OFF))
            {
                \_SB.PCI0.PEG0.PEGP._OFF()
            }
        }
    }

//
// Standard Injections/Fixes
//

    Scope(_SB.PCI0)
    {
        Device(IMEI)
        {
            Name (_ADR, 0x00160000)
        }

        Device(SBUS.BUS0)
        {
            Name(_CID, "smbus")
            Name(_ADR, Zero)
            Device(DVL0)
            {
                Name(_ADR, 0x57)
                Name(_CID, "diagsvault")
                Method(_DSM, 4)
                {
                    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                    Return (Package() { "address", 0x57 })
                }
            }
        }

        External(IGPU, DeviceObj)
        Scope(IGPU)
        {
            // need the device-id from PCI_config to inject correct properties
            OperationRegion(RMIG, PCI_Config, 2, 2)
            Field(RMIG, AnyAcc, NoLock, Preserve)
            {
                GDID,16
            }

            // inject properties for integrated graphics on IGPU
            Method(_DSM, 4)
            {
                If (LEqual(Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                Store(Package()
                {
                    "model", Buffer() { "place holder" },
                    "device-id", Buffer() { 0x12, 0x04, 0x00, 0x00 },
                    "hda-gfx", Buffer() { "onboard-1" },
                    "AAPL,ig-platform-id", Buffer() { 0x06, 0x00, 0x26, 0x0a },
                }, Local1)
                Store(GDID, Local0)
                If (LEqual(Local0, 0x0a16)) { Store("Intel HD Graphics 4400", Index(Local1,1)) }
                ElseIf (LEqual(Local0, 0x0416)) { Store("Intel HD Graphics 4600", Index(Local1,1)) }
                ElseIf (LEqual(Local0, 0x0a1e)) { Store("Intel HD Graphics 4200", Index(Local1,1)) }
                Else
                {
                    // others (HD5000 and Iris) are natively supported
                    Store(Package()
                    {
                        "hda-gfx", Buffer() { "onboard-1" },
                        "AAPL,ig-platform-id", Buffer() { 0x06, 0x00, 0x26, 0x0a },
                    }, Local1)
                }
                Return(Local1)
            }
        }
    }

//
// Keyboard/Trackpad
//

    External(_SB.PCI0.LPCB.PS2K, DeviceObj)
    Scope (_SB.PCI0.LPCB.PS2K)
    {
        // Select specific keyboard map in VoodooPS2Keyboard.kext
        Method(_DSM, 4)
        {
            If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                "RM,oem-id", "HPQOEM",
                "RM,oem-table-id", "Haswell-Envy-RMCF",
            })
        }

        // overrides for VoodooPS2 configuration... (much more could be done here)
        Name(RMCF, Package()
        {
            #if 0
            "Controller", Package()
            {
                "WakeDelay", 0,
            },
            #endif
            "Sentelic FSP", Package()
            {
                "DisableDevice", ">y",
            },
            "ALPS GlidePoint", Package()
            {
                "DisableDevice", ">y",
            },
            "Mouse", Package()
            {
                "DisableDevice", ">y",
            },
            "Keyboard", Package()
            {
                "Custom PS2 Map", Package()
                {
                    Package() { },
                    "e045=e037",
                    "e0ab=0",   // bogus Fn+F2/F3
                },
                "Custom ADB Map", Package()
                {
                    Package() { },
                    "e019=42",  // next track
                    "e010=4d",  // previous track
                },
            },
        })
    }

    External(_SB.PCI0.LPCB.H_EC, DeviceObj)
    Scope(_SB.PCI0.LPCB.H_EC)
    {
        // The native _Qxx methods in DSDT are renamed XQxx,
        // so notifications from the EC driver will land here.

        // _Q13 called on brightness/mirror display key
        Method (_Q13, 0, Serialized)  // _Qxx: EC Query
        {
            External(\HKNO, FieldUnitObj)
            Store(HKNO, Local0)
            If (LEqual(Local0,7))
            {
                // Brightness Down
                Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)
            }
            If (LEqual(Local0,8))
            {
                // Brightness Up
                Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)
            }
            If (LEqual(Local0,4))
            {
                // Mirror toggle
                Notify(\_SB.PCI0.LPCB.PS2K, 0x046e)
            }
        }
    }

//
// Battery Status
//

    External(_TZ.TZ00, DeviceObj)
    Scope(_TZ.TZ00)
    {
        // FRSP renamed to XRSP in config.plist
        Method (FRSP, 0, NotSerialized)
        {
            Acquire (\_SB.PCI0.LPCB.H_EC.ECMX, 0xFFFF)
            If (\_SB.PCI0.LPCB.H_EC.ECRG)
            {
                Store (B1B2(\_SB.PCI0.LPCB.H_EC.FNR0,\_SB.PCI0.LPCB.H_EC.FNR1), Local1)
            }

            Release (\_SB.PCI0.LPCB.H_EC.ECMX)
            Return (Local1)
        }
    }

    // Override for ACPIBatteryManager.kext
    External(_SB.BAT0, DeviceObj)
    Name(_SB.BAT0.RMCF, Package()
    {
        "StartupDelay", 10,
    })

    Scope(_SB.PCI0.LPCB.H_EC)
    {
        // This is an override for battery methods that access EC fields
        // larger than 8-bit.

        OperationRegion(RMEC, EmbeddedControl, Zero, 0xFF)
        Field (RMEC, ByteAcc, Lock, Preserve)
        {
            //...
            Offset (0x7E),
            FNR0,8,FNR1,8, 
            Offset (0x87),
            /*LB1*/,    8,
            /*LB2*/,    8,
            DC00,8,DC01,8, 
            DC10,8,DC11,8, 
            FC00,8,FC01,8, 
            FC10,8,FC11,8, 
            /*BTC*/,    1,
            //Offset (0x92),
            Offset (0x93), 
            DV00,8,DV01,8, 
            DV10,8,DV11,8, 
            //BST0,   8,
            //Offset (0x99),
            //BST1,   8,
            Offset (0x9B), 
            PR00,8,PR01,8, 
            PR10,8,PR11,8, 
            RC00,8,RC01,8, 
            RC10,8,RC11,8, 
            CC00,8,CC01,8, 
            CC10,8,CC11,8, 
            CX10,8,CX11,8,
            CV20,8,CV21,8, 
            CV30,8,CV31,8, 
            CV40,8,CV41,8, 
            CV50,8,CV51,8, 
            CV60,8,CV61,8, 
            CV70,8,CV71,8, 
            CV80,8,CV81,8, 
            PBA0,8,PBA1,8, 
            PBB0,8,PBB1,8, 
            /*STS0*/,   8,
            /*STS1*/,   8,
            MD00,8,MD01,8, 
            MD10,8,MD11,8, 
            PV00,8,PV01,8, 
            PV10,8,PV11,8, 
            SN00,8,SN01,8, 
            SN10,8,SN11,8, 
            BV00,8,BV01,8, 
            BV10,8,BV11,8, 
            RG00,8,RG01,8, 
            RG10,8,RG11,8, 
            TY00,8,TY01,8,TY02,8,TY03,8, 
            TY10,8,TY11,8,TY12,8,TY13,8,
            //...
            Offset (0xEB),
                ,   1, 
            /*RG12*/,   1,
                ,   1, 
            /*HDSD*/,   1,
            /*PSON*/,   1,
                ,   1, 
                ,   1, 
            /*PSRW*/,   1,
            BT00,8,BT01,8, 
            BT10,8,BT11,8, 
            //...
        }

    // Battery utility methods

        Method (RE1B, 1, Serialized)
        {
            OperationRegion(ERAM, EmbeddedControl, Arg0, 1)
            Field(ERAM, ByteAcc, NoLock, Preserve) { BYTE, 8 }
            Return(BYTE)
        }
        Method (RECB, 2, Serialized)
        {
            ShiftRight(Arg1, 3, Arg1)
            Name(TEMP, Buffer(Arg1) { })
            Add(Arg0, Arg1, Arg1)
            Store(0, Local0)
            While (LLess(Arg0, Arg1))
            {
                Store(RE1B(Arg0), Index(TEMP, Local0))
                Increment(Arg0)
                Increment(Local0)
            }
            Return(TEMP)
        }
        Method (RDN0, 0, Serialized) { Return(RECB(0x10,56)) }
        Method (RMN0, 0, Serialized) { Return(RECB(0x21,120)) }
        Method (RCT0, 0, Serialized) { Return(RECB(0x30,128)) }

        Method (\B1B2, 2, NotSerialized) { Return (Or (Arg0, ShiftLeft (Arg1, 8))) }
        Method (\B1B4, 4, NotSerialized)
        {
            Store(Arg3, Local0)
            Or(Arg2, ShiftLeft(Local0, 8), Local0)
            Or(Arg1, ShiftLeft(Local0, 8), Local0)
            Or(Arg0, ShiftLeft(Local0, 8), Local0)
            Return(Local0)
        }

    // Externals from DSDT

        External(BTDR, MethodObj)
        External(BSTA, MethodObj)
        External(BTMX, MutexObj)
        External(NGBF, IntObj)
        External(\_SB.NDBS, PkgObj)
        External(\_SB.NBST, PkgObj)
        External(NGBT, IntObj)
        External(ECMX, MutexObj)
        External(ECRG, IntObj)
        External(BSEL, FieldUnitObj)
        External(\_SB.NBTI, PkgObj)
        External(NLB1, IntObj)
        External(NLB2, IntObj)
        External(GBSS, MethodObj)
        External(BST0, FieldUnitObj)
        External(BST1, FieldUnitObj)
        External(LB1, FieldUnitObj)
        External(LB2, FieldUnitObj)
        External(BTAP, FieldUnitObj)
        External(\P8XH, MethodObj)
        External(PWUP, MethodObj)
        External(NPS, FieldUnitObj)

    // The following methods are renamed in config.plist so calls will land here

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
                        Store (B1B2(FC00,FC01), Local0)
                        Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), One))
                        Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), 0x02))
                        Store (B1B2(DV00,DV01), Index (DerefOf (Index (NBTI, Arg0)), 0x04))
                    }
                    Else
                    {
                        If (LEqual (_T_0, One))
                        {
                            Store (B1B2(FC10,FC11), Local0)
                            Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), One))
                            Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), 0x02))
                            Store (B1B2(DV10,DV11), Index (DerefOf (Index (NBTI, Arg0)), 0x04))
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
                        Store (B1B2(SN00,SN01), Local0)
                        Store (B1B2(MD00,MD01), Local1)
                    }
                    Else
                    {
                        If (LEqual (_T_1, One))
                        {
                            Store (B1B2(SN10,SN11), Local0)
                            Store (B1B2(MD10,MD11), Local1)
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
                        Store (B1B2(PR00,PR01), Local3)
                        Store (B1B2(RC00,RC01), Index (DerefOf (Index (NBST, Arg0)), 0x02))
                        Store (B1B2(PV00,PV01), Index (DerefOf (Index (NBST, Arg0)), 0x03))
                    }
                    Else
                    {
                        If (LEqual (_T_0, One))
                        {
                            Store (BST1, Local0)
                            Store (B1B2(PR10,PR11), Local3)
                            Store (B1B2(RC10,RC11), Index (DerefOf (Index (NBST, Arg0)), 0x02))
                            Store (B1B2(PV10,PV11), Index (DerefOf (Index (NBST, Arg0)), 0x03))
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
                        Subtract (0x00010000,B1B2(PR00,PR01), Local3)
                    }
                    Else
                    {
                        If (LEqual (_T_1, One))
                        {
                            Subtract (0x00010000,B1B2(PR10,PR11), Local3)
                        }
                    }

                    Break
                }

                If (LOr (LLess (Local3, 0x0190), LGreater (Local3, 0x1964)))
                {
                    Store (DerefOf (Index (DerefOf (Index (NBST, Arg0)), One)), Local5)
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
                Add (B1B2(FC10,FC11),B1B2(FC00,FC01), Local1)
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
                    Store (B1B2(DC00,DC01), Index (DerefOf (Index (Local0, 0x02)), Zero))
                    Store (ShiftRight (B1B2(DC00,DC01), 0x08), Index (DerefOf (Index (Local0, 0x02)), One
                        ))
                    Store (B1B2(FC00,FC01), Index (DerefOf (Index (Local0, 0x02)), 0x02))
                    Store (ShiftRight (B1B2(FC00,FC01), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x03
                        ))
                    Store (B1B2(RC00,RC01), Index (DerefOf (Index (Local0, 0x02)), 0x04))
                    Store (ShiftRight (B1B2(RC00,RC01), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x05
                        ))
                    Store (B1B2(CC00,CC01), Index (DerefOf (Index (Local0, 0x02)), 0x08))
                    Store (ShiftRight (B1B2(CC00,CC01), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x09
                        ))
                    Store (B1B2(BT00,BT01), Local1)
                    Subtract (Local1, 0x0AAC, Local1)
                    Divide (Local1, 0x0A, Local2, Local3)
                    Store (Local3, Index (DerefOf (Index (Local0, 0x02)), 0x0A))
                    Store (ShiftRight (Local3, 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x0B
                        ))
                    Store (B1B2(PV00,PV01), Index (DerefOf (Index (Local0, 0x02)), 0x0C))
                    Store (ShiftRight (B1B2(PV00,PV01), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x0D
                        ))
                    Store (B1B2(PR00,PR01), Local1)
                    If (Local1)
                    {
                        If (And (BST0, One))
                        {
                            And (Local1, 0xFFFF, Local1)
                        }
                    }

                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x0E))
                    Store (ShiftRight (Local1, 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x0F
                        ))
                    Store (B1B2(DV00,DV01), Index (DerefOf (Index (Local0, 0x02)), 0x10))
                    Store (ShiftRight (B1B2(DV00,DV01), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x11
                        ))
                    Store (BST0, Index (DerefOf (Index (Local0, 0x02)), 0x12))
                    Store (ShiftRight (BST0, 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x13
                        ))
                    Store (B1B2(CX10,CX11), Index (DerefOf (Index (Local0, 0x02)), 0x14))
                    Store (ShiftRight (B1B2(CX10,CX11), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x15
                        ))
                    Store (B1B2(CV20,CV21), Index (DerefOf (Index (Local0, 0x02)), 0x16))
                    Store (ShiftRight (B1B2(CV20,CV21), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x17
                        ))
                    Store (B1B2(CV30,CV31), Index (DerefOf (Index (Local0, 0x02)), 0x18))
                    Store (ShiftRight (B1B2(CV30,CV31), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x19
                        ))
                    Store (B1B2(CV40,CV41), Index (DerefOf (Index (Local0, 0x02)), 0x1A))
                    Store (ShiftRight (B1B2(CV40,CV41), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x1B
                        ))
                    CreateField (DerefOf (Index (Local0, 0x02)), 0xE0, 0x80, BTSN)
                    Store (GBSS (B1B2(SN00,SN01),B1B2(MD00,MD01)), BTSN)
                    Store (RDN0(), Local1)
                    CreateField (DerefOf (Index (Local0, 0x02)), 0x0160, Multiply (SizeOf (Local1), 0x08), 
                        BMAN)
                    Store (Local1, BMAN)
                    CreateField (DerefOf (Index (Local0, 0x02)), 0x01F0, 0x80, CTN)
                    Store (RCT0(), CTN)
                    CreateField (DerefOf (Index (Local0, 0x02)), 0x0278, 0x38, BDN)
                    Store (RDN0(), BDN)
                    CreateField (DerefOf (Index (Local0, 0x02)), 0x02B0, 0x20, BTY)
                    Store (B1B4(TY00,TY01,TY02,TY03), BTY)
                    CreateField (DerefOf (Index (Local0, 0x02)), 0x02E0, 0x10, BMD)
                    Store (B1B2(MD00,MD01), BMD)
                    CreateField (DerefOf (Index (Local0, 0x02)), 0x02F0, 0x10, CRG)
                    If (And (BST0, One))
                    {
                        Store (Zero, CRG)
                    }
                    Else
                    {
                        Store (B1B2(RG00,RG01), CRG)
                    }

                    CreateField (DerefOf (Index (Local0, 0x02)), 0x0300, 0x10, BCV)
                    Store (B1B2(BV00,BV01), BCV)
                    Store (B1B2(PR00,PR01), Local1)
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

        Method (_Q09, 0, NotSerialized)  // _Qxx: EC Query
        {
            P8XH (0x04, 0x09, One)
            PWUP (0x05, One)
            If (BTDR (0x02))
            {
                Notify (BAT0, 0x80)
            }

            If (LEqual (B1B2(RC00,RC01),B1B2(FC00,FC01)))
            {
                Notify (BAT0, 0x81)
            }
        }

        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
        {
            External(\_PR.CPU0, DeviceObj)
            External(\_PR.CPU1, DeviceObj)
            External(\_PR.CPU2, DeviceObj)
            External(\_PR.CPU3, DeviceObj)
            External(\_PR.CPU4, DeviceObj)
            External(\_PR.CPU5, DeviceObj)
            External(\_PR.CPU6, DeviceObj)
            External(\_PR.CPU7, DeviceObj)
            External(\_PR.CPU0._PPC, IntObj)
            
            Subtract (NPS, One, NPS)
            If (CondRefOf (\_PR.CPU0._PPC, Local0))
            {
                Store (NPS, \_PR.CPU0._PPC)
                Notify (\_PR.CPU0, 0x80)
            }

            If (CondRefOf (\_PR.CPU1._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU1._PPC)
                Notify (\_PR.CPU1, 0x80)
            }

            If (CondRefOf (\_PR.CPU2._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU2._PPC)
                Notify (\_PR.CPU2, 0x80)
            }

            If (CondRefOf (\_PR.CPU3._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU3._PPC)
                Notify (\_PR.CPU3, 0x80)
            }

            If (CondRefOf (\_PR.CPU4._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU4._PPC)
                Notify (\_PR.CPU4, 0x80)
            }

            If (CondRefOf (\_PR.CPU5._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU5._PPC)
                Notify (\_PR.CPU5, 0x80)
            }

            If (CondRefOf (\_PR.CPU6._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU6._PPC)
                Notify (\_PR.CPU6, 0x80)
            }

            If (CondRefOf (\_PR.CPU7._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU7._PPC)
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
                //Store (NPS, \_PR.CPU1._PPC)
                Notify (\_PR.CPU1, 0x80)
            }

            If (CondRefOf (\_PR.CPU2._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU2._PPC)
                Notify (\_PR.CPU2, 0x80)
            }

            If (CondRefOf (\_PR.CPU3._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU3._PPC)
                Notify (\_PR.CPU3, 0x80)
            }

            If (CondRefOf (\_PR.CPU4._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU4._PPC)
                Notify (\_PR.CPU4, 0x80)
            }

            If (CondRefOf (\_PR.CPU5._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU5._PPC)
                Notify (\_PR.CPU5, 0x80)
            }

            If (CondRefOf (\_PR.CPU6._PPC, Local0))
            {
                //Store (NPS, \_PR.CPU6._PPC)
                Notify (\_PR.CPU6, 0x80)
            }

            If (CondRefOf (\_PR.CPU7._PPC, Local0))
            {
                Notify (\_PR.CPU7, 0x80)
            }
        }
    }
}

