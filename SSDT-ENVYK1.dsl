// SSDT-ENVYK
DefinitionBlock("", "SSDT", 2, "hack", "_ENVYK1", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-XOSI.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-PNLF.dsl"
    #include "SSDT-MISC.dsl"
    #include "SSDT-PS2K.dsl"
    #include "SSDT-Q10Q11.dsl"
    #include "SSDT-BATTK.dsl"
    #include "SSDT-DDGPU.dsl"

    // XWAK causes issues on wake from sleep (for some models), so it is disabled
    // by renaming to XXAK in DSDT (via config.plist) and overriden here to do nothing.
    //External(_SB.PCI0.XHC.XXAK, MethodObj)
    Method(_SB.PCI0.XHC.XWAK) { }

    // Override for USBInjectAll.kext
    #include "SSDT-USB-K1.dsl"
}
//EOF
