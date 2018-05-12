/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-9.aml, Wed May  9 13:54:07 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002E9 (745)
 *     Revision         0x02
 *     Checksum         0xCD
 *     OEM ID           "XMCC"
 *     OEM Table ID     "XMCC1705"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "XMCC", "XMCC1705", 0x00000001)
{
    External (_SB_.CGWR, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.GPCB, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP12, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP12._ADR, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP12.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP12.PXSX._ADR, IntObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (NEXP, IntObj)    // (from opcode)
    External (WDC2, IntObj)    // (from opcode)
    External (WDCT, IntObj)    // (from opcode)
    External (WGUR, IntObj)    // (from opcode)
    External (WLCT, IntObj)    // (from opcode)
    External (WMNS, IntObj)    // (from opcode)
    External (WMXS, IntObj)    // (from opcode)

    Name (RSTP, Package (0x04)
    {
        0x02, 
        Zero, 
        0x16, 
        Zero
    })
    Scope (\_SB.PCI0.RP12)
    {
        Method (M2PC, 1, Serialized)
        {
            Store (\_SB.PCI0.GPCB (), Local0)
            Add (Local0, ShiftRight (And (Arg0, 0x001F0000), One), Local0)
            Add (Local0, ShiftLeft (And (Arg0, 0x07), 0x0C), Local0)
            Return (Local0)
        }

        Method (GMIO, 1, Serialized)
        {
            OperationRegion (PXCS, SystemMemory, M2PC (\_SB.PCI0.RP12._ADR ()), 0x20)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x18), 
                PBUS,   8, 
                SBUS,   8
            }

            Store (\_SB.PCI0.GPCB (), Local0)
            Add (Local0, ShiftRight (And (Arg0, 0x001F0000), One), Local0)
            Add (Local0, ShiftLeft (And (Arg0, 0x07), 0x0C), Local0)
            Add (Local0, ShiftLeft (SBUS, 0x14), Local0)
            Return (Local0)
        }

        Scope (PXSX)
        {
            Method (_RST, 0, Serialized)  // _RST: Device Reset
            {
                OperationRegion (PXCS, SystemMemory, GMIO (\_SB.PCI0.RP12.PXSX._ADR), 0x0480)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   16, 
                    DVID,   16, 
                    Offset (0x78), 
                    DCTL,   16, 
                    DSTS,   16, 
                    Offset (0x80), 
                    LCTL,   16, 
                    LSTS,   16, 
                    Offset (0x98), 
                    DCT2,   16, 
                    Offset (0x148), 
                    Offset (0x14C), 
                    MXSL,   16, 
                    MNSL,   16
                }

                \_SB.SGOV (\WGUR, Zero)
                Sleep (0xC8)
                Notify (\_SB.PCI0.RP12.PXSX, One)
                If (LNotEqual (DerefOf (Index (RSTP, Zero)), Zero))
                {
                    \_SB.CGWR (DerefOf (Index (RSTP, Zero)), DerefOf (Index (RSTP, One)), DerefOf (Index (RSTP, 0x02)), DerefOf (Index (RSTP, 0x03)))
                }

                \_SB.SGOV (\WGUR, One)
                Sleep (0xC8)
                If (LEqual (NEXP, Zero))
                {
                    Store (\WDCT, DCTL)
                    Store (\WLCT, LCTL)
                    Store (\WDC2, DCT2)
                    Store (\WMXS, MXSL)
                    Store (\WMNS, MNSL)
                }

                Notify (\_SB.PCI0.RP12.PXSX, One)
            }
        }
    }
}

