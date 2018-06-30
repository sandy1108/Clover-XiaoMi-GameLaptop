// For GPIO Controller Enabling
// With VoodooI2C
// For XiaoMi GameLaptop
// By wsgh

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "GPI0_STA", 0)
{
#endif
    External(_SB.PCI0, DeviceObj)
    External(_SB.PCI0.GPI0, DeviceObj)
    External(XSTA, MethodObj)
    Scope (_SB.PCI0)
    {
        Scope (GPI0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                // If (LEqual (SBRG, Zero))
                // {
                //     Return (Zero)
                // }

                // If (LEqual (GPEN, Zero))
                // {
                //     Return (Zero)
                // }

                Return (0x0F)
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
