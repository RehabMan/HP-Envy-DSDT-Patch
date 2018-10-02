// USB configuration for Envy K with 8086_8c31 xHCI

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
                        "port", Buffer() { 1, 0, 0, 0 },
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
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HP12", Package()   // USB2 routed from XHC
                    {
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    // HP13-HP18 not used
                },
            },
            // EH02 customization
            "EH02", Package()
            {
                //"port-count", Buffer() { 6, 0, 0, 0 },
                "ports", Package()
                {
                    "PR11", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                },
            },
            // HUB2 customization
            "HUB2", Package()
            {
                //"port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "HP21", Package()   // camera
                    {
                        "portType", 2,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HP22", Package()   // USB2 routed from XHC
                    {
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HP23", Package()   // bluetooth
                    {
                        "portType", 2,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    //HP24 is finger print reader, disabled
                    //HP25-HP28 not used
                },
            },
            // XHC overrides
            "8086_8c31", Package()
            {
                //"port-count", Buffer() { 21, 0, 0, 0 },
                "ports", Package()
                {
                    "SS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
                    "SS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 17, 0, 0, 0 },
                    },
                    // SS03/SS04 not used
                    "SS05", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 20, 0, 0, 0 },
                    },
                    // SS06 not used
                },
            },
        })
    }

//EOF
