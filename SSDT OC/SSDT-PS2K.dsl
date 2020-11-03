/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-PS2K.aml, Wed Oct 14 11:23:45 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000FD (253)
 *     Revision         0x02
 *     Checksum         0x5A
 *     OEM ID           "HP14AC"
 *     OEM Table ID     "PS2K"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "HP14AC", "PS2K", 0x00000000)
{
#endif   
    Name (_SB.PCI0.LPCB.PS2K.RMCF, Package (0x0A)
    {
        "Mouse", 
        Package (0x02)
        {
            "DisableDevice", 
            ">y"
        }, 

        "Synaptics TouchPad", 
        Package (0x02)
        {
            "DisableDevice", 
            ">y"
        }, 

        "ALPS GlidePoint", 
        Package (0x02)
        {
            "DisableDevice", 
            ">y"
        }, 

        "Sentelic FSP", 
        Package (0x02)
        {
            "DisableDevice", 
            ">y"
        }, 

        "Keyboard", 
        Package (0x02)
        {
            "Custom PS2 Map", 
            Package (0x02)
            {
                Package (0x00){}, 
                "e037=64"
            }
        }
    })
#ifndef NO_DEFINITIONBLOCK
}
#endif   
