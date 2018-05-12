/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-11.aml, Wed May  9 13:54:06 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000012E6 (4838)
 *     Revision         0x02
 *     Checksum         0x39
 *     OEM ID           "XMCC"
 *     OEM Table ID     "XMCC1705"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "XMCC", "XMCC1705", 0x00001000)
{
    External (_SB_.PCI0.LPCB.H_EC, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.H_EC.CCI0, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CCI1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CCI2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CCI3, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CMDR, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL0, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL3, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL4, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL5, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL6, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL7, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECM1, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECWR, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI0, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI3, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI4, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI5, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI6, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI7, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI8, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI9, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGIA, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGIB, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGIC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGID, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGIE, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGIF, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO0, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO3, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO4, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO5, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO6, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO7, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO8, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO9, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOA, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOB, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOD, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOE, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOF, IntObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // 2 Arguments (from opcode)
    External (P8XH, MethodObj)    // 2 Arguments (from opcode)
    External (UBCB, UnknownObj)    // (from opcode)
    External (UCRT, IntObj)    // (from opcode)
    External (USTC, UnknownObj)    // (from opcode)
    External (UTCM, UnknownObj)    // (from opcode)
    External (XDCE, UnknownObj)    // (from opcode)

    Scope (\_SB)
    {
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "USB Type C")  // _DDN: DOS Device Name
            Name (_ADR, Zero)  // _ADR: Address
            If (LEqual (UCRT, One))
            {
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    \_SB.PCI0.LPCB.H_EC
                })
            }

            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y39)
            })
            Device (CR01)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    If (LEqual (USTC, One))
                    {
                        Return (\_SB.PCI0.XHC.RHUB.TPLD (One, One))
                    }
                }
            }

            If (LEqual (UTCM, One))
            {
                Device (CR02)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        If (LEqual (USTC, One))
                        {
                            Return (\_SB.PCI0.XHC.RHUB.TPLD (One, 0x02))
                        }
                    }
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y39._BAS, CBAS)  // _BAS: Base Address
                Store (UBCB, CBAS)
                Return (CRS)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (USTC, One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            OperationRegion (USBC, SystemMemory, UBCB, 0x38)
            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8, 
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f")))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x0F                                           
                            })
                        }
                        Case (One)
                        {
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO0, RefOf (\_SB.PCI0.LPCB.H_EC.MGO0))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO1, RefOf (\_SB.PCI0.LPCB.H_EC.MGO1))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO2, RefOf (\_SB.PCI0.LPCB.H_EC.MGO2))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO3, RefOf (\_SB.PCI0.LPCB.H_EC.MGO3))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO4, RefOf (\_SB.PCI0.LPCB.H_EC.MGO4))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO5, RefOf (\_SB.PCI0.LPCB.H_EC.MGO5))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO6, RefOf (\_SB.PCI0.LPCB.H_EC.MGO6))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO7, RefOf (\_SB.PCI0.LPCB.H_EC.MGO7))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO8, RefOf (\_SB.PCI0.LPCB.H_EC.MGO8))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO9, RefOf (\_SB.PCI0.LPCB.H_EC.MGO9))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOA, RefOf (\_SB.PCI0.LPCB.H_EC.MGOA))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOB, RefOf (\_SB.PCI0.LPCB.H_EC.MGOB))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOC, RefOf (\_SB.PCI0.LPCB.H_EC.MGOC))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOD, RefOf (\_SB.PCI0.LPCB.H_EC.MGOD))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOE, RefOf (\_SB.PCI0.LPCB.H_EC.MGOE))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOF, RefOf (\_SB.PCI0.LPCB.H_EC.MGOF))
                            If (LEqual (UCRT, One))
                            {
                                \_SB.PCI0.LPCB.H_EC.ECWR (CTL0, RefOf (\_SB.PCI0.LPCB.H_EC.CTL0))
                                \_SB.PCI0.LPCB.H_EC.ECWR (CTL1, RefOf (\_SB.PCI0.LPCB.H_EC.CTL1))
                                \_SB.PCI0.LPCB.H_EC.ECWR (CTL2, RefOf (\_SB.PCI0.LPCB.H_EC.CTL2))
                                \_SB.PCI0.LPCB.H_EC.ECWR (CTL3, RefOf (\_SB.PCI0.LPCB.H_EC.CTL3))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL4, RefOf (\_SB.PCI0.LPCB.H_EC.CTL4))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL5, RefOf (\_SB.PCI0.LPCB.H_EC.CTL5))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL6, RefOf (\_SB.PCI0.LPCB.H_EC.CTL6))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL7, RefOf (\_SB.PCI0.LPCB.H_EC.CTL7))
                                \_SB.PCI0.LPCB.H_EC.ECM1 (0xE0)
                            }
                            Else
                            {
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL0, RefOf (\_SB.PCI0.LPCB.H_EC.CTL0))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL1, RefOf (\_SB.PCI0.LPCB.H_EC.CTL1))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL2, RefOf (\_SB.PCI0.LPCB.H_EC.CTL2))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL3, RefOf (\_SB.PCI0.LPCB.H_EC.CTL3))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL4, RefOf (\_SB.PCI0.LPCB.H_EC.CTL4))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL5, RefOf (\_SB.PCI0.LPCB.H_EC.CTL5))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL6, RefOf (\_SB.PCI0.LPCB.H_EC.CTL6))
                                \_SB.PCI0.LPCB.H_EC.ECWT (CTL7, RefOf (\_SB.PCI0.LPCB.H_EC.CTL7))
                                \_SB.PCI0.LPCB.H_EC.ECMD (0xE0)
                            }

                            P8XH (Zero, 0xE0)
                        }
                        Case (0x02)
                        {
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI0)), MGI0)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI1)), MGI1)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI2)), MGI2)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI3)), MGI3)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI4)), MGI4)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI5)), MGI5)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI6)), MGI6)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI7)), MGI7)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI8)), MGI8)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI9)), MGI9)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGIA)), MGIA)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGIB)), MGIB)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGIC)), MGIC)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGID)), MGID)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGIE)), MGIE)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGIF)), MGIF)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CCI0)), CCI0)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CCI1)), CCI1)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CCI2)), CCI2)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CCI3)), CCI3)
                        }
                        Case (0x03)
                        {
                            Return (XDCE)
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }
    }
}

