// for testing including all SSDTs with NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "HP14AC", "HP14AC", 0)
{
    #define NO_DEFINITIONBLOCK
    
    #include "SSDT-PNLF.dsl"
    #include "SSDT-PS2K.dsl"
    #include "SSDT-Q13.dsl"
    #include "SSDT-BATT.dsl"
    #include "SSDT-FANREAD.dsl"
    
    //#include "SSDT-GPRW.dsl"
    
    #include "SSDT-UIAC.dsl"
    #include "SSDT-USBX.dsl" 
    #include "SSDT-SMBUS.dsl"
    #include "SSDT-XOSI.dsl"
    
}
//EOF
