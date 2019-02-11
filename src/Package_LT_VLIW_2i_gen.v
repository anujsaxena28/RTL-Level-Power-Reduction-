//----------------------------------------------------------------------------//
//                                                                            //
//  This confidential and proprietary software may be used only               //
//  as authorized by a licensing agreement from CoWare, Inc.                  //
//  In the event of publication, the following notice is applicable:          //
//                                                                            //
//      (c) COPYRIGHT 2001-2007 COWARE, INC.                                  //
//             ALL RIGHTS RESERVED                                            //
//                                                                            //
//  The entire notice above must be reproduced on all authorized copies.      //
//                                                                            //
//----------------------------------------------------------------------------//
//
//  This VERILOG file was generated automatically by
//  CoWare Processor Generator!
//  Version 2006.1.1 Linux -- April, 2007
//  LISA - Language for Instruction Set Architectures
//
//      FileName: Package_LT_VLIW_2i_gen.v
//      Time:     16:53:54
//      Date:     Tue Aug 26 2008
//----------------------------------------------------------------------------//



`timescale 1 ns/1 ps


// Clock type
`define T_clk

// Reset type
`define T_rst

// Pipeline Register Control Type
`define T_PIPE_REG_CTRL

// Datatypes derived from resource "tr_0_alu_out"
`define T_SIG_tr_0_alu_out                32
`define T_FLAG_SIG_tr_0_alu_out
`define T_DATABUS_tr_0_alu_out            32
`define T_FLAGBUS_tr_0_alu_out

// Datatypes derived from resource "PF_FE_tr_1_rs3"
`define T_PREG_PF_FE_tr_1_rs3             8
`define T_FLAG_PREG_PF_FE_tr_1_rs3
`define T_DATABUS_PF_FE_tr_1_rs3          8
`define T_FLAGBUS_PF_FE_tr_1_rs3

// Datatypes derived from resource "FE_DC_tr_0_offset"
`define T_PREG_FE_DC_tr_0_offset          32
`define T_FLAG_PREG_FE_DC_tr_0_offset
`define T_DATABUS_FE_DC_tr_0_offset       32
`define T_FLAGBUS_FE_DC_tr_0_offset

// Datatypes derived from resource "FE_DC_tr_1_op3"
`define T_PREG_FE_DC_tr_1_op3             32
`define T_FLAG_PREG_FE_DC_tr_1_op3
`define T_DATABUS_FE_DC_tr_1_op3          32
`define T_FLAGBUS_FE_DC_tr_1_op3

// Datatypes derived from resource "FE_DC_tr_0_rs3"
`define T_PREG_FE_DC_tr_0_rs3             8
`define T_FLAG_PREG_FE_DC_tr_0_rs3
`define T_DATABUS_FE_DC_tr_0_rs3          8
`define T_FLAGBUS_FE_DC_tr_0_rs3

// Datatypes derived from resource "DC_EX_tr_0_WBV"
`define T_PREG_DC_EX_tr_0_WBV             32
`define T_FLAG_PREG_DC_EX_tr_0_WBV
`define T_DATABUS_DC_EX_tr_0_WBV          32
`define T_FLAGBUS_DC_EX_tr_0_WBV

// Datatypes derived from resource "DC_EX_tr_1_address"
`define T_PREG_DC_EX_tr_1_address         32
`define T_FLAG_PREG_DC_EX_tr_1_address
`define T_DATABUS_DC_EX_tr_1_address      32
`define T_FLAGBUS_DC_EX_tr_1_address

// Datatypes derived from resource "DC_EX_tr_0_rs3"
`define T_PREG_DC_EX_tr_0_rs3             8
`define T_FLAG_PREG_DC_EX_tr_0_rs3
`define T_DATABUS_DC_EX_tr_0_rs3          8
`define T_FLAGBUS_DC_EX_tr_0_rs3

// Datatypes derived from resource "DC_EX_tr_1_rs2"
`define T_PREG_DC_EX_tr_1_rs2             8
`define T_FLAG_PREG_DC_EX_tr_1_rs2
`define T_DATABUS_DC_EX_tr_1_rs2          8
`define T_FLAGBUS_DC_EX_tr_1_rs2

// Datatypes derived from resource "EX_MEM_tr_1_rs3"
`define T_PREG_EX_MEM_tr_1_rs3            8
`define T_FLAG_PREG_EX_MEM_tr_1_rs3
`define T_DATABUS_EX_MEM_tr_1_rs3         8
`define T_FLAGBUS_EX_MEM_tr_1_rs3

// Datatypes derived from resource "EX_MEM_tr_0_rs2"
`define T_PREG_EX_MEM_tr_0_rs2            8
`define T_FLAG_PREG_EX_MEM_tr_0_rs2
`define T_DATABUS_EX_MEM_tr_0_rs2         8
`define T_FLAGBUS_EX_MEM_tr_0_rs2

// Datatypes derived from resource "MEM_WB_tr_0_offset"
`define T_PREG_MEM_WB_tr_0_offset         32
`define T_FLAG_PREG_MEM_WB_tr_0_offset
`define T_DATABUS_MEM_WB_tr_0_offset      32
`define T_FLAGBUS_MEM_WB_tr_0_offset

// Datatypes derived from resource "MEM_WB_tr_0_rs1"
`define T_PREG_MEM_WB_tr_0_rs1            8
`define T_FLAG_PREG_MEM_WB_tr_0_rs1
`define T_DATABUS_MEM_WB_tr_0_rs1         8
`define T_FLAGBUS_MEM_WB_tr_0_rs1

// Datatypes derived from resource "tr_0_req_rd_address"
`define T_SIG_tr_0_req_rd_address         32
`define T_FLAG_SIG_tr_0_req_rd_address
`define T_DATABUS_tr_0_req_rd_address     32
`define T_FLAGBUS_tr_0_req_rd_address

// Datatypes derived from resource "tr_1_alu_out"
`define T_SIG_tr_1_alu_out                32
`define T_FLAG_SIG_tr_1_alu_out
`define T_DATABUS_tr_1_alu_out            32
`define T_FLAGBUS_tr_1_alu_out

// Datatypes derived from resource "PF_FE_insn_0"
`define T_PREG_PF_FE_insn_0               32
`define T_FLAG_PREG_PF_FE_insn_0
`define T_DATABUS_PF_FE_insn_0            32
`define T_FLAGBUS_PF_FE_insn_0

// Datatypes derived from resource "FE_DC_pc"
`define T_PREG_FE_DC_pc                   32
`define T_FLAG_PREG_FE_DC_pc
`define T_DATABUS_FE_DC_pc                32
`define T_FLAGBUS_FE_DC_pc

// Datatypes derived from resource "FE_DC_tr_0_op1"
`define T_PREG_FE_DC_tr_0_op1             32
`define T_FLAG_PREG_FE_DC_tr_0_op1
`define T_DATABUS_FE_DC_tr_0_op1          32
`define T_FLAGBUS_FE_DC_tr_0_op1

// Datatypes derived from resource "DC_EX_pc"
`define T_PREG_DC_EX_pc                   32
`define T_FLAG_PREG_DC_EX_pc
`define T_DATABUS_DC_EX_pc                32
`define T_FLAGBUS_DC_EX_pc

