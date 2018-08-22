// For modification of PCI0.I2C0.TPD0._CSR
// With VoodooI2C
// For XiaoMi GameLaptop
// By wsgh

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("I2C0.TPD0._CSR", "SSDT", 2, "hack", "I2C0.TPD0._CRS", 0)
{
#endif
    External(_SB.PCI0.I2C0, DeviceObj)
    External(_SB.PCI0.I2C0.TPD0, DeviceObj)
    External(_SB.PCI0.I2C0.TPD0.SBFB, BuffFieldObj)
    External(_SB.PCI0.I2C0.TPD0.SBFG, BuffFieldObj)
    External(SBFB, BuffFieldObj)
    External(SBFG, BuffFieldObj)

    Scope (_SB.PCI0.I2C0)
    {
        Scope (TPD0){
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ConcatenateResTemplate (SBFB, SBFG))
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
