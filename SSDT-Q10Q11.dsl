
    External(_SB.PCI0.LPCB.EC, DeviceObj)
    Scope(_SB.PCI0.LPCB.EC)
    {
        // The native _Qxx methods in DSDT are renamed XQxx,
        // so notifications from the EC driver will land here.

        // _Q10/Q11 called on brightness down/up
        Method (_Q10, 0, NotSerialized)
        {
            // Brightness Down
            Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)
        }
        Method (_Q11, 0, NotSerialized)
        {
            // Brightness Up
            Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)
        }
    }