// Datatypes derived from resource "DC_EX_tr_1_WBV"
`define T_PREG_DC_EX_tr_1_WBV             32
`define T_FLAG_PREG_DC_EX_tr_1_WBV
`define T_DATABUS_DC_EX_tr_1_WBV          32
`define T_FLAGBUS_DC_EX_tr_1_WBV

// Datatypes derived from resource "DC_EX_tr_1_rs3"
`define T_PREG_DC_EX_tr_1_rs3             8
`define T_FLAG_PREG_DC_EX_tr_1_rs3
`define T_DATABUS_DC_EX_tr_1_rs3          8
`define T_FLAGBUS_DC_EX_tr_1_rs3

// Datatypes derived from resource "EX_MEM_tr_0_rs3"
`define T_PREG_EX_MEM_tr_0_rs3            8
`define T_FLAG_PREG_EX_MEM_tr_0_rs3
`define T_DATABUS_EX_MEM_tr_0_rs3         8
`define T_FLAGBUS_EX_MEM_tr_0_rs3

// Datatypes derived from resource "MEM_WB_tr_0_address"
`define T_PREG_MEM_WB_tr_0_address        32
`define T_FLAG_PREG_MEM_WB_tr_0_address
`define T_DATABUS_MEM_WB_tr_0_address     32
`define T_FLAGBUS_MEM_WB_tr_0_address

// Datatypes derived from resource "MEM_WB_tr_0_rs2"
`define T_PREG_MEM_WB_tr_0_rs2            8
`define T_FLAG_PREG_MEM_WB_tr_0_rs2
`define T_DATABUS_MEM_WB_tr_0_rs2         8
`define T_FLAGBUS_MEM_WB_tr_0_rs2

// Datatypes derived from resource "MEM_WB_tr_1_rs1"
`define T_PREG_MEM_WB_tr_1_rs1            8
`define T_FLAG_PREG_MEM_WB_tr_1_rs1
`define T_DATABUS_MEM_WB_tr_1_rs1         8
`define T_FLAGBUS_MEM_WB_tr_1_rs1

// Datatypes derived from resource "IRQWAIT"
`define T_REG_IRQWAIT
`define T_FLAG_REG_IRQWAIT
`define T_DATABUS_IRQWAIT
`define T_FLAGBUS_IRQWAIT

// Datatypes derived from resource "PF_FE_tr_1_read_flag"
`define T_PREG_PF_FE_tr_1_read_flag       32
`define T_FLAG_PREG_PF_FE_tr_1_read_flag
`define T_DATABUS_PF_FE_tr_1_read_flag    32
`define T_FLAGBUS_PF_FE_tr_1_read_flag

// Datatypes derived from resource "PF_FE_insn_1"
`define T_PREG_PF_FE_insn_1               32
`define T_FLAG_PREG_PF_FE_insn_1
`define T_DATABUS_PF_FE_insn_1            32
`define T_FLAGBUS_PF_FE_insn_1

// Datatypes derived from resource "FE_DC_tr_0_op2"
`define T_PREG_FE_DC_tr_0_op2             32
`define T_FLAG_PREG_FE_DC_tr_0_op2
`define T_DATABUS_FE_DC_tr_0_op2          32
`define T_FLAGBUS_FE_DC_tr_0_op2

// Datatypes derived from resource "EX_MEM_tr_0_offset"
`define T_PREG_EX_MEM_tr_0_offset         32
`define T_FLAG_PREG_EX_MEM_tr_0_offset
`define T_DATABUS_EX_MEM_tr_0_offset      32
`define T_FLAGBUS_EX_MEM_tr_0_offset

// Datatypes derived from resource "MEM_WB_tr_1_address"
`define T_PREG_MEM_WB_tr_1_address        32
`define T_FLAG_PREG_MEM_WB_tr_1_address
`define T_DATABUS_MEM_WB_tr_1_address     32
`define T_FLAGBUS_MEM_WB_tr_1_address

// Datatypes derived from resource "MEM_WB_tr_0_rs3"
`define T_PREG_MEM_WB_tr_0_rs3            8
`define T_FLAG_PREG_MEM_WB_tr_0_rs3
`define T_DATABUS_MEM_WB_tr_0_rs3         8
`define T_FLAGBUS_MEM_WB_tr_0_rs3

// Datatypes derived from resource "MEM_WB_tr_1_rs2"
`define T_PREG_MEM_WB_tr_1_rs2            8
`define T_FLAG_PREG_MEM_WB_tr_1_rs2
`define T_DATABUS_MEM_WB_tr_1_rs2         8
`define T_FLAGBUS_MEM_WB_tr_1_rs2

// Datatypes derived from resource "branch_stall"
`define T_REG_branch_stall
`define T_FLAG_REG_branch_stall
`define T_DATABUS_branch_stall
`define T_FLAGBUS_branch_stall

// Datatypes derived from resource "BPC"
`define T_REG_BPC                         32
`define T_FLAG_REG_BPC
`define T_DATABUS_BPC                     32
`define T_FLAGBUS_BPC

// Datatypes derived from resource "tr_0_rw_hazard"
`define T_SIG_tr_0_rw_hazard
`define T_FLAG_SIG_tr_0_rw_hazard
`define T_DATABUS_tr_0_rw_hazard
`define T_FLAGBUS_tr_0_rw_hazard

// Datatypes derived from resource "PF_FE_pc"
`define T_PREG_PF_FE_pc                   32
`define T_FLAG_PREG_PF_FE_pc
`define T_DATABUS_PF_FE_pc                32
`define T_FLAGBUS_PF_FE_pc

// Datatypes derived from resource "PF_FE_tr_0_read_flag"
`define T_PREG_PF_FE_tr_0_read_flag       32
`define T_FLAG_PREG_PF_FE_tr_0_read_flag
`define T_DATABUS_PF_FE_tr_0_read_flag    32
`define T_FLAGBUS_PF_FE_tr_0_read_flag

// Datatypes derived from resource "PF_FE_pc_next"
`define T_PREG_PF_FE_pc_next              32
`define T_FLAG_PREG_PF_FE_pc_next
`define T_DATABUS_PF_FE_pc_next           32
`define T_FLAGBUS_PF_FE_pc_next

// Datatypes derived from resource "FE_DC_tr_1_WBV"
`define T_PREG_FE_DC_tr_1_WBV             32
`define T_FLAG_PREG_FE_DC_tr_1_WBV
`define T_DATABUS_FE_DC_tr_1_WBV          32
`define T_FLAGBUS_FE_DC_tr_1_WBV

// Datatypes derived from resource "FE_DC_tr_0_op3"
`define T_PREG_FE_DC_tr_0_op3             32
`define T_FLAG_PREG_FE_DC_tr_0_op3
`define T_DATABUS_FE_DC_tr_0_op3          32
`define T_FLAGBUS_FE_DC_tr_0_op3

// Datatypes derived from resource "FE_DC_pc_next"
`define T_PREG_FE_DC_pc_next              32
`define T_FLAG_PREG_FE_DC_pc_next
`define T_DATABUS_FE_DC_pc_next           32
`define T_FLAGBUS_FE_DC_pc_next

