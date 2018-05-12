/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-10.aml, Wed May  9 13:54:06 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000051E (1310)
 *     Revision         0x02
 *     Checksum         0x6D
 *     OEM ID           "XMCC"
 *     OEM Table ID     "XMCC1705"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "XMCC", "XMCC1705", 0x00001000)
{
    External (_SB_.GGIV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.GEXP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GEXP.SGEP, MethodObj)    // 3 Arguments (from opcode)
    External (_SB_.PCI0.SAT0, UnknownObj)
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (RCG0, IntObj)    // (from opcode)
    External (ZPOD, UnknownObj)    // (from opcode)

    If (LAnd (And (RCG0, One), One))
    {
        Scope (\_SB.PCI0.SAT0.PRT1)
        {
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Switch (ToInteger (ZPOD))
                                    {
                                        Case (Package (0x03)
                                            {
                                                One, 
                                                0x02, 
                                                0x03
                                            }

)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x0F                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }

                                    }
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (One)
                        }
                        Case (0x02)
                        {
                            Switch (ToInteger (ZPOD))
                            {
                                Case (Package (0x01)
                                    {
                                        One
                                    }

)
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, Zero)
                                }
                                Case (Package (0x02)
                                    {
                                        0x02, 
                                        0x03
                                    }

)
                                {
                                    \_SB.SGOV (0x01060001, Zero)
                                }

                            }

                            Return (One)
                        }
                        Case (0x03)
                        {
                            Switch (ToInteger (ZPOD))
                            {
                                Case (Package (0x01)
                                    {
                                        One
                                    }

)
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, One)
                                }
                                Case (Package (0x01)
                                    {
                                        0x02
                                    }

)
                                {
                                    If (LEqual (\_SB.GGIV (0x01040001), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }
                                Case (Package (0x01)
                                    {
                                        0x03
                                    }

)
                                {
                                    If (LEqual (\_SB.GGIV (0x01050000), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }

                            }

                            Sleep (0x0A)
                            Return (One)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }
            }
        }

        Scope (\_SB.PCI0.SAT0.PRT3)
        {
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Switch (ToInteger (ZPOD))
                                    {
                                        Case (Package (0x03)
                                            {
                                                One, 
                                                0x02, 
                                                0x03
                                            }

)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x0F                                           
                                            })
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }

                                    }
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (One)
                        }
                        Case (0x02)
                        {
                            Switch (ToInteger (ZPOD))
                            {
                                Case (Package (0x01)
                                    {
                                        One
                                    }

)
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, Zero)
                                }
                                Case (Package (0x02)
                                    {
                                        0x02, 
                                        0x03
                                    }

)
                                {
                                    \_SB.SGOV (0x01060001, Zero)
                                }

                            }

                            Return (One)
                        }
                        Case (0x03)
                        {
                            Switch (ToInteger (ZPOD))
                            {
                                Case (Package (0x01)
                                    {
                                        One
                                    }

)
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, One)
                                }
                                Case (Package (0x01)
                                    {
                                        0x02
                                    }

)
                                {
                                    If (LEqual (\_SB.GGIV (0x01040001), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }
                                Case (Package (0x01)
                                    {
                                        0x03
                                    }

)
                                {
                                    If (LEqual (\_SB.GGIV (0x01050000), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }

                            }

                            Sleep (0x0A)
                            Return (One)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_E02, 0, Serialized)  // _Exx: Edge-Triggered GPE
            {
                Switch (ToInteger (ZPOD))
                {
                    Case (Package (0x02)
                        {
                            0x02, 
                            0x03
                        }

)
                    {
                        If (LEqual (\_SB.GGIV (0x01040001), Zero))
                        {
                            \_SB.SGOV (0x01060001, One)
                        }

                        Notify (\_SB.PCI0.SAT0, 0x81)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
        }
    }
}

