/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-5.aml, Wed May  9 13:54:07 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000DD (221)
 *     Revision         0x02
 *     Checksum         0xA5
 *     OEM ID           "XMCC"
 *     OEM Table ID     "XMCC1705"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "XMCC", "XMCC1705", 0x00001000)
{
    External (_SB_.PCI0.LPCB.EC0_.CPUT, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.GPUT, UnknownObj)    // (from opcode)

    Scope (\_TZ)
    {
        ThermalZone (TZ00)
        {
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (0x0E8A)
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Store (\_SB.PCI0.LPCB.EC0.CPUT, Local0)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
        }

        ThermalZone (TZ01)
        {
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (0x0EB2)
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Store (\_SB.PCI0.LPCB.EC0.GPUT, Local0)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
        }
    }
}

