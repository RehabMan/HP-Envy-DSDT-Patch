// USB configuration for Envy K with 8086_9xxx xHCI

    // Override for USBInjectAll.kext
    Device(UIAC)
    {
        Name(_HID, "UIA00000")
        Name(RMCF, Package()
        {
            // EH01 customization
            "EH01", Package()
            {
                //"port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "PR11", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 0x01, 0, 0, 0 },
                    },
                },
            },
            // HUB1 customization
            "HUB1", Package()
            {
                //"port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "HP11", Package()   // USB2 routed from XHC
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 0x01, 0, 0, 0 },
                    },
                    "HP12", Package()   // USB2 routed from XHC
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 0x02, 0, 0, 0 },
                    },
                    "HP13", Package()   // camera
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 0x03, 0, 0, 0 },
                    },
                    // HP14 not used
                    // HP15 not used
                    "HP16", Package()   // USB2 routed from XHC
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 0x06, 0, 0, 0 },
                    },
                    "HP17", Package()   // bluetooth
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 0x07, 0, 0, 0 },
                    },
                    // HP18 not used
                },
            },
            // EH02 not present
            // XHC overrides
            "8086_9xxx", Package()
            {
                //"port-count", Buffer() { 0xd, 0, 0, 0 },
                "ports", Package()
                {
                    // HSxx ports not used due to FakePCIID_XHCIMux
                    "SS01", Package()   // USB3
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0xa, 0, 0, 0 },
                    },
                    "SS02", Package()   // USB3
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0xb, 0, 0, 0 },
                    },
                    "SS03", Package()   // USB3
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0xc, 0, 0, 0 },
                    },
                },
            },
        })
    }

//EOF
