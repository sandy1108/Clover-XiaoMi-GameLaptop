// For modification of PCI0.I2C0.TPD0._CSR
// With VoodooI2C
// For XiaoMi GameLaptop
// By wsgh

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("I2C0.TPD0._CSR", "SSDT", 2, "hack", "I2C0.TPD0._CSR", 0)
{
#endif
    External(_SB.PCI0.I2C0, DeviceObj)
    External(_SB.PCI0.I2C0.TPD0, DeviceObj)
    // External(_SB.PCI0.I2C0.TPD0.SBFB, UnknownObj)
    // External(_SB.PCI0.I2C0.TPD0.SBFG, UnknownObj)
    Scope (_SB.PCI0.I2C0)
    {
        Scope (TPD0){
            Name (XBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                    0x00, ResourceConsumer, _Y1E, Exclusive,
                    )
            })
            Name (XBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ConcatenateResTemplate (XBFB, XBFG))
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
