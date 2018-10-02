//
// Battery Status (based on patching native DSDT with "HP G6 2221ss")
//

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

        OperationRegion (RMEC, EmbeddedControl, Zero, 0xFF)
        Field (RMEC, ByteAcc, Lock, Preserve)
        {
            Offset (0x04), 
            SMWX,8,SMWY,8,
            //...
            Offset (0x70),
            ADC0,8,ADC1,8,
            FCC0,8,FCC1,8,
            //...
            Offset (0x82),
            /*MBST*/,   8,
            CUR0,8,CUR1,8,
            BRM0,8,BRM1,8,
            BCV0,8,BCV1,8,
        }

        // SMD0, 256 bits, offset 4
        // FLD0, 64 bits, offset 4
        // FLD1, 128 bits, offset 4
        // FLD2, 198 bits, offset 4
        // FLD3, 256 bits, offset 4

        Method (RSMD, 0, NotSerialized) { Return(RECB(4,256)) }
        Method (WSMD, 1, NotSerialized) { WECB(4,256,Arg0) }
        Method (RFL3, 0, NotSerialized) { Return(RECB(4,256)) }
        Method (RFL2, 0, NotSerialized) { Return(RECB(4,198)) }
        Method (RFL1, 0, NotSerialized) { Return(RECB(4,128)) }
        Method (RFL0, 0, NotSerialized) { Return(RECB(4,64)) }

    // Battery utility methods

        Method (\B1B2, 2, NotSerialized) { Return (Or (Arg0, ShiftLeft (Arg1, 8))) }

        Method (WE1B, 2, Serialized)
        {
            OperationRegion(ERAM, EmbeddedControl, Arg0, 1)
            Field(ERAM, ByteAcc, NoLock, Preserve) { BYTE, 8 }
            Store(Arg1, BYTE)
        }
        Method (WECB, 3, Serialized)
        // Arg0 - offset in bytes from zero-based EC
        // Arg1 - size of buffer in bits
        // Arg2 - value to write
        {
            ShiftRight(Arg1, 3, Arg1)
            Name(TEMP, Buffer(Arg1) { })
            Store(Arg2, TEMP)
            Add(Arg0, Arg1, Arg1)
            Store(0, Local0)
            While (LLess(Arg0, Arg1))
            {
                WE1B(Arg0, DerefOf(Index(TEMP, Local0)))
                Increment(Arg0)
                Increment(Local0)
            }
        }
        Method (RE1B, 1, Serialized)
        {
            OperationRegion(ERAM, EmbeddedControl, Arg0, 1)
            Field(ERAM, ByteAcc, NoLock, Preserve) { BYTE, 8 }
            Return(BYTE)
        }
        Method (RECB, 2, Serialized)
        // Arg0 - offset in bytes from zero-based EC
        // Arg1 - size of buffer in bits
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

    // Replaced battery methods
    
        External(ECOK, IntObj)
        External(MUT0, MutexObj)
        External(SMST, FieldUnitObj)
        External(SMCM, FieldUnitObj)
        External(SMAD, FieldUnitObj)
        External(SMPR, FieldUnitObj)
        External(SMB0, FieldUnitObj)
        
        External(BCNT, FieldUnitObj)
        External(\_SB.GBFE, MethodObj)
        External(\_SB.PBFE, MethodObj)
        External(\_SB.BAT0.PBIF, PkgObj)
        External(\SMA4, FieldUnitObj)
        External(\_SB.BAT0.FABL, IntObj)
        External(MBNH, FieldUnitObj)
        External(BVLB, FieldUnitObj)
        External(BVHB, FieldUnitObj)
        External(\_SB.BAT0.UPUM, MethodObj)
        External(\_SB.BAT0.PBST, PkgObj)
        External(SW2S, FieldUnitObj)
        External(BACR, FieldUnitObj)
        External(MBST, FieldUnitObj)
        External(\_SB.BAT0._STA, MethodObj)
        
        Method (SMRD, 4, NotSerialized)
        {
            If (LNot (ECOK))
            {
                Return (0xFF)
            }

            If (LNotEqual (Arg0, 0x07))
            {
                If (LNotEqual (Arg0, 0x09))
                {
                    If (LNotEqual (Arg0, 0x0B))
                    {
                        If (LNotEqual (Arg0, 0x47))
                        {
                            If (LNotEqual (Arg0, 0xC7))
                            {
                                Return (0x19)
                            }
                        }
                    }
                }
            }

            Acquire (MUT0, 0xFFFF)
            Store (0x04, Local0)
            While (LGreater (Local0, One))
            {
                And (SMST, 0x40, SMST)
                Store (Arg2, SMCM)
                Store (Arg1, SMAD)
                Store (Arg0, SMPR)
                Store (Zero, Local3)
                While (LNot (And (SMST, 0xBF, Local1)))
                {
                    Sleep (0x02)
                    Increment (Local3)
                    If (LEqual (Local3, 0x32))
                    {
                        And (SMST, 0x40, SMST)
                        Store (Arg2, SMCM)
                        Store (Arg1, SMAD)
                        Store (Arg0, SMPR)
                        Store (Zero, Local3)
                    }
                }

                If (LEqual (Local1, 0x80))
                {
                    Store (Zero, Local0)
                }
                Else
                {
                    Decrement (Local0)
                }
            }

            If (Local0)
            {
                Store (And (Local1, 0x1F), Local0)
            }
            Else
            {
                If (LEqual (Arg0, 0x07))
                {
                    Store (SMB0, Arg3)
                }

                If (LEqual (Arg0, 0x47))
                {
                    Store (SMB0, Arg3)
                }

                If (LEqual (Arg0, 0xC7))
                {
                    Store (SMB0, Arg3)
                }

                If (LEqual (Arg0, 0x09))
                {
                    Store (B1B2(SMWX,SMWY), Arg3)
                }

                If (LEqual (Arg0, 0x0B))
                {
                    Store (BCNT, Local3)
                    ShiftRight (0x0100, 0x03, Local2)
                    If (LGreater (Local3, Local2))
                    {
                        Store (Local2, Local3)
                    }

                    If (LLess (Local3, 0x09))
                    {
                        Store (RFL0(), Local2)
                    }
                    ElseIf (LLess (Local3, 0x11))
                    {
                        Store (RFL1(), Local2)
                    }
                    ElseIf (LLess (Local3, 0x19))
                    {
                        Store (RFL2(), Local2)
                    }
                    Else
                    {
                        Store (RFL3(), Local2)
                    }

                    Increment (Local3)
                    Store (Buffer (Local3) {}, Local4)
                    Decrement (Local3)
                    Store (Zero, Local5)
                    While (LGreater (Local3, Local5))
                    {
                        GBFE (Local2, Local5, RefOf (Local6))
                        PBFE (Local4, Local5, Local6)
                        Increment (Local5)
                    }

                    PBFE (Local4, Local5, Zero)
                    Store (Local4, Arg3)
                }
            }

            Release (MUT0)
            Return (Local0)
        }

        Method (SMWR, 4, NotSerialized)
        {
            If (LNot (ECOK))
            {
                Return (0xFF)
            }

            If (LNotEqual (Arg0, 0x06))
            {
                If (LNotEqual (Arg0, 0x08))
                {
                    If (LNotEqual (Arg0, 0x0A))
                    {
                        If (LNotEqual (Arg0, 0x46))
                        {
                            If (LNotEqual (Arg0, 0xC6))
                            {
                                Return (0x19)
                            }
                        }
                    }
                }
            }

            Acquire (MUT0, 0xFFFF)
            Store (0x04, Local0)
            While (LGreater (Local0, One))
            {
                If (LEqual (Arg0, 0x06))
                {
                    Store (Arg3, SMB0)
                }

                If (LEqual (Arg0, 0x46))
                {
                    Store (Arg3, SMB0)
                }

                If (LEqual (Arg0, 0xC6))
                {
                    Store (Arg3, SMB0)
                }

                If (LEqual (Arg0, 0x08))
                {
                    // Store(Arg3, SMW0)
                    Store(Arg3, SMWX) Store(ShiftRight(Arg3, 8), SMWY)
                }

                If (LEqual (Arg0, 0x0A))
                {
                    WSMD(Arg3)
                }

                And (SMST, 0x40, SMST)
                Store (Arg2, SMCM)
                Store (Arg1, SMAD)
                Store (Arg0, SMPR)
                Store (Zero, Local3)
                While (LNot (And (SMST, 0xBF, Local1)))
                {
                    Sleep (0x02)
                    Increment (Local3)
                    If (LEqual (Local3, 0x32))
                    {
                        And (SMST, 0x40, SMST)
                        Store (Arg2, SMCM)
                        Store (Arg1, SMAD)
                        Store (Arg0, SMPR)
                        Store (Zero, Local3)
                    }
                }

                If (LEqual (Local1, 0x80))
                {
                    Store (Zero, Local0)
                }
                Else
                {
                    Decrement (Local0)
                }
            }

            If (Local0)
            {
                Store (And (Local1, 0x1F), Local0)
            }

            Release (MUT0)
            Return (Local0)
        }
    }

    Scope (_SB.BAT0)
    {
        Method (UPBI, 0, NotSerialized)
        {
            Store (B1B2(^^PCI0.LPCB.EC.FCC0,^^PCI0.LPCB.EC.FCC1), Local5)
            If (LAnd (Local5, LNot (And (Local5, 0x8000))))
            {
                ShiftRight (Local5, 0x05, Local5)
                ShiftLeft (Local5, 0x05, Local5)
                Store (Local5, Index (PBIF, One))
                Store (Local5, Index (PBIF, 0x02))
                Divide (Local5, 0x64, , Local2)
                Add (Local2, One, Local2)
                If (LLess (B1B2(^^PCI0.LPCB.EC.ADC0,^^PCI0.LPCB.EC.ADC1), 0x0C80))
                {
                    Multiply (Local2, 0x0E, Local4)
                    Add (Local4, 0x02, Index (PBIF, 0x05))
                    Multiply (Local2, 0x09, Local4)
                    Add (Local4, 0x02, Index (PBIF, 0x06))
                    Multiply (Local2, 0x0B, Local4)
                }
                ElseIf (LEqual (SMA4, One))
                {
                    Multiply (Local2, 0x0C, Local4)
                    Add (Local4, 0x02, Index (PBIF, 0x05))
                    Multiply (Local2, 0x07, Local4)
                    Add (Local4, 0x02, Index (PBIF, 0x06))
                    Multiply (Local2, 0x09, Local4)
                }
                Else
                {
                    Multiply (Local2, 0x0A, Local4)
                    Add (Local4, 0x02, Index (PBIF, 0x05))
                    Multiply (Local2, 0x05, Local4)
                    Add (Local4, 0x02, Index (PBIF, 0x06))
                    Multiply (Local2, 0x07, Local4)
                }

                Add (Local4, 0x02, FABL)
            }

            If (^^PCI0.LPCB.EC.MBNH)
            {
                Store (^^PCI0.LPCB.EC.BVLB, Local0)
                Store (^^PCI0.LPCB.EC.BVHB, Local1)
                ShiftLeft (Local1, 0x08, Local1)
                Or (Local0, Local1, Local0)
                Store (Local0, Index (PBIF, 0x04))
                Store ("OANI$", Index (PBIF, 0x09))
                Store ("NiMH", Index (PBIF, 0x0B))
            }
            Else
            {
                Store (^^PCI0.LPCB.EC.BVLB, Local0)
                Store (^^PCI0.LPCB.EC.BVHB, Local1)
                ShiftLeft (Local1, 0x08, Local1)
                Or (Local0, Local1, Local0)
                Store (Local0, Index (PBIF, 0x04))
                Sleep (0x32)
                Store ("LION", Index (PBIF, 0x0B))
            }

            Store ("Primary", Index (PBIF, 0x09))
            UPUM ()
            Store (One, Index (PBIF, Zero))
        }

        Method (UPBS, 0, NotSerialized)
        {
            Store (B1B2(^^PCI0.LPCB.EC.CUR0,^^PCI0.LPCB.EC.CUR1), Local0)
            If (And (Local0, 0x8000))
            {
                If (LEqual (Local0, 0xFFFF))
                {
                    Store (Ones, Index (PBST, One))
                }
                Else
                {
                    Not (Local0, Local1)
                    Increment (Local1)
                    And (Local1, 0xFFFF, Local3)
                    Store (Local3, Index (PBST, One))
                }
            }
            Else
            {
                Store (Local0, Index (PBST, One))
            }

            Store (B1B2(^^PCI0.LPCB.EC.BRM0,^^PCI0.LPCB.EC.BRM1), Local5)
            If (LNot (And (Local5, 0x8000)))
            {
                ShiftRight (Local5, 0x05, Local5)
                ShiftLeft (Local5, 0x05, Local5)
                If (LNotEqual (Local5, DerefOf (Index (PBST, 0x02))))
                {
                    Store (Local5, Index (PBST, 0x02))
                }
            }

            If (LAnd (LNot (^^PCI0.LPCB.EC.SW2S), LEqual (^^PCI0.LPCB.EC.BACR, One)))
            {
                Store (FABL, Index (PBST, 0x02))
            }

            Store (B1B2(^^PCI0.LPCB.EC.BCV0,^^PCI0.LPCB.EC.BCV1), Index (PBST, 0x03))
            Store (^^PCI0.LPCB.EC.MBST, Index (PBST, Zero))
        }

    }

    Method (\_SB.PCI0.ACEL.CLRI, 0, Serialized)
    {
        Store (Zero, Local0)
        If (LEqual (^^LPCB.EC.ECOK, One))
        {
            If (LEqual (^^LPCB.EC.SW2S, Zero))
            {
                If (LEqual (^^^BAT0._STA (), 0x1F))
                {
                    If (LLessEqual (B1B2(^^LPCB.EC.BRM0,^^LPCB.EC.BRM1), 0x96))
                    {
                        Store (One, Local0)
                    }
                }
            }
        }

        Return (Local0)
    }

//EOF
