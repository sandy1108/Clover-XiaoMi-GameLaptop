/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-7.aml, Wed May  9 13:54:07 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000346 (838)
 *     Revision         0x01
 *     Checksum         0xD4
 *     OEM ID           "XMCC"
 *     OEM Table ID     "XMCC1705"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "XMCC", "XMCC1705", 0x00000000)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.GEXP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GEXP.GEPS, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.GEXP.SGEP, MethodObj)    // 3 Arguments (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (ADBG, MethodObj)    // 1 Arguments (from opcode)
    External (EIAP, UnknownObj)    // (from opcode)
    External (EIDF, IntObj)    // (from opcode)

    Scope (\)
    {
        Device (EIAD)
        {
            Name (_HID, EisaId ("INT3399"))  // _HID: Hardware ID
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                ADBG ("EIAD STA")
                If (LEqual (EIAP, One))
                {
                    Return (0x0F)
                }
                ElseIf (LEqual (EIDF, One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (PECE, Zero)
                Name (PECD, Zero)
                Name (DFUE, Zero)
                Name (DFUD, Zero)
                Name (OLDV, Zero)
                Name (PECV, Zero)
                Name (DFUV, Zero)
                If (LEqual (Arg0, ToUUID ("adf03c1f-ee76-4f23-9def-cdae22a36acf")))
                {
                    If (LGreaterEqual (ToInteger (Arg1), One))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                ADBG ("EIAD F:0")
                                Return (Buffer (One)
                                {
                                     0x0F                                           
                                })
                            }
                            Case (One)
                            {
                                ADBG ("EIAD F:1")
                                If (LEqual (EIAP, Zero))
                                {
                                    Store (DerefOf (Index (Arg3, Zero)), PECE)
                                    Store (DerefOf (Index (Arg3, One)), PECD)
                                    Store (\_SB.PCI0.GEXP.GEPS (Zero, 0x0C), OLDV)
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x0C, PECE)
                                    If (LGreater (PECD, Zero))
                                    {
                                        Sleep (PECD)
                                        \_SB.PCI0.GEXP.SGEP (Zero, 0x0C, OLDV)
                                    }
                                }

                                Return (Zero)
                            }
                            Case (0x02)
                            {
                                ADBG ("EIAD F:2")
                                Store (DerefOf (Index (Arg3, Zero)), DFUE)
                                Store (DerefOf (Index (Arg3, One)), DFUD)
                                If (LEqual (EIAP, One))
                                {
                                    Store (\_SB.GGOV (0x02000015), OLDV)
                                    \_SB.SGOV (0x02000015, DFUE)
                                }
                                Else
                                {
                                    Store (\_SB.GGOV (0x02040003), OLDV)
                                    \_SB.SGOV (0x02040003, DFUE)
                                }

                                If (LGreater (DFUD, Zero))
                                {
                                    Sleep (DFUD)
                                    If (LEqual (EIAP, One))
                                    {
                                        \_SB.SGOV (0x02000015, OLDV)
                                    }
                                    Else
                                    {
                                        \_SB.SGOV (0x02040003, OLDV)
                                    }
                                }

                                Return (Zero)
                            }
                            Case (0x03)
                            {
                                ADBG ("EIAD F:3")
                                If (LEqual (EIAP, One))
                                {
                                    Store (\_SB.GGOV (0x02000015), DFUV)
                                    Store (One, PECV)
                                }
                                Else
                                {
                                    Store (\_SB.GGOV (0x02040003), DFUV)
                                    Store (\_SB.PCI0.GEXP.GEPS (Zero, 0x0C), PECV)
                                }

                                Return (Package (0x02)
                                {
                                    PECV, 
                                    DFUV
                                })
                            }

                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }
    }
}

