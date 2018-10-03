// SSDT-ENVYN
DefinitionBlock("", "SSDT", 2, "hack", "_ENVYN", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-XOSI.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-PNLF.dsl"
    #include "SSDT-MISC.dsl"
    #include "SSDT-PS2K.dsl"
    #include "SSDT-Q10Q11.dsl"
    #include "SSDT-BATTN.dsl"
    #include "SSDT-DDGPU.dsl"
    #include "SSDT-USB-N.dsl"
}
//EOF

 
