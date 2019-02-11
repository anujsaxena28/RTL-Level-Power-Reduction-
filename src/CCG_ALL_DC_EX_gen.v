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
//      FileName: DC_EX_gen.v
//      Time:     16:53:22
//      Date:     Tue Aug 26 2008
//----------------------------------------------------------------------------//


`timescale 1 ns/1 ps
`include "Package_LT_VLIW_2i_gen.v"


module DC_EX
    (
        A_to_0_address_generation_DC_EX_out,
        A_to_0_address_generation_DC_in    ,
        A_to_0_alu_rri_ex_DC_EX_out        ,
        A_to_0_alu_rri_ex_DC_in            ,
        A_to_0_alu_rrr_ex_DC_EX_out        ,
        A_to_0_alu_rrr_ex_DC_in            ,
        A_to_0_branch_execute_DC_EX_out    ,
        A_to_0_branch_execute_DC_in        ,
        A_to_0_branch_writeback_DC_EX_out  ,
        A_to_0_branch_writeback_DC_in      ,
        A_to_0_bus_address_generation_DC_EX_out,
        A_to_0_bus_address_generation_DC_in,
        A_to_0_cmp_ri_ex_DC_EX_out         ,
        A_to_0_cmp_ri_ex_DC_in             ,
        A_to_0_cmp_rr_ex_DC_EX_out         ,
        A_to_0_cmp_rr_ex_DC_in             ,
        A_to_0_custom_isa_rrr_ex_DC_EX_out ,
        A_to_0_custom_isa_rrr_ex_DC_in     ,
        A_to_0_ld_bus_DC_EX_out            ,
        A_to_0_ld_bus_DC_in                ,
        A_to_0_ld_mem_DC_EX_out            ,
        A_to_0_ld_mem_DC_in                ,
        A_to_0_postoperation_acc_DC_EX_out ,
        A_to_0_postoperation_acc_DC_in     ,
        A_to_0_st_bus_DC_EX_out            ,
        A_to_0_st_bus_DC_in                ,
        A_to_0_st_mem_DC_EX_out            ,
        A_to_0_st_mem_DC_in                ,
        A_to_0_writeback_dst_DC_EX_out     ,
        A_to_0_writeback_dst_DC_in         ,
        A_to_1_alu_rri_ex_DC_EX_out        ,
        A_to_1_alu_rri_ex_DC_in            ,
        A_to_1_alu_rrr_ex_DC_EX_out        ,
        A_to_1_alu_rrr_ex_DC_in            ,
        A_to_1_writeback_dst_DC_EX_out     ,
        A_to_1_writeback_dst_DC_in         ,
        EW_DC_EX_tr_0_BPR_561_in           ,
        EW_DC_EX_tr_0_BPR_565_in           ,
        EW_DC_EX_tr_0_BPR_570_in           ,
        EW_DC_EX_tr_0_WBV_557_in           ,
        EW_DC_EX_tr_0_WBV_566_in           ,
        EW_DC_EX_tr_0_WBV_571_in           ,
        EW_DC_EX_tr_0_offset_1320_in       ,
        EW_DC_EX_tr_0_offset_1375_in       ,
        EW_DC_EX_tr_0_offset_940_in        ,
        EW_DC_EX_tr_0_offset_995_in        ,
        EW_DC_EX_tr_0_op1_1253_in          ,
        EW_DC_EX_tr_0_op1_1349_in          ,
        EW_DC_EX_tr_0_op1_212_in           ,
        EW_DC_EX_tr_0_op1_343_in           ,
        EW_DC_EX_tr_0_op1_397_in           ,
        EW_DC_EX_tr_0_op1_519_in           ,
        EW_DC_EX_tr_0_op1_599_in           ,
        EW_DC_EX_tr_0_op1_694_in           ,
        EW_DC_EX_tr_0_op1_818_in           ,
        EW_DC_EX_tr_0_op1_873_in           ,
        EW_DC_EX_tr_0_op1_969_in           ,
        EW_DC_EX_tr_0_op2_1294_in          ,
        EW_DC_EX_tr_0_op2_257_in           ,
        EW_DC_EX_tr_0_op2_369_in           ,
        EW_DC_EX_tr_0_op2_438_in           ,
        EW_DC_EX_tr_0_op2_640_in           ,
        EW_DC_EX_tr_0_op2_735_in           ,
        EW_DC_EX_tr_0_op2_844_in           ,
        EW_DC_EX_tr_0_op2_914_in           ,
        EW_DC_EX_tr_0_op3_287_in           ,
        EW_DC_EX_tr_0_op3_666_in           ,
        EW_DC_EX_tr_0_op3_765_in           ,
        EW_DC_EX_tr_0_op3_845_in           ,
        EW_DC_EX_tr_0_read_flag_941_in     ,
        EW_DC_EX_tr_0_read_flag_996_in     ,
        EW_DC_EX_tr_0_rs1_1226_in          ,
        EW_DC_EX_tr_0_rs1_1322_in          ,
        EW_DC_EX_tr_0_rs1_172_in           ,
        EW_DC_EX_tr_0_rs1_316_in           ,
        EW_DC_EX_tr_0_rs1_370_in           ,
        EW_DC_EX_tr_0_rs1_492_in           ,
        EW_DC_EX_tr_0_rs1_572_in           ,
        EW_DC_EX_tr_0_rs1_667_in           ,
        EW_DC_EX_tr_0_rs1_791_in           ,
        EW_DC_EX_tr_0_rs1_846_in           ,
        EW_DC_EX_tr_0_rs1_942_in           ,
        EW_DC_EX_tr_0_rs2_1279_in          ,
        EW_DC_EX_tr_0_rs2_242_in           ,
        EW_DC_EX_tr_0_rs2_423_in           ,
        EW_DC_EX_tr_0_rs2_625_in           ,
        EW_DC_EX_tr_0_rs2_720_in           ,
        EW_DC_EX_tr_0_rs2_899_in           ,
        EW_DC_EX_tr_0_rs3_283_in           ,
        EW_DC_EX_tr_0_rs3_761_in           ,
        EW_DC_EX_tr_1_BPR_1005_in          ,
        EW_DC_EX_tr_1_BPR_1011_in          ,
        EW_DC_EX_tr_1_WBV_1007_in          ,
        EW_DC_EX_tr_1_WBV_1012_in          ,
        EW_DC_EX_tr_1_op1_1027_in          ,
        EW_DC_EX_tr_1_op1_1098_in          ,
        EW_DC_EX_tr_1_op1_1198_in          ,
        EW_DC_EX_tr_1_op2_1060_in          ,
        EW_DC_EX_tr_1_op2_1131_in          ,
        EW_DC_EX_tr_1_op2_1224_in          ,
        EW_DC_EX_tr_1_op3_1086_in          ,
        EW_DC_EX_tr_1_op3_1161_in          ,
        EW_DC_EX_tr_1_op3_1225_in          ,
        EW_DC_EX_tr_1_rs1_1013_in          ,
        EW_DC_EX_tr_1_rs1_1087_in          ,
        EW_DC_EX_tr_1_rs1_1187_in          ,
        EW_DC_EX_tr_1_rs2_1053_in          ,
        EW_DC_EX_tr_1_rs2_1124_in          ,
        EW_DC_EX_tr_1_rs3_1157_in          ,
        PREG_RD_DC_EX_insn_0_1468_out      ,
        PREG_RD_DC_EX_insn_1_1466_out      ,
        PREG_RD_DC_EX_tr_0_offset_2059_out ,
        PREG_RD_DC_EX_tr_0_op1_1398_out    ,
        PREG_RD_DC_EX_tr_0_op2_1420_out    ,
        PREG_RD_DC_EX_tr_0_op2_1980_out    ,
        PREG_RD_DC_EX_tr_0_op3_1695_out    ,
        PREG_RD_DC_EX_tr_0_rs1_1379_out    ,
        PREG_RD_DC_EX_tr_0_rs2_1401_out    ,
        PREG_RD_DC_EX_tr_0_rs3_1676_out    ,
        PREG_RD_DC_EX_tr_1_op1_2104_out    ,
        PREG_RD_DC_EX_tr_1_op2_2152_out    ,
        PREG_RD_DC_EX_tr_1_op3_2196_out    ,
        PREG_RD_DC_EX_tr_1_rs1_2085_out    ,
        PREG_RD_DC_EX_tr_1_rs2_2133_out    ,
        PREG_RD_DC_EX_tr_1_rs3_2177_out    ,
        PREG_WR_DC_EX_tr_0_BPR_561_in      ,
        PREG_WR_DC_EX_tr_0_BPR_565_in      ,
        PREG_WR_DC_EX_tr_0_BPR_570_in      ,
        PREG_WR_DC_EX_tr_0_WBV_557_in      ,
        PREG_WR_DC_EX_tr_0_WBV_566_in      ,
        PREG_WR_DC_EX_tr_0_WBV_571_in      ,
        PREG_WR_DC_EX_tr_0_offset_1320_in  ,
        PREG_WR_DC_EX_tr_0_offset_1375_in  ,
        PREG_WR_DC_EX_tr_0_offset_940_in   ,
        PREG_WR_DC_EX_tr_0_offset_995_in   ,
        PREG_WR_DC_EX_tr_0_op1_1253_in     ,
        PREG_WR_DC_EX_tr_0_op1_1349_in     ,
        PREG_WR_DC_EX_tr_0_op1_212_in      ,
        PREG_WR_DC_EX_tr_0_op1_343_in      ,
        PREG_WR_DC_EX_tr_0_op1_397_in      ,
        PREG_WR_DC_EX_tr_0_op1_519_in      ,
        PREG_WR_DC_EX_tr_0_op1_599_in      ,
        PREG_WR_DC_EX_tr_0_op1_694_in      ,
        PREG_WR_DC_EX_tr_0_op1_818_in      ,
        PREG_WR_DC_EX_tr_0_op1_873_in      ,
        PREG_WR_DC_EX_tr_0_op1_969_in      ,
        PREG_WR_DC_EX_tr_0_op2_1294_in     ,
        PREG_WR_DC_EX_tr_0_op2_257_in      ,
        PREG_WR_DC_EX_tr_0_op2_369_in      ,
        PREG_WR_DC_EX_tr_0_op2_438_in      ,
        PREG_WR_DC_EX_tr_0_op2_640_in      ,
        PREG_WR_DC_EX_tr_0_op2_735_in      ,
        PREG_WR_DC_EX_tr_0_op2_844_in      ,
        PREG_WR_DC_EX_tr_0_op2_914_in      ,
        PREG_WR_DC_EX_tr_0_op3_287_in      ,
        PREG_WR_DC_EX_tr_0_op3_666_in      ,
        PREG_WR_DC_EX_tr_0_op3_765_in      ,
        PREG_WR_DC_EX_tr_0_op3_845_in      ,
        PREG_WR_DC_EX_tr_0_read_flag_941_in,
        PREG_WR_DC_EX_tr_0_read_flag_996_in,
        PREG_WR_DC_EX_tr_0_rs1_1226_in     ,
        PREG_WR_DC_EX_tr_0_rs1_1322_in     ,
        PREG_WR_DC_EX_tr_0_rs1_172_in      ,
        PREG_WR_DC_EX_tr_0_rs1_316_in      ,
        PREG_WR_DC_EX_tr_0_rs1_370_in      ,
        PREG_WR_DC_EX_tr_0_rs1_492_in      ,
        PREG_WR_DC_EX_tr_0_rs1_572_in      ,
        PREG_WR_DC_EX_tr_0_rs1_667_in      ,
        PREG_WR_DC_EX_tr_0_rs1_791_in      ,
        PREG_WR_DC_EX_tr_0_rs1_846_in      ,
        PREG_WR_DC_EX_tr_0_rs1_942_in      ,
        PREG_WR_DC_EX_tr_0_rs2_1279_in     ,
        PREG_WR_DC_EX_tr_0_rs2_242_in      ,
        PREG_WR_DC_EX_tr_0_rs2_423_in      ,
        PREG_WR_DC_EX_tr_0_rs2_625_in      ,
        PREG_WR_DC_EX_tr_0_rs2_720_in      ,
        PREG_WR_DC_EX_tr_0_rs2_899_in      ,
        PREG_WR_DC_EX_tr_0_rs3_283_in      ,
        PREG_WR_DC_EX_tr_0_rs3_761_in      ,
        PREG_WR_DC_EX_tr_1_BPR_1005_in     ,
        PREG_WR_DC_EX_tr_1_BPR_1011_in     ,
        PREG_WR_DC_EX_tr_1_WBV_1007_in     ,
        PREG_WR_DC_EX_tr_1_WBV_1012_in     ,
        PREG_WR_DC_EX_tr_1_op1_1027_in     ,
        PREG_WR_DC_EX_tr_1_op1_1098_in     ,
        PREG_WR_DC_EX_tr_1_op1_1198_in     ,
        PREG_WR_DC_EX_tr_1_op2_1060_in     ,
        PREG_WR_DC_EX_tr_1_op2_1131_in     ,
        PREG_WR_DC_EX_tr_1_op2_1224_in     ,
        PREG_WR_DC_EX_tr_1_op3_1086_in     ,
        PREG_WR_DC_EX_tr_1_op3_1161_in     ,
        PREG_WR_DC_EX_tr_1_op3_1225_in     ,
        PREG_WR_DC_EX_tr_1_rs1_1013_in     ,
        PREG_WR_DC_EX_tr_1_rs1_1087_in     ,
        PREG_WR_DC_EX_tr_1_rs1_1187_in     ,
        PREG_WR_DC_EX_tr_1_rs2_1053_in     ,
        PREG_WR_DC_EX_tr_1_rs2_1124_in     ,
        PREG_WR_DC_EX_tr_1_rs3_1157_in     ,
        clk_main_in                        ,
        pipe_DC_EX_stall_in                ,
        pipe_DC_insn_0_forwarded_value_in  ,
        pipe_DC_insn_1_forwarded_value_in  ,
        pipe_DC_pc_forwarded_value_in      ,
        pipe_EX_MEM_stall_in               ,
        pipe_EX_insn_0_forwarded_value_out ,
        pipe_EX_insn_1_forwarded_value_out ,
        pipe_EX_pc_forwarded_value_out     ,
        pipe_EX_tr_0_BPR_forwarded_value_out,
        pipe_EX_tr_0_WBV_forwarded_value_out,
        pipe_EX_tr_0_op2_forwarded_value_out,
        pipe_EX_tr_0_op3_forwarded_value_out,
        pipe_EX_tr_0_read_flag_forwarded_value_out,
        pipe_EX_tr_0_rs2_forwarded_value_out,
        pipe_EX_tr_1_BPR_forwarded_value_out,
        pipe_EX_tr_1_WBV_forwarded_value_out,
        rst_main_in                        
    );

    input                                     A_to_0_cmp_ri_ex_DC_in;
    input                                     A_to_0_cmp_rr_ex_DC_in;
    input                                     A_to_0_branch_execute_DC_in;
    input                                     A_to_0_custom_isa_rrr_ex_DC_in;
    input                                     A_to_0_alu_rrr_ex_DC_in;
    input                                     A_to_0_alu_rri_ex_DC_in;
    input                                     A_to_0_address_generation_DC_in;
    input                                     A_to_1_alu_rrr_ex_DC_in;
    input                                     A_to_1_alu_rri_ex_DC_in;
    input                                     A_to_0_bus_address_generation_DC_in;
    input                                     A_to_0_postoperation_acc_DC_in;
    input                                     A_to_0_st_mem_DC_in;
    input                                     A_to_0_ld_mem_DC_in;
    input                                     A_to_0_st_bus_DC_in;
    input                                     A_to_0_ld_bus_DC_in;
    input                                     A_to_0_writeback_dst_DC_in;
    input                                     A_to_0_branch_writeback_DC_in;
    input                                     A_to_1_writeback_dst_DC_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_172_in;
    input                                     EW_DC_EX_tr_0_rs1_172_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_212_in;
    input                                     EW_DC_EX_tr_0_op1_212_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_242_in;
    input                                     EW_DC_EX_tr_0_rs2_242_in;
    input  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_257_in;
    input                                     EW_DC_EX_tr_0_op2_257_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs3-1:0]    PREG_WR_DC_EX_tr_0_rs3_283_in;
    input                                     EW_DC_EX_tr_0_rs3_283_in;
    input  [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_WR_DC_EX_tr_0_op3_287_in;
    input                                     EW_DC_EX_tr_0_op3_287_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_316_in;
    input                                     EW_DC_EX_tr_0_rs1_316_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_343_in;
    input                                     EW_DC_EX_tr_0_op1_343_in;
    input  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_369_in;
    input                                     EW_DC_EX_tr_0_op2_369_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_370_in;
    input                                     EW_DC_EX_tr_0_rs1_370_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_397_in;
    input                                     EW_DC_EX_tr_0_op1_397_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_423_in;
    input                                     EW_DC_EX_tr_0_rs2_423_in;
    input  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_438_in;
    input                                     EW_DC_EX_tr_0_op2_438_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_492_in;
    input                                     EW_DC_EX_tr_0_rs1_492_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_519_in;
    input                                     EW_DC_EX_tr_0_op1_519_in;
    input  [`T_DATABUS_DC_EX_tr_0_WBV-1:0]    PREG_WR_DC_EX_tr_0_WBV_557_in;
    input                                     EW_DC_EX_tr_0_WBV_557_in;
    input  [`T_DATABUS_DC_EX_tr_0_BPR-1:0]    PREG_WR_DC_EX_tr_0_BPR_561_in;
    input                                     EW_DC_EX_tr_0_BPR_561_in;
    input  [`T_DATABUS_DC_EX_tr_0_BPR-1:0]    PREG_WR_DC_EX_tr_0_BPR_565_in;
    input                                     EW_DC_EX_tr_0_BPR_565_in;
    input  [`T_DATABUS_DC_EX_tr_0_WBV-1:0]    PREG_WR_DC_EX_tr_0_WBV_566_in;
    input                                     EW_DC_EX_tr_0_WBV_566_in;
    input  [`T_DATABUS_DC_EX_tr_0_BPR-1:0]    PREG_WR_DC_EX_tr_0_BPR_570_in;
    input                                     EW_DC_EX_tr_0_BPR_570_in;
    input  [`T_DATABUS_DC_EX_tr_0_WBV-1:0]    PREG_WR_DC_EX_tr_0_WBV_571_in;
    input                                     EW_DC_EX_tr_0_WBV_571_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_572_in;
    input                                     EW_DC_EX_tr_0_rs1_572_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_599_in;
    input                                     EW_DC_EX_tr_0_op1_599_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_625_in;
    input                                     EW_DC_EX_tr_0_rs2_625_in;
    input  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_640_in;
    input                                     EW_DC_EX_tr_0_op2_640_in;
    input  [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_WR_DC_EX_tr_0_op3_666_in;
    input                                     EW_DC_EX_tr_0_op3_666_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_667_in;
    input                                     EW_DC_EX_tr_0_rs1_667_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_694_in;
    input                                     EW_DC_EX_tr_0_op1_694_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_720_in;
    input                                     EW_DC_EX_tr_0_rs2_720_in;
    input  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_735_in;
    input                                     EW_DC_EX_tr_0_op2_735_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs3-1:0]    PREG_WR_DC_EX_tr_0_rs3_761_in;
    input                                     EW_DC_EX_tr_0_rs3_761_in;
    input  [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_WR_DC_EX_tr_0_op3_765_in;
    input                                     EW_DC_EX_tr_0_op3_765_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_791_in;
    input                                     EW_DC_EX_tr_0_rs1_791_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_818_in;
    input                                     EW_DC_EX_tr_0_op1_818_in;
    input  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_844_in;
    input                                     EW_DC_EX_tr_0_op2_844_in;
    input  [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_WR_DC_EX_tr_0_op3_845_in;
    input                                     EW_DC_EX_tr_0_op3_845_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_846_in;
    input                                     EW_DC_EX_tr_0_rs1_846_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_873_in;
    input                                     EW_DC_EX_tr_0_op1_873_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_899_in;
    input                                     EW_DC_EX_tr_0_rs2_899_in;
    input  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_914_in;
    input                                     EW_DC_EX_tr_0_op2_914_in;
    input  [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_WR_DC_EX_tr_0_offset_940_in;
    input                                     EW_DC_EX_tr_0_offset_940_in;
    input  [`T_DATABUS_DC_EX_tr_0_read_flag-1:0] PREG_WR_DC_EX_tr_0_read_flag_941_in;
    input                                     EW_DC_EX_tr_0_read_flag_941_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_942_in;
    input                                     EW_DC_EX_tr_0_rs1_942_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_969_in;
    input                                     EW_DC_EX_tr_0_op1_969_in;
    input  [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_WR_DC_EX_tr_0_offset_995_in;
    input                                     EW_DC_EX_tr_0_offset_995_in;
    input  [`T_DATABUS_DC_EX_tr_0_read_flag-1:0] PREG_WR_DC_EX_tr_0_read_flag_996_in;
    input                                     EW_DC_EX_tr_0_read_flag_996_in;
    input  [`T_DATABUS_DC_EX_tr_1_BPR-1:0]    PREG_WR_DC_EX_tr_1_BPR_1005_in;
    input                                     EW_DC_EX_tr_1_BPR_1005_in;
    input  [`T_DATABUS_DC_EX_tr_1_WBV-1:0]    PREG_WR_DC_EX_tr_1_WBV_1007_in;
    input                                     EW_DC_EX_tr_1_WBV_1007_in;
    input  [`T_DATABUS_DC_EX_tr_1_BPR-1:0]    PREG_WR_DC_EX_tr_1_BPR_1011_in;
    input                                     EW_DC_EX_tr_1_BPR_1011_in;
    input  [`T_DATABUS_DC_EX_tr_1_WBV-1:0]    PREG_WR_DC_EX_tr_1_WBV_1012_in;
    input                                     EW_DC_EX_tr_1_WBV_1012_in;
    input  [`T_DATABUS_DC_EX_tr_1_rs1-1:0]    PREG_WR_DC_EX_tr_1_rs1_1013_in;
    input                                     EW_DC_EX_tr_1_rs1_1013_in;
    input  [`T_DATABUS_DC_EX_tr_1_op1-1:0]    PREG_WR_DC_EX_tr_1_op1_1027_in;
    input                                     EW_DC_EX_tr_1_op1_1027_in;
    input  [`T_DATABUS_DC_EX_tr_1_rs2-1:0]    PREG_WR_DC_EX_tr_1_rs2_1053_in;
    input                                     EW_DC_EX_tr_1_rs2_1053_in;
    input  [`T_DATABUS_DC_EX_tr_1_op2-1:0]    PREG_WR_DC_EX_tr_1_op2_1060_in;
    input                                     EW_DC_EX_tr_1_op2_1060_in;
    input  [`T_DATABUS_DC_EX_tr_1_op3-1:0]    PREG_WR_DC_EX_tr_1_op3_1086_in;
    input                                     EW_DC_EX_tr_1_op3_1086_in;
    input  [`T_DATABUS_DC_EX_tr_1_rs1-1:0]    PREG_WR_DC_EX_tr_1_rs1_1087_in;
    input                                     EW_DC_EX_tr_1_rs1_1087_in;
    input  [`T_DATABUS_DC_EX_tr_1_op1-1:0]    PREG_WR_DC_EX_tr_1_op1_1098_in;
    input                                     EW_DC_EX_tr_1_op1_1098_in;
    input  [`T_DATABUS_DC_EX_tr_1_rs2-1:0]    PREG_WR_DC_EX_tr_1_rs2_1124_in;
    input                                     EW_DC_EX_tr_1_rs2_1124_in;
    input  [`T_DATABUS_DC_EX_tr_1_op2-1:0]    PREG_WR_DC_EX_tr_1_op2_1131_in;
    input                                     EW_DC_EX_tr_1_op2_1131_in;
    input  [`T_DATABUS_DC_EX_tr_1_rs3-1:0]    PREG_WR_DC_EX_tr_1_rs3_1157_in;
    input                                     EW_DC_EX_tr_1_rs3_1157_in;
    input  [`T_DATABUS_DC_EX_tr_1_op3-1:0]    PREG_WR_DC_EX_tr_1_op3_1161_in;
    input                                     EW_DC_EX_tr_1_op3_1161_in;
    input  [`T_DATABUS_DC_EX_tr_1_rs1-1:0]    PREG_WR_DC_EX_tr_1_rs1_1187_in;
    input                                     EW_DC_EX_tr_1_rs1_1187_in;
    input  [`T_DATABUS_DC_EX_tr_1_op1-1:0]    PREG_WR_DC_EX_tr_1_op1_1198_in;
    input                                     EW_DC_EX_tr_1_op1_1198_in;
    input  [`T_DATABUS_DC_EX_tr_1_op2-1:0]    PREG_WR_DC_EX_tr_1_op2_1224_in;
    input                                     EW_DC_EX_tr_1_op2_1224_in;
    input  [`T_DATABUS_DC_EX_tr_1_op3-1:0]    PREG_WR_DC_EX_tr_1_op3_1225_in;
    input                                     EW_DC_EX_tr_1_op3_1225_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_1226_in;
    input                                     EW_DC_EX_tr_0_rs1_1226_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_1253_in;
    input                                     EW_DC_EX_tr_0_op1_1253_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_1279_in;
    input                                     EW_DC_EX_tr_0_rs2_1279_in;
    input  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_1294_in;
    input                                     EW_DC_EX_tr_0_op2_1294_in;
    input  [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_WR_DC_EX_tr_0_offset_1320_in;
    input                                     EW_DC_EX_tr_0_offset_1320_in;
    input  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_1322_in;
    input                                     EW_DC_EX_tr_0_rs1_1322_in;
    input  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_1349_in;
    input                                     EW_DC_EX_tr_0_op1_1349_in;
    input  [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_WR_DC_EX_tr_0_offset_1375_in;
    input                                     EW_DC_EX_tr_0_offset_1375_in;
    input  [`T_DATABUS_FE_DC_insn_1-1:0]      pipe_DC_insn_1_forwarded_value_in;
    input  [`T_DATABUS_FE_DC_insn_0-1:0]      pipe_DC_insn_0_forwarded_value_in;
    input  [`T_DATABUS_FE_DC_pc-1:0]          pipe_DC_pc_forwarded_value_in;
    input                                     pipe_DC_EX_stall_in;
    input                                     rst_main_in;
    input                                     clk_main_in;
    input                                     pipe_EX_MEM_stall_in;


    output                                    A_to_0_cmp_ri_ex_DC_EX_out;
    output                                    A_to_0_cmp_rr_ex_DC_EX_out;
    output                                    A_to_0_branch_execute_DC_EX_out;
    output                                    A_to_0_custom_isa_rrr_ex_DC_EX_out;
    output                                    A_to_0_alu_rrr_ex_DC_EX_out;
    output                                    A_to_0_alu_rri_ex_DC_EX_out;
    output                                    A_to_0_address_generation_DC_EX_out;
    output                                    A_to_1_alu_rrr_ex_DC_EX_out;
    output                                    A_to_1_alu_rri_ex_DC_EX_out;
    output                                    A_to_0_bus_address_generation_DC_EX_out;
    output                                    A_to_0_postoperation_acc_DC_EX_out;
    output                                    A_to_0_st_mem_DC_EX_out;
    output                                    A_to_0_ld_mem_DC_EX_out;
    output                                    A_to_0_st_bus_DC_EX_out;
    output                                    A_to_0_ld_bus_DC_EX_out;
    output                                    A_to_0_writeback_dst_DC_EX_out;
    output                                    A_to_0_branch_writeback_DC_EX_out;
    output                                    A_to_1_writeback_dst_DC_EX_out;
    output [`T_DATABUS_EX_MEM_tr_0_WBV-1:0]   pipe_EX_tr_0_WBV_forwarded_value_out;
    output [`T_DATABUS_EX_MEM_tr_0_BPR-1:0]   pipe_EX_tr_0_BPR_forwarded_value_out;
    output [`T_DATABUS_EX_MEM_tr_1_BPR-1:0]   pipe_EX_tr_1_BPR_forwarded_value_out;
    output [`T_DATABUS_EX_MEM_tr_1_WBV-1:0]   pipe_EX_tr_1_WBV_forwarded_value_out;
    output [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_RD_DC_EX_tr_0_rs1_1379_out;
    output [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_RD_DC_EX_tr_0_op1_1398_out;
    output [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_RD_DC_EX_tr_0_rs2_1401_out;
    output [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_RD_DC_EX_tr_0_op2_1420_out;
    output [`T_DATABUS_DC_EX_insn_1-1:0]      PREG_RD_DC_EX_insn_1_1466_out;
    output [`T_DATABUS_DC_EX_insn_0-1:0]      PREG_RD_DC_EX_insn_0_1468_out;
    output [`T_DATABUS_DC_EX_tr_0_rs3-1:0]    PREG_RD_DC_EX_tr_0_rs3_1676_out;
    output [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_RD_DC_EX_tr_0_op3_1695_out;
    output [`T_DATABUS_DC_EX_tr_0_op3-1:0]    pipe_EX_tr_0_op3_forwarded_value_out;
    output [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_RD_DC_EX_tr_0_op2_1980_out;
    output [`T_DATABUS_DC_EX_tr_0_op2-1:0]    pipe_EX_tr_0_op2_forwarded_value_out;
    output [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_RD_DC_EX_tr_0_offset_2059_out;
    output [`T_DATABUS_DC_EX_tr_0_read_flag-1:0] pipe_EX_tr_0_read_flag_forwarded_value_out;
    output [`T_DATABUS_DC_EX_tr_1_rs1-1:0]    PREG_RD_DC_EX_tr_1_rs1_2085_out;
    output [`T_DATABUS_DC_EX_tr_1_op1-1:0]    PREG_RD_DC_EX_tr_1_op1_2104_out;
    output [`T_DATABUS_DC_EX_tr_1_rs2-1:0]    PREG_RD_DC_EX_tr_1_rs2_2133_out;
    output [`T_DATABUS_DC_EX_tr_1_op2-1:0]    PREG_RD_DC_EX_tr_1_op2_2152_out;
    output [`T_DATABUS_DC_EX_tr_1_rs3-1:0]    PREG_RD_DC_EX_tr_1_rs3_2177_out;
    output [`T_DATABUS_DC_EX_tr_1_op3-1:0]    PREG_RD_DC_EX_tr_1_op3_2196_out;
    output [`T_DATABUS_DC_EX_pc-1:0]          pipe_EX_pc_forwarded_value_out;
    output [`T_DATABUS_DC_EX_insn_1-1:0]      pipe_EX_insn_1_forwarded_value_out;
    output [`T_DATABUS_DC_EX_insn_0-1:0]      pipe_EX_insn_0_forwarded_value_out;
    output [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    pipe_EX_tr_0_rs2_forwarded_value_out;


    reg                                     A_to_0_cmp_ri_ex_DC_EX_out;
    reg                                     A_to_0_cmp_rr_ex_DC_EX_out;
    reg                                     A_to_0_branch_execute_DC_EX_out;
    reg                                     A_to_0_custom_isa_rrr_ex_DC_EX_out;
    reg                                     A_to_0_alu_rrr_ex_DC_EX_out;
    reg                                     A_to_0_alu_rri_ex_DC_EX_out;
    reg                                     A_to_0_address_generation_DC_EX_out;
    reg                                     A_to_1_alu_rrr_ex_DC_EX_out;
    reg                                     A_to_1_alu_rri_ex_DC_EX_out;
    reg                                     A_to_0_bus_address_generation_DC_EX_out;
    reg                                     A_to_0_postoperation_acc_DC_EX_out;
    reg                                     A_to_0_st_mem_DC_EX_out;
    reg                                     A_to_0_ld_mem_DC_EX_out;
    reg                                     A_to_0_st_bus_DC_EX_out;
    reg                                     A_to_0_ld_bus_DC_EX_out;
    reg                                     A_to_0_writeback_dst_DC_EX_out;
    reg                                     A_to_0_branch_writeback_DC_EX_out;
    reg                                     A_to_1_writeback_dst_DC_EX_out;
    reg  [`T_DATABUS_EX_MEM_tr_0_WBV-1:0]   pipe_EX_tr_0_WBV_forwarded_value_out;
    reg  [`T_DATABUS_EX_MEM_tr_0_BPR-1:0]   pipe_EX_tr_0_BPR_forwarded_value_out;
    reg  [`T_DATABUS_EX_MEM_tr_1_BPR-1:0]   pipe_EX_tr_1_BPR_forwarded_value_out;
    reg  [`T_DATABUS_EX_MEM_tr_1_WBV-1:0]   pipe_EX_tr_1_WBV_forwarded_value_out;
    reg  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_RD_DC_EX_tr_0_rs1_1379_out;
    reg  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_RD_DC_EX_tr_0_op1_1398_out;
    reg  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_RD_DC_EX_tr_0_rs2_1401_out;
    reg  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_RD_DC_EX_tr_0_op2_1420_out;
    reg  [`T_DATABUS_DC_EX_insn_1-1:0]      PREG_RD_DC_EX_insn_1_1466_out;
    reg  [`T_DATABUS_DC_EX_insn_0-1:0]      PREG_RD_DC_EX_insn_0_1468_out;
    reg  [`T_DATABUS_DC_EX_tr_0_rs3-1:0]    PREG_RD_DC_EX_tr_0_rs3_1676_out;
    reg  [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_RD_DC_EX_tr_0_op3_1695_out;
    reg  [`T_DATABUS_DC_EX_tr_0_op3-1:0]    pipe_EX_tr_0_op3_forwarded_value_out;
    reg  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_RD_DC_EX_tr_0_op2_1980_out;
    reg  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    pipe_EX_tr_0_op2_forwarded_value_out;
    reg  [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_RD_DC_EX_tr_0_offset_2059_out;
    reg  [`T_DATABUS_DC_EX_tr_0_read_flag-1:0] pipe_EX_tr_0_read_flag_forwarded_value_out;
    reg  [`T_DATABUS_DC_EX_tr_1_rs1-1:0]    PREG_RD_DC_EX_tr_1_rs1_2085_out;
    reg  [`T_DATABUS_DC_EX_tr_1_op1-1:0]    PREG_RD_DC_EX_tr_1_op1_2104_out;
    reg  [`T_DATABUS_DC_EX_tr_1_rs2-1:0]    PREG_RD_DC_EX_tr_1_rs2_2133_out;
    reg  [`T_DATABUS_DC_EX_tr_1_op2-1:0]    PREG_RD_DC_EX_tr_1_op2_2152_out;
    reg  [`T_DATABUS_DC_EX_tr_1_rs3-1:0]    PREG_RD_DC_EX_tr_1_rs3_2177_out;
    reg  [`T_DATABUS_DC_EX_tr_1_op3-1:0]    PREG_RD_DC_EX_tr_1_op3_2196_out;
    reg  [`T_DATABUS_DC_EX_pc-1:0]          pipe_EX_pc_forwarded_value_out;
    reg  [`T_DATABUS_DC_EX_insn_1-1:0]      pipe_EX_insn_1_forwarded_value_out;
    reg  [`T_DATABUS_DC_EX_insn_0-1:0]      pipe_EX_insn_0_forwarded_value_out;
    reg  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    pipe_EX_tr_0_rs2_forwarded_value_out;


    // Registers of entity: "DC_EX"
    reg                                      to_0_cmp_ri_ex_value_inp;
    reg                                      to_0_cmp_ri_ex_value_internal;
    reg                                      to_0_cmp_ri_ex_EW;
    reg                                      to_0_cmp_rr_ex_value_inp;
    reg                                      to_0_cmp_rr_ex_value_internal;
    reg                                      to_0_cmp_rr_ex_EW;
    reg                                      to_0_branch_execute_value_inp;
    reg                                      to_0_branch_execute_value_internal;
    reg                                      to_0_branch_execute_EW;
    reg                                      to_0_custom_isa_rrr_ex_value_inp;
    reg                                      to_0_custom_isa_rrr_ex_value_internal;
    reg                                      to_0_custom_isa_rrr_ex_EW;
    reg                                      to_0_alu_rrr_ex_value_inp;
    reg                                      to_0_alu_rrr_ex_value_internal;
    reg                                      to_0_alu_rrr_ex_EW;
    reg                                      to_0_alu_rri_ex_value_inp;
    reg                                      to_0_alu_rri_ex_value_internal;
    reg                                      to_0_alu_rri_ex_EW;
    reg                                      to_0_address_generation_value_inp;
    reg                                      to_0_address_generation_value_internal;
    reg                                      to_0_address_generation_EW;
    reg                                      to_1_alu_rrr_ex_value_inp;
    reg                                      to_1_alu_rrr_ex_value_internal;
    reg                                      to_1_alu_rrr_ex_EW;
    reg                                      to_1_alu_rri_ex_value_inp;
    reg                                      to_1_alu_rri_ex_value_internal;
    reg                                      to_1_alu_rri_ex_EW;
    reg                                      to_0_bus_address_generation_value_inp;
    reg                                      to_0_bus_address_generation_value_internal;
    reg                                      to_0_bus_address_generation_EW;
    reg                                      to_0_postoperation_acc_value_inp;
    reg                                      to_0_postoperation_acc_value_internal;
    reg                                      to_0_postoperation_acc_EW;
    reg                                      to_0_st_mem_value_inp;
    reg                                      to_0_st_mem_value_internal;
    reg                                      to_0_st_mem_EW;
    reg                                      to_0_ld_mem_value_inp;
    reg                                      to_0_ld_mem_value_internal;
    reg                                      to_0_ld_mem_EW;
    reg                                      to_0_st_bus_value_inp;
    reg                                      to_0_st_bus_value_internal;
    reg                                      to_0_st_bus_EW;
    reg                                      to_0_ld_bus_value_inp;
    reg                                      to_0_ld_bus_value_internal;
    reg                                      to_0_ld_bus_EW;
    reg                                      to_0_writeback_dst_value_inp;
    reg                                      to_0_writeback_dst_value_internal;
    reg                                      to_0_writeback_dst_EW;
    reg                                      to_0_branch_writeback_value_inp;
    reg                                      to_0_branch_writeback_value_internal;
    reg                                      to_0_branch_writeback_EW;
    reg                                      to_1_writeback_dst_value_inp;
    reg                                      to_1_writeback_dst_value_internal;
    reg                                      to_1_writeback_dst_EW;
    reg   [`T_PREG_DC_EX_tr_0_rs1-1:0]       DC_EX_tr_0_rs1;
    reg   [`T_PREG_DC_EX_tr_0_rs1-1:0]       DC_EX_tr_0_rs1_inp;
    reg                                      DC_EX_tr_0_rs1_EW;
    reg   [`T_PREG_DC_EX_tr_0_rs1-1:0]       DC_EX_tr_0_rs1_internal;
    reg   [`T_PREG_DC_EX_tr_0_rs1-1:0]       DC_EX_tr_0_rs1_poll_inp;
    reg   [`T_PREG_DC_EX_tr_0_rs1-1:0]       DC_EX_tr_0_rs1_poll;
    reg                                      DC_EX_tr_0_rs1_poll_EW;
    reg                                      DC_EX_tr_0_rs1_bubble_inserted_inp;
    reg                                      DC_EX_tr_0_rs1_bubble_inserted;
    reg   [`T_PREG_DC_EX_tr_0_op1-1:0]       DC_EX_tr_0_op1;
    reg   [`T_PREG_DC_EX_tr_0_op1-1:0]       DC_EX_tr_0_op1_inp;
    reg                                      DC_EX_tr_0_op1_EW;
    reg   [`T_PREG_DC_EX_tr_0_op1-1:0]       DC_EX_tr_0_op1_internal;
    reg   [`T_PREG_DC_EX_tr_0_op1-1:0]       DC_EX_tr_0_op1_poll_inp;
    reg   [`T_PREG_DC_EX_tr_0_op1-1:0]       DC_EX_tr_0_op1_poll;
    reg                                      DC_EX_tr_0_op1_poll_EW;
    reg                                      DC_EX_tr_0_op1_bubble_inserted_inp;
    reg                                      DC_EX_tr_0_op1_bubble_inserted;
    reg   [`T_PREG_DC_EX_tr_0_rs2-1:0]       DC_EX_tr_0_rs2;
    reg   [`T_PREG_DC_EX_tr_0_rs2-1:0]       DC_EX_tr_0_rs2_inp;
    reg                                      DC_EX_tr_0_rs2_EW;
    reg   [`T_PREG_DC_EX_tr_0_rs2-1:0]       DC_EX_tr_0_rs2_internal;
    reg   [`T_PREG_DC_EX_tr_0_rs2-1:0]       DC_EX_tr_0_rs2_poll_inp;
    reg   [`T_PREG_DC_EX_tr_0_rs2-1:0]       DC_EX_tr_0_rs2_poll;
    reg                                      DC_EX_tr_0_rs2_poll_EW;
    reg                                      DC_EX_tr_0_rs2_bubble_inserted_inp;
    reg                                      DC_EX_tr_0_rs2_bubble_inserted;
    reg   [`T_PREG_DC_EX_tr_0_op2-1:0]       DC_EX_tr_0_op2;
    reg   [`T_PREG_DC_EX_tr_0_op2-1:0]       DC_EX_tr_0_op2_inp;
    reg                                      DC_EX_tr_0_op2_EW;
    reg   [`T_PREG_DC_EX_tr_0_op2-1:0]       DC_EX_tr_0_op2_internal;
    reg   [`T_PREG_DC_EX_tr_0_op2-1:0]       DC_EX_tr_0_op2_poll_inp;
    reg   [`T_PREG_DC_EX_tr_0_op2-1:0]       DC_EX_tr_0_op2_poll;
    reg                                      DC_EX_tr_0_op2_poll_EW;
    reg                                      DC_EX_tr_0_op2_bubble_inserted_inp;
    reg                                      DC_EX_tr_0_op2_bubble_inserted;
    reg   [`T_PREG_DC_EX_tr_0_rs3-1:0]       DC_EX_tr_0_rs3;
    reg   [`T_PREG_DC_EX_tr_0_rs3-1:0]       DC_EX_tr_0_rs3_inp;
    reg                                      DC_EX_tr_0_rs3_EW;
    reg   [`T_PREG_DC_EX_tr_0_rs3-1:0]       DC_EX_tr_0_rs3_internal;
    reg   [`T_PREG_DC_EX_tr_0_op3-1:0]       DC_EX_tr_0_op3;
    reg   [`T_PREG_DC_EX_tr_0_op3-1:0]       DC_EX_tr_0_op3_inp;
    reg                                      DC_EX_tr_0_op3_EW;
    reg   [`T_PREG_DC_EX_tr_0_op3-1:0]       DC_EX_tr_0_op3_internal;
    reg   [`T_PREG_DC_EX_tr_0_WBV-1:0]       DC_EX_tr_0_WBV;
    reg   [`T_PREG_DC_EX_tr_0_WBV-1:0]       DC_EX_tr_0_WBV_inp;
    reg                                      DC_EX_tr_0_WBV_EW;
    reg   [`T_PREG_DC_EX_tr_0_WBV-1:0]       DC_EX_tr_0_WBV_internal;
    reg   [`T_PREG_DC_EX_tr_0_BPR-1:0]       DC_EX_tr_0_BPR;
    reg   [`T_PREG_DC_EX_tr_0_BPR-1:0]       DC_EX_tr_0_BPR_inp;
    reg                                      DC_EX_tr_0_BPR_EW;
    reg   [`T_PREG_DC_EX_tr_0_BPR-1:0]       DC_EX_tr_0_BPR_internal;
    reg   [`T_PREG_DC_EX_tr_0_offset-1:0]    DC_EX_tr_0_offset;
    reg   [`T_PREG_DC_EX_tr_0_offset-1:0]    DC_EX_tr_0_offset_inp;
    reg                                      DC_EX_tr_0_offset_EW;
    reg   [`T_PREG_DC_EX_tr_0_offset-1:0]    DC_EX_tr_0_offset_internal;
    reg   [`T_PREG_DC_EX_tr_0_offset-1:0]    DC_EX_tr_0_offset_poll_inp;
    reg   [`T_PREG_DC_EX_tr_0_offset-1:0]    DC_EX_tr_0_offset_poll;
    reg                                      DC_EX_tr_0_offset_poll_EW;
    reg                                      DC_EX_tr_0_offset_bubble_inserted_inp;
    reg                                      DC_EX_tr_0_offset_bubble_inserted;
    reg   [`T_PREG_DC_EX_tr_0_read_flag-1:0] DC_EX_tr_0_read_flag;
    reg   [`T_PREG_DC_EX_tr_0_read_flag-1:0] DC_EX_tr_0_read_flag_inp;
    reg                                      DC_EX_tr_0_read_flag_EW;
    reg   [`T_PREG_DC_EX_tr_0_read_flag-1:0] DC_EX_tr_0_read_flag_internal;
    reg   [`T_PREG_DC_EX_tr_1_BPR-1:0]       DC_EX_tr_1_BPR;
    reg   [`T_PREG_DC_EX_tr_1_BPR-1:0]       DC_EX_tr_1_BPR_inp;
    reg                                      DC_EX_tr_1_BPR_EW;
    reg   [`T_PREG_DC_EX_tr_1_BPR-1:0]       DC_EX_tr_1_BPR_internal;
    reg   [`T_PREG_DC_EX_tr_1_WBV-1:0]       DC_EX_tr_1_WBV;
    reg   [`T_PREG_DC_EX_tr_1_WBV-1:0]       DC_EX_tr_1_WBV_inp;
    reg                                      DC_EX_tr_1_WBV_EW;
    reg   [`T_PREG_DC_EX_tr_1_WBV-1:0]       DC_EX_tr_1_WBV_internal;
    reg   [`T_PREG_DC_EX_tr_1_rs1-1:0]       DC_EX_tr_1_rs1;
    reg   [`T_PREG_DC_EX_tr_1_rs1-1:0]       DC_EX_tr_1_rs1_inp;
    reg                                      DC_EX_tr_1_rs1_EW;
    reg   [`T_PREG_DC_EX_tr_1_rs1-1:0]       DC_EX_tr_1_rs1_internal;
    reg   [`T_PREG_DC_EX_tr_1_op1-1:0]       DC_EX_tr_1_op1;
    reg   [`T_PREG_DC_EX_tr_1_op1-1:0]       DC_EX_tr_1_op1_inp;
    reg                                      DC_EX_tr_1_op1_EW;
    reg   [`T_PREG_DC_EX_tr_1_op1-1:0]       DC_EX_tr_1_op1_internal;
    reg   [`T_PREG_DC_EX_tr_1_rs2-1:0]       DC_EX_tr_1_rs2;
    reg   [`T_PREG_DC_EX_tr_1_rs2-1:0]       DC_EX_tr_1_rs2_inp;
    reg                                      DC_EX_tr_1_rs2_EW;
    reg   [`T_PREG_DC_EX_tr_1_rs2-1:0]       DC_EX_tr_1_rs2_internal;
    reg   [`T_PREG_DC_EX_tr_1_op2-1:0]       DC_EX_tr_1_op2;
    reg   [`T_PREG_DC_EX_tr_1_op2-1:0]       DC_EX_tr_1_op2_inp;
    reg                                      DC_EX_tr_1_op2_EW;
    reg   [`T_PREG_DC_EX_tr_1_op2-1:0]       DC_EX_tr_1_op2_internal;
    reg   [`T_PREG_DC_EX_tr_1_op3-1:0]       DC_EX_tr_1_op3;
    reg   [`T_PREG_DC_EX_tr_1_op3-1:0]       DC_EX_tr_1_op3_inp;
    reg                                      DC_EX_tr_1_op3_EW;
    reg   [`T_PREG_DC_EX_tr_1_op3-1:0]       DC_EX_tr_1_op3_internal;
    reg   [`T_PREG_DC_EX_tr_1_rs3-1:0]       DC_EX_tr_1_rs3;
    reg   [`T_PREG_DC_EX_tr_1_rs3-1:0]       DC_EX_tr_1_rs3_inp;
    reg                                      DC_EX_tr_1_rs3_EW;
    reg   [`T_PREG_DC_EX_tr_1_rs3-1:0]       DC_EX_tr_1_rs3_internal;
    reg   [`T_PREG_DC_EX_insn_1-1:0]         DC_EX_insn_1;
    reg   [`T_PREG_DC_EX_insn_1-1:0]         DC_EX_insn_1_inp;
    reg                                      DC_EX_insn_1_EW;
    reg   [`T_PREG_DC_EX_insn_1-1:0]         DC_EX_insn_1_internal;
    reg   [`T_PREG_DC_EX_insn_0-1:0]         DC_EX_insn_0;
    reg   [`T_PREG_DC_EX_insn_0-1:0]         DC_EX_insn_0_inp;
    reg                                      DC_EX_insn_0_EW;
    reg   [`T_PREG_DC_EX_insn_0-1:0]         DC_EX_insn_0_internal;
    reg   [`T_PREG_DC_EX_pc-1:0]             DC_EX_pc;
    reg   [`T_PREG_DC_EX_pc-1:0]             DC_EX_pc_inp;
    reg                                      DC_EX_pc_EW;
    reg   [`T_PREG_DC_EX_pc-1:0]             DC_EX_pc_internal;



wire   latch_out_1;
wire   latch_out_2;
wire   latch_out_3;
wire   latch_out_4;
wire   latch_out_5;
wire   latch_out_6;
wire   latch_out_7;
wire   latch_out_8;
wire   latch_out_9;
wire   latch_out_10;
wire   latch_out_11;
wire   latch_out_12;
wire   latch_out_13;
wire   latch_out_14;
wire   latch_out_15;
wire   latch_out_16;
wire   latch_out_17;
wire   latch_out_18;
wire   latch_out_19;
wire   latch_out_20;
wire   latch_out_21;
wire   latch_out_22;
wire   latch_out_23;
wire   latch_out_24;
wire   latch_out_25;
wire   latch_out_26;
wire   latch_out_27;
wire   latch_out_28;
wire   latch_out_29;
wire   latch_out_30;
wire   latch_out_31;
wire   latch_out_32;
wire   latch_out_33;
wire   latch_out_34;
wire   latch_out_35;
wire   latch_out_36;
wire   latch_out_37;
wire   latch_out_38;
wire   latch_out_39;
wire   latch_out_40;
wire   latch_out_41;
wire   latch_out_42;
wire   latch_out_43;
wire   latch_out_44;

    wire   gclk_1;
	wire   gclk_2;
	wire   gclk_3;
	wire   gclk_4;
	wire   gclk_5;
	wire   gclk_6;
	wire   gclk_7;
	wire   gclk_8;
	wire   gclk_9;
	wire   gclk_10;
	wire   gclk_11;
	wire   gclk_12;
	wire   gclk_13;
	wire   gclk_14;
	wire   gclk_15;
	wire   gclk_16;
	wire   gclk_17;
	wire   gclk_18;
	wire   gclk_19;
	wire   gclk_20;
	wire   gclk_21;
	wire   gclk_22;
	wire   gclk_23;
	wire   gclk_24;
	wire   gclk_25;
    wire   gclk_26;
	wire   gclk_27;
	wire   gclk_28;
	wire   gclk_29;
	wire   gclk_30;
	wire   gclk_31;
	wire   gclk_32;
	wire   gclk_33;
	wire   gclk_34;
	wire   gclk_35;
	wire   gclk_36;
	wire   gclk_37;
	wire   gclk_38;
	wire   gclk_39;
	wire   gclk_40;
	wire   gclk_41;
	wire   gclk_42;
	wire   gclk_43;
	wire   gclk_44;
	






    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_cmp_ri_ex_write
    //Component Name : to_0_cmp_ri_ex

    always @(A_to_0_cmp_ri_ex_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_cmp_ri_ex_write

        // initialize
        to_0_cmp_ri_ex_value_inp = (A_to_0_cmp_ri_ex_DC_in);
        to_0_cmp_ri_ex_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_cmp_ri_ex_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_cmp_ri_ex_sync
    //Component Name : to_0_cmp_ri_ex
latch l1(DC_EX_tr_0_op1_EW, latch_out_1, clk_main_in);                          //CG 1
    and (gclk_1, clk_main_in, latch_out_1);
	
    always @(negedge rst_main_in or posedge gclk_1)

    begin: PROC_pipe_reg_to_0_cmp_ri_ex_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_cmp_ri_ex_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_cmp_ri_ex_EW == 1'b1)
            //begin
                to_0_cmp_ri_ex_value_internal <= (to_0_cmp_ri_ex_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_cmp_ri_ex_output_gen
    //Component Name : to_0_cmp_ri_ex

    always @(pipe_DC_EX_stall_in or to_0_cmp_ri_ex_value_internal)

    begin: PROC_pipe_reg_to_0_cmp_ri_ex_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_cmp_ri_ex_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_cmp_ri_ex_DC_EX_out = (to_0_cmp_ri_ex_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_cmp_rr_ex_write
    //Component Name : to_0_cmp_rr_ex

    always @(A_to_0_cmp_rr_ex_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_cmp_rr_ex_write

        // initialize
        to_0_cmp_rr_ex_value_inp = (A_to_0_cmp_rr_ex_DC_in);
        to_0_cmp_rr_ex_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_cmp_rr_ex_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_cmp_rr_ex_sync
    //Component Name : to_0_cmp_rr_ex

latch l2(to_0_cmp_rr_ex_EW, latch_out_2, clk_main_in);                          //CG 2
    and (gclk_2, clk_main_in, latch_out_2);
	
	
    always @(negedge rst_main_in or posedge gclk_2)

    begin: PROC_pipe_reg_to_0_cmp_rr_ex_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_cmp_rr_ex_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_cmp_rr_ex_EW == 1'b1)
            //begin
                to_0_cmp_rr_ex_value_internal <= (to_0_cmp_rr_ex_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_cmp_rr_ex_output_gen
    //Component Name : to_0_cmp_rr_ex

    always @(pipe_DC_EX_stall_in or to_0_cmp_rr_ex_value_internal)

    begin: PROC_pipe_reg_to_0_cmp_rr_ex_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_cmp_rr_ex_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_cmp_rr_ex_DC_EX_out = (to_0_cmp_rr_ex_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_branch_execute_write
    //Component Name : to_0_branch_execute

    always @(A_to_0_branch_execute_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_branch_execute_write

        // initialize
        to_0_branch_execute_value_inp = (A_to_0_branch_execute_DC_in);
        to_0_branch_execute_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_branch_execute_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_branch_execute_sync
    //Component Name : to_0_branch_execute

latch l3(to_0_branch_execute_EW, latch_out_3, clk_main_in);                          //CG 3
    and (gclk_3, clk_main_in, latch_out_3);


    always @(negedge rst_main_in or posedge gclk_3)

    begin: PROC_pipe_reg_to_0_branch_execute_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_branch_execute_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_branch_execute_EW == 1'b1)
            //begin
                to_0_branch_execute_value_internal <= (to_0_branch_execute_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_branch_execute_output_gen
    //Component Name : to_0_branch_execute

    always @(pipe_DC_EX_stall_in or to_0_branch_execute_value_internal)

    begin: PROC_pipe_reg_to_0_branch_execute_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_branch_execute_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_branch_execute_DC_EX_out = (to_0_branch_execute_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_custom_isa_rrr_ex_write
    //Component Name : to_0_custom_isa_rrr_ex

    always @(A_to_0_custom_isa_rrr_ex_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_custom_isa_rrr_ex_write

        // initialize
        to_0_custom_isa_rrr_ex_value_inp = (A_to_0_custom_isa_rrr_ex_DC_in);
        to_0_custom_isa_rrr_ex_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_custom_isa_rrr_ex_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_custom_isa_rrr_ex_sync
    //Component Name : to_0_custom_isa_rrr_ex

latch l4(to_0_custom_isa_rrr_ex_EW, latch_out_4, clk_main_in);                          //CG 4
    and (gclk_4, clk_main_in, latch_out_4);
	
	
    always @(negedge rst_main_in or posedge gclk_4)

    begin: PROC_pipe_reg_to_0_custom_isa_rrr_ex_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_custom_isa_rrr_ex_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_custom_isa_rrr_ex_EW == 1'b1)
            //begin
                to_0_custom_isa_rrr_ex_value_internal <= (to_0_custom_isa_rrr_ex_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_custom_isa_rrr_ex_output_gen
    //Component Name : to_0_custom_isa_rrr_ex

    always @(pipe_DC_EX_stall_in or to_0_custom_isa_rrr_ex_value_internal)

    begin: PROC_pipe_reg_to_0_custom_isa_rrr_ex_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_custom_isa_rrr_ex_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_custom_isa_rrr_ex_DC_EX_out = (to_0_custom_isa_rrr_ex_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_alu_rrr_ex_write
    //Component Name : to_0_alu_rrr_ex

    always @(A_to_0_alu_rrr_ex_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_alu_rrr_ex_write

        // initialize
        to_0_alu_rrr_ex_value_inp = (A_to_0_alu_rrr_ex_DC_in);
        to_0_alu_rrr_ex_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_alu_rrr_ex_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_alu_rrr_ex_sync
    //Component Name : to_0_alu_rrr_ex

latch l5(to_0_alu_rrr_ex_EW, latch_out_5, clk_main_in);                          //CG 5
    and (gclk_5, clk_main_in, latch_out_5);
		
    always @(negedge rst_main_in or posedge gclk_5)

    begin: PROC_pipe_reg_to_0_alu_rrr_ex_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_alu_rrr_ex_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_alu_rrr_ex_EW == 1'b1)
            //begin
                to_0_alu_rrr_ex_value_internal <= (to_0_alu_rrr_ex_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_alu_rrr_ex_output_gen
    //Component Name : to_0_alu_rrr_ex

    always @(pipe_DC_EX_stall_in or to_0_alu_rrr_ex_value_internal)

    begin: PROC_pipe_reg_to_0_alu_rrr_ex_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_alu_rrr_ex_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_alu_rrr_ex_DC_EX_out = (to_0_alu_rrr_ex_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_alu_rri_ex_write
    //Component Name : to_0_alu_rri_ex

    always @(A_to_0_alu_rri_ex_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_alu_rri_ex_write

        // initialize
        to_0_alu_rri_ex_value_inp = (A_to_0_alu_rri_ex_DC_in);
        to_0_alu_rri_ex_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_alu_rri_ex_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_alu_rri_ex_sync
    //Component Name : to_0_alu_rri_ex

latch l6(to_0_alu_rri_ex_EW, latch_out_6, clk_main_in);                          //CG 6
    and (gclk_6, clk_main_in, latch_out_6);
	
	
    always @(negedge rst_main_in or posedge gclk_6)

    begin: PROC_pipe_reg_to_0_alu_rri_ex_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_alu_rri_ex_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_alu_rri_ex_EW == 1'b1)
            //begin
                to_0_alu_rri_ex_value_internal <= (to_0_alu_rri_ex_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_alu_rri_ex_output_gen
    //Component Name : to_0_alu_rri_ex

    always @(pipe_DC_EX_stall_in or to_0_alu_rri_ex_value_internal)

    begin: PROC_pipe_reg_to_0_alu_rri_ex_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_alu_rri_ex_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_alu_rri_ex_DC_EX_out = (to_0_alu_rri_ex_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_address_generation_write
    //Component Name : to_0_address_generation

    always @(A_to_0_address_generation_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_address_generation_write

        // initialize
        to_0_address_generation_value_inp = (A_to_0_address_generation_DC_in);
        to_0_address_generation_EW = 1'b1;
        // stall with possible overwrite from
        if ((pipe_DC_EX_stall_in == 1'b1) && (A_to_0_address_generation_DC_in == 1'b0))
        begin
            to_0_address_generation_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_address_generation_sync
    //Component Name : to_0_address_generation

latch l7(to_0_address_generation_EW, latch_out_7, clk_main_in);                          //CG 7
    and (gclk_7, clk_main_in, latch_out_7);
	
	
    always @(negedge rst_main_in or posedge gclk_7)

    begin: PROC_pipe_reg_to_0_address_generation_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_address_generation_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_address_generation_EW == 1'b1)
            //begin
                to_0_address_generation_value_internal <= (to_0_address_generation_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_address_generation_output_gen
    //Component Name : to_0_address_generation

    always @(pipe_DC_EX_stall_in or to_0_address_generation_value_internal)

    begin: PROC_pipe_reg_to_0_address_generation_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_address_generation_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_address_generation_DC_EX_out = (to_0_address_generation_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_1_alu_rrr_ex_write
    //Component Name : to_1_alu_rrr_ex

    always @(A_to_1_alu_rrr_ex_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_1_alu_rrr_ex_write

        // initialize
        to_1_alu_rrr_ex_value_inp = (A_to_1_alu_rrr_ex_DC_in);
        to_1_alu_rrr_ex_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_1_alu_rrr_ex_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_1_alu_rrr_ex_sync
    //Component Name : to_1_alu_rrr_ex

latch l8(to_1_alu_rrr_ex_EW, latch_out_8, clk_main_in);                          //CG 8
    and (gclk_8, clk_main_in, latch_out_8);
	
    always @(negedge rst_main_in or posedge gclk_8)

    begin: PROC_pipe_reg_to_1_alu_rrr_ex_sync

        if (rst_main_in == 1'b0)
        begin
            to_1_alu_rrr_ex_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_1_alu_rrr_ex_EW == 1'b1)
            //begin
                to_1_alu_rrr_ex_value_internal <= (to_1_alu_rrr_ex_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_1_alu_rrr_ex_output_gen
    //Component Name : to_1_alu_rrr_ex

    always @(pipe_DC_EX_stall_in or to_1_alu_rrr_ex_value_internal)

    begin: PROC_pipe_reg_to_1_alu_rrr_ex_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_1_alu_rrr_ex_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_1_alu_rrr_ex_DC_EX_out = (to_1_alu_rrr_ex_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_1_alu_rri_ex_write
    //Component Name : to_1_alu_rri_ex

    always @(A_to_1_alu_rri_ex_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_1_alu_rri_ex_write

        // initialize
        to_1_alu_rri_ex_value_inp = (A_to_1_alu_rri_ex_DC_in);
        to_1_alu_rri_ex_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_1_alu_rri_ex_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_1_alu_rri_ex_sync
    //Component Name : to_1_alu_rri_ex

latch l9(to_1_alu_rri_ex_EW, latch_out_9, clk_main_in);                          //CG 9
    and (gclk_9, clk_main_in, latch_out_9);
	
    always @(negedge rst_main_in or posedge gclk_9)

    begin: PROC_pipe_reg_to_1_alu_rri_ex_sync

        if (rst_main_in == 1'b0)
        begin
            to_1_alu_rri_ex_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_1_alu_rri_ex_EW == 1'b1)
            //begin
                to_1_alu_rri_ex_value_internal <= (to_1_alu_rri_ex_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_1_alu_rri_ex_output_gen
    //Component Name : to_1_alu_rri_ex

    always @(pipe_DC_EX_stall_in or to_1_alu_rri_ex_value_internal)

    begin: PROC_pipe_reg_to_1_alu_rri_ex_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_1_alu_rri_ex_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_1_alu_rri_ex_DC_EX_out = (to_1_alu_rri_ex_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_bus_address_generation_write
    //Component Name : to_0_bus_address_generation

    always @(A_to_0_bus_address_generation_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_bus_address_generation_write

        // initialize
        to_0_bus_address_generation_value_inp = (A_to_0_bus_address_generation_DC_in);
        to_0_bus_address_generation_EW = 1'b1;
        // stall with possible overwrite from
        if ((pipe_DC_EX_stall_in == 1'b1) && (A_to_0_bus_address_generation_DC_in == 1'b0))
        begin
            to_0_bus_address_generation_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_bus_address_generation_sync
    //Component Name : to_0_bus_address_generation

latch l10(to_0_bus_address_generation_EW, latch_out_10, clk_main_in);                          //CG 10
    and (gclk_10, clk_main_in, latch_out_10);
	
	
    always @(negedge rst_main_in or posedge gclk_10)

    begin: PROC_pipe_reg_to_0_bus_address_generation_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_bus_address_generation_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_bus_address_generation_EW == 1'b1)
            //begin
                to_0_bus_address_generation_value_internal <= (to_0_bus_address_generation_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_bus_address_generation_output_gen
    //Component Name : to_0_bus_address_generation

    always @(pipe_DC_EX_stall_in or to_0_bus_address_generation_value_internal)

    begin: PROC_pipe_reg_to_0_bus_address_generation_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_bus_address_generation_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_bus_address_generation_DC_EX_out = (to_0_bus_address_generation_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_postoperation_acc_write
    //Component Name : to_0_postoperation_acc

    always @(A_to_0_postoperation_acc_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_postoperation_acc_write

        // initialize
        to_0_postoperation_acc_value_inp = (A_to_0_postoperation_acc_DC_in);
        to_0_postoperation_acc_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_postoperation_acc_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_postoperation_acc_sync
    //Component Name : to_0_postoperation_acc

latch l11(to_0_postoperation_acc_EW, latch_out_11, clk_main_in);                          //CG 11
    and (gclk_11, clk_main_in, latch_out_11);
	
    always @(negedge rst_main_in or posedge gclk_11)

    begin: PROC_pipe_reg_to_0_postoperation_acc_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_postoperation_acc_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_postoperation_acc_EW == 1'b1)
            //begin
                to_0_postoperation_acc_value_internal <= (to_0_postoperation_acc_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_postoperation_acc_output_gen
    //Component Name : to_0_postoperation_acc

    always @(pipe_DC_EX_stall_in or to_0_postoperation_acc_value_internal)

    begin: PROC_pipe_reg_to_0_postoperation_acc_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_postoperation_acc_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_postoperation_acc_DC_EX_out = (to_0_postoperation_acc_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_st_mem_write
    //Component Name : to_0_st_mem

    always @(A_to_0_st_mem_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_st_mem_write

        // initialize
        to_0_st_mem_value_inp = (A_to_0_st_mem_DC_in);
        to_0_st_mem_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_st_mem_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_st_mem_sync
    //Component Name : to_0_st_mem

latch l12(to_0_st_mem_EW, latch_out_12, clk_main_in);                          //CG 12
    and (gclk_12, clk_main_in, latch_out_12);

	
    always @(negedge rst_main_in or posedge gclk_12)

    begin: PROC_pipe_reg_to_0_st_mem_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_st_mem_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_st_mem_EW == 1'b1)
            //begin
                to_0_st_mem_value_internal <= (to_0_st_mem_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_st_mem_output_gen
    //Component Name : to_0_st_mem

    always @(pipe_DC_EX_stall_in or to_0_st_mem_value_internal)

    begin: PROC_pipe_reg_to_0_st_mem_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_st_mem_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_st_mem_DC_EX_out = (to_0_st_mem_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_ld_mem_write
    //Component Name : to_0_ld_mem

    always @(A_to_0_ld_mem_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_ld_mem_write

        // initialize
        to_0_ld_mem_value_inp = (A_to_0_ld_mem_DC_in);
        to_0_ld_mem_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_ld_mem_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_ld_mem_sync
    //Component Name : to_0_ld_mem

latch l13(to_0_ld_mem_EW, latch_out_13, clk_main_in);                          //CG 13
    and (gclk_13, clk_main_in, latch_out_13);
	
    always @(negedge rst_main_in or posedge gclk_13)

    begin: PROC_pipe_reg_to_0_ld_mem_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_ld_mem_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_ld_mem_EW == 1'b1)
            //begin
                to_0_ld_mem_value_internal <= (to_0_ld_mem_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_ld_mem_output_gen
    //Component Name : to_0_ld_mem

    always @(pipe_DC_EX_stall_in or to_0_ld_mem_value_internal)

    begin: PROC_pipe_reg_to_0_ld_mem_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_ld_mem_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_ld_mem_DC_EX_out = (to_0_ld_mem_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_st_bus_write
    //Component Name : to_0_st_bus

    always @(A_to_0_st_bus_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_st_bus_write

        // initialize
        to_0_st_bus_value_inp = (A_to_0_st_bus_DC_in);
        to_0_st_bus_EW = 1'b1;
        // stall with possible overwrite from
        if ((pipe_DC_EX_stall_in == 1'b1) && (A_to_0_st_bus_DC_in == 1'b0))
        begin
            to_0_st_bus_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_st_bus_sync
    //Component Name : to_0_st_bus

latch l14(to_0_st_bus_EW, latch_out_14, clk_main_in);                          //CG 14
    and (gclk_14, clk_main_in, latch_out_14);
	
	
    always @(negedge rst_main_in or posedge gclk_14)

    begin: PROC_pipe_reg_to_0_st_bus_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_st_bus_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_st_bus_EW == 1'b1)
            //begin
                to_0_st_bus_value_internal <= (to_0_st_bus_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_st_bus_output_gen
    //Component Name : to_0_st_bus

    always @(pipe_DC_EX_stall_in or to_0_st_bus_value_internal)

    begin: PROC_pipe_reg_to_0_st_bus_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_st_bus_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_st_bus_DC_EX_out = (to_0_st_bus_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_ld_bus_write
    //Component Name : to_0_ld_bus

    always @(A_to_0_ld_bus_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_ld_bus_write

        // initialize
        to_0_ld_bus_value_inp = (A_to_0_ld_bus_DC_in);
        to_0_ld_bus_EW = 1'b1;
        // stall with possible overwrite from
        if ((pipe_DC_EX_stall_in == 1'b1) && (A_to_0_ld_bus_DC_in == 1'b0))
        begin
            to_0_ld_bus_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_ld_bus_sync
    //Component Name : to_0_ld_bus

latch l15(to_0_ld_bus_EW, latch_out_15, clk_main_in);                          //CG 15
    and (gclk_15, clk_main_in, latch_out_15);
	
    always @(negedge rst_main_in or posedge gclk_15)

    begin: PROC_pipe_reg_to_0_ld_bus_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_ld_bus_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_ld_bus_EW == 1'b1)
            //begin
                to_0_ld_bus_value_internal <= (to_0_ld_bus_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_ld_bus_output_gen
    //Component Name : to_0_ld_bus

    always @(pipe_DC_EX_stall_in or to_0_ld_bus_value_internal)

    begin: PROC_pipe_reg_to_0_ld_bus_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_ld_bus_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_ld_bus_DC_EX_out = (to_0_ld_bus_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_writeback_dst_write
    //Component Name : to_0_writeback_dst

    always @(A_to_0_writeback_dst_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_writeback_dst_write

        // initialize
        to_0_writeback_dst_value_inp = (A_to_0_writeback_dst_DC_in);
        to_0_writeback_dst_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_writeback_dst_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_writeback_dst_sync
    //Component Name : to_0_writeback_dst

latch l16(to_0_writeback_dst_EW, latch_out_16, clk_main_in);                          //CG 16
    and (gclk_16, clk_main_in, latch_out_16);
	
    always @(negedge rst_main_in or posedge gclk_16)

    begin: PROC_pipe_reg_to_0_writeback_dst_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_writeback_dst_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_writeback_dst_EW == 1'b1)
            //begin
                to_0_writeback_dst_value_internal <= (to_0_writeback_dst_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_writeback_dst_output_gen
    //Component Name : to_0_writeback_dst

    always @(pipe_DC_EX_stall_in or to_0_writeback_dst_value_internal)

    begin: PROC_pipe_reg_to_0_writeback_dst_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_writeback_dst_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_writeback_dst_DC_EX_out = (to_0_writeback_dst_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_branch_writeback_write
    //Component Name : to_0_branch_writeback

    always @(A_to_0_branch_writeback_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_0_branch_writeback_write

        // initialize
        to_0_branch_writeback_value_inp = (A_to_0_branch_writeback_DC_in);
        to_0_branch_writeback_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_0_branch_writeback_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_branch_writeback_sync
    //Component Name : to_0_branch_writeback

latch l17(to_0_branch_writeback_EW, latch_out_17, clk_main_in);                          //CG 17
    and (gclk_17, clk_main_in, latch_out_17);
	
	
    always @(negedge rst_main_in or posedge gclk_17)

    begin: PROC_pipe_reg_to_0_branch_writeback_sync

        if (rst_main_in == 1'b0)
        begin
            to_0_branch_writeback_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_0_branch_writeback_EW == 1'b1)
            //begin
                to_0_branch_writeback_value_internal <= (to_0_branch_writeback_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_0_branch_writeback_output_gen
    //Component Name : to_0_branch_writeback

    always @(pipe_DC_EX_stall_in or to_0_branch_writeback_value_internal)

    begin: PROC_pipe_reg_to_0_branch_writeback_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_0_branch_writeback_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_0_branch_writeback_DC_EX_out = (to_0_branch_writeback_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_1_writeback_dst_write
    //Component Name : to_1_writeback_dst

    always @(A_to_1_writeback_dst_DC_in or pipe_DC_EX_stall_in)

    begin: PROC_pipe_reg_to_1_writeback_dst_write

        // initialize
        to_1_writeback_dst_value_inp = (A_to_1_writeback_dst_DC_in);
        to_1_writeback_dst_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            to_1_writeback_dst_EW = 1'b0;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_1_writeback_dst_sync
    //Component Name : to_1_writeback_dst

latch l18(to_1_writeback_dst_EW, latch_out_18, clk_main_in);                          //CG 18
    and (gclk_18, clk_main_in, latch_out_18);

	
    always @(negedge rst_main_in or posedge gclk_18)

    begin: PROC_pipe_reg_to_1_writeback_dst_sync

        if (rst_main_in == 1'b0)
        begin
            to_1_writeback_dst_value_internal <= 1'b0;
        end
        else  
        begin
            //if (to_1_writeback_dst_EW == 1'b1)
            //begin
                to_1_writeback_dst_value_internal <= (to_1_writeback_dst_value_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_pipe_reg_to_1_writeback_dst_output_gen
    //Component Name : to_1_writeback_dst

    always @(pipe_DC_EX_stall_in or to_1_writeback_dst_value_internal)

    begin: PROC_pipe_reg_to_1_writeback_dst_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            A_to_1_writeback_dst_DC_EX_out = 1'b0;
        end
        else 
        begin
            A_to_1_writeback_dst_DC_EX_out = (to_1_writeback_dst_value_internal);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs1_write
    //Component Name : DC_EX_tr_0_rs1

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_0_rs1_172_in or PREG_WR_DC_EX_tr_0_rs1_172_in or
             EW_DC_EX_tr_0_rs1_316_in or PREG_WR_DC_EX_tr_0_rs1_316_in or
             EW_DC_EX_tr_0_rs1_370_in or PREG_WR_DC_EX_tr_0_rs1_370_in or
             EW_DC_EX_tr_0_rs1_492_in or PREG_WR_DC_EX_tr_0_rs1_492_in or
             EW_DC_EX_tr_0_rs1_572_in or PREG_WR_DC_EX_tr_0_rs1_572_in or
             EW_DC_EX_tr_0_rs1_667_in or PREG_WR_DC_EX_tr_0_rs1_667_in or
             EW_DC_EX_tr_0_rs1_791_in or PREG_WR_DC_EX_tr_0_rs1_791_in or
             EW_DC_EX_tr_0_rs1_846_in or PREG_WR_DC_EX_tr_0_rs1_846_in or
             EW_DC_EX_tr_0_rs1_942_in or PREG_WR_DC_EX_tr_0_rs1_942_in or
             EW_DC_EX_tr_0_rs1_1226_in or PREG_WR_DC_EX_tr_0_rs1_1226_in or
             EW_DC_EX_tr_0_rs1_1322_in or PREG_WR_DC_EX_tr_0_rs1_1322_in)

    begin: PROC_DC_EX_tr_0_rs1_write

        // initialize
        DC_EX_tr_0_rs1_inp = 8'd0;
        DC_EX_tr_0_rs1_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_0_custom_isa_rrr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_172_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_172_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_cmp_ri", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_316_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_316_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_cmp_rr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_370_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_370_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_bra", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_492_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_492_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrri", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_572_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_572_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrrr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_667_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_667_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rri", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_791_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_791_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_st_rr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_846_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_846_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_ld_rr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_942_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_942_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_stb_rr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_1226_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_1226_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_ldb_rr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_rs1_1322_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_inp = (PREG_WR_DC_EX_tr_0_rs1_1322_in);
            DC_EX_tr_0_rs1_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs1_sync
    //Component Name : DC_EX_tr_0_rs1

latch l19(DC_EX_tr_0_rs1_EW, latch_out_19, clk_main_in);                          //CG 19
    and (gclk_19, clk_main_in, latch_out_19);
		
    always @(negedge rst_main_in or posedge gclk_19)

    begin: PROC_DC_EX_tr_0_rs1_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_rs1_internal <= 8'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_rs1_EW == 1'b1)
            //begin
                DC_EX_tr_0_rs1_internal <= (DC_EX_tr_0_rs1_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs1_output_gen
    //Component Name : DC_EX_tr_0_rs1

    always @(pipe_DC_EX_stall_in or DC_EX_tr_0_rs1_internal)

    begin: PROC_DC_EX_tr_0_rs1_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_rs1 = 8'd0;
        end
        else 
        begin
            DC_EX_tr_0_rs1 = (DC_EX_tr_0_rs1_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs1_poll_write
    //Component Name : DC_EX_tr_0_rs1

    always @(DC_EX_tr_0_rs1_internal or pipe_DC_EX_stall_in)

    begin: PROC_DC_EX_tr_0_rs1_poll_write

        // initialize
        DC_EX_tr_0_rs1_poll_inp = (DC_EX_tr_0_rs1_internal);
        DC_EX_tr_0_rs1_poll_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_rs1_poll_EW = 1'b0;
        end
        // write values
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs1_poll_sync
    //Component Name : DC_EX_tr_0_rs1

latch l20(DC_EX_tr_0_rs1_poll_EW, latch_out_20, clk_main_in);                          //CG 20
    and (gclk_20, clk_main_in, latch_out_20);
	
    always @(negedge rst_main_in or posedge gclk_20)

    begin: PROC_DC_EX_tr_0_rs1_poll_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_rs1_poll <= 8'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_rs1_poll_EW == 1'b1)
            //begin
                DC_EX_tr_0_rs1_poll <= (DC_EX_tr_0_rs1_poll_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs1_poll_read
    //Component Name : DC_EX_tr_0_rs1

    always @(pipe_DC_EX_stall_in or pipe_EX_MEM_stall_in or DC_EX_tr_0_rs1_bubble_inserted or
             DC_EX_tr_0_rs1_poll or DC_EX_tr_0_rs1_internal)

    begin: PROC_DC_EX_tr_0_rs1_poll_read

        //Read access from operation "to_0_cmp_ri_ex", "to_0_bypass_src1_ex", "to_0_cmp_rr_ex", "to_0_branch_execute", "to_0_custom_isa_rrr_ex", "to_0_alu_rrr_ex", "to_0_alu_rri_ex", "to_0_address_generation", "to_0_bus_address_generation"
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            if ((pipe_EX_MEM_stall_in == 1'b1) && (DC_EX_tr_0_rs1_bubble_inserted == 1'b0))
            begin
                // stall and POLL: output of poll_reg
                PREG_RD_DC_EX_tr_0_rs1_1379_out = (DC_EX_tr_0_rs1_poll);
            end
            else 
            begin
                // stall: output of bubble(0)
                PREG_RD_DC_EX_tr_0_rs1_1379_out = 8'd0;
            end
        end
        else 
        begin
            // default: register value
            PREG_RD_DC_EX_tr_0_rs1_1379_out = (DC_EX_tr_0_rs1_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs1_bubble_inserted_write
    //Component Name : DC_EX_tr_0_rs1

    always @(pipe_DC_EX_stall_in or pipe_EX_MEM_stall_in)

    begin: PROC_DC_EX_tr_0_rs1_bubble_inserted_write

        DC_EX_tr_0_rs1_bubble_inserted_inp = 1'b0;
        if ((pipe_DC_EX_stall_in == 1'b1) && (pipe_EX_MEM_stall_in == 1'b0))
        begin
            DC_EX_tr_0_rs1_bubble_inserted_inp = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs1_bubble_inserted_sync
    //Component Name : DC_EX_tr_0_rs1

		
    always @(negedge rst_main_in or posedge clk_main_in)

    begin: PROC_DC_EX_tr_0_rs1_bubble_inserted_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_rs1_bubble_inserted <= 1'b0;
        end
        else  
        begin
            DC_EX_tr_0_rs1_bubble_inserted <= (DC_EX_tr_0_rs1_bubble_inserted_inp);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op1_write
    //Component Name : DC_EX_tr_0_op1

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_0_op1_212_in or PREG_WR_DC_EX_tr_0_op1_212_in or
             EW_DC_EX_tr_0_op1_343_in or PREG_WR_DC_EX_tr_0_op1_343_in or
             EW_DC_EX_tr_0_op1_397_in or PREG_WR_DC_EX_tr_0_op1_397_in or
             EW_DC_EX_tr_0_op1_519_in or PREG_WR_DC_EX_tr_0_op1_519_in or
             EW_DC_EX_tr_0_op1_599_in or PREG_WR_DC_EX_tr_0_op1_599_in or
             EW_DC_EX_tr_0_op1_694_in or PREG_WR_DC_EX_tr_0_op1_694_in or
             EW_DC_EX_tr_0_op1_818_in or PREG_WR_DC_EX_tr_0_op1_818_in or
             EW_DC_EX_tr_0_op1_873_in or PREG_WR_DC_EX_tr_0_op1_873_in or
             EW_DC_EX_tr_0_op1_969_in or PREG_WR_DC_EX_tr_0_op1_969_in or
             EW_DC_EX_tr_0_op1_1253_in or PREG_WR_DC_EX_tr_0_op1_1253_in or
             EW_DC_EX_tr_0_op1_1349_in or PREG_WR_DC_EX_tr_0_op1_1349_in)

    begin: PROC_DC_EX_tr_0_op1_write

        // initialize
        DC_EX_tr_0_op1_inp = 32'd0;
        DC_EX_tr_0_op1_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_op1_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_0_custom_isa_rrr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_212_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_212_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_cmp_ri", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_343_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_343_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_cmp_rr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_397_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_397_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_bra", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_519_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_519_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrri", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_599_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_599_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrrr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_694_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_694_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rri", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_818_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_818_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_st_rr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_873_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_873_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_ld_rr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_969_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_969_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_stb_rr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_1253_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_1253_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_ldb_rr", "to_0_bypass_src1_dc"
        if (EW_DC_EX_tr_0_op1_1349_in == 1'b1)
        begin
            DC_EX_tr_0_op1_inp = (PREG_WR_DC_EX_tr_0_op1_1349_in);
            DC_EX_tr_0_op1_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op1_sync
    //Component Name : DC_EX_tr_0_op1

latch l21(DC_EX_tr_0_op1_EW, latch_out_21, clk_main_in);                          //CG 21
    and (gclk_21, clk_main_in, latch_out_21);
		
    always @(negedge rst_main_in or posedge gclk_21)

    begin: PROC_DC_EX_tr_0_op1_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_op1_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_op1_EW == 1'b1)
            //begin
                DC_EX_tr_0_op1_internal <= (DC_EX_tr_0_op1_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op1_output_gen
    //Component Name : DC_EX_tr_0_op1

    always @(pipe_DC_EX_stall_in or DC_EX_tr_0_op1_internal)

    begin: PROC_DC_EX_tr_0_op1_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_op1 = 32'd0;
        end
        else 
        begin
            DC_EX_tr_0_op1 = (DC_EX_tr_0_op1_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op1_poll_write
    //Component Name : DC_EX_tr_0_op1

    always @(DC_EX_tr_0_op1_internal or pipe_DC_EX_stall_in)

    begin: PROC_DC_EX_tr_0_op1_poll_write

        // initialize
        DC_EX_tr_0_op1_poll_inp = (DC_EX_tr_0_op1_internal);
        DC_EX_tr_0_op1_poll_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_op1_poll_EW = 1'b0;
        end
        // write values
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op1_poll_sync
    //Component Name : DC_EX_tr_0_op1

latch l22(DC_EX_tr_0_op1_poll_EW, latch_out_22, clk_main_in);                          //CG 22
    and (gclk_22, clk_main_in, latch_out_22);
		
    always @(negedge rst_main_in or posedge gclk_22)

    begin: PROC_DC_EX_tr_0_op1_poll_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_op1_poll <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_op1_poll_EW == 1'b1)
            //begin
                DC_EX_tr_0_op1_poll <= (DC_EX_tr_0_op1_poll_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op1_poll_read
    //Component Name : DC_EX_tr_0_op1

    always @(pipe_DC_EX_stall_in or pipe_EX_MEM_stall_in or DC_EX_tr_0_op1_bubble_inserted or
             DC_EX_tr_0_op1_poll or DC_EX_tr_0_op1_internal)

    begin: PROC_DC_EX_tr_0_op1_poll_read

        //Read access from operation "to_0_cmp_ri_ex", "to_0_bypass_src1_ex", "to_0_cmp_rr_ex", "to_0_branch_execute", "to_0_custom_isa_rrr_ex", "to_0_alu_rrr_ex", "to_0_alu_rri_ex", "to_0_address_generation", "to_0_bus_address_generation"
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            if ((pipe_EX_MEM_stall_in == 1'b1) && (DC_EX_tr_0_op1_bubble_inserted == 1'b0))
            begin
                // stall and POLL: output of poll_reg
                PREG_RD_DC_EX_tr_0_op1_1398_out = (DC_EX_tr_0_op1_poll);
            end
            else 
            begin
                // stall: output of bubble(0)
                PREG_RD_DC_EX_tr_0_op1_1398_out = 32'd0;
            end
        end
        else 
        begin
            // default: register value
            PREG_RD_DC_EX_tr_0_op1_1398_out = (DC_EX_tr_0_op1_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op1_bubble_inserted_write
    //Component Name : DC_EX_tr_0_op1

    always @(pipe_DC_EX_stall_in or pipe_EX_MEM_stall_in)

    begin: PROC_DC_EX_tr_0_op1_bubble_inserted_write

        DC_EX_tr_0_op1_bubble_inserted_inp = 1'b0;
        if ((pipe_DC_EX_stall_in == 1'b1) && (pipe_EX_MEM_stall_in == 1'b0))
        begin
            DC_EX_tr_0_op1_bubble_inserted_inp = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op1_bubble_inserted_sync
    //Component Name : DC_EX_tr_0_op1

    always @(negedge rst_main_in or posedge clk_main_in)

    begin: PROC_DC_EX_tr_0_op1_bubble_inserted_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_op1_bubble_inserted <= 1'b0;
        end
        else  
        begin
            DC_EX_tr_0_op1_bubble_inserted <= (DC_EX_tr_0_op1_bubble_inserted_inp);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs2_write
    //Component Name : DC_EX_tr_0_rs2

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_0_rs2_242_in or PREG_WR_DC_EX_tr_0_rs2_242_in or
             EW_DC_EX_tr_0_rs2_423_in or PREG_WR_DC_EX_tr_0_rs2_423_in or
             EW_DC_EX_tr_0_rs2_625_in or PREG_WR_DC_EX_tr_0_rs2_625_in or
             EW_DC_EX_tr_0_rs2_720_in or PREG_WR_DC_EX_tr_0_rs2_720_in or
             EW_DC_EX_tr_0_rs2_899_in or PREG_WR_DC_EX_tr_0_rs2_899_in or
             EW_DC_EX_tr_0_rs2_1279_in or PREG_WR_DC_EX_tr_0_rs2_1279_in)

    begin: PROC_DC_EX_tr_0_rs2_write

        // initialize
        DC_EX_tr_0_rs2_inp = 8'd0;
        DC_EX_tr_0_rs2_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_rs2_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_0_custom_isa_rrr", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_rs2_242_in == 1'b1)
        begin
            DC_EX_tr_0_rs2_inp = (PREG_WR_DC_EX_tr_0_rs2_242_in);
            DC_EX_tr_0_rs2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_cmp_rr", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_rs2_423_in == 1'b1)
        begin
            DC_EX_tr_0_rs2_inp = (PREG_WR_DC_EX_tr_0_rs2_423_in);
            DC_EX_tr_0_rs2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrri", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_rs2_625_in == 1'b1)
        begin
            DC_EX_tr_0_rs2_inp = (PREG_WR_DC_EX_tr_0_rs2_625_in);
            DC_EX_tr_0_rs2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrrr", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_rs2_720_in == 1'b1)
        begin
            DC_EX_tr_0_rs2_inp = (PREG_WR_DC_EX_tr_0_rs2_720_in);
            DC_EX_tr_0_rs2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_st_rr", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_rs2_899_in == 1'b1)
        begin
            DC_EX_tr_0_rs2_inp = (PREG_WR_DC_EX_tr_0_rs2_899_in);
            DC_EX_tr_0_rs2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_stb_rr", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_rs2_1279_in == 1'b1)
        begin
            DC_EX_tr_0_rs2_inp = (PREG_WR_DC_EX_tr_0_rs2_1279_in);
            DC_EX_tr_0_rs2_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs2_sync
    //Component Name : DC_EX_tr_0_rs2

latch l23(DC_EX_tr_0_rs2_EW, latch_out_23, clk_main_in);                          //CG 23
    and (gclk_23, clk_main_in, latch_out_23);
		
    always @(negedge rst_main_in or posedge gclk_23)

    begin: PROC_DC_EX_tr_0_rs2_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_rs2_internal <= 8'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_rs2_EW == 1'b1)
            //begin
                DC_EX_tr_0_rs2_internal <= (DC_EX_tr_0_rs2_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs2_output_gen
    //Component Name : DC_EX_tr_0_rs2

    always @(pipe_DC_EX_stall_in or DC_EX_tr_0_rs2_internal)

    begin: PROC_DC_EX_tr_0_rs2_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_rs2 = 8'd0;
        end
        else 
        begin
            DC_EX_tr_0_rs2 = (DC_EX_tr_0_rs2_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs2_read
    //Component Name : DC_EX_tr_0_rs2

    always @(DC_EX_tr_0_rs2)

    begin: PROC_DC_EX_tr_0_rs2_read

        pipe_EX_tr_0_rs2_forwarded_value_out = (DC_EX_tr_0_rs2);
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs2_poll_write
    //Component Name : DC_EX_tr_0_rs2

    always @(DC_EX_tr_0_rs2_internal or pipe_DC_EX_stall_in)

    begin: PROC_DC_EX_tr_0_rs2_poll_write

        // initialize
        DC_EX_tr_0_rs2_poll_inp = (DC_EX_tr_0_rs2_internal);
        DC_EX_tr_0_rs2_poll_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_rs2_poll_EW = 1'b0;
        end
        // write values
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs2_poll_sync
    //Component Name : DC_EX_tr_0_rs2

latch l24(DC_EX_tr_0_rs2_poll_EW, latch_out_24, clk_main_in);                          //CG 24
    and (gclk_24, clk_main_in, latch_out_24);

	
    always @(negedge rst_main_in or posedge gclk_24)

    begin: PROC_DC_EX_tr_0_rs2_poll_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_rs2_poll <= 8'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_rs2_poll_EW == 1'b1)
            //begin
                DC_EX_tr_0_rs2_poll <= (DC_EX_tr_0_rs2_poll_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs2_poll_read
    //Component Name : DC_EX_tr_0_rs2

    always @(pipe_DC_EX_stall_in or pipe_EX_MEM_stall_in or DC_EX_tr_0_rs2_bubble_inserted or
             DC_EX_tr_0_rs2_poll or DC_EX_tr_0_rs2_internal)

    begin: PROC_DC_EX_tr_0_rs2_poll_read

        //Read access from operation "to_0_cmp_ri_ex", "to_0_bypass_src2_ex", "to_0_cmp_rr_ex", "to_0_custom_isa_rrr_ex", "to_0_alu_rrr_ex", "to_0_address_generation", "to_0_bus_address_generation"
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            if ((pipe_EX_MEM_stall_in == 1'b1) && (DC_EX_tr_0_rs2_bubble_inserted == 1'b0))
            begin
                // stall and POLL: output of poll_reg
                PREG_RD_DC_EX_tr_0_rs2_1401_out = (DC_EX_tr_0_rs2_poll);
            end
            else 
            begin
                // stall: output of bubble(0)
                PREG_RD_DC_EX_tr_0_rs2_1401_out = 8'd0;
            end
        end
        else 
        begin
            // default: register value
            PREG_RD_DC_EX_tr_0_rs2_1401_out = (DC_EX_tr_0_rs2_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs2_bubble_inserted_write
    //Component Name : DC_EX_tr_0_rs2

    always @(pipe_DC_EX_stall_in or pipe_EX_MEM_stall_in)

    begin: PROC_DC_EX_tr_0_rs2_bubble_inserted_write

        DC_EX_tr_0_rs2_bubble_inserted_inp = 1'b0;
        if ((pipe_DC_EX_stall_in == 1'b1) && (pipe_EX_MEM_stall_in == 1'b0))
        begin
            DC_EX_tr_0_rs2_bubble_inserted_inp = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs2_bubble_inserted_sync
    //Component Name : DC_EX_tr_0_rs2

    always @(negedge rst_main_in or posedge clk_main_in)

    begin: PROC_DC_EX_tr_0_rs2_bubble_inserted_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_rs2_bubble_inserted <= 1'b0;
        end
        else  
        begin
            DC_EX_tr_0_rs2_bubble_inserted <= (DC_EX_tr_0_rs2_bubble_inserted_inp);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op2_write
    //Component Name : DC_EX_tr_0_op2

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_0_op2_257_in or PREG_WR_DC_EX_tr_0_op2_257_in or
             EW_DC_EX_tr_0_op2_369_in or PREG_WR_DC_EX_tr_0_op2_369_in or
             EW_DC_EX_tr_0_op2_438_in or PREG_WR_DC_EX_tr_0_op2_438_in or
             EW_DC_EX_tr_0_op2_640_in or PREG_WR_DC_EX_tr_0_op2_640_in or
             EW_DC_EX_tr_0_op2_735_in or PREG_WR_DC_EX_tr_0_op2_735_in or
             EW_DC_EX_tr_0_op2_844_in or PREG_WR_DC_EX_tr_0_op2_844_in or
             EW_DC_EX_tr_0_op2_914_in or PREG_WR_DC_EX_tr_0_op2_914_in or
             EW_DC_EX_tr_0_op2_1294_in or PREG_WR_DC_EX_tr_0_op2_1294_in)

    begin: PROC_DC_EX_tr_0_op2_write

        // initialize
        DC_EX_tr_0_op2_inp = 32'd0;
        DC_EX_tr_0_op2_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_op2_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_0_custom_isa_rrr", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_op2_257_in == 1'b1)
        begin
            DC_EX_tr_0_op2_inp = (PREG_WR_DC_EX_tr_0_op2_257_in);
            DC_EX_tr_0_op2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_cmp_ri"
        if (EW_DC_EX_tr_0_op2_369_in == 1'b1)
        begin
            DC_EX_tr_0_op2_inp = (PREG_WR_DC_EX_tr_0_op2_369_in);
            DC_EX_tr_0_op2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_cmp_rr", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_op2_438_in == 1'b1)
        begin
            DC_EX_tr_0_op2_inp = (PREG_WR_DC_EX_tr_0_op2_438_in);
            DC_EX_tr_0_op2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrri", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_op2_640_in == 1'b1)
        begin
            DC_EX_tr_0_op2_inp = (PREG_WR_DC_EX_tr_0_op2_640_in);
            DC_EX_tr_0_op2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrrr", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_op2_735_in == 1'b1)
        begin
            DC_EX_tr_0_op2_inp = (PREG_WR_DC_EX_tr_0_op2_735_in);
            DC_EX_tr_0_op2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rri"
        if (EW_DC_EX_tr_0_op2_844_in == 1'b1)
        begin
            DC_EX_tr_0_op2_inp = (PREG_WR_DC_EX_tr_0_op2_844_in);
            DC_EX_tr_0_op2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_st_rr", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_op2_914_in == 1'b1)
        begin
            DC_EX_tr_0_op2_inp = (PREG_WR_DC_EX_tr_0_op2_914_in);
            DC_EX_tr_0_op2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_stb_rr", "to_0_bypass_src2_dc"
        if (EW_DC_EX_tr_0_op2_1294_in == 1'b1)
        begin
            DC_EX_tr_0_op2_inp = (PREG_WR_DC_EX_tr_0_op2_1294_in);
            DC_EX_tr_0_op2_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op2_sync
    //Component Name : DC_EX_tr_0_op2

latch l25(DC_EX_tr_0_op2_EW, latch_out_25, clk_main_in);                          //CG 25
    and (gclk_25, clk_main_in, latch_out_25);

	
    always @(negedge rst_main_in or posedge gclk_25)

    begin: PROC_DC_EX_tr_0_op2_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_op2_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_op2_EW == 1'b1)
            //begin
                DC_EX_tr_0_op2_internal <= (DC_EX_tr_0_op2_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op2_output_gen
    //Component Name : DC_EX_tr_0_op2

    always @(pipe_DC_EX_stall_in or DC_EX_tr_0_op2_internal)

    begin: PROC_DC_EX_tr_0_op2_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_op2 = 32'd0;
        end
        else 
        begin
            DC_EX_tr_0_op2 = (DC_EX_tr_0_op2_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op2_read
    //Component Name : DC_EX_tr_0_op2

    always @(DC_EX_tr_0_op2)

    begin: PROC_DC_EX_tr_0_op2_read

        pipe_EX_tr_0_op2_forwarded_value_out = (DC_EX_tr_0_op2);
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op2_poll_write
    //Component Name : DC_EX_tr_0_op2

    always @(DC_EX_tr_0_op2_internal or pipe_DC_EX_stall_in)

    begin: PROC_DC_EX_tr_0_op2_poll_write

        // initialize
        DC_EX_tr_0_op2_poll_inp = (DC_EX_tr_0_op2_internal);
        DC_EX_tr_0_op2_poll_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_op2_poll_EW = 1'b0;
        end
        // write values
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op2_poll_sync
    //Component Name : DC_EX_tr_0_op2

latch l26(DC_EX_tr_0_op2_poll_EW, latch_out_26, clk_main_in);                          //CG 26
    and (gclk_26, clk_main_in, latch_out_26);
		
    always @(negedge rst_main_in or posedge gclk_26)

    begin: PROC_DC_EX_tr_0_op2_poll_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_op2_poll <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_op2_poll_EW == 1'b1)
            //begin
                DC_EX_tr_0_op2_poll <= (DC_EX_tr_0_op2_poll_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op2_poll_read
    //Component Name : DC_EX_tr_0_op2

    always @(pipe_DC_EX_stall_in or pipe_EX_MEM_stall_in or DC_EX_tr_0_op2_bubble_inserted or
             DC_EX_tr_0_op2_poll or DC_EX_tr_0_op2_internal)

    begin: PROC_DC_EX_tr_0_op2_poll_read

        //Read access from operation "to_0_cmp_ri_ex", "to_0_bypass_src2_ex", "to_0_cmp_rr_ex", "to_0_custom_isa_rrr_ex", "to_0_alu_rrr_ex", "to_0_address_generation", "to_0_bus_address_generation"
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            if ((pipe_EX_MEM_stall_in == 1'b1) && (DC_EX_tr_0_op2_bubble_inserted == 1'b0))
            begin
                // stall and POLL: output of poll_reg
                PREG_RD_DC_EX_tr_0_op2_1420_out = (DC_EX_tr_0_op2_poll);
            end
            else 
            begin
                // stall: output of bubble(0)
                PREG_RD_DC_EX_tr_0_op2_1420_out = 32'd0;
            end
        end
        else 
        begin
            // default: register value
            PREG_RD_DC_EX_tr_0_op2_1420_out = (DC_EX_tr_0_op2_internal);
        end
        //Read access from operation "to_0_alu_rri_ex"
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            if ((pipe_EX_MEM_stall_in == 1'b1) && (DC_EX_tr_0_op2_bubble_inserted == 1'b0))
            begin
                // stall and POLL: output of poll_reg
                PREG_RD_DC_EX_tr_0_op2_1980_out = (DC_EX_tr_0_op2_poll);
            end
            else 
            begin
                // stall: output of bubble(0)
                PREG_RD_DC_EX_tr_0_op2_1980_out = 32'd0;
            end
        end
        else 
        begin
            // default: register value
            PREG_RD_DC_EX_tr_0_op2_1980_out = (DC_EX_tr_0_op2_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op2_bubble_inserted_write
    //Component Name : DC_EX_tr_0_op2

    always @(pipe_DC_EX_stall_in or pipe_EX_MEM_stall_in)

    begin: PROC_DC_EX_tr_0_op2_bubble_inserted_write

        DC_EX_tr_0_op2_bubble_inserted_inp = 1'b0;
        if ((pipe_DC_EX_stall_in == 1'b1) && (pipe_EX_MEM_stall_in == 1'b0))
        begin
            DC_EX_tr_0_op2_bubble_inserted_inp = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op2_bubble_inserted_sync
    //Component Name : DC_EX_tr_0_op2

    always @(negedge rst_main_in or posedge clk_main_in)

    begin: PROC_DC_EX_tr_0_op2_bubble_inserted_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_op2_bubble_inserted <= 1'b0;
        end
        else  
        begin
            DC_EX_tr_0_op2_bubble_inserted <= (DC_EX_tr_0_op2_bubble_inserted_inp);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs3_write
    //Component Name : DC_EX_tr_0_rs3

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_0_rs3_283_in or PREG_WR_DC_EX_tr_0_rs3_283_in or
             EW_DC_EX_tr_0_rs3_761_in or PREG_WR_DC_EX_tr_0_rs3_761_in)

    begin: PROC_DC_EX_tr_0_rs3_write

        // initialize
        DC_EX_tr_0_rs3_inp = 8'd0;
        DC_EX_tr_0_rs3_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_rs3_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_0_custom_isa_rrr", "to_0_bypass_dst_dc"
        if (EW_DC_EX_tr_0_rs3_283_in == 1'b1)
        begin
            DC_EX_tr_0_rs3_inp = (PREG_WR_DC_EX_tr_0_rs3_283_in);
            DC_EX_tr_0_rs3_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrrr", "to_0_bypass_src3_dc"
        if (EW_DC_EX_tr_0_rs3_761_in == 1'b1)
        begin
            DC_EX_tr_0_rs3_inp = (PREG_WR_DC_EX_tr_0_rs3_761_in);
            DC_EX_tr_0_rs3_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs3_sync
    //Component Name : DC_EX_tr_0_rs3

latch l27(DC_EX_tr_0_rs3_EW, latch_out_27, clk_main_in);                          //CG 27
    and (gclk_27, clk_main_in, latch_out_27);

	
    always @(negedge rst_main_in or posedge gclk_27)

    begin: PROC_DC_EX_tr_0_rs3_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_rs3_internal <= 8'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_rs3_EW == 1'b1)
            //begin
                DC_EX_tr_0_rs3_internal <= (DC_EX_tr_0_rs3_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs3_output_gen
    //Component Name : DC_EX_tr_0_rs3

    always @(pipe_DC_EX_stall_in or DC_EX_tr_0_rs3_internal)

    begin: PROC_DC_EX_tr_0_rs3_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_rs3 = 8'd0;
        end
        else 
        begin
            DC_EX_tr_0_rs3 = (DC_EX_tr_0_rs3_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_rs3_read
    //Component Name : DC_EX_tr_0_rs3

    always @(DC_EX_tr_0_rs3)

    begin: PROC_DC_EX_tr_0_rs3_read

        //Read access from operation "to_0_custom_isa_rrr_ex", "to_0_bypass_src3_ex", "to_0_alu_rrr_ex"
        PREG_RD_DC_EX_tr_0_rs3_1676_out = (DC_EX_tr_0_rs3);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op3_write
    //Component Name : DC_EX_tr_0_op3

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_0_op3_287_in or PREG_WR_DC_EX_tr_0_op3_287_in or
             EW_DC_EX_tr_0_op3_666_in or PREG_WR_DC_EX_tr_0_op3_666_in or
             EW_DC_EX_tr_0_op3_765_in or PREG_WR_DC_EX_tr_0_op3_765_in or
             EW_DC_EX_tr_0_op3_845_in or PREG_WR_DC_EX_tr_0_op3_845_in)

    begin: PROC_DC_EX_tr_0_op3_write

        // initialize
        DC_EX_tr_0_op3_inp = 32'd0;
        DC_EX_tr_0_op3_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_op3_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_0_custom_isa_rrr", "to_0_bypass_dst_dc"
        if (EW_DC_EX_tr_0_op3_287_in == 1'b1)
        begin
            DC_EX_tr_0_op3_inp = (PREG_WR_DC_EX_tr_0_op3_287_in);
            DC_EX_tr_0_op3_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrri"
        if (EW_DC_EX_tr_0_op3_666_in == 1'b1)
        begin
            DC_EX_tr_0_op3_inp = (PREG_WR_DC_EX_tr_0_op3_666_in);
            DC_EX_tr_0_op3_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rrrr", "to_0_bypass_src3_dc"
        if (EW_DC_EX_tr_0_op3_765_in == 1'b1)
        begin
            DC_EX_tr_0_op3_inp = (PREG_WR_DC_EX_tr_0_op3_765_in);
            DC_EX_tr_0_op3_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_alu_rri"
        if (EW_DC_EX_tr_0_op3_845_in == 1'b1)
        begin
            DC_EX_tr_0_op3_inp = (PREG_WR_DC_EX_tr_0_op3_845_in);
            DC_EX_tr_0_op3_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op3_sync
    //Component Name : DC_EX_tr_0_op3

latch l28(DC_EX_tr_0_op3_EW, latch_out_28, clk_main_in);                          //CG 28
    and (gclk_28, clk_main_in, latch_out_28);

	
    always @(negedge rst_main_in or posedge gclk_28)

    begin: PROC_DC_EX_tr_0_op3_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_op3_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_op3_EW == 1'b1)
            //begin
                DC_EX_tr_0_op3_internal <= (DC_EX_tr_0_op3_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op3_output_gen
    //Component Name : DC_EX_tr_0_op3

    always @(pipe_DC_EX_stall_in or DC_EX_tr_0_op3_internal)

    begin: PROC_DC_EX_tr_0_op3_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_op3 = 32'd0;
        end
        else 
        begin
            DC_EX_tr_0_op3 = (DC_EX_tr_0_op3_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_op3_read
    //Component Name : DC_EX_tr_0_op3

    always @(DC_EX_tr_0_op3)

    begin: PROC_DC_EX_tr_0_op3_read

        //Read access from operation "to_0_custom_isa_rrr_ex", "to_0_bypass_src3_ex", "to_0_alu_rrr_ex"
        PREG_RD_DC_EX_tr_0_op3_1695_out = (DC_EX_tr_0_op3);
        pipe_EX_tr_0_op3_forwarded_value_out = (DC_EX_tr_0_op3);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_WBV_write
    //Component Name : DC_EX_tr_0_WBV

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_0_WBV_557_in or PREG_WR_DC_EX_tr_0_WBV_557_in or
             EW_DC_EX_tr_0_WBV_566_in or PREG_WR_DC_EX_tr_0_WBV_566_in or
             EW_DC_EX_tr_0_WBV_571_in or PREG_WR_DC_EX_tr_0_WBV_571_in)

    begin: PROC_DC_EX_tr_0_WBV_write

        // initialize
        DC_EX_tr_0_WBV_inp = 32'd0;
        DC_EX_tr_0_WBV_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_WBV_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_0_bra"
        if (EW_DC_EX_tr_0_WBV_557_in == 1'b1)
        begin
            DC_EX_tr_0_WBV_inp = (PREG_WR_DC_EX_tr_0_WBV_557_in);
            DC_EX_tr_0_WBV_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_ldc_ri"
        if (EW_DC_EX_tr_0_WBV_566_in == 1'b1)
        begin
            DC_EX_tr_0_WBV_inp = (PREG_WR_DC_EX_tr_0_WBV_566_in);
            DC_EX_tr_0_WBV_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_lui_ri"
        if (EW_DC_EX_tr_0_WBV_571_in == 1'b1)
        begin
            DC_EX_tr_0_WBV_inp = (PREG_WR_DC_EX_tr_0_WBV_571_in);
            DC_EX_tr_0_WBV_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_WBV_sync
    //Component Name : DC_EX_tr_0_WBV

latch l29(DC_EX_tr_0_WBV_EW, latch_out_29, clk_main_in);                          //CG 29
    and (gclk_29, clk_main_in, latch_out_29);
		
    always @(negedge rst_main_in or posedge gclk_29)

    begin: PROC_DC_EX_tr_0_WBV_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_WBV_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_WBV_EW == 1'b1)
            //begin
                DC_EX_tr_0_WBV_internal <= (DC_EX_tr_0_WBV_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_WBV_output_gen
    //Component Name : DC_EX_tr_0_WBV

    always @(pipe_DC_EX_stall_in or DC_EX_tr_0_WBV_internal)

    begin: PROC_DC_EX_tr_0_WBV_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_WBV = 32'd0;
        end
        else 
        begin
            DC_EX_tr_0_WBV = (DC_EX_tr_0_WBV_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_WBV_read
    //Component Name : DC_EX_tr_0_WBV

    always @(DC_EX_tr_0_WBV)

    begin: PROC_DC_EX_tr_0_WBV_read

        pipe_EX_tr_0_WBV_forwarded_value_out = (DC_EX_tr_0_WBV);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_BPR_write
    //Component Name : DC_EX_tr_0_BPR

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_0_BPR_561_in or PREG_WR_DC_EX_tr_0_BPR_561_in or
             EW_DC_EX_tr_0_BPR_565_in or PREG_WR_DC_EX_tr_0_BPR_565_in or
             EW_DC_EX_tr_0_BPR_570_in or PREG_WR_DC_EX_tr_0_BPR_570_in)

    begin: PROC_DC_EX_tr_0_BPR_write

        // initialize
        DC_EX_tr_0_BPR_inp = 8'd0;
        DC_EX_tr_0_BPR_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_BPR_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_0_bra"
        if (EW_DC_EX_tr_0_BPR_561_in == 1'b1)
        begin
            DC_EX_tr_0_BPR_inp = (PREG_WR_DC_EX_tr_0_BPR_561_in);
            DC_EX_tr_0_BPR_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_ldc_ri"
        if (EW_DC_EX_tr_0_BPR_565_in == 1'b1)
        begin
            DC_EX_tr_0_BPR_inp = (PREG_WR_DC_EX_tr_0_BPR_565_in);
            DC_EX_tr_0_BPR_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_lui_ri"
        if (EW_DC_EX_tr_0_BPR_570_in == 1'b1)
        begin
            DC_EX_tr_0_BPR_inp = (PREG_WR_DC_EX_tr_0_BPR_570_in);
            DC_EX_tr_0_BPR_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_BPR_sync
    //Component Name : DC_EX_tr_0_BPR

latch l30(DC_EX_tr_0_BPR_EW, latch_out_30, clk_main_in);                          //CG 30
    and (gclk_30, clk_main_in, latch_out_30);
	
	
    always @(negedge rst_main_in or posedge gclk_30)

    begin: PROC_DC_EX_tr_0_BPR_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_BPR_internal <= 8'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_BPR_EW == 1'b1)
            //begin
                DC_EX_tr_0_BPR_internal <= (DC_EX_tr_0_BPR_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_BPR_output_gen
    //Component Name : DC_EX_tr_0_BPR

    always @(pipe_DC_EX_stall_in or DC_EX_tr_0_BPR_internal)

    begin: PROC_DC_EX_tr_0_BPR_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_BPR = 8'd0;
        end
        else 
        begin
            DC_EX_tr_0_BPR = (DC_EX_tr_0_BPR_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_BPR_read
    //Component Name : DC_EX_tr_0_BPR

    always @(DC_EX_tr_0_BPR)

    begin: PROC_DC_EX_tr_0_BPR_read

        pipe_EX_tr_0_BPR_forwarded_value_out = (DC_EX_tr_0_BPR);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_offset_write
    //Component Name : DC_EX_tr_0_offset

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_0_offset_940_in or PREG_WR_DC_EX_tr_0_offset_940_in or
             EW_DC_EX_tr_0_offset_995_in or PREG_WR_DC_EX_tr_0_offset_995_in or
             EW_DC_EX_tr_0_offset_1320_in or PREG_WR_DC_EX_tr_0_offset_1320_in or
             EW_DC_EX_tr_0_offset_1375_in or PREG_WR_DC_EX_tr_0_offset_1375_in)

    begin: PROC_DC_EX_tr_0_offset_write

        // initialize
        DC_EX_tr_0_offset_inp = 32'd0;
        DC_EX_tr_0_offset_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_offset_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_0_st_rr"
        if (EW_DC_EX_tr_0_offset_940_in == 1'b1)
        begin
            DC_EX_tr_0_offset_inp = (PREG_WR_DC_EX_tr_0_offset_940_in);
            DC_EX_tr_0_offset_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_ld_rr"
        if (EW_DC_EX_tr_0_offset_995_in == 1'b1)
        begin
            DC_EX_tr_0_offset_inp = (PREG_WR_DC_EX_tr_0_offset_995_in);
            DC_EX_tr_0_offset_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_stb_rr"
        if (EW_DC_EX_tr_0_offset_1320_in == 1'b1)
        begin
            DC_EX_tr_0_offset_inp = (PREG_WR_DC_EX_tr_0_offset_1320_in);
            DC_EX_tr_0_offset_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_ldb_rr"
        if (EW_DC_EX_tr_0_offset_1375_in == 1'b1)
        begin
            DC_EX_tr_0_offset_inp = (PREG_WR_DC_EX_tr_0_offset_1375_in);
            DC_EX_tr_0_offset_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_offset_sync
    //Component Name : DC_EX_tr_0_offset

latch l31(DC_EX_tr_0_offset_EW, latch_out_31, clk_main_in);                          //CG 31
    and (gclk_31, clk_main_in, latch_out_31);

	
    always @(negedge rst_main_in or posedge gclk_31)

    begin: PROC_DC_EX_tr_0_offset_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_offset_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_offset_EW == 1'b1)
            //begin
                DC_EX_tr_0_offset_internal <= (DC_EX_tr_0_offset_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_offset_output_gen
    //Component Name : DC_EX_tr_0_offset

    always @(pipe_DC_EX_stall_in or DC_EX_tr_0_offset_internal)

    begin: PROC_DC_EX_tr_0_offset_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_offset = 32'd0;
        end
        else 
        begin
            DC_EX_tr_0_offset = (DC_EX_tr_0_offset_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_offset_poll_write
    //Component Name : DC_EX_tr_0_offset

    always @(DC_EX_tr_0_offset_internal or pipe_DC_EX_stall_in)

    begin: PROC_DC_EX_tr_0_offset_poll_write

        // initialize
        DC_EX_tr_0_offset_poll_inp = (DC_EX_tr_0_offset_internal);
        DC_EX_tr_0_offset_poll_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_offset_poll_EW = 1'b0;
        end
        // write values
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_offset_poll_sync
    //Component Name : DC_EX_tr_0_offset

latch l32(DC_EX_tr_0_offset_poll_EW, latch_out_32, clk_main_in);                          //CG 32
    and (gclk_32, clk_main_in, latch_out_32);
	
	
    always @(negedge rst_main_in or posedge gclk_32)

    begin: PROC_DC_EX_tr_0_offset_poll_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_offset_poll <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_offset_poll_EW == 1'b1)
            //begin
                DC_EX_tr_0_offset_poll <= (DC_EX_tr_0_offset_poll_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_offset_poll_read
    //Component Name : DC_EX_tr_0_offset

    always @(pipe_DC_EX_stall_in or pipe_EX_MEM_stall_in or DC_EX_tr_0_offset_bubble_inserted or
             DC_EX_tr_0_offset_poll or DC_EX_tr_0_offset_internal)

    begin: PROC_DC_EX_tr_0_offset_poll_read

        //Read access from operation "to_0_address_generation", "to_0_bus_address_generation"
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            if ((pipe_EX_MEM_stall_in == 1'b1) && (DC_EX_tr_0_offset_bubble_inserted == 1'b0))
            begin
                // stall and POLL: output of poll_reg
                PREG_RD_DC_EX_tr_0_offset_2059_out = (DC_EX_tr_0_offset_poll);
            end
            else 
            begin
                // stall: output of bubble(0)
                PREG_RD_DC_EX_tr_0_offset_2059_out = 32'd0;
            end
        end
        else 
        begin
            // default: register value
            PREG_RD_DC_EX_tr_0_offset_2059_out = (DC_EX_tr_0_offset_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_offset_bubble_inserted_write
    //Component Name : DC_EX_tr_0_offset

    always @(pipe_DC_EX_stall_in or pipe_EX_MEM_stall_in)

    begin: PROC_DC_EX_tr_0_offset_bubble_inserted_write

        DC_EX_tr_0_offset_bubble_inserted_inp = 1'b0;
        if ((pipe_DC_EX_stall_in == 1'b1) && (pipe_EX_MEM_stall_in == 1'b0))
        begin
            DC_EX_tr_0_offset_bubble_inserted_inp = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_offset_bubble_inserted_sync
    //Component Name : DC_EX_tr_0_offset
	
    always @(negedge rst_main_in or posedge clk_main_in)

    begin: PROC_DC_EX_tr_0_offset_bubble_inserted_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_offset_bubble_inserted <= 1'b0;
        end
        else  
        begin
            DC_EX_tr_0_offset_bubble_inserted <= (DC_EX_tr_0_offset_bubble_inserted_inp);
        end
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_read_flag_write
    //Component Name : DC_EX_tr_0_read_flag

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_0_read_flag_941_in or
             PREG_WR_DC_EX_tr_0_read_flag_941_in or EW_DC_EX_tr_0_read_flag_996_in or
             PREG_WR_DC_EX_tr_0_read_flag_996_in)

    begin: PROC_DC_EX_tr_0_read_flag_write

        // initialize
        DC_EX_tr_0_read_flag_inp = 32'd0;
        DC_EX_tr_0_read_flag_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_read_flag_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_0_st_rr"
        if (EW_DC_EX_tr_0_read_flag_941_in == 1'b1)
        begin
            DC_EX_tr_0_read_flag_inp = (PREG_WR_DC_EX_tr_0_read_flag_941_in);
            DC_EX_tr_0_read_flag_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_0_ld_rr"
        if (EW_DC_EX_tr_0_read_flag_996_in == 1'b1)
        begin
            DC_EX_tr_0_read_flag_inp = (PREG_WR_DC_EX_tr_0_read_flag_996_in);
            DC_EX_tr_0_read_flag_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_read_flag_sync
    //Component Name : DC_EX_tr_0_read_flag
	
latch l33(DC_EX_tr_0_read_flag_EW, latch_out_33, clk_main_in);                          //CG 33
    and (gclk_33, clk_main_in, latch_out_33);

    always @(negedge rst_main_in or posedge gclk_33)

    begin: PROC_DC_EX_tr_0_read_flag_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_0_read_flag_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_0_read_flag_EW == 1'b1)
            //begin
                DC_EX_tr_0_read_flag_internal <= (DC_EX_tr_0_read_flag_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_read_flag_output_gen
    //Component Name : DC_EX_tr_0_read_flag

    always @(pipe_DC_EX_stall_in or DC_EX_tr_0_read_flag_internal)

    begin: PROC_DC_EX_tr_0_read_flag_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_0_read_flag = 32'd0;
        end
        else 
        begin
            DC_EX_tr_0_read_flag = (DC_EX_tr_0_read_flag_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_0_read_flag_read
    //Component Name : DC_EX_tr_0_read_flag

    always @(DC_EX_tr_0_read_flag)

    begin: PROC_DC_EX_tr_0_read_flag_read

        pipe_EX_tr_0_read_flag_forwarded_value_out = (DC_EX_tr_0_read_flag);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_BPR_write
    //Component Name : DC_EX_tr_1_BPR

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_1_BPR_1005_in or PREG_WR_DC_EX_tr_1_BPR_1005_in or
             EW_DC_EX_tr_1_BPR_1011_in or PREG_WR_DC_EX_tr_1_BPR_1011_in)

    begin: PROC_DC_EX_tr_1_BPR_write

        // initialize
        DC_EX_tr_1_BPR_inp = 8'd0;
        DC_EX_tr_1_BPR_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_BPR_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_1_ldc_ri"
        if (EW_DC_EX_tr_1_BPR_1005_in == 1'b1)
        begin
            DC_EX_tr_1_BPR_inp = (PREG_WR_DC_EX_tr_1_BPR_1005_in);
            DC_EX_tr_1_BPR_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_lui_ri"
        if (EW_DC_EX_tr_1_BPR_1011_in == 1'b1)
        begin
            DC_EX_tr_1_BPR_inp = (PREG_WR_DC_EX_tr_1_BPR_1011_in);
            DC_EX_tr_1_BPR_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_BPR_sync
    //Component Name : DC_EX_tr_1_BPR

latch l34(DC_EX_tr_1_BPR_EW, latch_out_34, clk_main_in);                          //CG 34
    and (gclk_34, clk_main_in, latch_out_34);
	
    always @(negedge rst_main_in or posedge gclk_34)

    begin: PROC_DC_EX_tr_1_BPR_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_1_BPR_internal <= 8'd0;
        end
        else  
        begin
            //if (DC_EX_tr_1_BPR_EW == 1'b1)
            //begin
                DC_EX_tr_1_BPR_internal <= (DC_EX_tr_1_BPR_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_BPR_output_gen
    //Component Name : DC_EX_tr_1_BPR

    always @(pipe_DC_EX_stall_in or DC_EX_tr_1_BPR_internal)

    begin: PROC_DC_EX_tr_1_BPR_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_BPR = 8'd0;
        end
        else 
        begin
            DC_EX_tr_1_BPR = (DC_EX_tr_1_BPR_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_BPR_read
    //Component Name : DC_EX_tr_1_BPR

    always @(DC_EX_tr_1_BPR)

    begin: PROC_DC_EX_tr_1_BPR_read

        pipe_EX_tr_1_BPR_forwarded_value_out = (DC_EX_tr_1_BPR);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_WBV_write
    //Component Name : DC_EX_tr_1_WBV

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_1_WBV_1007_in or PREG_WR_DC_EX_tr_1_WBV_1007_in or
             EW_DC_EX_tr_1_WBV_1012_in or PREG_WR_DC_EX_tr_1_WBV_1012_in)

    begin: PROC_DC_EX_tr_1_WBV_write

        // initialize
        DC_EX_tr_1_WBV_inp = 32'd0;
        DC_EX_tr_1_WBV_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_WBV_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_1_ldc_ri"
        if (EW_DC_EX_tr_1_WBV_1007_in == 1'b1)
        begin
            DC_EX_tr_1_WBV_inp = (PREG_WR_DC_EX_tr_1_WBV_1007_in);
            DC_EX_tr_1_WBV_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_lui_ri"
        if (EW_DC_EX_tr_1_WBV_1012_in == 1'b1)
        begin
            DC_EX_tr_1_WBV_inp = (PREG_WR_DC_EX_tr_1_WBV_1012_in);
            DC_EX_tr_1_WBV_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_WBV_sync
    //Component Name : DC_EX_tr_1_WBV
	
latch l35(DC_EX_tr_1_WBV_EW, latch_out_35, clk_main_in);                          //CG 35
    and (gclk_35, clk_main_in, latch_out_35);

    always @(negedge rst_main_in or posedge gclk_35)

    begin: PROC_DC_EX_tr_1_WBV_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_1_WBV_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_1_WBV_EW == 1'b1)
            //begin
                DC_EX_tr_1_WBV_internal <= (DC_EX_tr_1_WBV_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_WBV_output_gen
    //Component Name : DC_EX_tr_1_WBV

    always @(pipe_DC_EX_stall_in or DC_EX_tr_1_WBV_internal)

    begin: PROC_DC_EX_tr_1_WBV_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_WBV = 32'd0;
        end
        else 
        begin
            DC_EX_tr_1_WBV = (DC_EX_tr_1_WBV_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_WBV_read
    //Component Name : DC_EX_tr_1_WBV

    always @(DC_EX_tr_1_WBV)

    begin: PROC_DC_EX_tr_1_WBV_read

        pipe_EX_tr_1_WBV_forwarded_value_out = (DC_EX_tr_1_WBV);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs1_write
    //Component Name : DC_EX_tr_1_rs1

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_1_rs1_1013_in or PREG_WR_DC_EX_tr_1_rs1_1013_in or
             EW_DC_EX_tr_1_rs1_1087_in or PREG_WR_DC_EX_tr_1_rs1_1087_in or
             EW_DC_EX_tr_1_rs1_1187_in or PREG_WR_DC_EX_tr_1_rs1_1187_in)

    begin: PROC_DC_EX_tr_1_rs1_write

        // initialize
        DC_EX_tr_1_rs1_inp = 8'd0;
        DC_EX_tr_1_rs1_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_rs1_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrri", "to_1_bypass_src1_dc"
        if (EW_DC_EX_tr_1_rs1_1013_in == 1'b1)
        begin
            DC_EX_tr_1_rs1_inp = (PREG_WR_DC_EX_tr_1_rs1_1013_in);
            DC_EX_tr_1_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrrr", "to_1_bypass_src1_dc"
        if (EW_DC_EX_tr_1_rs1_1087_in == 1'b1)
        begin
            DC_EX_tr_1_rs1_inp = (PREG_WR_DC_EX_tr_1_rs1_1087_in);
            DC_EX_tr_1_rs1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rri", "to_1_bypass_src1_dc"
        if (EW_DC_EX_tr_1_rs1_1187_in == 1'b1)
        begin
            DC_EX_tr_1_rs1_inp = (PREG_WR_DC_EX_tr_1_rs1_1187_in);
            DC_EX_tr_1_rs1_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs1_sync
    //Component Name : DC_EX_tr_1_rs1

latch l36(DC_EX_tr_1_rs1_EW, latch_out_36, clk_main_in);                          //CG 36
    and (gclk_36, clk_main_in, latch_out_36);
	
    always @(negedge rst_main_in or posedge gclk_36)

    begin: PROC_DC_EX_tr_1_rs1_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_1_rs1_internal <= 8'd0;
        end
        else  
        begin
            //if (DC_EX_tr_1_rs1_EW == 1'b1)
            //begin
                DC_EX_tr_1_rs1_internal <= (DC_EX_tr_1_rs1_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs1_output_gen
    //Component Name : DC_EX_tr_1_rs1

    always @(pipe_DC_EX_stall_in or DC_EX_tr_1_rs1_internal)

    begin: PROC_DC_EX_tr_1_rs1_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_rs1 = 8'd0;
        end
        else 
        begin
            DC_EX_tr_1_rs1 = (DC_EX_tr_1_rs1_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs1_read
    //Component Name : DC_EX_tr_1_rs1

    always @(DC_EX_tr_1_rs1)

    begin: PROC_DC_EX_tr_1_rs1_read

        //Read access from operation "to_1_alu_rrr_ex", "to_1_bypass_src1_ex", "to_1_alu_rri_ex"
        PREG_RD_DC_EX_tr_1_rs1_2085_out = (DC_EX_tr_1_rs1);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op1_write
    //Component Name : DC_EX_tr_1_op1

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_1_op1_1027_in or PREG_WR_DC_EX_tr_1_op1_1027_in or
             EW_DC_EX_tr_1_op1_1098_in or PREG_WR_DC_EX_tr_1_op1_1098_in or
             EW_DC_EX_tr_1_op1_1198_in or PREG_WR_DC_EX_tr_1_op1_1198_in)

    begin: PROC_DC_EX_tr_1_op1_write

        // initialize
        DC_EX_tr_1_op1_inp = 32'd0;
        DC_EX_tr_1_op1_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_op1_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrri", "to_1_bypass_src1_dc"
        if (EW_DC_EX_tr_1_op1_1027_in == 1'b1)
        begin
            DC_EX_tr_1_op1_inp = (PREG_WR_DC_EX_tr_1_op1_1027_in);
            DC_EX_tr_1_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrrr", "to_1_bypass_src1_dc"
        if (EW_DC_EX_tr_1_op1_1098_in == 1'b1)
        begin
            DC_EX_tr_1_op1_inp = (PREG_WR_DC_EX_tr_1_op1_1098_in);
            DC_EX_tr_1_op1_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rri", "to_1_bypass_src1_dc"
        if (EW_DC_EX_tr_1_op1_1198_in == 1'b1)
        begin
            DC_EX_tr_1_op1_inp = (PREG_WR_DC_EX_tr_1_op1_1198_in);
            DC_EX_tr_1_op1_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op1_sync
    //Component Name : DC_EX_tr_1_op1

latch l37(DC_EX_tr_1_op1_EW, latch_out_37, clk_main_in);                          //CG 37
    and (gclk_37, clk_main_in, latch_out_37);
	
    always @(negedge rst_main_in or posedge gclk_37)

    begin: PROC_DC_EX_tr_1_op1_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_1_op1_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_1_op1_EW == 1'b1)
            //begin
                DC_EX_tr_1_op1_internal <= (DC_EX_tr_1_op1_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op1_output_gen
    //Component Name : DC_EX_tr_1_op1

    always @(pipe_DC_EX_stall_in or DC_EX_tr_1_op1_internal)

    begin: PROC_DC_EX_tr_1_op1_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_op1 = 32'd0;
        end
        else 
        begin
            DC_EX_tr_1_op1 = (DC_EX_tr_1_op1_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op1_read
    //Component Name : DC_EX_tr_1_op1

    always @(DC_EX_tr_1_op1)

    begin: PROC_DC_EX_tr_1_op1_read

        //Read access from operation "to_1_alu_rrr_ex", "to_1_bypass_src1_ex", "to_1_alu_rri_ex"
        PREG_RD_DC_EX_tr_1_op1_2104_out = (DC_EX_tr_1_op1);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs2_write
    //Component Name : DC_EX_tr_1_rs2

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_1_rs2_1053_in or PREG_WR_DC_EX_tr_1_rs2_1053_in or
             EW_DC_EX_tr_1_rs2_1124_in or PREG_WR_DC_EX_tr_1_rs2_1124_in)

    begin: PROC_DC_EX_tr_1_rs2_write

        // initialize
        DC_EX_tr_1_rs2_inp = 8'd0;
        DC_EX_tr_1_rs2_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_rs2_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrri", "to_1_bypass_src2_dc"
        if (EW_DC_EX_tr_1_rs2_1053_in == 1'b1)
        begin
            DC_EX_tr_1_rs2_inp = (PREG_WR_DC_EX_tr_1_rs2_1053_in);
            DC_EX_tr_1_rs2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrrr", "to_1_bypass_src2_dc"
        if (EW_DC_EX_tr_1_rs2_1124_in == 1'b1)
        begin
            DC_EX_tr_1_rs2_inp = (PREG_WR_DC_EX_tr_1_rs2_1124_in);
            DC_EX_tr_1_rs2_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs2_sync
    //Component Name : DC_EX_tr_1_rs2

latch l38(DC_EX_tr_1_rs2_EW, latch_out_38, clk_main_in);                          //CG 38
    and (gclk_38, clk_main_in, latch_out_38);
	
    always @(negedge rst_main_in or posedge gclk_38)

    begin: PROC_DC_EX_tr_1_rs2_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_1_rs2_internal <= 8'd0;
        end
        else  
        begin
            //if (DC_EX_tr_1_rs2_EW == 1'b1)
            //begin
                DC_EX_tr_1_rs2_internal <= (DC_EX_tr_1_rs2_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs2_output_gen
    //Component Name : DC_EX_tr_1_rs2

    always @(pipe_DC_EX_stall_in or DC_EX_tr_1_rs2_internal)

    begin: PROC_DC_EX_tr_1_rs2_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_rs2 = 8'd0;
        end
        else 
        begin
            DC_EX_tr_1_rs2 = (DC_EX_tr_1_rs2_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs2_read
    //Component Name : DC_EX_tr_1_rs2

    always @(DC_EX_tr_1_rs2)

    begin: PROC_DC_EX_tr_1_rs2_read

        //Read access from operation "to_1_alu_rrr_ex", "to_1_bypass_src2_ex"
        PREG_RD_DC_EX_tr_1_rs2_2133_out = (DC_EX_tr_1_rs2);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op2_write
    //Component Name : DC_EX_tr_1_op2

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_1_op2_1060_in or PREG_WR_DC_EX_tr_1_op2_1060_in or
             EW_DC_EX_tr_1_op2_1131_in or PREG_WR_DC_EX_tr_1_op2_1131_in or
             EW_DC_EX_tr_1_op2_1224_in or PREG_WR_DC_EX_tr_1_op2_1224_in)

    begin: PROC_DC_EX_tr_1_op2_write

        // initialize
        DC_EX_tr_1_op2_inp = 32'd0;
        DC_EX_tr_1_op2_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_op2_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrri", "to_1_bypass_src2_dc"
        if (EW_DC_EX_tr_1_op2_1060_in == 1'b1)
        begin
            DC_EX_tr_1_op2_inp = (PREG_WR_DC_EX_tr_1_op2_1060_in);
            DC_EX_tr_1_op2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrrr", "to_1_bypass_src2_dc"
        if (EW_DC_EX_tr_1_op2_1131_in == 1'b1)
        begin
            DC_EX_tr_1_op2_inp = (PREG_WR_DC_EX_tr_1_op2_1131_in);
            DC_EX_tr_1_op2_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rri"
        if (EW_DC_EX_tr_1_op2_1224_in == 1'b1)
        begin
            DC_EX_tr_1_op2_inp = (PREG_WR_DC_EX_tr_1_op2_1224_in);
            DC_EX_tr_1_op2_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op2_sync
    //Component Name : DC_EX_tr_1_op2

latch l39(DC_EX_tr_1_op2_EW, latch_out_39, clk_main_in);                          //CG 39
    and (gclk_39, clk_main_in, latch_out_39);
	
    always @(negedge rst_main_in or posedge gclk_39)

    begin: PROC_DC_EX_tr_1_op2_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_1_op2_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_1_op2_EW == 1'b1)
            //begin
                DC_EX_tr_1_op2_internal <= (DC_EX_tr_1_op2_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op2_output_gen
    //Component Name : DC_EX_tr_1_op2

    always @(pipe_DC_EX_stall_in or DC_EX_tr_1_op2_internal)

    begin: PROC_DC_EX_tr_1_op2_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_op2 = 32'd0;
        end
        else 
        begin
            DC_EX_tr_1_op2 = (DC_EX_tr_1_op2_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op2_read
    //Component Name : DC_EX_tr_1_op2

    always @(DC_EX_tr_1_op2)

    begin: PROC_DC_EX_tr_1_op2_read

        //Read access from operation "to_1_alu_rrr_ex", "to_1_bypass_src2_ex", "to_1_alu_rri_ex"
        PREG_RD_DC_EX_tr_1_op2_2152_out = (DC_EX_tr_1_op2);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op3_write
    //Component Name : DC_EX_tr_1_op3

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_1_op3_1086_in or PREG_WR_DC_EX_tr_1_op3_1086_in or
             EW_DC_EX_tr_1_op3_1161_in or PREG_WR_DC_EX_tr_1_op3_1161_in or
             EW_DC_EX_tr_1_op3_1225_in or PREG_WR_DC_EX_tr_1_op3_1225_in)

    begin: PROC_DC_EX_tr_1_op3_write

        // initialize
        DC_EX_tr_1_op3_inp = 32'd0;
        DC_EX_tr_1_op3_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_op3_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrri"
        if (EW_DC_EX_tr_1_op3_1086_in == 1'b1)
        begin
            DC_EX_tr_1_op3_inp = (PREG_WR_DC_EX_tr_1_op3_1086_in);
            DC_EX_tr_1_op3_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrrr", "to_1_bypass_src3_dc"
        if (EW_DC_EX_tr_1_op3_1161_in == 1'b1)
        begin
            DC_EX_tr_1_op3_inp = (PREG_WR_DC_EX_tr_1_op3_1161_in);
            DC_EX_tr_1_op3_EW = 1'b1;
        end
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rri"
        if (EW_DC_EX_tr_1_op3_1225_in == 1'b1)
        begin
            DC_EX_tr_1_op3_inp = (PREG_WR_DC_EX_tr_1_op3_1225_in);
            DC_EX_tr_1_op3_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op3_sync
    //Component Name : DC_EX_tr_1_op3

latch l40(DC_EX_tr_1_op3_EW, latch_out_40, clk_main_in);                          //CG 40
    and (gclk_40, clk_main_in, latch_out_40);
	
    always @(negedge rst_main_in or posedge gclk_40)

    begin: PROC_DC_EX_tr_1_op3_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_1_op3_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_tr_1_op3_EW == 1'b1)
            //begin
                DC_EX_tr_1_op3_internal <= (DC_EX_tr_1_op3_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op3_output_gen
    //Component Name : DC_EX_tr_1_op3

    always @(pipe_DC_EX_stall_in or DC_EX_tr_1_op3_internal)

    begin: PROC_DC_EX_tr_1_op3_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_op3 = 32'd0;
        end
        else 
        begin
            DC_EX_tr_1_op3 = (DC_EX_tr_1_op3_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_op3_read
    //Component Name : DC_EX_tr_1_op3

    always @(DC_EX_tr_1_op3)

    begin: PROC_DC_EX_tr_1_op3_read

        //Read access from operation "to_1_alu_rrr_ex", "to_1_bypass_src3_ex"
        PREG_RD_DC_EX_tr_1_op3_2196_out = (DC_EX_tr_1_op3);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs3_write
    //Component Name : DC_EX_tr_1_rs3

    always @(pipe_DC_EX_stall_in or EW_DC_EX_tr_1_rs3_1157_in or PREG_WR_DC_EX_tr_1_rs3_1157_in)

    begin: PROC_DC_EX_tr_1_rs3_write

        // initialize
        DC_EX_tr_1_rs3_inp = 8'd0;
        DC_EX_tr_1_rs3_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_rs3_EW = 1'b0;
        end
        // write values
        //Write access from pipeline "pipe" stage "DC" operation "to_1_alu_rrrr", "to_1_bypass_src3_dc"
        if (EW_DC_EX_tr_1_rs3_1157_in == 1'b1)
        begin
            DC_EX_tr_1_rs3_inp = (PREG_WR_DC_EX_tr_1_rs3_1157_in);
            DC_EX_tr_1_rs3_EW = 1'b1;
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs3_sync
    //Component Name : DC_EX_tr_1_rs3

latch l41(DC_EX_tr_1_rs3_EW, latch_out_41, clk_main_in);                          //CG 41
    and (gclk_41, clk_main_in, latch_out_41);
	
    always @(negedge rst_main_in or posedge gclk_41)

    begin: PROC_DC_EX_tr_1_rs3_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_tr_1_rs3_internal <= 8'd0;
        end
        else  
        begin
            //if (DC_EX_tr_1_rs3_EW == 1'b1)
            //begin
                DC_EX_tr_1_rs3_internal <= (DC_EX_tr_1_rs3_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs3_output_gen
    //Component Name : DC_EX_tr_1_rs3

    always @(pipe_DC_EX_stall_in or DC_EX_tr_1_rs3_internal)

    begin: PROC_DC_EX_tr_1_rs3_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_tr_1_rs3 = 8'd0;
        end
        else 
        begin
            DC_EX_tr_1_rs3 = (DC_EX_tr_1_rs3_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_tr_1_rs3_read
    //Component Name : DC_EX_tr_1_rs3

    always @(DC_EX_tr_1_rs3)

    begin: PROC_DC_EX_tr_1_rs3_read

        //Read access from operation "to_1_alu_rrr_ex", "to_1_bypass_src3_ex"
        PREG_RD_DC_EX_tr_1_rs3_2177_out = (DC_EX_tr_1_rs3);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_insn_1_write
    //Component Name : DC_EX_insn_1

    always @(pipe_DC_insn_1_forwarded_value_in or pipe_DC_EX_stall_in)

    begin: PROC_DC_EX_insn_1_write

        // initialize
        DC_EX_insn_1_inp = (pipe_DC_insn_1_forwarded_value_in);
        DC_EX_insn_1_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_insn_1_EW = 1'b0;
        end
        // write values
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_insn_1_sync
    //Component Name : DC_EX_insn_1
	
latch l42(DC_EX_insn_1_EW, latch_out_42, clk_main_in);                          //CG 42
    and (gclk_42, clk_main_in, latch_out_42);

    always @(negedge rst_main_in or posedge gclk_42)

    begin: PROC_DC_EX_insn_1_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_insn_1_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_insn_1_EW == 1'b1)
            //begin
                DC_EX_insn_1_internal <= (DC_EX_insn_1_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_insn_1_output_gen
    //Component Name : DC_EX_insn_1

    always @(pipe_DC_EX_stall_in or DC_EX_insn_1_internal)

    begin: PROC_DC_EX_insn_1_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_insn_1 = 32'd0;
        end
        else 
        begin
            DC_EX_insn_1 = (DC_EX_insn_1_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_insn_1_read
    //Component Name : DC_EX_insn_1

    always @(DC_EX_insn_1)

    begin: PROC_DC_EX_insn_1_read

        //Read access from operation "to_0_cmp_ri_ex", "to_0_cmp_rr_ex", "to_0_custom_isa_rrr_ex", "to_0_alu_rrr_ex", "to_0_alu_rri_ex", "to_1_alu_rrr_ex", "to_1_alu_rri_ex", "$DECODER__EX$"
        PREG_RD_DC_EX_insn_1_1466_out = (DC_EX_insn_1);
        pipe_EX_insn_1_forwarded_value_out = (DC_EX_insn_1);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_insn_0_write
    //Component Name : DC_EX_insn_0

    always @(pipe_DC_insn_0_forwarded_value_in or pipe_DC_EX_stall_in)

    begin: PROC_DC_EX_insn_0_write

        // initialize
        DC_EX_insn_0_inp = (pipe_DC_insn_0_forwarded_value_in);
        DC_EX_insn_0_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_insn_0_EW = 1'b0;
        end
        // write values
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_insn_0_sync
    //Component Name : DC_EX_insn_0

latch l43(DC_EX_insn_0_EW, latch_out_43, clk_main_in);                          //CG 43
    and (gclk_43, clk_main_in, latch_out_43);
	
    always @(negedge rst_main_in or posedge gclk_43)

    begin: PROC_DC_EX_insn_0_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_insn_0_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_insn_0_EW == 1'b1)
            //begin
                DC_EX_insn_0_internal <= (DC_EX_insn_0_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_insn_0_output_gen
    //Component Name : DC_EX_insn_0

    always @(pipe_DC_EX_stall_in or DC_EX_insn_0_internal)

    begin: PROC_DC_EX_insn_0_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_insn_0 = 32'd0;
        end
        else 
        begin
            DC_EX_insn_0 = (DC_EX_insn_0_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_insn_0_read
    //Component Name : DC_EX_insn_0

    always @(DC_EX_insn_0)

    begin: PROC_DC_EX_insn_0_read

        //Read access from operation "to_0_cmp_ri_ex", "to_0_cmp_rr_ex", "to_0_custom_isa_rrr_ex", "to_0_alu_rrr_ex", "to_0_alu_rri_ex", "to_1_alu_rrr_ex", "to_1_alu_rri_ex", "$DECODER__EX$"
        PREG_RD_DC_EX_insn_0_1468_out = (DC_EX_insn_0);
        pipe_EX_insn_0_forwarded_value_out = (DC_EX_insn_0);
    end


    //----------------------------------------------
    //Process Name   : PROC_DC_EX_pc_write
    //Component Name : DC_EX_pc

    always @(pipe_DC_pc_forwarded_value_in or pipe_DC_EX_stall_in)

    begin: PROC_DC_EX_pc_write

        // initialize
        DC_EX_pc_inp = (pipe_DC_pc_forwarded_value_in);
        DC_EX_pc_EW = 1'b1;
        // stall
        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_pc_EW = 1'b0;
        end
        // write values
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_pc_sync
    //Component Name : DC_EX_pc

latch l44(DC_EX_pc_EW, latch_out_44, clk_main_in);                          //CG 44
    and (gclk_44, clk_main_in, latch_out_44);
	
    always @(negedge rst_main_in or posedge gclk_44)

    begin: PROC_DC_EX_pc_sync

        if (rst_main_in == 1'b0)
        begin
            DC_EX_pc_internal <= 32'd0;
        end
        else  
        begin
            //if (DC_EX_pc_EW == 1'b1)
            //begin
                DC_EX_pc_internal <= (DC_EX_pc_inp);
            //end
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_pc_output_gen
    //Component Name : DC_EX_pc

    always @(pipe_DC_EX_stall_in or DC_EX_pc_internal)

    begin: PROC_DC_EX_pc_output_gen

        if (pipe_DC_EX_stall_in == 1'b1)
        begin
            DC_EX_pc = 32'd0;
        end
        else 
        begin
            DC_EX_pc = (DC_EX_pc_internal);
        end
    end

    //----------------------------------------------
    //Process Name   : PROC_DC_EX_pc_read
    //Component Name : DC_EX_pc

    always @(DC_EX_pc)

    begin: PROC_DC_EX_pc_read

        pipe_EX_pc_forwarded_value_out = (DC_EX_pc);
    end


endmodule 

//********************Define a 32-bit latch for clock gating**************//
module latch (in , out, clk);
    
    input    clk, in;
    output   out;
    
    wire     clk, in;
    reg      out;
    
    always @ (in or clk)
       if (clk == 1'b0)
          out <= in;

endmodule