// Datatypes derived from resource "DC_EX_tr_1_offset"
`define T_PREG_DC_EX_tr_1_offset          32
`define T_FLAG_PREG_DC_EX_tr_1_offset
`define T_DATABUS_DC_EX_tr_1_offset       32
`define T_FLAGBUS_DC_EX_tr_1_offset

// Datatypes derived from resource "EX_MEM_tr_1_offset"
`define T_PREG_EX_MEM_tr_1_offset         32
`define T_FLAG_PREG_EX_MEM_tr_1_offset
`define T_DATABUS_EX_MEM_tr_1_offset      32
`define T_FLAGBUS_EX_MEM_tr_1_offset

// Datatypes derived from resource "MEM_WB_tr_1_rs3"
`define T_PREG_MEM_WB_tr_1_rs3            8
`define T_FLAG_PREG_MEM_WB_tr_1_rs3
`define T_DATABUS_MEM_WB_tr_1_rs3         8
`define T_FLAGBUS_MEM_WB_tr_1_rs3

// Datatypes derived from resource "tr_1_rw_hazard"
`define T_SIG_tr_1_rw_hazard
`define T_FLAG_SIG_tr_1_rw_hazard
`define T_DATABUS_tr_1_rw_hazard
`define T_FLAGBUS_tr_1_rw_hazard

// Datatypes derived from resource "PF_FE_tr_1_offset"
`define T_PREG_PF_FE_tr_1_offset          32
`define T_FLAG_PREG_PF_FE_tr_1_offset
`define T_DATABUS_PF_FE_tr_1_offset       32
`define T_FLAGBUS_PF_FE_tr_1_offset

// Datatypes derived from resource "DC_EX_tr_0_offset"
`define T_PREG_DC_EX_tr_0_offset          32
`define T_FLAG_PREG_DC_EX_tr_0_offset
`define T_DATABUS_DC_EX_tr_0_offset       32
`define T_FLAGBUS_DC_EX_tr_0_offset

// Datatypes derived from resource "EX_MEM_tr_1_address"
`define T_PREG_EX_MEM_tr_1_address        32
`define T_FLAG_PREG_EX_MEM_tr_1_address
`define T_DATABUS_EX_MEM_tr_1_address     32
`define T_FLAGBUS_EX_MEM_tr_1_address

// Datatypes derived from resource "ext_mem"
`define T_MEM_ext_mem                     32
`define T_ADDRESSBUS_ext_mem              29
`define T_DATABUS_ext_mem                 32
`define T_FLAGBUS_ext_mem

