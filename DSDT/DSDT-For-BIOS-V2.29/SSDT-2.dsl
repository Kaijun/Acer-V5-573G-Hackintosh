/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140325-64 [Mar 26 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of SSDT-2.aml, Fri Oct 24 14:03:30 2014
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000008B6 (2230)
 *     Revision         0x01
 *     Checksum         0x5B
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("SSDT-2.aml", "SSDT", 1, "ACRSYS", "ACRPRDCT", 0x00001000)
{

    External (_SB_.IFFS.FFSS, UnknownObj)
    External (_SB_.PCI0.IGPU.ASLC, FieldUnitObj)
    External (_SB_.PCI0.IGPU.ASLE, FieldUnitObj)
    External (_SB_.PCI0.IGPU.PARD, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.STAT, FieldUnitObj)
    External (_SB_.PCI0.IGPU.TCHE, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.AWT0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.AWT1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.AWT2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.IBT1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.LIDT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.NIWM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.WLST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.WTMS, FieldUnitObj)
    External (_SB_.WFVD, FieldUnitObj)
    External (GO55, FieldUnitObj)
    External (ICNF, FieldUnitObj)

    Scope (\_SB)
    {
        Device (IAOE)
        {
            OperationRegion (ISCT, SystemMemory, 0x9AEBEC98, 0x0011)
            Field (ISCT, AnyAcc, Lock, Preserve)
            {
                WKRS,   8, 
                AOCE,   8, 
                FFSE,   8, 
                ITMR,   8, 
                ECTM,   32, 
                RCTM,   32, 
                GNPT,   32, 
                ATOW,   8
            }

            Name (_HID, "INT33A0" /* Intel Smart Connect Technology Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (IBT1, Zero)
            Name (IBT2, Zero)
            Name (INSB, Zero)
            Name (WTMS, Zero)
            Name (AWT0, Zero)
            Name (AWT1, Zero)
            Name (AWT2, Zero)
            Name (PTSL, Zero)
            Name (SLPD, Zero)
            Name (IMDS, Zero)
            Name (IWDT, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (WFVD, One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (GABS, 0, NotSerialized)
            {
                Return (ICNF) /* External reference */
            }

            Method (GAOS, 0, NotSerialized)
            {
                If (LEqual (ITMR, One))
                {
                    And (IBT1, One, Local0)
                    Or (Local0, And (IMDS, 0x02), Local0)
                    Return (Local0)
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.EC0.IBT1, Local0)
                    }
                    Else
                    {
                        Store (IBT1, Local0)
                    }

                    And (Local0, One, Local0)
                    Or (Local0, And (IMDS, 0x02), Local0)
                    Return (Local0)
                }
            }

            Method (SAOS, 1, NotSerialized)
            {
                Store (Arg0, Local7)
                If (LEqual (And (Local7, One), One))
                {
                    Store (Zero, GO55) /* External reference */
                }
                Else
                {
                    If (\_SB.PCI0.LPCB.EC0.LIDT)
                    {
                        Store (Zero, GO55) /* External reference */
                    }
                    Else
                    {
                        Store (One, GO55) /* External reference */
                    }
                }

                If (And (\_SB.PCI0.IGPU.TCHE, 0x0100))
                {
                    If (LEqual (ITMR, One))
                    {
                        If (LAnd (LAnd (And (IBT1, One), And (\_SB.IAOE.WKRS, 0x02
                            )), LNot (And (Arg0, One))))
                        {
                            If (LNot (\_SB.PCI0.IGPU.PARD ()))
                            {
                                Store (And (\_SB.PCI0.IGPU.STAT, 0xFFFFFFFC), \_SB.PCI0.IGPU.STAT) /* External reference */
                                Store (Or (\_SB.PCI0.IGPU.ASLC, 0x0100), \_SB.PCI0.IGPU.ASLC) /* External reference */
                                Store (One, \_SB.PCI0.IGPU.ASLE) /* External reference */
                            }
                        }
                    }
                    Else
                    {
                        If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                        {
                            If (LAnd (LAnd (And (\_SB.PCI0.LPCB.EC0.IBT1, One), And (\_SB.IAOE.WKRS, 0x02
                                )), LNot (And (Arg0, One))))
                            {
                                If (LNot (\_SB.PCI0.IGPU.PARD ()))
                                {
                                    Store (And (\_SB.PCI0.IGPU.STAT, 0xFFFFFFFC), \_SB.PCI0.IGPU.STAT) /* External reference */
                                    Store (Or (\_SB.PCI0.IGPU.ASLC, 0x0100), \_SB.PCI0.IGPU.ASLC) /* External reference */
                                    Store (One, \_SB.PCI0.IGPU.ASLE) /* External reference */
                                }
                            }
                        }
                    }
                }

                If (LEqual (ITMR, One))
                {
                    Store (And (Arg0, 0x02), IMDS) /* \_SB_.IAOE.IMDS */
                    And (IBT1, 0xFE, Local0)
                    Or (Local0, And (Arg0, One), IBT1) /* \_SB_.IAOE.IBT1 */
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.EC0.IBT1, Local0)
                    }
                    Else
                    {
                        Store (IBT1, Local0)
                    }

                    And (Local0, 0xFE, Local0)
                    Or (Local0, And (Arg0, One), Local0)
                    Store (And (Arg0, 0x02), IMDS) /* \_SB_.IAOE.IMDS */
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Store (Local0, \_SB.PCI0.LPCB.EC0.IBT1) /* External reference */
                    }
                    Else
                    {
                        Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                    }
                }

                If (LAnd (IMDS, 0x02))
                {
                    Store (Zero, \_SB.PCI0.LPCB.EC0.NIWM) /* External reference */
                }
                Else
                {
                    Store (One, \_SB.PCI0.LPCB.EC0.NIWM) /* External reference */
                }
            }

            Method (GANS, 0, NotSerialized)
            {
                Return (INSB) /* \_SB_.IAOE.INSB */
            }

            Method (SANS, 1, NotSerialized)
            {
                Store (And (Arg0, One), INSB) /* \_SB_.IAOE.INSB */
            }

            Method (GWLS, 0, NotSerialized)
            {
                If (LEqual (ITMR, One))
                {
                    Return (And (IBT1, 0x0E))
                }
                Else
                {
                    If (\_SB.PCI0.LPCB.EC0.WLST)
                    {
                        Store (\_SB.PCI0.LPCB.EC0.WLST, Local0)
                        Or (Local0, One, Local0)
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.EC0.IBT1, Local1)
                    }
                    Else
                    {
                        Store (IBT1, Local1)
                    }

                    Or (Local0, And (Local1, 0x0E), Local0)
                    Return (Local0)
                }
            }

            Method (SWLS, 1, NotSerialized)
            {
                If (LEqual (ITMR, One))
                {
                    Store (And (And (Arg0, 0x0E), IBT1), IBT1) /* \_SB_.IAOE.IBT1 */
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.EC0.IBT1, Local0)
                    }
                    Else
                    {
                        Store (IBT1, Local0)
                    }

                    And (Local0, 0xF1, Local0)
                    Or (Local0, And (Arg0, 0x0E), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x04, Local0)
                        }
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Store (Local0, \_SB.PCI0.LPCB.EC0.IBT1) /* External reference */
                    }
                    Else
                    {
                        Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                    }
                }
            }

            Method (GWWS, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (SWWS, 1, NotSerialized)
            {
                If (LEqual (ITMR, One))
                {
                    ShiftLeft (And (And (Arg0, 0x0E), IBT1), 0x03, IBT1) /* \_SB_.IAOE.IBT1 */
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.EC0.IBT1, Local0)
                    }
                    Else
                    {
                        Store (IBT1, Local0)
                    }

                    And (Local0, 0x8F, Local0)
                    Or (Local0, ShiftLeft (And (Arg0, 0x0E), 0x03), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x20, Local0)
                        }
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.EC0.IBT1))
                    {
                        Store (Local0, \_SB.PCI0.LPCB.EC0.IBT1) /* External reference */
                    }
                    Else
                    {
                        Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                    }
                }
            }

            Method (SASD, 1, NotSerialized)
            {
                If (LAnd (And (ICNF, 0x10), LGreater (Arg0, Zero)))
                {
                    If (LEqual (ITMR, One))
                    {
                        Store (Arg0, RCTM) /* \_SB_.IAOE.RCTM */
                    }
                    Else
                    {
                        Store (Arg0, ECTM) /* \_SB_.IAOE.ECTM */
                    }

                    If (LAnd (CondRefOf (\_SB.PCI0.LPCB.EC0.WTMS), LEqual (PTSL, 0x03)))
                    {
                        Store (And (ECTM, 0xFF), \_SB.PCI0.LPCB.EC0.AWT0) /* External reference */
                        Store (ShiftRight (And (ECTM, 0xFF00), 0x08), \_SB.PCI0.LPCB.EC0.AWT1) /* External reference */
                        Store (ShiftRight (And (ECTM, 0x00FF0000), 0x10), \_SB.PCI0.LPCB.EC0.AWT2) /* External reference */
                        Store (\_SB.PCI0.LPCB.EC0.WTMS, Local0)
                        Store (Or (0x81, Local0), \_SB.PCI0.LPCB.EC0.WTMS) /* External reference */
                    }
                    Else
                    {
                        Store (And (ECTM, 0xFF), AWT0) /* \_SB_.IAOE.AWT0 */
                        Store (ShiftRight (And (ECTM, 0xFF00), 0x08), AWT1) /* \_SB_.IAOE.AWT1 */
                        Store (ShiftRight (And (ECTM, 0x00FF0000), 0x10), AWT2) /* \_SB_.IAOE.AWT2 */
                        Store (WTMS, Local0)
                        Store (Or (0x81, Local0), WTMS) /* \_SB_.IAOE.WTMS */
                    }
                }
                Else
                {
                    If (LEqual (ITMR, One))
                    {
                        Store (Zero, RCTM) /* \_SB_.IAOE.RCTM */
                    }
                    Else
                    {
                        If (CondRefOf (\_SB.PCI0.LPCB.EC0.WTMS))
                        {
                            Store (Zero, ECTM) /* \_SB_.IAOE.ECTM */
                            Store (Zero, \_SB.PCI0.LPCB.EC0.WTMS) /* External reference */
                        }
                    }

                    Store (Arg0, SLPD) /* \_SB_.IAOE.SLPD */
                }
            }

            Method (GPWR, 0, NotSerialized)
            {
                If (And (WKRS, 0x1F))
                {
                    Return (WKRS) /* \_SB_.IAOE.WKRS */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (GPCS, 0, NotSerialized)
            {
                If (LEqual (ITMR, Zero))
                {
                    If (\_SB.PCI0.LPCB.EC0.LIDT)
                    {
                        Store (Zero, Local0)
                    }
                    Else
                    {
                        Store (One, Local0)
                    }

                    Return (Local0)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (GAWD, 0, NotSerialized)
            {
                Return (IWDT) /* \_SB_.IAOE.IWDT */
            }

            Method (SAWD, 1, NotSerialized)
            {
                Store (Arg0, IWDT) /* \_SB_.IAOE.IWDT */
            }
        }
    }
}

