// For GPIO Controller Enabling
// With VoodooI2C
// For XiaoMi GameLaptop
// By wsgh

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "FN_KEY", 0)
{
#endif
    External(_SB.PCI0.LPCB, DeviceObj)
    External(_SB.PCI0.LPCB.EC0, DeviceObj)
    External(_SB.PCI0.LPCB.PS2L, DeviceObj)
    Scope (_SB.PCI0.LPCB)
    {
        Scope (EC0)
        {
            Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query
            {
                //\rmdt.p1("EC _Q0F enter: Brightness Down PS2L")
                //Store (0x0F, P80B)
                // Notify (^^^GFX0.DD1F, 0x87)
                // Brightness Down
                // 
                Notify(\_SB.PCI0.LPCB.PS2L, 0x0405)
                // Notify(\_SB.PCI0.LPCB.PS2L, 0x0205)
                // Notify(\_SB.PCI0.LPCB.PS2L, 0x0285)
                //\rmdt.p1("EC _Q0F exit")

            }

            Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
            {
                //\rmdt.p1("EC _Q10 enter: Brightness Up PS2L")
                //Store (0x10, P80B)
                // Notify (^^^GFX0.DD1F, 0x86)
                // Brightness Up
                Notify(\_SB.PCI0.LPCB.PS2L, 0x0406)
                // Notify(\_SB.PCI0.LPCB.PS2L, 0x0206)
                // Notify(\_SB.PCI0.LPCB.PS2L, 0x0286)
                //\rmdt.p1("EC _Q10 exit")

            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
