
    External(_SB.PCI0.LPCB.EC, DeviceObj)
    Scope(_SB.PCI0.LPCB.EC)
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