// Datatypes derived from resource "ext_bus"
`define T_ADDRESSBUS_ext_bus              32
`define T_DATABUS_ext_bus                 32
`define T_FLAGBUS_ext_bus

// Datatypes derived from resource "dbus_rd_flag"
`define T_REG_dbus_rd_flag
`define T_FLAG_REG_dbus_rd_flag
`define T_DATABUS_dbus_rd_flag
`define T_FLAGBUS_dbus_rd_flag

// Datatypes derived from resource "PC"
`define T_REG_PC                          32
`define T_FLAG_REG_PC
`define T_DATABUS_PC                      32
`define T_FLAGBUS_PC

// Datatypes derived from resource "PF_FE_tr_0_offset"
`define T_PREG_PF_FE_tr_0_offset          32
`define T_FLAG_PREG_PF_FE_tr_0_offset
`define T_DATABUS_PF_FE_tr_0_offset       32
`define T_FLAGBUS_PF_FE_tr_0_offset

// Datatypes derived from resource "EX_MEM_tr_0_address"
`define T_PREG_EX_MEM_tr_0_address        32
`define T_FLAG_PREG_EX_MEM_tr_0_address
`define T_DATABUS_EX_MEM_tr_0_address     32
`define T_FLAGBUS_EX_MEM_tr_0_address

// Datatypes derived from resource "MEM_WB_tr_1_read_flag"
`define T_PREG_MEM_WB_tr_1_read_flag      32
`define T_FLAG_PREG_MEM_WB_tr_1_read_flag
`define T_DATABUS_MEM_WB_tr_1_read_flag   32
`define T_FLAGBUS_MEM_WB_tr_1_read_flag

// Datatypes derived from resource "BUS_WRITE_VAL"
`define T_REG_BUS_WRITE_VAL               32
`define T_FLAG_REG_BUS_WRITE_VAL
`define T_DATABUS_BUS_WRITE_VAL           32
`define T_FLAGBUS_BUS_WRITE_VAL

// Datatypes derived from resource "dbus_busy"
`define T_REG_dbus_busy
`define T_FLAG_REG_dbus_busy
`define T_DATABUS_dbus_busy
`define T_FLAGBUS_dbus_busy

// Datatypes derived from resource "PF_FE_tr_0_op1"
`define T_PREG_PF_FE_tr_0_op1             32
`define T_FLAG_PREG_PF_FE_tr_0_op1
`define T_DATABUS_PF_FE_tr_0_op1          32
`define T_FLAGBUS_PF_FE_tr_0_op1

// Datatypes derived from resource "FE_DC_tr_0_WBV"
`define T_PREG_FE_DC_tr_0_WBV             32
`define T_FLAG_PREG_FE_DC_tr_0_WBV
`define T_DATABUS_FE_DC_tr_0_WBV          32
`define T_FLAGBUS_FE_DC_tr_0_WBV

// Datatypes derived from resource "DC_EX_tr_0_BPR"
`define T_PREG_DC_EX_tr_0_BPR             8
`define T_FLAG_PREG_DC_EX_tr_0_BPR
`define T_DATABUS_DC_EX_tr_0_BPR          8
`define T_FLAGBUS_DC_EX_tr_0_BPR

// Datatypes derived from resource "MEM_WB_tr_0_read_flag"
`define T_PREG_MEM_WB_tr_0_read_flag      32
`define T_FLAG_PREG_MEM_WB_tr_0_read_flag
`define T_DATABUS_MEM_WB_tr_0_read_flag   32
`define T_FLAGBUS_MEM_WB_tr_0_read_flag

// Datatypes derived from resource "IRQOUT"
`define T_PORT_IRQOUT
`define T_FLAG_PORT_IRQOUT
`define T_DATABUS_IRQOUT
`define T_FLAGBUS_IRQOUT

// Datatypes derived from resource "st_dbus_wr_stall"
`define T_REG_st_dbus_wr_stall
`define T_FLAG_REG_st_dbus_wr_stall
`define T_DATABUS_st_dbus_wr_stall
`define T_FLAGBUS_st_dbus_wr_stall

// Datatypes derived from resource "FPC"
`define T_REG_FPC                         32
`define T_FLAG_REG_FPC
`define T_DATABUS_FPC                     32
`define T_FLAGBUS_FPC

// Datatypes derived from resource "branch_address"
`define T_SIG_branch_address              32
`define T_FLAG_SIG_branch_address
`define T_DATABUS_branch_address          32
`define T_FLAGBUS_branch_address

// Datatypes derived from resource "PF_FE_tr_0_address"
`define T_PREG_PF_FE_tr_0_address         32
`define T_FLAG_PREG_PF_FE_tr_0_address
`define T_DATABUS_PF_FE_tr_0_address      32
`define T_FLAGBUS_PF_FE_tr_0_address

// Datatypes derived from resource "PF_FE_tr_0_op2"
`define T_PREG_PF_FE_tr_0_op2             32
`define T_FLAG_PREG_PF_FE_tr_0_op2
`define T_DATABUS_PF_FE_tr_0_op2          32
`define T_FLAGBUS_PF_FE_tr_0_op2

// Datatypes derived from resource "PF_FE_tr_1_op1"
`define T_PREG_PF_FE_tr_1_op1             32
`define T_FLAG_PREG_PF_FE_tr_1_op1
`define T_DATABUS_PF_FE_tr_1_op1          32
`define T_FLAGBUS_PF_FE_tr_1_op1

// Datatypes derived from resource "DC_EX_tr_1_BPR"
`define T_PREG_DC_EX_tr_1_BPR             8
`define T_FLAG_PREG_DC_EX_tr_1_BPR
`define T_DATABUS_DC_EX_tr_1_BPR          8
`define T_FLAGBUS_DC_EX_tr_1_BPR

// Datatypes derived from resource "DC_EX_insn_0"
`define T_PREG_DC_EX_insn_0               32
`define T_FLAG_PREG_DC_EX_insn_0
`define T_DATABUS_DC_EX_insn_0            32
`define T_FLAGBUS_DC_EX_insn_0

// Datatypes derived from resource "EX_MEM_insn_0"
`define T_PREG_EX_MEM_insn_0              32
`define T_FLAG_PREG_EX_MEM_insn_0
`define T_DATABUS_EX_MEM_insn_0           32
`define T_FLAGBUS_EX_MEM_insn_0

// Datatypes derived from resource "tr_0_shifter_in1"
`define T_SIG_tr_0_shifter_in1            32
`define T_FLAG_SIG_tr_0_shifter_in1
`define T_DATABUS_tr_0_shifter_in1        32
`define T_FLAGBUS_tr_0_shifter_in1

// Datatypes derived from resource "PF_FE_tr_1_address"
`define T_PREG_PF_FE_tr_1_address         32
`define T_FLAG_PREG_PF_FE_tr_1_address
`define T_DATABUS_PF_FE_tr_1_address      32
`define T_FLAGBUS_PF_FE_tr_1_address

// Datatypes derived from resource "PF_FE_tr_0_op3"
`define T_PREG_PF_FE_tr_0_op3             32
`define T_FLAG_PREG_PF_FE_tr_0_op3
`define T_DATABUS_PF_FE_tr_0_op3          32
`define T_FLAGBUS_PF_FE_tr_0_op3

// Datatypes derived from resource "PF_FE_tr_1_op2"
`define T_PREG_PF_FE_tr_1_op2             32
`define T_FLAG_PREG_PF_FE_tr_1_op2
`define T_DATABUS_PF_FE_tr_1_op2          32
`define T_FLAGBUS_PF_FE_tr_1_op2

// Datatypes derived from resource "FE_DC_tr_0_address"
`define T_PREG_FE_DC_tr_0_address         32
`define T_FLAG_PREG_FE_DC_tr_0_address
`define T_DATABUS_FE_DC_tr_0_address      32
`define T_FLAGBUS_FE_DC_tr_0_address

// Datatypes derived from resource "DC_EX_insn_1"
`define T_PREG_DC_EX_insn_1               32
`define T_FLAG_PREG_DC_EX_insn_1
`define T_DATABUS_DC_EX_insn_1            32
`define T_FLAGBUS_DC_EX_insn_1

// Datatypes derived from resource "EX_MEM_tr_1_op1"
`define T_PREG_EX_MEM_tr_1_op1            32
`define T_FLAG_PREG_EX_MEM_tr_1_op1
`define T_DATABUS_EX_MEM_tr_1_op1         32
`define T_FLAGBUS_EX_MEM_tr_1_op1

// Datatypes derived from resource "EX_MEM_insn_1"
`define T_PREG_EX_MEM_insn_1              32
`define T_FLAG_PREG_EX_MEM_insn_1
`define T_DATABUS_EX_MEM_insn_1           32
`define T_FLAGBUS_EX_MEM_insn_1

// Datatypes derived from resource "MEM_WB_pc"
`define T_PREG_MEM_WB_pc                  32
`define T_FLAG_PREG_MEM_WB_pc
`define T_DATABUS_MEM_WB_pc               32
`define T_FLAGBUS_MEM_WB_pc

// Datatypes derived from resource "MEM_WB_tr_0_WBV"
`define T_PREG_MEM_WB_tr_0_WBV            32
`define T_FLAG_PREG_MEM_WB_tr_0_WBV
`define T_DATABUS_MEM_WB_tr_0_WBV         32
`define T_FLAGBUS_MEM_WB_tr_0_WBV

// Datatypes derived from resource "IRQINBEFORE"
`define T_REG_IRQINBEFORE
`define T_FLAG_REG_IRQINBEFORE
`define T_DATABUS_IRQINBEFORE
`define T_FLAGBUS_IRQINBEFORE

// Datatypes derived from resource "fetch_pmem_saved"
`define T_REG_fetch_pmem_saved
`define T_FLAG_REG_fetch_pmem_saved
`define T_DATABUS_fetch_pmem_saved
`define T_FLAGBUS_fetch_pmem_saved

// Datatypes derived from resource "tr_0_shifter_in2"
`define T_SIG_tr_0_shifter_in2            32
`define T_FLAG_SIG_tr_0_shifter_in2
`define T_DATABUS_tr_0_shifter_in2        32
`define T_FLAGBUS_tr_0_shifter_in2

// Datatypes derived from resource "tr_1_shifter_in1"
`define T_SIG_tr_1_shifter_in1            32
`define T_FLAG_SIG_tr_1_shifter_in1
`define T_DATABUS_tr_1_shifter_in1        32
`define T_FLAGBUS_tr_1_shifter_in1

// Datatypes derived from resource "PF_FE_tr_1_op3"
`define T_PREG_PF_FE_tr_1_op3             32
`define T_FLAG_PREG_PF_FE_tr_1_op3
`define T_DATABUS_PF_FE_tr_1_op3          32
`define T_FLAGBUS_PF_FE_tr_1_op3

// Datatypes derived from resource "EX_MEM_tr_1_op2"
`define T_PREG_EX_MEM_tr_1_op2            32
`define T_FLAG_PREG_EX_MEM_tr_1_op2
`define T_DATABUS_EX_MEM_tr_1_op2         32
`define T_FLAGBUS_EX_MEM_tr_1_op2

// Datatypes derived from resource "EX_MEM_tr_0_op1"
`define T_PREG_EX_MEM_tr_0_op1            32
`define T_FLAG_PREG_EX_MEM_tr_0_op1
`define T_DATABUS_EX_MEM_tr_0_op1         32
`define T_FLAGBUS_EX_MEM_tr_0_op1

// Datatypes derived from resource "MEM_WB_tr_1_WBV"
`define T_PREG_MEM_WB_tr_1_WBV            32
`define T_FLAG_PREG_MEM_WB_tr_1_WBV
`define T_DATABUS_MEM_WB_tr_1_WBV         32
`define T_FLAGBUS_MEM_WB_tr_1_WBV

// Datatypes derived from resource "MEM_WB_tr_0_op1"
`define T_PREG_MEM_WB_tr_0_op1            32
`define T_FLAG_PREG_MEM_WB_tr_0_op1
`define T_DATABUS_MEM_WB_tr_0_op1         32
`define T_FLAGBUS_MEM_WB_tr_0_op1

// Datatypes derived from resource "IRQIN"
`define T_PORT_IRQIN
`define T_FLAG_PORT_IRQIN
`define T_DATABUS_IRQIN
`define T_FLAGBUS_IRQIN

// Datatypes derived from resource "tr_1_shifter_in2"
`define T_SIG_tr_1_shifter_in2            32
`define T_FLAG_SIG_tr_1_shifter_in2
`define T_DATABUS_tr_1_shifter_in2        32
`define T_FLAGBUS_tr_1_shifter_in2

// Datatypes derived from resource "tr_0_dc_src1"
`define T_SIG_tr_0_dc_src1                32
`define T_FLAG_SIG_tr_0_dc_src1
`define T_DATABUS_tr_0_dc_src1            32
`define T_FLAGBUS_tr_0_dc_src1

// Datatypes derived from resource "FE_DC_tr_0_read_flag"
`define T_PREG_FE_DC_tr_0_read_flag       32
`define T_FLAG_PREG_FE_DC_tr_0_read_flag
`define T_DATABUS_FE_DC_tr_0_read_flag    32
`define T_FLAGBUS_FE_DC_tr_0_read_flag

// Datatypes derived from resource "EX_MEM_tr_1_op3"
`define T_PREG_EX_MEM_tr_1_op3            32
`define T_FLAG_PREG_EX_MEM_tr_1_op3
`define T_DATABUS_EX_MEM_tr_1_op3         32
`define T_FLAGBUS_EX_MEM_tr_1_op3

// Datatypes derived from resource "EX_MEM_tr_0_op2"
`define T_PREG_EX_MEM_tr_0_op2            32
`define T_FLAG_PREG_EX_MEM_tr_0_op2
`define T_DATABUS_EX_MEM_tr_0_op2         32
`define T_FLAGBUS_EX_MEM_tr_0_op2

// Datatypes derived from resource "EX_MEM_pc_next"
`define T_PREG_EX_MEM_pc_next             32
`define T_FLAG_PREG_EX_MEM_pc_next
`define T_DATABUS_EX_MEM_pc_next          32
`define T_FLAGBUS_EX_MEM_pc_next

// Datatypes derived from resource "MEM_WB_tr_0_op2"
`define T_PREG_MEM_WB_tr_0_op2            32
`define T_FLAG_PREG_MEM_WB_tr_0_op2
`define T_DATABUS_MEM_WB_tr_0_op2         32
`define T_FLAGBUS_MEM_WB_tr_0_op2

// Datatypes derived from resource "MEM_WB_tr_1_op1"
`define T_PREG_MEM_WB_tr_1_op1            32
`define T_FLAG_PREG_MEM_WB_tr_1_op1
`define T_DATABUS_MEM_WB_tr_1_op1         32
`define T_FLAGBUS_MEM_WB_tr_1_op1

// Datatypes derived from resource "flush_insn"
`define T_REG_flush_insn
`define T_FLAG_REG_flush_insn
`define T_DATABUS_flush_insn
`define T_FLAGBUS_flush_insn

// Datatypes derived from resource "tr_1_store_op"
`define T_SIG_tr_1_store_op               32
`define T_FLAG_SIG_tr_1_store_op
`define T_DATABUS_tr_1_store_op           32
`define T_FLAGBUS_tr_1_store_op

// Datatypes derived from resource "tr_0_dc_src2"
`define T_SIG_tr_0_dc_src2                32
`define T_FLAG_SIG_tr_0_dc_src2
`define T_DATABUS_tr_0_dc_src2            32
`define T_FLAGBUS_tr_0_dc_src2

// Datatypes derived from resource "tr_1_dc_src1"
`define T_SIG_tr_1_dc_src1                32
`define T_FLAG_SIG_tr_1_dc_src1
`define T_DATABUS_tr_1_dc_src1            32
`define T_FLAGBUS_tr_1_dc_src1

// Datatypes derived from resource "FE_DC_insn_0"
`define T_PREG_FE_DC_insn_0               32
`define T_FLAG_PREG_FE_DC_insn_0
`define T_DATABUS_FE_DC_insn_0            32
`define T_FLAGBUS_FE_DC_insn_0

// Datatypes derived from resource "DC_EX_tr_0_op1"
`define T_PREG_DC_EX_tr_0_op1             32
`define T_FLAG_PREG_DC_EX_tr_0_op1
`define T_DATABUS_DC_EX_tr_0_op1          32
`define T_FLAGBUS_DC_EX_tr_0_op1

// Datatypes derived from resource "EX_MEM_tr_0_op3"
`define T_PREG_EX_MEM_tr_0_op3            32
`define T_FLAG_PREG_EX_MEM_tr_0_op3
`define T_DATABUS_EX_MEM_tr_0_op3         32
`define T_FLAGBUS_EX_MEM_tr_0_op3

// Datatypes derived from resource "MEM_WB_tr_0_op3"
`define T_PREG_MEM_WB_tr_0_op3            32
`define T_FLAG_PREG_MEM_WB_tr_0_op3
`define T_DATABUS_MEM_WB_tr_0_op3         32
`define T_FLAGBUS_MEM_WB_tr_0_op3

// Datatypes derived from resource "MEM_WB_tr_1_op2"
`define T_PREG_MEM_WB_tr_1_op2            32
`define T_FLAG_PREG_MEM_WB_tr_1_op2
`define T_DATABUS_MEM_WB_tr_1_op2         32
`define T_FLAGBUS_MEM_WB_tr_1_op2

// Datatypes derived from resource "MEM_WB_insn_0"
`define T_PREG_MEM_WB_insn_0              32
`define T_FLAG_PREG_MEM_WB_insn_0
`define T_DATABUS_MEM_WB_insn_0           32
`define T_FLAGBUS_MEM_WB_insn_0

// Datatypes derived from resource "fetch_pmem_save"
`define T_REG_fetch_pmem_save             64
`define T_FLAG_REG_fetch_pmem_save
`define T_DATABUS_fetch_pmem_save         64
`define T_FLAGBUS_fetch_pmem_save

// Datatypes derived from resource "tr_0_REQ_RD_RETRY"
`define T_REG_tr_0_REQ_RD_RETRY
`define T_FLAG_REG_tr_0_REQ_RD_RETRY
`define T_DATABUS_tr_0_REQ_RD_RETRY
`define T_FLAGBUS_tr_0_REQ_RD_RETRY

// Datatypes derived from resource "tr_0_store_op"
`define T_SIG_tr_0_store_op               32
`define T_FLAG_SIG_tr_0_store_op
`define T_DATABUS_tr_0_store_op           32
`define T_FLAGBUS_tr_0_store_op

// Datatypes derived from resource "tr_0_dc_src3"
`define T_SIG_tr_0_dc_src3                32
`define T_FLAG_SIG_tr_0_dc_src3
`define T_DATABUS_tr_0_dc_src3            32
`define T_FLAGBUS_tr_0_dc_src3

// Datatypes derived from resource "tr_1_dc_src2"
`define T_SIG_tr_1_dc_src2                32
`define T_FLAG_SIG_tr_1_dc_src2
`define T_DATABUS_tr_1_dc_src2            32
`define T_FLAGBUS_tr_1_dc_src2

// Datatypes derived from resource "tr_1_alu_in1"
`define T_SIG_tr_1_alu_in1                32
`define T_FLAG_SIG_tr_1_alu_in1
`define T_DATABUS_tr_1_alu_in1            32
`define T_FLAGBUS_tr_1_alu_in1

// Datatypes derived from resource "FE_DC_tr_1_BPR"
`define T_PREG_FE_DC_tr_1_BPR             8
`define T_FLAG_PREG_FE_DC_tr_1_BPR
`define T_DATABUS_FE_DC_tr_1_BPR          8
`define T_FLAGBUS_FE_DC_tr_1_BPR

// Datatypes derived from resource "FE_DC_tr_1_offset"
`define T_PREG_FE_DC_tr_1_offset          32
`define T_FLAG_PREG_FE_DC_tr_1_offset
`define T_DATABUS_FE_DC_tr_1_offset       32
`define T_FLAGBUS_FE_DC_tr_1_offset

// Datatypes derived from resource "FE_DC_tr_1_rs1"
`define T_PREG_FE_DC_tr_1_rs1             8
`define T_FLAG_PREG_FE_DC_tr_1_rs1
`define T_DATABUS_FE_DC_tr_1_rs1          8
`define T_FLAGBUS_FE_DC_tr_1_rs1

// Datatypes derived from resource "FE_DC_insn_1"
`define T_PREG_FE_DC_insn_1               32
`define T_FLAG_PREG_FE_DC_insn_1
`define T_DATABUS_FE_DC_insn_1            32
`define T_FLAGBUS_FE_DC_insn_1

// Datatypes derived from resource "DC_EX_tr_0_op2"
`define T_PREG_DC_EX_tr_0_op2             32
`define T_FLAG_PREG_DC_EX_tr_0_op2
`define T_DATABUS_DC_EX_tr_0_op2          32
`define T_FLAGBUS_DC_EX_tr_0_op2

// Datatypes derived from resource "DC_EX_tr_1_op1"
`define T_PREG_DC_EX_tr_1_op1             32
`define T_FLAG_PREG_DC_EX_tr_1_op1
`define T_DATABUS_DC_EX_tr_1_op1          32
`define T_FLAGBUS_DC_EX_tr_1_op1

// Datatypes derived from resource "MEM_WB_tr_0_BPR"
`define T_PREG_MEM_WB_tr_0_BPR            8
`define T_FLAG_PREG_MEM_WB_tr_0_BPR
`define T_DATABUS_MEM_WB_tr_0_BPR         8
`define T_FLAGBUS_MEM_WB_tr_0_BPR

// Datatypes derived from resource "MEM_WB_tr_1_op3"
`define T_PREG_MEM_WB_tr_1_op3            32
`define T_FLAG_PREG_MEM_WB_tr_1_op3
`define T_DATABUS_MEM_WB_tr_1_op3         32
`define T_FLAGBUS_MEM_WB_tr_1_op3

// Datatypes derived from resource "MEM_WB_insn_1"
`define T_PREG_MEM_WB_insn_1              32
`define T_FLAG_PREG_MEM_WB_insn_1
`define T_DATABUS_MEM_WB_insn_1           32
`define T_FLAGBUS_MEM_WB_insn_1

// Datatypes derived from resource "tr_1_REQ_RD_RETRY"
`define T_REG_tr_1_REQ_RD_RETRY
`define T_FLAG_REG_tr_1_REQ_RD_RETRY
`define T_DATABUS_tr_1_REQ_RD_RETRY
`define T_FLAGBUS_tr_1_REQ_RD_RETRY

// Datatypes derived from resource "tr_0_REQ_RD_ADDR"
`define T_REG_tr_0_REQ_RD_ADDR            32
`define T_FLAG_REG_tr_0_REQ_RD_ADDR
`define T_DATABUS_tr_0_REQ_RD_ADDR        32
`define T_FLAGBUS_tr_0_REQ_RD_ADDR

// Datatypes derived from resource "tr_0_shifter_out"
`define T_SIG_tr_0_shifter_out            32
`define T_FLAG_SIG_tr_0_shifter_out
`define T_DATABUS_tr_0_shifter_out        32
`define T_FLAGBUS_tr_0_shifter_out

// Datatypes derived from resource "tr_1_dc_src3"
`define T_SIG_tr_1_dc_src3                32
`define T_FLAG_SIG_tr_1_dc_src3
`define T_DATABUS_tr_1_dc_src3            32
`define T_FLAGBUS_tr_1_dc_src3

// Datatypes derived from resource "tr_1_alu_in2"
`define T_SIG_tr_1_alu_in2                32
`define T_FLAG_SIG_tr_1_alu_in2
`define T_DATABUS_tr_1_alu_in2            32
`define T_FLAGBUS_tr_1_alu_in2

// Datatypes derived from resource "tr_0_alu_in1"
`define T_SIG_tr_0_alu_in1                32
`define T_FLAG_SIG_tr_0_alu_in1
`define T_DATABUS_tr_0_alu_in1            32
`define T_FLAGBUS_tr_0_alu_in1

// Datatypes derived from resource "PF_FE_tr_0_BPR"
`define T_PREG_PF_FE_tr_0_BPR             8
`define T_FLAG_PREG_PF_FE_tr_0_BPR
`define T_DATABUS_PF_FE_tr_0_BPR          8
`define T_FLAGBUS_PF_FE_tr_0_BPR

// Datatypes derived from resource "FE_DC_tr_1_read_flag"
`define T_PREG_FE_DC_tr_1_read_flag       32
`define T_FLAG_PREG_FE_DC_tr_1_read_flag
`define T_DATABUS_FE_DC_tr_1_read_flag    32
`define T_FLAGBUS_FE_DC_tr_1_read_flag

// Datatypes derived from resource "FE_DC_tr_1_address"
`define T_PREG_FE_DC_tr_1_address         32
`define T_FLAG_PREG_FE_DC_tr_1_address
`define T_DATABUS_FE_DC_tr_1_address      32
`define T_FLAGBUS_FE_DC_tr_1_address

// Datatypes derived from resource "FE_DC_tr_1_rs2"
`define T_PREG_FE_DC_tr_1_rs2             8
`define T_FLAG_PREG_FE_DC_tr_1_rs2
`define T_DATABUS_FE_DC_tr_1_rs2          8
`define T_FLAGBUS_FE_DC_tr_1_rs2

// Datatypes derived from resource "DC_EX_tr_0_op3"
`define T_PREG_DC_EX_tr_0_op3             32
`define T_FLAG_PREG_DC_EX_tr_0_op3
`define T_DATABUS_DC_EX_tr_0_op3          32
`define T_FLAGBUS_DC_EX_tr_0_op3

// Datatypes derived from resource "DC_EX_tr_1_op2"
`define T_PREG_DC_EX_tr_1_op2             32
`define T_FLAG_PREG_DC_EX_tr_1_op2
`define T_DATABUS_DC_EX_tr_1_op2          32
`define T_FLAGBUS_DC_EX_tr_1_op2

// Datatypes derived from resource "EX_MEM_tr_0_read_flag"
`define T_PREG_EX_MEM_tr_0_read_flag      32
`define T_FLAG_PREG_EX_MEM_tr_0_read_flag
`define T_DATABUS_EX_MEM_tr_0_read_flag   32
`define T_FLAGBUS_EX_MEM_tr_0_read_flag

// Datatypes derived from resource "EX_MEM_tr_1_BPR"
`define T_PREG_EX_MEM_tr_1_BPR            8
`define T_FLAG_PREG_EX_MEM_tr_1_BPR
`define T_DATABUS_EX_MEM_tr_1_BPR         8
`define T_FLAGBUS_EX_MEM_tr_1_BPR

// Datatypes derived from resource "MEM_WB_tr_1_BPR"
`define T_PREG_MEM_WB_tr_1_BPR            8
`define T_FLAG_PREG_MEM_WB_tr_1_BPR
`define T_DATABUS_MEM_WB_tr_1_BPR         8
`define T_FLAGBUS_MEM_WB_tr_1_BPR

// Datatypes derived from resource "tr_1_REQ_RD_ADDR"
`define T_REG_tr_1_REQ_RD_ADDR            32
`define T_FLAG_REG_tr_1_REQ_RD_ADDR
`define T_DATABUS_tr_1_REQ_RD_ADDR        32
`define T_FLAGBUS_tr_1_REQ_RD_ADDR

// Datatypes derived from resource "tr_1_shifter_out"
`define T_SIG_tr_1_shifter_out            32
`define T_FLAG_SIG_tr_1_shifter_out
`define T_DATABUS_tr_1_shifter_out        32
`define T_FLAGBUS_tr_1_shifter_out

// Datatypes derived from resource "tr_1_alu_in3"
`define T_SIG_tr_1_alu_in3                32
`define T_FLAG_SIG_tr_1_alu_in3
`define T_DATABUS_tr_1_alu_in3            32
`define T_FLAGBUS_tr_1_alu_in3

// Datatypes derived from resource "tr_0_alu_in2"
`define T_SIG_tr_0_alu_in2                32
`define T_FLAG_SIG_tr_0_alu_in2
`define T_DATABUS_tr_0_alu_in2            32
`define T_FLAGBUS_tr_0_alu_in2

// Datatypes derived from resource "PF_FE_tr_0_WBV"
`define T_PREG_PF_FE_tr_0_WBV             32
`define T_FLAG_PREG_PF_FE_tr_0_WBV
`define T_DATABUS_PF_FE_tr_0_WBV          32
`define T_FLAGBUS_PF_FE_tr_0_WBV

// Datatypes derived from resource "PF_FE_tr_1_BPR"
`define T_PREG_PF_FE_tr_1_BPR             8
`define T_FLAG_PREG_PF_FE_tr_1_BPR
`define T_DATABUS_PF_FE_tr_1_BPR          8
`define T_FLAGBUS_PF_FE_tr_1_BPR

// Datatypes derived from resource "PF_FE_tr_0_rs1"
`define T_PREG_PF_FE_tr_0_rs1             8
`define T_FLAG_PREG_PF_FE_tr_0_rs1
`define T_DATABUS_PF_FE_tr_0_rs1          8
`define T_FLAGBUS_PF_FE_tr_0_rs1

// Datatypes derived from resource "FE_DC_tr_1_rs3"
`define T_PREG_FE_DC_tr_1_rs3             8
`define T_FLAG_PREG_FE_DC_tr_1_rs3
`define T_DATABUS_FE_DC_tr_1_rs3          8
`define T_FLAGBUS_FE_DC_tr_1_rs3

// Datatypes derived from resource "DC_EX_tr_1_read_flag"
`define T_PREG_DC_EX_tr_1_read_flag       32
`define T_FLAG_PREG_DC_EX_tr_1_read_flag
`define T_DATABUS_DC_EX_tr_1_read_flag    32
`define T_FLAGBUS_DC_EX_tr_1_read_flag

// Datatypes derived from resource "DC_EX_tr_1_op3"
`define T_PREG_DC_EX_tr_1_op3             32
`define T_FLAG_PREG_DC_EX_tr_1_op3
`define T_DATABUS_DC_EX_tr_1_op3          32
`define T_FLAGBUS_DC_EX_tr_1_op3

// Datatypes derived from resource "EX_MEM_tr_1_read_flag"
`define T_PREG_EX_MEM_tr_1_read_flag      32
`define T_FLAG_PREG_EX_MEM_tr_1_read_flag
`define T_DATABUS_EX_MEM_tr_1_read_flag   32
`define T_FLAGBUS_EX_MEM_tr_1_read_flag

// Datatypes derived from resource "EX_MEM_tr_0_BPR"
`define T_PREG_EX_MEM_tr_0_BPR            8
`define T_FLAG_PREG_EX_MEM_tr_0_BPR
`define T_DATABUS_EX_MEM_tr_0_BPR         8
`define T_FLAGBUS_EX_MEM_tr_0_BPR

// Datatypes derived from resource "R"
`define T_REG_R                           32
`define T_ADDRESSBUS_R                    4
`define T_FLAG_REG_R
`define T_DATABUS_R                       32
`define T_FLAGBUS_R

