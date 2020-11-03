// for testing including all SSDTs with NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "HP14AC", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-BATT.dsl"
    #include "SSDT-EC.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-HPET_IPIC_RTC_TIMR.dsl"
    #include "SSDT-PLUG.dsl"
    #include "SSDT-USB.dsl"
    #include "SSDT-PNLF.dsl"
    //#include "SSDT-PS2k.dsl"
    //#include "SSDT-Q13.dsl"
    //#include "SSDT-MCHC-MEM2-SBUS-SLPB.dsl"
    
    
}
//EOF
