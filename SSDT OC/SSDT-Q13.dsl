/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-Q13.aml, Wed Oct 14 11:23:45 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000168 (360)
 *     Revision         0x02
 *     Checksum         0xAF
 *     OEM ID           "HP14AC"
 *     OEM Table ID     "_Q13"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "HP14AC", "_Q13", 0x00000000)
{
#endif  
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.XQ13, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (HKNO, FieldUnitObj)

    Scope (_SB.PCI0.LPCB.H_EC)
    {
        Method (_Q13, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Store (HKNO, Local0)
            If (LEqual (Local0, 0x07))
            {
                If (_OSI ("Darwin"))
                {
                    Notify (\_SB.PCI0.LPCB.PS2K, 0x0405)
                }
                Else
                {
                    \_SB.PCI0.LPCB.H_EC.XQ13 ()
                }
            }

            If (LEqual (Local0, 0x08))
            {
                If (_OSI ("Darwin"))
                {
                    Notify (\_SB.PCI0.LPCB.PS2K, 0x0406)
                }
                Else
                {
                    \_SB.PCI0.LPCB.H_EC.XQ13 ()
                }
            }

            If (LEqual (Local0, 0x04))
            {
                If (_OSI ("Darwin"))
                {
                    Notify (\_SB.PCI0.LPCB.PS2K, 0x046E)
                }
                Else
                {
                    \_SB.PCI0.LPCB.H_EC.XQ13 ()
                }
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif  