// Datatypes derived from resource "tr_0_alu_in3"
`define T_SIG_tr_0_alu_in3                32
`define T_FLAG_SIG_tr_0_alu_in3
`define T_DATABUS_tr_0_alu_in3            32
`define T_FLAGBUS_tr_0_alu_in3

// Datatypes derived from resource "PF_FE_tr_1_WBV"
`define T_PREG_PF_FE_tr_1_WBV             32
`define T_FLAG_PREG_PF_FE_tr_1_WBV
`define T_DATABUS_PF_FE_tr_1_WBV          32
`define T_FLAGBUS_PF_FE_tr_1_WBV

// Datatypes derived from resource "PF_FE_tr_0_rs2"
`define T_PREG_PF_FE_tr_0_rs2             8
`define T_FLAG_PREG_PF_FE_tr_0_rs2
`define T_DATABUS_PF_FE_tr_0_rs2          8
`define T_FLAGBUS_PF_FE_tr_0_rs2

// Datatypes derived from resource "PF_FE_tr_1_rs1"
`define T_PREG_PF_FE_tr_1_rs1             8
`define T_FLAG_PREG_PF_FE_tr_1_rs1
`define T_DATABUS_PF_FE_tr_1_rs1          8
`define T_FLAGBUS_PF_FE_tr_1_rs1

