//
// Standard Injections/Fixes
//

    External(_SB.PCI0, DeviceObj)

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
                    If (!Arg2) { Return (Buffer() { 0x03 } ) }
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
                If (!Arg2) { Return (Buffer() { 0x03 } ) }
                Local1 = Package()
                {
                    "model", Buffer() { "place holder" },
                    "device-id", Buffer() { 0x12, 0x04, 0x00, 0x00 },
                    "hda-gfx", Buffer() { "onboard-1" },
                    "AAPL,ig-platform-id", Buffer() { 0x06, 0x00, 0x26, 0x0a },
                }
                Local0 = GDID
                If (0x0a16 == Local0) { Local1[1] = Buffer() { "Intel HD Graphics 4400" } }
                ElseIf (0x0416 == Local0) { Local1[1] = Buffer() { "Intel HD Graphics 4600" } }
                ElseIf (0x0a1e == Local0) { Local1[1] = Buffer() { "Intel HD Graphics 4200" } }
                Else
                {
                    // others (HD5000 and Iris) are natively supported
                    Local1 = Package()
                    {
                        "hda-gfx", Buffer() { "onboard-1" },
                        "AAPL,ig-platform-id", Buffer() { 0x06, 0x00, 0x26, 0x0a },
                    }
                }
                Return(Local1)
            }
        }
    }
