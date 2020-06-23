// for testing including all SSDTs with NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "HP14AC", "HP14AC", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-XOSI.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-PTSWAK.dsl"
    #include "SSDT-PNLF.dsl"
    #include "SSDT-SMBUS.dsl"
    #include "SSDT-PS2K.dsl"
    #include "SSDT-Q13.dsl"
    //#include "SSDT-BATT.dsl"
    //#include "SSDT-FANREAD.dsl"
    #include "SSDT-UIAC.dsl"
    
    
    
    //#include "SSDT-USBX.dsl"
    //#include "SSDT-EH01.dsl" 
    //#include "SSDT-XHC.dsl" 
    
    
    
}
//EOF