// Datatypes derived from resource "FE_DC_tr_0_BPR"
`define T_PREG_FE_DC_tr_0_BPR             8
`define T_FLAG_PREG_FE_DC_tr_0_BPR
`define T_DATABUS_FE_DC_tr_0_BPR          8
`define T_FLAGBUS_FE_DC_tr_0_BPR

// Datatypes derived from resource "FE_DC_tr_1_op1"
`define T_PREG_FE_DC_tr_1_op1             32
`define T_FLAG_PREG_FE_DC_tr_1_op1
`define T_DATABUS_FE_DC_tr_1_op1          32
`define T_FLAGBUS_FE_DC_tr_1_op1

// Datatypes derived from resource "FE_DC_tr_0_rs1"
`define T_PREG_FE_DC_tr_0_rs1             8
`define T_FLAG_PREG_FE_DC_tr_0_rs1
`define T_DATABUS_FE_DC_tr_0_rs1          8
`define T_FLAGBUS_FE_DC_tr_0_rs1

// Datatypes derived from resource "DC_EX_tr_0_read_flag"
`define T_PREG_DC_EX_tr_0_read_flag       32
`define T_FLAG_PREG_DC_EX_tr_0_read_flag
`define T_DATABUS_DC_EX_tr_0_read_flag    32
`define T_FLAGBUS_DC_EX_tr_0_read_flag

