
// USB power properties for Sierra
// used for SMBIOS that have no power properties in IOUSBHostFamily.kext/Contents/Info.plist
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "HP14AC", "USBX", 0)
{
#endif     
    Device(_SB.USBX)
    {
        Name(_ADR, 0)
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                //REVIEW: these values from MacBookPro12,1 (pure guess)
                "kUSBSleepPortCurrentLimit", 2100,
                "kUSBSleepPowerSupply", 2500,
                "kUSBWakePortCurrentLimit", 2100,
                "kUSBWakePowerSupply", 2500,
            })
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif 
//EOF
