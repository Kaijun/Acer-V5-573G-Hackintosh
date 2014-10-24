/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140325-64 [Mar 26 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of SSDT-1.aml, Tue Jun 24 12:18:23 2014
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002CA9 (11433)
 *     Revision         0x01
 *     Checksum         0x8F
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("SSDT-1.aml", "SSDT", 1, "ACRSYS", "ACRPRDCT", 0x00001000)
{

    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (_SB_.OSCO, IntObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.IGPU.CADL, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL2, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL3, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL4, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL5, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL6, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL7, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL8, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPDL, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL2, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL3, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL4, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL5, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL6, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL7, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL8, FieldUnitObj)
    External (_SB_.PCI0.IGPU.DD01._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD01._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD02._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD02._BCL, IntObj)
    External (_SB_.PCI0.IGPU.DD02._BCM, MethodObj)
    External (_SB_.PCI0.IGPU.DD02._BQC, IntObj)
    External (_SB_.PCI0.IGPU.DD02._DCS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD02._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD03._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD03._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD04._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD04._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD05._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD05._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD06._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD06._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD07._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD07._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD08._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.DD08._DGS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.CTMP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.GPSW, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.SCTB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.VGAF, FieldUnitObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.VSSD, FieldUnitObj)
    External (DID1, FieldUnitObj)
    External (DID2, FieldUnitObj)
    External (DID4, FieldUnitObj)
    External (OPTF, FieldUnitObj)
    External (P8XH, MethodObj)    // 3 Arguments
    External (PEBS, IntObj)
    External (TCNT, FieldUnitObj)
    
    External (_SB_.PCI0.IGPU._DSM, MethodObj)    // 4 Arguments

    Scope (\_SB.PCI0.RP05)
    {
        Device (PEGP)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        OperationRegion (VBOR, SystemMemory, 0x9AF9C018, 0x00017C04)
        Field (VBOR, DWordAcc, Lock, Preserve)
        {
            RVBS,   32, 
            VBS1,   262144, 
            VBS2,   262144, 
            VBS3,   253952, 
            VBS4,   0
        }
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        OperationRegion (SGOP, SystemMemory, 0x9AFBDD98, 0x00000055)
        Field (SGOP, AnyAcc, Lock, Preserve)
        {
            EBAS,   32, 
            CPSP,   32, 
            EECP,   32, 
            EVCP,   32, 
            XBAS,   32, 
            DBPA,   32, 
            SGGP,   8, 
            SGMD,   8, 
            SGFL,   8, 
            PWOK,   8, 
            HLRS,   8, 
            DSEL,   8, 
            ESEL,   8, 
            PSEL,   8, 
            PWEN,   8, 
            VRON,   8, 
            PRST,   8, 
            MXD1,   32, 
            MXD2,   32, 
            MXD3,   32, 
            MXD4,   32, 
            MXD5,   32, 
            MXD6,   32, 
            MXD7,   32, 
            MXD8,   32, 
            GBAS,   16, 
            APDT,   32, 
            AVDT,   32, 
            AHDT,   32, 
            IHDT,   32
        }
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        OperationRegion (NOPR, SystemMemory, 0x9AF9A018, 0x00001014)
        Field (NOPR, AnyAcc, Lock, Preserve)
        {
            PBCM,   8, 
            GPSS,   32, 
            GACD,   16, 
            GATD,   16, 
            LDES,   8, 
            DKST,   8, 
            DACE,   8, 
            SGNC,   8, 
            GPPO,   8, 
            GPSP,   8, 
            DOSF,   8, 
            MXBS,   32, 
            MXMB,   32768
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
        
    }

    Scope (\_SB.PCI0.RP05)
    {
        OperationRegion (RPCI, PCI_Config, Zero, 0xF0)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            Offset (0x50), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1
        }

        OperationRegion (RPCX, SystemMemory, \_SB.PCI0.RP05.PEGP.DBPA, 0x1000)
        Field (RPCX, DWordAcc, NoLock, Preserve)
        {
            Offset (0x328), 
                ,   19, 
            LNKS,   4
        }
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        OperationRegion (VGAR, SystemMemory, \_SB.PCI0.RP05.PEGP.EBAS, 0x0100)
        Field (VGAR, DWordAcc, NoLock, Preserve)
        {
            VREG,   2048
        }

        Name (VGAB, Buffer (0x0100)
        {
             0x00
        })
        OperationRegion (PCAP, PCI_Config, \_SB.PCI0.RP05.PEGP.EECP, 0x14)
        Field (PCAP, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTL,   16
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.RP05.PEGP._ADR)
        }

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            SGPO (HLRS, One)
            SGPO (PWEN, One)
            Store (Zero, Local0)
            While (LLess (Local0, 0x0F))
            {
                Add (Local0, One, Local0)
                Stall (0x64)
            }

            SGPO (VRON, One)
            Store (Zero, Local0)
            While (LLess (Local0, 0x1E))
            {
                Add (Local0, One, Local0)
                Stall (0x64)
            }

            SGPO (HLRS, Zero)
            Sleep (IHDT)
            Store (Zero, LNKD) /* \_SB_.PCI0.RP05.LNKD */
            While (LLess (LNKS, 0x07))
            {
                Sleep (One)
            }

            Store (VGAB, VREG) /* \_SB_.PCI0.RP05.PEGP.VREG */
            Or (And (ELCT, 0x43), And (LCTL, 0xFFBC), LCTL) /* \_SB_.PCI0.RP05.PEGP.LCTL */
            \_SB.PCI0.LPCB.EC0.SCTB ()
            Store (One, \_SB.PCI0.LPCB.EC0.VGAF) /* External reference */
            Return (One)
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            Store (LCTL, ELCT) /* \_SB_.PCI0.RP05.PEGP.ELCT */
            Store (VREG, VGAB) /* \_SB_.PCI0.RP05.PEGP.VGAB */
            Store (One, LNKD) /* \_SB_.PCI0.RP05.LNKD */
            While (LNotEqual (LNKS, Zero))
            {
                Sleep (One)
            }

            SGPO (HLRS, One)
            SGPO (VRON, Zero)
            SGPO (PWEN, Zero)
            \_SB.PCI0.LPCB.EC0.SCTB ()
            Store (Zero, \_SB.PCI0.LPCB.EC0.VGAF) /* External reference */
            Return (Zero)
        }

        Method (_STA, 0, Serialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            Return (Package (0x01)
            {
                0x80087330
            })
        }

        Device (DD01)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD01._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD01._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD02)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD02._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Return (\_SB.PCI0.IGPU.DD02._DCS ())
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD02._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                Return (\_SB.PCI0.IGPU.DD02._BCL) /* External reference */
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (\_SB.PCI0.IGPU.DD02._BQC) /* External reference */
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                Return (\_SB.PCI0.IGPU.DD02._BCM(Arg0)) /* External reference */
                
            }
        }

        Device (DD03)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD03._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD03._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD04)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD04._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD04._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD05)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD05._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD05._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD06)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD06._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD06._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD07)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD07._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD07._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD08)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD08._ADR ())
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD08._DGS ())
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Method (SGPI, 1, Serialized)
        {
            ShiftRight (Arg0, 0x07, Local1)
            And (Arg0, 0x7F, Arg0)
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (\_SB.PCI0.RP05.PEGP.GBAS, 0x0100), Multiply (Arg0, 0x08)
                    ), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x08)
                Field (LGPI, ByteAcc, NoLock, Preserve)
                {
                        ,   30, 
                    TEMP,   1
                }

                Store (TEMP, Local2)
            }

            If (LEqual (Local1, Zero))
            {
                Not (Local2, Local2)
            }

            Return (And (Local2, One))
        }

        Method (SGPO, 2, Serialized)
        {
            ShiftRight (Arg0, 0x07, Local1)
            And (Arg0, 0x7F, Arg0)
            If (LEqual (Local1, Zero))
            {
                Not (Arg1, Arg1)
            }

            And (Arg1, One, Arg1)
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (\_SB.PCI0.RP05.PEGP.GBAS, 0x0100), Multiply (Arg0, 0x08)
                    ), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x08)
                Field (LGPI, ByteAcc, NoLock, Preserve)
                {
                        ,   31, 
                    TEMP,   1
                }

                Store (Arg1, TEMP) /* \_SB_.PCI0.RP05.PEGP.SGPO.TEMP */
            }
        }
    }

    

    Name (BDFR, 0x000F804C)
    Name (GPLS, Zero)
    OperationRegion (GPCR, SystemMemory, Or (PEBS, BDFR, BDFR) /* \BDFR */, One)
    Field (GPCR, AnyAcc, NoLock, Preserve)
    {
        GPCT,   1
    }

    OperationRegion (APMR, SystemIO, 0xB2, 0x02)
    Field (APMR, WordAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMS,   8
    }

    Name (BDF2, 0xDC)
    OperationRegion (SKPR, SystemMemory, Or (PEBS, BDF2, BDF2) /* \BDF2 */, 0x04)
    Field (SKPR, AnyAcc, NoLock, Preserve)
    {
        SKPD,   32
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        Name (GESC, Zero)
        Method (GPS, 4, Serialized)
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000002)
            }

            While (One)
            {
                Store (ToInteger (Arg2), _T_0) /* \_SB_.PCI0.RP05.PEGP.GPS_._T_0 */
                If (LEqual (_T_0, Zero))
                {
                    Return (Buffer (0x08)
                    {
                         0x01, 0x00, 0x08, 0x00, 0x0F, 0x04, 0x00, 0x00
                    })
                }
                Else
                {
                    If (LEqual (_T_0, 0x13))
                    {
                        Store (Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00
                            }, Local1)
                        CreateBitField (Local1, 0x02, PSTE)
                        Store (One, PSTE) /* \_SB_.PCI0.RP05.PEGP.GPS_.PSTE */
                        Store (Zero, \_SB.PCI0.LPCB.EC0.GPSW) /* External reference */
                        Return (Local1)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x20))
                        {
                            CreateBitField (Arg3, 0x18, NRIT)
                            CreateBitField (Arg3, 0x19, RITS)
                            CreateField (Arg3, 0x1A, 0x03, PSTS)
                            CreateBitField (Arg3, 0x1D, NPSS)
                            CreateBitField (Arg3, 0x1E, PSES)
                            Name (GB32, Buffer (0x04)
                            {
                                 0x00
                            })
                            CreateBitField (GB32, Zero, SPLU)
                            CreateBitField (GB32, One, PSLS)
                            CreateBitField (GB32, 0x02, NPBI)
                            CreateBitField (GB32, 0x18, CITS)
                            CreateBitField (GB32, 0x1E, PSER)
                            If (RITS)
                            {
                                If (NRIT)
                                {
                                    Store (One, CITS) /* \_SB_.PCI0.RP05.PEGP.GPS_.CITS */
                                }
                                Else
                                {
                                    Store (Zero, CITS) /* \_SB_.PCI0.RP05.PEGP.GPS_.CITS */
                                }
                            }

                            Store (One, CITS) /* \_SB_.PCI0.RP05.PEGP.GPS_.CITS */
                            Store (One, PSER) /* \_SB_.PCI0.RP05.PEGP.GPS_.PSER */
                            If (GESC)
                            {
                                Store (One, SPLU) /* \_SB_.PCI0.RP05.PEGP.GPS_.SPLU */
                            }

                            Return (GB32) /* \_SB_.PCI0.RP05.PEGP.GPS_.GB32 */
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x21))
                            {
                                Return (\_PR.CPU0._PSS) /* External reference */
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x22))
                                {
                                    CreateByteField (Arg3, Zero, NPPC)
                                    Store (NPPC, \_PR.CPU0._PPC) /* External reference */
                                    If (LEqual (TCNT, 0x08))
                                    {
                                        Notify (\_PR.CPU0, 0x80) // Status Change
                                        Notify (\_PR.CPU1, 0x80) // Status Change
                                        Notify (\_PR.CPU2, 0x80) // Status Change
                                        Notify (\_PR.CPU3, 0x80) // Status Change
                                        Notify (\_PR.CPU4, 0x80) // Status Change
                                        Notify (\_PR.CPU5, 0x80) // Status Change
                                        Notify (\_PR.CPU6, 0x80) // Status Change
                                        Notify (\_PR.CPU7, 0x80) // Status Change
                                    }

                                    If (LEqual (TCNT, 0x04))
                                    {
                                        Notify (\_PR.CPU0, 0x80) // Status Change
                                        Notify (\_PR.CPU1, 0x80) // Status Change
                                        Notify (\_PR.CPU2, 0x80) // Status Change
                                        Notify (\_PR.CPU3, 0x80) // Status Change
                                    }

                                    If (LEqual (TCNT, 0x02))
                                    {
                                        Notify (\_PR.CPU0, 0x80) // Status Change
                                        Notify (\_PR.CPU1, 0x80) // Status Change
                                    }
                                    Else
                                    {
                                        Notify (\_PR.CPU0, 0x80) // Status Change
                                    }

                                    Return (Zero)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x23))
                                    {
                                        Return (\_PR.CPU0._PPC) /* External reference */
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x2A))
                                        {
                                            CreateByteField (Arg3, Zero, QUTP)
                                            CreateBitField (Arg3, 0x08, GPUT)
                                            CreateBitField (Arg3, 0x09, CPUT)
                                            CreateBitField (Arg3, 0x0A, FANS)
                                            CreateBitField (Arg3, 0x0B, SKIN)
                                            CreateBitField (Arg3, 0x0C, CENG)
                                            CreateBitField (Arg3, 0x0D, SEN1)
                                            CreateBitField (Arg3, 0x0E, SEN2)
                                            Name (GB42, Buffer (0x24)
                                            {
                                                 0x00
                                            })
                                            CreateDWordField (GB42, Zero, STSV)
                                            CreateDWordField (GB42, 0x04, VERS)
                                            CreateDWordField (GB42, 0x08, TGPU)
                                            CreateDWordField (GB42, 0x0C, PDTS)
                                            CreateDWordField (GB42, 0x10, SFAN)
                                            CreateDWordField (GB42, 0x14, SKNT)
                                            CreateDWordField (GB42, 0x18, CPUE)
                                            CreateDWordField (GB42, 0x1C, TMP1)
                                            CreateDWordField (GB42, 0x20, TMP2)
                                            Store (0x00010000, VERS) /* \_SB_.PCI0.RP05.PEGP.GPS_.VERS */
                                            While (One)
                                            {
                                                Store (QUTP, _T_1) /* \_SB_.PCI0.RP05.PEGP.GPS_._T_1 */
                                                If (LEqual (_T_1, Zero))
                                                {
                                                    If (CPUT)
                                                    {
                                                        Store (0x0200, STSV) /* \_SB_.PCI0.RP05.PEGP.GPS_.STSV */
                                                        Or (STSV, QUTP, STSV) /* \_SB_.PCI0.RP05.PEGP.GPS_.STSV */
                                                        Store (\_SB.PCI0.LPCB.EC0.CTMP, PDTS) /* \_SB_.PCI0.RP05.PEGP.GPS_.PDTS */
                                                    }

                                                    Return (GB42) /* \_SB_.PCI0.RP05.PEGP.GPS_.GB42 */
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_1, One))
                                                    {
                                                        Store (0x0300, STSV) /* \_SB_.PCI0.RP05.PEGP.GPS_.STSV */
                                                        Or (STSV, QUTP, STSV) /* \_SB_.PCI0.RP05.PEGP.GPS_.STSV */
                                                        Store (0x03E8, PDTS) /* \_SB_.PCI0.RP05.PEGP.GPS_.PDTS */
                                                        Return (GB42) /* \_SB_.PCI0.RP05.PEGP.GPS_.GB42 */
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_1, 0x02))
                                                        {
                                                            Store (0x0102, STSV) /* \_SB_.PCI0.RP05.PEGP.GPS_.STSV */
                                                            Store (0x5C, TGPU) /* \_SB_.PCI0.RP05.PEGP.GPS_.TGPU */
                                                            Store (Zero, PDTS) /* \_SB_.PCI0.RP05.PEGP.GPS_.PDTS */
                                                            Store (Zero, SFAN) /* \_SB_.PCI0.RP05.PEGP.GPS_.SFAN */
                                                            Store (Zero, SKNT) /* \_SB_.PCI0.RP05.PEGP.GPS_.SKNT */
                                                            Store (Zero, CPUE) /* \_SB_.PCI0.RP05.PEGP.GPS_.CPUE */
                                                            Store (Zero, TMP1) /* \_SB_.PCI0.RP05.PEGP.GPS_.TMP1 */
                                                            Store (Zero, TMP2) /* \_SB_.PCI0.RP05.PEGP.GPS_.TMP2 */
                                                            Return (GB42) /* \_SB_.PCI0.RP05.PEGP.GPS_.GB42 */
                                                        }
                                                    }
                                                }

                                                Break
                                            }
                                        }
                                        Else
                                        {
                                            Return (0x80000002)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Break
            }
        }
    }

    Scope (\_SB.PCI0.RP05.PEGP)
    {
        OperationRegion (PCNV, SystemMemory, \_SB.PCI0.RP05.PEGP.EBAS, 0x1000)
        Field (PCNV, AnyAcc, NoLock, Preserve)
        {
            Offset (0x488), 
                ,   25, 
            MLTF,   1
        }

        Name (OMPR, 0x02)
        Name (DGOS, Zero)
        Name (CTOI, One)
        Name (NTOI, One)
        Name (MADL, Zero)
        Name (MSTE, Zero)
        Method (VSTS, 0, NotSerialized)
        {
            If (LNotEqual (\_SB.PCI0.IGPU.CPDL, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CPDL, And (DID1, 0xFFFF)))
                {
                    Or (GATD, 0x02, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CPDL, And (DID2, 0xFFFF)))
                    {
                        Or (GATD, One, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CPL2, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CPL2, And (DID1, 0xFFFF)))
                {
                    Or (GATD, 0x02, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CPL2, And (DID2, 0xFFFF)))
                    {
                        Or (GATD, One, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CPL3, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CPL3, And (DID1, 0xFFFF)))
                {
                    Or (GATD, 0x02, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CPL3, And (DID2, 0xFFFF)))
                    {
                        Or (GATD, One, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CPL4, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CPL4, And (DID1, 0xFFFF)))
                {
                    Or (GATD, 0x02, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CPL4, And (DID2, 0xFFFF)))
                    {
                        Or (GATD, One, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CPL5, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CPL5, And (DID1, 0xFFFF)))
                {
                    Or (GATD, 0x02, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CPL5, And (DID2, 0xFFFF)))
                    {
                        Or (GATD, One, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CPL6, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CPL6, And (DID1, 0xFFFF)))
                {
                    Or (GATD, 0x02, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CPL6, And (DID2, 0xFFFF)))
                    {
                        Or (GATD, One, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CPL7, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CPL7, And (DID1, 0xFFFF)))
                {
                    Or (GATD, 0x02, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CPL7, And (DID2, 0xFFFF)))
                    {
                        Or (GATD, One, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CPL8, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CPL8, And (DID1, 0xFFFF)))
                {
                    Or (GATD, 0x02, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CPL8, And (DID2, 0xFFFF)))
                    {
                        Or (GATD, One, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CADL, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CADL, And (DID1, 0xFFFF)))
                {
                    Or (GACD, 0x02, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CADL, And (DID2, 0xFFFF)))
                    {
                        Or (GACD, One, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CAL2, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CAL2, And (DID1, 0xFFFF)))
                {
                    Or (GACD, 0x02, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CAL2, And (DID2, 0xFFFF)))
                    {
                        Or (GACD, One, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CAL3, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CAL3, And (DID1, 0xFFFF)))
                {
                    Or (GACD, 0x02, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CAL3, And (DID2, 0xFFFF)))
                    {
                        Or (GACD, One, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CAL4, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CAL4, And (DID1, 0xFFFF)))
                {
                    Or (GACD, 0x02, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CAL4, And (DID2, 0xFFFF)))
                    {
                        Or (GACD, One, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CAL5, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CAL5, And (DID1, 0xFFFF)))
                {
                    Or (GACD, 0x02, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CAL5, And (DID2, 0xFFFF)))
                    {
                        Or (GACD, One, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CAL6, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CAL6, And (DID1, 0xFFFF)))
                {
                    Or (GACD, 0x02, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CAL6, And (DID2, 0xFFFF)))
                    {
                        Or (GACD, One, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CAL7, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CAL7, And (DID1, 0xFFFF)))
                {
                    Or (GACD, 0x02, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CAL7, And (DID2, 0xFFFF)))
                    {
                        Or (GACD, One, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.IGPU.CAL8, Zero))
            {
                If (LEqual (\_SB.PCI0.IGPU.CAL8, And (DID1, 0xFFFF)))
                {
                    Or (GACD, 0x02, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                }
                Else
                {
                    If (LEqual (\_SB.PCI0.IGPU.CAL8, And (DID2, 0xFFFF)))
                    {
                        Or (GACD, One, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
                    }
                }
            }

            Store (GATD, \_SB.PCI0.RP05.PEGP.MADL)
            Store (GACD, \_SB.PCI0.RP05.PEGP.MSTE)
            Store (Zero, GATD) /* \_SB_.PCI0.RP05.PEGP.GATD */
            Store (Zero, GACD) /* \_SB_.PCI0.RP05.PEGP.GACD */
        }

        Method (GETD, 2, Serialized)
        {
            Name (_T_5, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            VSTS ()
            Or (\_SB.PCI0.RP05.PEGP.MADL, Arg0, \_SB.PCI0.RP05.PEGP.MADL)
            Or (\_SB.PCI0.RP05.PEGP.MSTE, Arg1, \_SB.PCI0.RP05.PEGP.MSTE)
            While (One)
            {
                Store (ToInteger (\_SB.PCI0.RP05.PEGP.MADL), _T_0) /* \_SB_.PCI0.RP05.PEGP.GETD._T_0 */
                If (LEqual (_T_0, 0x07))
                {
                    While (One)
                    {
                        Store (ToInteger (\_SB.PCI0.RP05.PEGP.MSTE), _T_1) /* \_SB_.PCI0.RP05.PEGP.GETD._T_1 */
                        If (LEqual (_T_1, One))
                        {
                            Store (One, \_SB.PCI0.RP05.PEGP.CTOI)
                            Store (0x02, \_SB.PCI0.RP05.PEGP.NTOI)
                        }
                        Else
                        {
                            If (LEqual (_T_1, 0x02))
                            {
                                Store (0x02, \_SB.PCI0.RP05.PEGP.CTOI)
                                Store (0x03, \_SB.PCI0.RP05.PEGP.NTOI)
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x04))
                                {
                                    Store (0x03, \_SB.PCI0.RP05.PEGP.CTOI)
                                    Store (0x04, \_SB.PCI0.RP05.PEGP.NTOI)
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x03))
                                    {
                                        Store (0x04, \_SB.PCI0.RP05.PEGP.CTOI)
                                        Store (0x05, \_SB.PCI0.RP05.PEGP.NTOI)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_1, 0x05))
                                        {
                                            Store (0x05, \_SB.PCI0.RP05.PEGP.CTOI)
                                            Store (0x06, \_SB.PCI0.RP05.PEGP.NTOI)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_1, 0x06))
                                            {
                                                Store (0x06, \_SB.PCI0.RP05.PEGP.CTOI)
                                                Store (One, \_SB.PCI0.RP05.PEGP.NTOI)
                                            }
                                            Else
                                            {
                                                Store (One, \_SB.PCI0.RP05.PEGP.CTOI)
                                                Store (One, \_SB.PCI0.RP05.PEGP.NTOI)
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Break
                    }
                }
                Else
                {
                    If (LEqual (_T_0, 0x06))
                    {
                        While (One)
                        {
                            Store (ToInteger (\_SB.PCI0.RP05.PEGP.MSTE), _T_2) /* \_SB_.PCI0.RP05.PEGP.GETD._T_2 */
                            If (LEqual (_T_2, 0x02))
                            {
                                Store (0x02, \_SB.PCI0.RP05.PEGP.CTOI)
                                Store (0x03, \_SB.PCI0.RP05.PEGP.NTOI)
                            }
                            Else
                            {
                                If (LEqual (_T_2, 0x04))
                                {
                                    Store (0x03, \_SB.PCI0.RP05.PEGP.CTOI)
                                    Store (0x06, \_SB.PCI0.RP05.PEGP.NTOI)
                                }
                                Else
                                {
                                    If (LEqual (_T_2, 0x06))
                                    {
                                        Store (0x06, \_SB.PCI0.RP05.PEGP.CTOI)
                                        Store (0x02, \_SB.PCI0.RP05.PEGP.NTOI)
                                    }
                                    Else
                                    {
                                        Store (0x02, \_SB.PCI0.RP05.PEGP.CTOI)
                                        Store (0x02, \_SB.PCI0.RP05.PEGP.NTOI)
                                    }
                                }
                            }

                            Break
                        }
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x05))
                        {
                            While (One)
                            {
                                Store (ToInteger (\_SB.PCI0.RP05.PEGP.MSTE), _T_3) /* \_SB_.PCI0.RP05.PEGP.GETD._T_3 */
                                If (LEqual (_T_3, One))
                                {
                                    Store (One, \_SB.PCI0.RP05.PEGP.CTOI)
                                    Store (0x03, \_SB.PCI0.RP05.PEGP.NTOI)
                                }
                                Else
                                {
                                    If (LEqual (_T_3, 0x04))
                                    {
                                        Store (0x03, \_SB.PCI0.RP05.PEGP.CTOI)
                                        Store (0x05, \_SB.PCI0.RP05.PEGP.NTOI)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_3, 0x05))
                                        {
                                            Store (0x05, \_SB.PCI0.RP05.PEGP.CTOI)
                                            Store (One, \_SB.PCI0.RP05.PEGP.NTOI)
                                        }
                                        Else
                                        {
                                            Store (One, \_SB.PCI0.RP05.PEGP.CTOI)
                                            Store (One, \_SB.PCI0.RP05.PEGP.NTOI)
                                        }
                                    }
                                }

                                Break
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x03))
                            {
                                While (One)
                                {
                                    Store (ToInteger (\_SB.PCI0.RP05.PEGP.MSTE), _T_4) /* \_SB_.PCI0.RP05.PEGP.GETD._T_4 */
                                    If (LEqual (_T_4, One))
                                    {
                                        Store (One, \_SB.PCI0.RP05.PEGP.CTOI)
                                        Store (0x02, \_SB.PCI0.RP05.PEGP.NTOI)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_4, 0x02))
                                        {
                                            Store (0x02, \_SB.PCI0.RP05.PEGP.CTOI)
                                            Store (0x04, \_SB.PCI0.RP05.PEGP.NTOI)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_4, 0x03))
                                            {
                                                Store (0x04, \_SB.PCI0.RP05.PEGP.CTOI)
                                                Store (One, \_SB.PCI0.RP05.PEGP.NTOI)
                                            }
                                            Else
                                            {
                                                Store (One, \_SB.PCI0.RP05.PEGP.CTOI)
                                                Store (One, \_SB.PCI0.RP05.PEGP.NTOI)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                While (One)
                                {
                                    Store (ToInteger (\_SB.PCI0.RP05.PEGP.MSTE), _T_5) /* \_SB_.PCI0.RP05.PEGP.GETD._T_5 */
                                    If (LEqual (_T_5, One))
                                    {
                                        Store (One, \_SB.PCI0.RP05.PEGP.CTOI)
                                        Store (One, \_SB.PCI0.RP05.PEGP.NTOI)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_5, 0x02))
                                        {
                                            Store (0x02, \_SB.PCI0.RP05.PEGP.CTOI)
                                            Store (0x02, \_SB.PCI0.RP05.PEGP.NTOI)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_5, 0x04))
                                            {
                                                Store (0x03, \_SB.PCI0.RP05.PEGP.CTOI)
                                                Store (0x03, \_SB.PCI0.RP05.PEGP.NTOI)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }
                        }
                    }
                }

                Break
            }
        }

        Method (NVOP, 4, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000002)
            }

            While (One)
            {
                Store (ToInteger (Arg2), _T_0) /* \_SB_.PCI0.RP05.PEGP.NVOP._T_0 */
                If (LEqual (_T_0, Zero))
                {
                    Store (Buffer (0x04)
                        {
                             0x61, 0x00, 0x01, 0x0C
                        }, Local0)
                    Return (Local0)
                }
                Else
                {
                    If (LEqual (_T_0, 0x05))
                    {
                        Name (TMP5, Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00
                        })
                        CreateField (TMP5, Zero, 0x04, DAVF)
                        CreateField (TMP5, 0x04, One, LIDF)
                        CreateField (TMP5, 0x08, 0x06, TOGN)
                        CreateField (Arg3, 0x1F, One, NCSM)
                        CreateField (Arg3, 0x19, 0x05, NCSN)
                        CreateField (Arg3, 0x18, One, DIMK)
                        CreateField (Arg3, 0x0C, 0x0C, ACTD)
                        CreateField (Arg3, Zero, 0x0C, ATTD)
                        If (ToInteger (NCSM))
                        {
                            Store (ToInteger (NCSN), TOGN) /* \_SB_.PCI0.RP05.PEGP.NVOP.TOGN */
                        }
                        Else
                        {
                            If (ToInteger (DIMK))
                            {
                                GETD (ToInteger (ATTD), ToInteger (ACTD))
                                Store (\_SB.PCI0.RP05.PEGP.NTOI, TOGN) /* \_SB_.PCI0.RP05.PEGP.NVOP.TOGN */
                                Store (One, DAVF) /* \_SB_.PCI0.RP05.PEGP.NVOP.DAVF */
                            }
                        }

                        Return (TMP5) /* \_SB_.PCI0.RP05.PEGP.NVOP.TMP5 */
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x06))
                        {
                            Name (TMP6, Package (0x0F)
                            {
                                Ones, 
                                0x2C, 
                                Ones, 
                                0x2C, 
                                Ones, 
                                0x2C, 
                                Ones, 
                                Ones, 
                                0x2C, 
                                Ones, 
                                Ones, 
                                0x2C, 
                                Ones, 
                                Ones, 
                                0x2C
                            })
                            Store (DID2, Index (TMP6, Zero))
                            Store (DID1, Index (TMP6, 0x02))
                            Store (DID4, Index (TMP6, 0x04))
                            Store (DID2, Index (TMP6, 0x06))
                            Store (DID1, Index (TMP6, 0x07))
                            Store (DID2, Index (TMP6, 0x09))
                            Store (DID4, Index (TMP6, 0x0A))
                            Store (DID1, Index (TMP6, 0x0C))
                            Store (DID4, Index (TMP6, 0x0D))
                            Return (TMP6) /* \_SB_.PCI0.RP05.PEGP.NVOP.TMP6 */
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x10))
                            {
                                Return (\_SB.PCI0.RP05.PEGP.GOBT (Arg3))
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x1A))
                                {
                                    CreateField (Arg3, 0x18, 0x02, OPCE)
                                    CreateField (Arg3, Zero, One, FLCH)
                                    If (ToInteger (FLCH))
                                    {
                                        Store (ToInteger (OPCE), OMPR) /* \_SB_.PCI0.RP05.PEGP.OMPR */
                                    }

                                    Name (RBUF, Buffer (0x04)
                                    {
                                         0x00, 0x00, 0x00, 0x00
                                    })
                                    CreateField (RBUF, Zero, One, OPEN)
                                    CreateField (RBUF, 0x03, 0x02, CGCS)
                                    CreateField (RBUF, 0x06, One, SHPC)
                                    CreateField (RBUF, 0x18, 0x03, DGPC)
                                    CreateField (RBUF, 0x1B, 0x02, HDAC)
                                    Store (One, OPEN) /* \_SB_.PCI0.RP05.PEGP.NVOP.OPEN */
                                    Store (One, SHPC) /* \_SB_.PCI0.RP05.PEGP.NVOP.SHPC */
                                    Store (0x02, HDAC) /* \_SB_.PCI0.RP05.PEGP.NVOP.HDAC */
                                    Store (One, DGPC) /* \_SB_.PCI0.RP05.PEGP.NVOP.DGPC */
                                    If (\_SB.PCI0.RP05.PEGP.GSTA ())
                                    {
                                        Store (0x03, CGCS) /* \_SB_.PCI0.RP05.PEGP.NVOP.CGCS */
                                    }
                                    Else
                                    {
                                        Store (Zero, CGCS) /* \_SB_.PCI0.RP05.PEGP.NVOP.CGCS */
                                    }

                                    Return (RBUF) /* \_SB_.PCI0.RP05.PEGP.NVOP.RBUF */
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x1B))
                                    {
                                        Store (Arg3, Local0)
                                        CreateField (Local0, Zero, One, OPFL)
                                        CreateField (Local0, One, One, OPVL)
                                        If (ToInteger (OPVL))
                                        {
                                            Store (Zero, OPTF) /* External reference */
                                            If (ToInteger (OPFL))
                                            {
                                                Store (One, OPTF) /* External reference */
                                            }
                                        }

                                        Store (OPTF, Local0)
                                        Return (Local0)
                                    }
                                    Else
                                    {
                                        Return (0x80000002)
                                    }
                                }
                            }
                        }
                    }
                }

                Break
            }
        }

        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE2)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0018 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0020 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0028 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0030 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0038 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0040 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0048 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0050 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0058 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0060 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0068 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0070 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0078 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0080 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0088 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0090 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0098 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D0 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D8 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00E0 */   0x00, 0x00
            })
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                Return (OPVK) /* \_SB_.PCI0.RP05.PEGP.GOBT.OPVK */
            }

            Return (Zero)
        }

        Method (GSTA, 0, Serialized)
        {
            If (LEqual (SGPI (PWOK), One))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (DGOS)
            {
                \_SB.PCI0.RP05.PEGP._ON ()
                Store (Zero, DGOS) /* \_SB_.PCI0.RP05.PEGP.DGOS */
                Store (Zero, MLTF) /* \_SB_.PCI0.RP05.PEGP.MLTF */
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LEqual (\_SB.PCI0.RP05.PEGP.OMPR, 0x03))
            {
                \_SB.PCI0.RP05.PEGP._OFF ()
                Store (One, DGOS) /* \_SB_.PCI0.RP05.PEGP.DGOS */
                Store (0x02, \_SB.PCI0.RP05.PEGP.OMPR)
            }
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            Name (VROM, Buffer (Local1)
            {
                 0x00
            })
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Arg0, RVBS))
            {
                Return (VROM) /* \_SB_.PCI0.RP05.PEGP._ROM.VROM */
            }

            Add (Arg0, Arg1, Local2)
            If (LGreater (Local2, RVBS))
            {
                Subtract (RVBS, Local0, Local1)
            }

            If (LLess (Local0, 0x8000))
            {
                Mid (VBS1, Local0, Local1, VROM) /* \_SB_.PCI0.RP05.PEGP._ROM.VROM */
            }
            Else
            {
                Subtract (Local0, 0x8000, Local0)
                If (LLess (Local0, 0x8000))
                {
                    Mid (VBS2, Local0, Local1, VROM) /* \_SB_.PCI0.RP05.PEGP._ROM.VROM */
                }
                Else
                {
                    Subtract (Local0, 0x8000, Local0)
                    If (LLess (Local0, 0x8000))
                    {
                        Mid (VBS3, Local0, Local1, VROM) /* \_SB_.PCI0.RP05.PEGP._ROM.VROM */
                    }
                    Else
                    {
                        Subtract (Local0, 0x8000, Local0)
                        If (LLess (Local0, 0x8000))
                        {
                            Mid (VBS4, Local0, Local1, VROM) /* \_SB_.PCI0.RP05.PEGP._ROM.VROM */
                        }
                    }
                }
            }

            Return (VROM) /* \_SB_.PCI0.RP05.PEGP._ROM.VROM */
        }

        Method (MXMX, 1, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                \_SB.PCI0.RP05.PEGP.SGPO (ESEL, One)
                P8XH (One, 0x99, One)
                P8XH (Zero, Zero, One)
                Return (One)
            }

            If (LEqual (Arg0, One))
            {
                P8XH (One, 0x99, One)
                P8XH (Zero, One, One)
                Return (One)
            }

            If (LEqual (Arg0, 0x02))
            {
                P8XH (One, 0x99, One)
                P8XH (Zero, 0x02, One)
                Return (\_SB.PCI0.RP05.PEGP.SGPI (ESEL))
            }

            Return (Zero)
        }

        Method (MXDS, 1, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (\_SB.PCI0.RP05.PEGP.SGPI (DSEL))
            }

            If (LEqual (Arg0, One))
            {
                \_SB.PCI0.RP05.PEGP.SGPO (DSEL, One)
            }

            Return (Zero)
        }

        
    }

    If (\_OSI ("Windows 2013"))
    {
        Scope (\_SB.PCI0.RP05)
        {
            Name (WKEN, Zero)
            OperationRegion (PCNV, SystemMemory, \_SB.PCI0.RP05.PEGP.EBAS, 0x1000)
            Field (PCNV, AnyAcc, NoLock, Preserve)
            {
                Offset (0x488), 
                    ,   25, 
                MLTF,   1
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                NVP3
            })
            Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
            {
                NVP2
            })
            Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
            {
                NVP3
            })
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (And (\_SB.OSCO, 0x04))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    Store (Zero, WKEN) /* \_SB_.PCI0.RP05.WKEN */
                }
                Else
                {
                    If (LAnd (Arg0, Arg2))
                    {
                        Store (One, WKEN) /* \_SB_.PCI0.RP05.WKEN */
                    }
                    Else
                    {
                        Store (Zero, WKEN) /* \_SB_.PCI0.RP05.WKEN */
                    }
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }
        }

        Name (MSD3, Zero)
        PowerResource (NVP3, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            OperationRegion (PEGB, SystemMemory, \_SB.PCI0.RP05.PEGP.DBPA, 0x0100)
            Field (PEGB, ByteAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                PCMR,   8, 
                Offset (0xA4), 
                PMST,   2
            }

            OperationRegion (DGRS, SystemMemory, \_SB.PCI0.RP05.PEGP.EBAS, 0x50)
            Field (DGRS, DWordAcc, NoLock, Preserve)
            {
                DDID,   16, 
                Offset (0x40), 
                SSSV,   32
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (MSD3, 0x03))
                {
                    Store (One, _STA) /* \NVP3._STA */
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.HLRS, One)
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.PWEN, One)
                    Sleep (\_SB.PCI0.RP05.PEGP.APDT)
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.VRON, One)
                    Sleep (\_SB.PCI0.RP05.PEGP.AVDT)
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.HLRS, Zero)
                    Sleep (\_SB.PCI0.RP05.PEGP.IHDT)
                    Store (Zero, \_SB.PCI0.RP05.LNKD)
                    While (LLess (\_SB.PCI0.RP05.LNKS, 0x07))
                    {
                        Sleep (One)
                    }

                    Store (0x07, PCMR) /* \NVP3.PCMR */
                    Store (Zero, PMST) /* \NVP3.PMST */
                    While (LEqual (DDID, 0xFFFF))
                    {
                        Sleep (One)
                    }

                    Store (ShiftLeft (\_SB.VSSD, 0x10), Local0)
                    Or (0x1025, Local0, SSSV) /* \NVP3.SSSV */
                    Store (Zero, \_SB.PCI0.RP05.MLTF)
                    Store (Zero, MSD3) /* \MSD3 */
                    Store (One, \_SB.PCI0.LPCB.EC0.VGAF) /* External reference */
                    \_SB.PCI0.LPCB.EC0.SCTB ()
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (MSD3, Zero))
                {
                    Store (Zero, \_SB.PCI0.LPCB.EC0.VGAF) /* External reference */
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.HLRS, One)
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.VRON, Zero)
                    \_SB.PCI0.RP05.PEGP.SGPO (\_SB.PCI0.RP05.PEGP.PWEN, Zero)
                    Store (Zero, _STA) /* \NVP3._STA */
                    Store (0x03, MSD3) /* \MSD3 */
                    \_SB.PCI0.LPCB.EC0.SCTB ()
                }
            }
        }

        PowerResource (NVP2, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                Store (One, _STA) /* \NVP2._STA */
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                Store (One, _STA) /* \NVP2._STA */
            }
        }
    }
}