// Datatypes derived from resource "DC_EX_tr_0_rs1"
`define T_PREG_DC_EX_tr_0_rs1             8
`define T_FLAG_PREG_DC_EX_tr_0_rs1
`define T_DATABUS_DC_EX_tr_0_rs1          8
`define T_FLAGBUS_DC_EX_tr_0_rs1

// Datatypes derived from resource "DC_EX_pc_next"
`define T_PREG_DC_EX_pc_next              32
`define T_FLAG_PREG_DC_EX_pc_next
`define T_DATABUS_DC_EX_pc_next           32
`define T_FLAGBUS_DC_EX_pc_next

// Datatypes derived from resource "EX_MEM_tr_1_WBV"
`define T_PREG_EX_MEM_tr_1_WBV            32
`define T_FLAG_PREG_EX_MEM_tr_1_WBV
`define T_DATABUS_EX_MEM_tr_1_WBV         32
`define T_FLAGBUS_EX_MEM_tr_1_WBV

// Datatypes derived from resource "EX_MEM_tr_1_rs1"
`define T_PREG_EX_MEM_tr_1_rs1            8
`define T_FLAG_PREG_EX_MEM_tr_1_rs1
`define T_DATABUS_EX_MEM_tr_1_rs1         8
`define T_FLAGBUS_EX_MEM_tr_1_rs1

