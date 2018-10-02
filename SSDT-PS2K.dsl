//
// Keyboard/Trackpad
//

    External(_SB.PCI0.LPCB.PS2K, DeviceObj)
    Scope (_SB.PCI0.LPCB.PS2K)
    {
        // Select specific keyboard map in VoodooPS2Keyboard.kext
        Method(_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                "RM,oem-id", "HPQOEM",
                "RM,oem-table-id", "Haswell-Envy-RMCF",
            })
        }

        // overrides for VoodooPS2 configuration... (much more could be done here)
        Name(RMCF, Package()
        {
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
            "Synaptics TouchPad", Package()
            {
                "DynamicEWMode", ">y",
            },
        })
    }