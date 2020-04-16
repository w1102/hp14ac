
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "HP14AC", "_Q13", 0)
{
#endif    
    External(\_SB.PCI0.LPCB.PS2K, DeviceObj)
    External(_SB.PCI0.LPCB.H_EC, DeviceObj)
    External(_SB.PCI0.LPCB.H_EC.XQ13, MethodObj)
    Scope(_SB.PCI0.LPCB.H_EC)
    {
        // The native _Qxx methods in DSDT are renamed XQxx,
        // so notifications from the EC driver will land here.

        // _Q13 called on brightness/mirror display key
        Method (_Q13, 0, Serialized)  // _Qxx: EC Query
        {
            External(\HKNO, FieldUnitObj)
            Store(HKNO, Local0)
            If (LEqual(Local0,7))// Brightness Down
            {
                If (_OSI ("Darwin"))
                {
                    Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)
                }
                Else
                {
                    \_SB.PCI0.LPCB.H_EC.XQ13()
                }  
            }
            
            
            If (LEqual(Local0,8))// Brightness Up
            {
                If (_OSI ("Darwin"))
                {
                    Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)
                }
                Else
                {
                    \_SB.PCI0.LPCB.H_EC.XQ13()
                }    
            }
            
            
            If (LEqual(Local0,4))// Mirror toggle
            {
                If (_OSI ("Darwin"))
                {
                    Notify(\_SB.PCI0.LPCB.PS2K, 0x046e)
                }
                Else
                {
                    \_SB.PCI0.LPCB.H_EC.XQ13()
                } 
            }
        }
    }

#ifndef NO_DEFINITIONBLOCK
}
#endif