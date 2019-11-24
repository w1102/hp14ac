// For computers that either have no trackpad (eg. desktop with PS2 mouse)
// or laptops without any support by VoodooPS2Trackpad.kext, you can disable
// each of the trackpad drivers, such that they don't probe.
//
// This can improve the reliability of VoodooPS2Mouse.kext and is more efficient as well.
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "HP14AC", "PS2K", 0)
{
#endif    
    Name(_SB.PCI0.LPCB.PS2K.RMCF, Package()
    {
        "Mouse", Package()
        {
            "DisableDevice", ">y",
        },
        "Synaptics TouchPad", Package()
        {
            "DisableDevice", ">y",
        },
        "ALPS GlidePoint", Package()
        {
            "DisableDevice", ">y",
        },
        "Sentelic FSP", Package()
        {
            "DisableDevice", ">y",
        },
        "Keyboard", Package()
        {
            "Custom PS2 Map", Package()
            {
                Package(){},
                "e037=64", // PrtSc=F13
            },
        },
    })
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
