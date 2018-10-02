//
// Battery Status (based on patching native DSDT with "HP Envy 17t")
//

    External(_TZ.TZ00, DeviceObj)
    Scope(_TZ.TZ00)
    {
        // FRSP renamed to XRSP in config.plist
        Method (FRSP, 0, NotSerialized)
        {
            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            If (\_SB.PCI0.LPCB.EC.ECRG)
            {
                Store (B1B2(\_SB.PCI0.LPCB.EC.FNR0,\_SB.PCI0.LPCB.EC.FNR1), Local1)
            }

            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Return (Local1)
        }
    }

    // Override for ACPIBatteryManager.kext
    External(_SB.BAT0, DeviceObj)
    Name(_SB.BAT0.RMCF, Package()
    {
        "StartupDelay", 10,
    })

    Scope(_SB.PCI0.LPCB.EC)
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
            If (LEqual (BSTA (Local7), 0x0F))
            {
                Return (0xFF)
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
            Return (Zero)
        }

        Method (BTST, 2, Serialized)
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            ShiftLeft (One, Arg0, Local7)
            If (LEqual (BSTA (Local7), 0x0F))
            {
                Store (Package (0x04)
                {
                    Zero,
                    0xFFFFFFFF,
                    0xFFFFFFFF,
                    0xFFFFFFFF
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
                        Store (0xFFFFFFFF, Local3)
                    }
                    Else
                    {
                        Store (0xFFFFFFFF, Local3)
                    }
                }
            }

            Store (Local3, Index (DerefOf (Index (NBST, Arg0)), One))
            Acquire (BTMX, 0xFFFF)
            And (NGBT, Not (Local7), NGBT)
            Release (BTMX)
            Return (Zero)
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
                    Store (ShiftRight (B1B2(DC00,DC01), 0x08), Index (DerefOf (Index (Local0, 0x02)), One))
                    Store (B1B2(FC00,FC01), Index (DerefOf (Index (Local0, 0x02)), 0x02))
                    Store (ShiftRight (B1B2(FC00,FC01), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x03))
                    Store (B1B2(RC00,RC01), Index (DerefOf (Index (Local0, 0x02)), 0x04))
                    Store (ShiftRight (B1B2(RC00,RC01), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x05))
                    Store (B1B2(CC00,CC01), Index (DerefOf (Index (Local0, 0x02)), 0x08))
                    Store (ShiftRight (B1B2(CC00,CC01), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x09))
                    Store (B1B2(BT00,BT01), Local1)
                    Subtract (Local1, 0x0AAC, Local1)
                    Divide (Local1, 0x0A, Local2, Local3)
                    Store (Local3, Index (DerefOf (Index (Local0, 0x02)), 0x0A))
                    Store (ShiftRight (Local3, 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x0B))
                    Store (B1B2(PV00,PV01), Index (DerefOf (Index (Local0, 0x02)), 0x0C))
                    Store (ShiftRight (B1B2(PV00,PV01), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x0D))
                    Store (B1B2(PR00,PR01), Local1)
                    If (Local1)
                    {
                        If (And (BST0, One))
                        {
                            And (Local1, 0xFFFF, Local1)
                        }
                    }

                    Store (Local1, Index (DerefOf (Index (Local0, 0x02)), 0x0E))
                    Store (ShiftRight (Local1, 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x0F))
                    Store (B1B2(DV00,DV01), Index (DerefOf (Index (Local0, 0x02)), 0x10))
                    Store (ShiftRight (B1B2(DV00,DV01), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x11))
                    Store (BST0, Index (DerefOf (Index (Local0, 0x02)), 0x12))
                    Store (ShiftRight (BST0, 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x13))
                    Store (B1B2(CX10,CX11), Index (DerefOf (Index (Local0, 0x02)), 0x14))
                    Store (ShiftRight (B1B2(CX10,CX11), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x15))
                    Store (B1B2(CV20,CV21), Index (DerefOf (Index (Local0, 0x02)), 0x16))
                    Store (ShiftRight (B1B2(CV20,CV21), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x17))
                    Store (B1B2(CV30,CV31), Index (DerefOf (Index (Local0, 0x02)), 0x18))
                    Store (ShiftRight (B1B2(CV30,CV31), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x19))
                    Store (B1B2(CV40,CV41), Index (DerefOf (Index (Local0, 0x02)), 0x1A))
                    Store (ShiftRight (B1B2(CV40,CV41), 0x08), Index (DerefOf (Index (Local0, 0x02)), 0x1B))
                    CreateField (DerefOf (Index (Local0, 0x02)), 0xE0, 0x80, BTSN)
                    Store (GBSS (B1B2(SN00,SN01),B1B2(MD00,MD01)), BTSN)
                    Store (RDN0(), Local1)
                    CreateField (DerefOf (Index (Local0, 0x02)), 0x0160, Multiply (SizeOf (Local1), 0x08), BMAN)
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
            Notify (BAT0, 0x80)
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

//EOF
