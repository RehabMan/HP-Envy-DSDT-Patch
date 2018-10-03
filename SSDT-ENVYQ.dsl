// SSDT-ENVYQ
DefinitionBlock("", "SSDT", 2, "hack", "_ENVYQ", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-XOSI.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-PNLF.dsl"
    #include "SSDT-MISC.dsl"
    #include "SSDT-PS2K.dsl"
    #include "SSDT-Q13.dsl"
    #include "SSDT-BATTQ.dsl"
    #include "SSDT-DDGPU.dsl"
    #include "SSDT-DEH01.dsl"
    #include "SSDT-USB-Q.dsl"
}
//EOF

