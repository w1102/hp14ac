#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "HP14AC", "FANREAD", 0x00000000)
{
#endif   
    //External (B1B2, MethodObj)
     
    //External (_SB_.PCI0.LPCB.EC.FNR0, FieldUnitObj)
    //External (_SB_.PCI0.LPCB.EC.FNR1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC.DTMP, FieldUnitObj)
    //External (_SB_.PCI0.LPCB.EC.ECMX, MutexObj)


 



    
    
    
    Device (SMCD)
    {
        Name (_HID, "FAN00000")  // _HID: Hardware ID
        Name (TACH, Package (0x02)
        { 
            
            "System Fan", 
            "FAN0"
        })
        Name (TEMP, Package (0x04)
        {
        
            "CPU Heatsink", 
            "TCPU", 
            //"Ambient", 
            //"TAMB"
        })
        Method (FAN0, 0, Serialized)
        {
            Store (B1B2(\_SB.PCI0.LPCB.EC.FNR0,\_SB.PCI0.LPCB.EC.FNR1), Local0)
            If (LEqual (Local0, 0xFF))
            {
                Store (Zero, Local0)
            }
            Return (Local0)
        }
        Method (TCPU, 0, Serialized)
        {
            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            Store (\_SB.PCI0.LPCB.EC.DTMP, Local0)
            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Return (Local0)
        }


    }


#ifndef NO_DEFINITIONBLOCK
}
#endif