// Datatypes derived from resource "MEM_WB_pc_next"
`define T_PREG_MEM_WB_pc_next             32
`define T_FLAG_PREG_MEM_WB_pc_next
`define T_DATABUS_MEM_WB_pc_next          32
`define T_FLAGBUS_MEM_WB_pc_next

// Datatypes derived from resource "BSET"
`define T_REG_BSET
`define T_FLAG_REG_BSET
`define T_DATABUS_BSET
`define T_FLAGBUS_BSET

// Datatypes derived from resource "tr_1_req_rd_address"
`define T_SIG_tr_1_req_rd_address         32
`define T_FLAG_SIG_tr_1_req_rd_address
`define T_DATABUS_tr_1_req_rd_address     32
`define T_FLAGBUS_tr_1_req_rd_address

// Datatypes derived from resource "branch_offset"
`define T_SIG_branch_offset               32
`define T_FLAG_SIG_branch_offset
`define T_DATABUS_branch_offset           32
`define T_FLAGBUS_branch_offset

// Datatypes derived from resource "PF_FE_tr_0_rs3"
`define T_PREG_PF_FE_tr_0_rs3             8
`define T_FLAG_PREG_PF_FE_tr_0_rs3
`define T_DATABUS_PF_FE_tr_0_rs3          8
`define T_FLAGBUS_PF_FE_tr_0_rs3

// Datatypes derived from resource "PF_FE_tr_1_rs2"
`define T_PREG_PF_FE_tr_1_rs2             8
`define T_FLAG_PREG_PF_FE_tr_1_rs2
`define T_DATABUS_PF_FE_tr_1_rs2          8
`define T_FLAGBUS_PF_FE_tr_1_rs2

// Datatypes derived from resource "FE_DC_tr_1_op2"
`define T_PREG_FE_DC_tr_1_op2             32
`define T_FLAG_PREG_FE_DC_tr_1_op2
`define T_DATABUS_FE_DC_tr_1_op2          32
`define T_FLAGBUS_FE_DC_tr_1_op2

// Datatypes derived from resource "FE_DC_tr_0_rs2"
`define T_PREG_FE_DC_tr_0_rs2             8
`define T_FLAG_PREG_FE_DC_tr_0_rs2
`define T_DATABUS_FE_DC_tr_0_rs2          8
`define T_FLAGBUS_FE_DC_tr_0_rs2

// Datatypes derived from resource "DC_EX_tr_0_address"
`define T_PREG_DC_EX_tr_0_address         32
`define T_FLAG_PREG_DC_EX_tr_0_address
`define T_DATABUS_DC_EX_tr_0_address      32
`define T_FLAGBUS_DC_EX_tr_0_address

// Datatypes derived from resource "DC_EX_tr_0_rs2"
`define T_PREG_DC_EX_tr_0_rs2             8
`define T_FLAG_PREG_DC_EX_tr_0_rs2
`define T_DATABUS_DC_EX_tr_0_rs2          8
`define T_FLAGBUS_DC_EX_tr_0_rs2

// Datatypes derived from resource "DC_EX_tr_1_rs1"
`define T_PREG_DC_EX_tr_1_rs1             8
`define T_FLAG_PREG_DC_EX_tr_1_rs1
`define T_DATABUS_DC_EX_tr_1_rs1          8
`define T_FLAGBUS_DC_EX_tr_1_rs1

// Datatypes derived from resource "EX_MEM_pc"
`define T_PREG_EX_MEM_pc                  32
`define T_FLAG_PREG_EX_MEM_pc
`define T_DATABUS_EX_MEM_pc               32
`define T_FLAGBUS_EX_MEM_pc

// Datatypes derived from resource "EX_MEM_tr_0_WBV"
`define T_PREG_EX_MEM_tr_0_WBV            32
`define T_FLAG_PREG_EX_MEM_tr_0_WBV
`define T_DATABUS_EX_MEM_tr_0_WBV         32
`define T_FLAGBUS_EX_MEM_tr_0_WBV

// Datatypes derived from resource "EX_MEM_tr_1_rs2"
`define T_PREG_EX_MEM_tr_1_rs2            8
`define T_FLAG_PREG_EX_MEM_tr_1_rs2
`define T_DATABUS_EX_MEM_tr_1_rs2         8
`define T_FLAGBUS_EX_MEM_tr_1_rs2

// Datatypes derived from resource "EX_MEM_tr_0_rs1"
`define T_PREG_EX_MEM_tr_0_rs1            8
`define T_FLAG_PREG_EX_MEM_tr_0_rs1
`define T_DATABUS_EX_MEM_tr_0_rs1         8
`define T_FLAGBUS_EX_MEM_tr_0_rs1

// Datatypes derived from resource "MEM_WB_tr_1_offset"
`define T_PREG_MEM_WB_tr_1_offset         32
`define T_FLAG_PREG_MEM_WB_tr_1_offset
`define T_DATABUS_MEM_WB_tr_1_offset      32
`define T_FLAGBUS_MEM_WB_tr_1_offset

// Datatypes derived from resource "prog_mem"
`define T_MEM_prog_mem                    64
`define T_ADDRESSBUS_prog_mem             20
`define T_DATABUS_prog_mem                64
`define T_FLAGBUS_prog_mem

// Datatypes derived from resource "data_mem"
`define T_MEM_data_mem                    32
`define T_ADDRESSBUS_data_mem             26
`define T_DATABUS_data_mem                32
`define T_FLAGBUS_data_mem

