`timescale 1 ns/1 ps
`include "Package_LT_VLIW_2i_gen.v"


module tb_DC_EX;

reg [92: 0] counter1;
reg [`T_DATABUS_DC_EX_tr_0_rs1 - 1 : 0] counter2[10 : 0];
reg [`T_DATABUS_DC_EX_tr_0_op1 - 1 : 0] counter3[10 : 0];
reg [`T_DATABUS_DC_EX_tr_0_rs2 - 1 : 0] counter4[5 : 0];
reg [`T_DATABUS_DC_EX_tr_0_op2 - 1 : 0] counter5[7 : 0];
reg [`T_DATABUS_DC_EX_tr_0_rs3 - 1 : 0] counter6[1 : 0];
reg [`T_DATABUS_DC_EX_tr_0_op3 - 1 : 0] counter7[3 : 0];
reg [`T_DATABUS_DC_EX_tr_0_WBV - 1 : 0] counter8[2 : 0];
reg [`T_DATABUS_DC_EX_tr_0_BPR - 1 : 0] counter9[2 : 0];
reg [`T_DATABUS_DC_EX_tr_0_offset - 1 : 0] counter10[3 : 0];
reg [`T_DATABUS_DC_EX_tr_0_read_flag - 1 : 0] counter11[1 : 0];
reg [`T_DATABUS_DC_EX_tr_1_BPR - 1 : 0] counter12[1 : 0];
reg [`T_DATABUS_DC_EX_tr_1_WBV - 1 : 0] counter13[1 : 0];
reg [`T_DATABUS_DC_EX_tr_1_rs1 - 1 : 0] counter14[2 : 0];
reg [`T_DATABUS_DC_EX_tr_1_op1 - 1 : 0] counter15[2 : 0];
reg [`T_DATABUS_DC_EX_tr_1_rs2 - 1 : 0] counter16[1 : 0];
reg [`T_DATABUS_DC_EX_tr_1_op3 - 1 : 0] counter17[2 : 0];
reg [`T_DATABUS_DC_EX_tr_1_op2 - 1 : 0] counter18[2 : 0];
reg [`T_DATABUS_DC_EX_tr_1_rs3 - 1 : 0] counter19;
reg [`T_DATABUS_FE_DC_insn_1-1:0]       counter20;
reg [`T_DATABUS_FE_DC_insn_0-1:0]       counter21;
reg [`T_DATABUS_FE_DC_pc-1:0]           counter22;    
    
 //input signals   
    wire                                     A_to_0_cmp_ri_ex_DC_in;
    wire                                     A_to_0_cmp_rr_ex_DC_in;
    wire                                     A_to_0_branch_execute_DC_in;
    wire                                     A_to_0_custom_isa_rrr_ex_DC_in;
    wire                                     A_to_0_alu_rrr_ex_DC_in;
    wire                                     A_to_0_alu_rri_ex_DC_in;
    wire                                     A_to_0_address_generation_DC_in;
    wire                                     A_to_1_alu_rrr_ex_DC_in;
    wire                                     A_to_1_alu_rri_ex_DC_in;
    wire                                     A_to_0_bus_address_generation_DC_in;
    wire                                     A_to_0_postoperation_acc_DC_in;
    wire                                     A_to_0_st_mem_DC_in;
    wire                                     A_to_0_ld_mem_DC_in;
    wire                                     A_to_0_st_bus_DC_in;
    wire                                     A_to_0_ld_bus_DC_in;
    wire                                     A_to_0_writeback_dst_DC_in;
    wire                                     A_to_0_branch_writeback_DC_in;
    wire                                     A_to_1_writeback_dst_DC_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_172_in;
    wire                                     EW_DC_EX_tr_0_rs1_172_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_212_in;
    wire                                     EW_DC_EX_tr_0_op1_212_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_242_in;
    wire                                     EW_DC_EX_tr_0_rs2_242_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_257_in;
    wire                                     EW_DC_EX_tr_0_op2_257_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs3-1:0]    PREG_WR_DC_EX_tr_0_rs3_283_in;
    wire                                     EW_DC_EX_tr_0_rs3_283_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_WR_DC_EX_tr_0_op3_287_in;
    wire                                     EW_DC_EX_tr_0_op3_287_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_316_in;
    wire                                     EW_DC_EX_tr_0_rs1_316_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_343_in;
    wire                                     EW_DC_EX_tr_0_op1_343_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_369_in;
    wire                                     EW_DC_EX_tr_0_op2_369_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_370_in;
    wire                                     EW_DC_EX_tr_0_rs1_370_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_397_in;
    wire                                     EW_DC_EX_tr_0_op1_397_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_423_in;
    wire                                     EW_DC_EX_tr_0_rs2_423_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_438_in;
    wire                                     EW_DC_EX_tr_0_op2_438_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_492_in;
    wire                                     EW_DC_EX_tr_0_rs1_492_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_519_in;
    wire                                     EW_DC_EX_tr_0_op1_519_in;
    wire  [`T_DATABUS_DC_EX_tr_0_WBV-1:0]    PREG_WR_DC_EX_tr_0_WBV_557_in;
    wire                                     EW_DC_EX_tr_0_WBV_557_in;
    wire  [`T_DATABUS_DC_EX_tr_0_BPR-1:0]    PREG_WR_DC_EX_tr_0_BPR_561_in;
    wire                                     EW_DC_EX_tr_0_BPR_561_in;
    wire  [`T_DATABUS_DC_EX_tr_0_BPR-1:0]    PREG_WR_DC_EX_tr_0_BPR_565_in;
    wire                                     EW_DC_EX_tr_0_BPR_565_in;
    wire  [`T_DATABUS_DC_EX_tr_0_WBV-1:0]    PREG_WR_DC_EX_tr_0_WBV_566_in;
    wire                                     EW_DC_EX_tr_0_WBV_566_in;
    wire  [`T_DATABUS_DC_EX_tr_0_BPR-1:0]    PREG_WR_DC_EX_tr_0_BPR_570_in;
    wire                                     EW_DC_EX_tr_0_BPR_570_in;
    wire  [`T_DATABUS_DC_EX_tr_0_WBV-1:0]    PREG_WR_DC_EX_tr_0_WBV_571_in;
    wire                                     EW_DC_EX_tr_0_WBV_571_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_572_in;
    wire                                     EW_DC_EX_tr_0_rs1_572_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_599_in;
    wire                                     EW_DC_EX_tr_0_op1_599_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_625_in;
    wire                                     EW_DC_EX_tr_0_rs2_625_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_640_in;
    wire                                     EW_DC_EX_tr_0_op2_640_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_WR_DC_EX_tr_0_op3_666_in;
    wire                                     EW_DC_EX_tr_0_op3_666_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_667_in;
    wire                                     EW_DC_EX_tr_0_rs1_667_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_694_in;
    wire                                     EW_DC_EX_tr_0_op1_694_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_720_in;
    wire                                     EW_DC_EX_tr_0_rs2_720_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_735_in;
    wire                                     EW_DC_EX_tr_0_op2_735_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs3-1:0]    PREG_WR_DC_EX_tr_0_rs3_761_in;
    wire                                     EW_DC_EX_tr_0_rs3_761_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_WR_DC_EX_tr_0_op3_765_in;
    wire                                     EW_DC_EX_tr_0_op3_765_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_791_in;
    wire                                     EW_DC_EX_tr_0_rs1_791_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_818_in;
    wire                                     EW_DC_EX_tr_0_op1_818_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_844_in;
    wire                                     EW_DC_EX_tr_0_op2_844_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_WR_DC_EX_tr_0_op3_845_in;
    wire                                     EW_DC_EX_tr_0_op3_845_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_846_in;
    wire                                     EW_DC_EX_tr_0_rs1_846_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_873_in;
    wire                                     EW_DC_EX_tr_0_op1_873_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_899_in;
    wire                                     EW_DC_EX_tr_0_rs2_899_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_914_in;
    wire                                     EW_DC_EX_tr_0_op2_914_in;
    wire  [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_WR_DC_EX_tr_0_offset_940_in;
    wire                                     EW_DC_EX_tr_0_offset_940_in;
    wire  signed [`T_DATABUS_DC_EX_tr_0_read_flag-1:0] PREG_WR_DC_EX_tr_0_read_flag_941_in;
    wire                                     EW_DC_EX_tr_0_read_flag_941_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_942_in;
    wire                                     EW_DC_EX_tr_0_rs1_942_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_969_in;
    wire                                     EW_DC_EX_tr_0_op1_969_in;
    wire  [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_WR_DC_EX_tr_0_offset_995_in;
    wire                                     EW_DC_EX_tr_0_offset_995_in;
    wire  signed [`T_DATABUS_DC_EX_tr_0_read_flag-1:0] PREG_WR_DC_EX_tr_0_read_flag_996_in;
    wire                                     EW_DC_EX_tr_0_read_flag_996_in;
    wire  [`T_DATABUS_DC_EX_tr_1_BPR-1:0]    PREG_WR_DC_EX_tr_1_BPR_1005_in;
    wire                                     EW_DC_EX_tr_1_BPR_1005_in;
    wire  [`T_DATABUS_DC_EX_tr_1_WBV-1:0]    PREG_WR_DC_EX_tr_1_WBV_1007_in;
    wire                                     EW_DC_EX_tr_1_WBV_1007_in;
    wire  [`T_DATABUS_DC_EX_tr_1_BPR-1:0]    PREG_WR_DC_EX_tr_1_BPR_1011_in;
    wire                                     EW_DC_EX_tr_1_BPR_1011_in;
    wire  [`T_DATABUS_DC_EX_tr_1_WBV-1:0]    PREG_WR_DC_EX_tr_1_WBV_1012_in;
    wire                                     EW_DC_EX_tr_1_WBV_1012_in;
    wire  [`T_DATABUS_DC_EX_tr_1_rs1-1:0]    PREG_WR_DC_EX_tr_1_rs1_1013_in;
    wire                                     EW_DC_EX_tr_1_rs1_1013_in;
    wire  [`T_DATABUS_DC_EX_tr_1_op1-1:0]    PREG_WR_DC_EX_tr_1_op1_1027_in;
    wire                                     EW_DC_EX_tr_1_op1_1027_in;
    wire  [`T_DATABUS_DC_EX_tr_1_rs2-1:0]    PREG_WR_DC_EX_tr_1_rs2_1053_in;
    wire                                     EW_DC_EX_tr_1_rs2_1053_in;
    wire  [`T_DATABUS_DC_EX_tr_1_op2-1:0]    PREG_WR_DC_EX_tr_1_op2_1060_in;
    wire                                     EW_DC_EX_tr_1_op2_1060_in;
    wire  [`T_DATABUS_DC_EX_tr_1_op3-1:0]    PREG_WR_DC_EX_tr_1_op3_1086_in;
    wire                                     EW_DC_EX_tr_1_op3_1086_in;
    wire  [`T_DATABUS_DC_EX_tr_1_rs1-1:0]    PREG_WR_DC_EX_tr_1_rs1_1087_in;
    wire                                     EW_DC_EX_tr_1_rs1_1087_in;
    wire  [`T_DATABUS_DC_EX_tr_1_op1-1:0]    PREG_WR_DC_EX_tr_1_op1_1098_in;
    wire                                     EW_DC_EX_tr_1_op1_1098_in;
    wire  [`T_DATABUS_DC_EX_tr_1_rs2-1:0]    PREG_WR_DC_EX_tr_1_rs2_1124_in;
    wire                                     EW_DC_EX_tr_1_rs2_1124_in;
    wire  [`T_DATABUS_DC_EX_tr_1_op2-1:0]    PREG_WR_DC_EX_tr_1_op2_1131_in;
    wire                                     EW_DC_EX_tr_1_op2_1131_in;
    wire  [`T_DATABUS_DC_EX_tr_1_rs3-1:0]    PREG_WR_DC_EX_tr_1_rs3_1157_in;
    wire                                     EW_DC_EX_tr_1_rs3_1157_in;
    wire  [`T_DATABUS_DC_EX_tr_1_op3-1:0]    PREG_WR_DC_EX_tr_1_op3_1161_in;
    wire                                     EW_DC_EX_tr_1_op3_1161_in;
    wire  [`T_DATABUS_DC_EX_tr_1_rs1-1:0]    PREG_WR_DC_EX_tr_1_rs1_1187_in;
    wire                                     EW_DC_EX_tr_1_rs1_1187_in;
    wire  [`T_DATABUS_DC_EX_tr_1_op1-1:0]    PREG_WR_DC_EX_tr_1_op1_1198_in;
    wire                                     EW_DC_EX_tr_1_op1_1198_in;
    wire  [`T_DATABUS_DC_EX_tr_1_op2-1:0]    PREG_WR_DC_EX_tr_1_op2_1224_in;
    wire                                     EW_DC_EX_tr_1_op2_1224_in;
    wire  [`T_DATABUS_DC_EX_tr_1_op3-1:0]    PREG_WR_DC_EX_tr_1_op3_1225_in;
    wire                                     EW_DC_EX_tr_1_op3_1225_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_1226_in;
    wire                                     EW_DC_EX_tr_0_rs1_1226_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_1253_in;
    wire                                     EW_DC_EX_tr_0_op1_1253_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_WR_DC_EX_tr_0_rs2_1279_in;
    wire                                     EW_DC_EX_tr_0_rs2_1279_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_WR_DC_EX_tr_0_op2_1294_in;
    wire                                     EW_DC_EX_tr_0_op2_1294_in;
    wire  [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_WR_DC_EX_tr_0_offset_1320_in;
    wire                                     EW_DC_EX_tr_0_offset_1320_in;
    wire  [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_WR_DC_EX_tr_0_rs1_1322_in;
    wire                                     EW_DC_EX_tr_0_rs1_1322_in;
    wire  [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_WR_DC_EX_tr_0_op1_1349_in;
    wire                                     EW_DC_EX_tr_0_op1_1349_in;
    wire  [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_WR_DC_EX_tr_0_offset_1375_in;
    wire                                     EW_DC_EX_tr_0_offset_1375_in;
    wire  [`T_DATABUS_FE_DC_insn_1-1:0]      pipe_DC_insn_1_forwarded_value_in;
    wire  [`T_DATABUS_FE_DC_insn_0-1:0]      pipe_DC_insn_0_forwarded_value_in;
    wire  [`T_DATABUS_FE_DC_pc-1:0]          pipe_DC_pc_forwarded_value_in;
    wire                                     pipe_DC_EX_stall_in;
    reg                                     rst_main_in;
    reg                                     clk_main_in;
    wire                                     pipe_EX_MEM_stall_in;

//output signals
    wire                                    A_to_0_cmp_ri_ex_DC_EX_out;
    wire                                    A_to_0_cmp_rr_ex_DC_EX_out;
    wire                                    A_to_0_branch_execute_DC_EX_out;
    wire                                    A_to_0_custom_isa_rrr_ex_DC_EX_out;
    wire                                    A_to_0_alu_rrr_ex_DC_EX_out;
    wire                                    A_to_0_alu_rri_ex_DC_EX_out;
    wire                                    A_to_0_address_generation_DC_EX_out;
    wire                                    A_to_1_alu_rrr_ex_DC_EX_out;
    wire                                    A_to_1_alu_rri_ex_DC_EX_out;
    wire                                    A_to_0_bus_address_generation_DC_EX_out;
    wire                                    A_to_0_postoperation_acc_DC_EX_out;
    wire                                    A_to_0_st_mem_DC_EX_out;
    wire                                    A_to_0_ld_mem_DC_EX_out;
    wire                                    A_to_0_st_bus_DC_EX_out;
    wire                                    A_to_0_ld_bus_DC_EX_out;
    wire                                    A_to_0_writeback_dst_DC_EX_out;
    wire                                    A_to_0_branch_writeback_DC_EX_out;
    wire                                    A_to_1_writeback_dst_DC_EX_out;
    wire [`T_DATABUS_EX_MEM_tr_0_WBV-1:0]   pipe_EX_tr_0_WBV_forwarded_value_out;
    wire [`T_DATABUS_EX_MEM_tr_0_BPR-1:0]   pipe_EX_tr_0_BPR_forwarded_value_out;
    wire [`T_DATABUS_EX_MEM_tr_1_BPR-1:0]   pipe_EX_tr_1_BPR_forwarded_value_out;
    wire [`T_DATABUS_EX_MEM_tr_1_WBV-1:0]   pipe_EX_tr_1_WBV_forwarded_value_out;
    wire [`T_DATABUS_DC_EX_tr_0_rs1-1:0]    PREG_RD_DC_EX_tr_0_rs1_1379_out;
    wire [`T_DATABUS_DC_EX_tr_0_op1-1:0]    PREG_RD_DC_EX_tr_0_op1_1398_out;
    wire [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    PREG_RD_DC_EX_tr_0_rs2_1401_out;
    wire [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_RD_DC_EX_tr_0_op2_1420_out;
    wire [`T_DATABUS_DC_EX_insn_1-1:0]      PREG_RD_DC_EX_insn_1_1466_out;
    wire [`T_DATABUS_DC_EX_insn_0-1:0]      PREG_RD_DC_EX_insn_0_1468_out;
    wire [`T_DATABUS_DC_EX_tr_0_rs3-1:0]    PREG_RD_DC_EX_tr_0_rs3_1676_out;
    wire [`T_DATABUS_DC_EX_tr_0_op3-1:0]    PREG_RD_DC_EX_tr_0_op3_1695_out;
    wire [`T_DATABUS_DC_EX_tr_0_op3-1:0]    pipe_EX_tr_0_op3_forwarded_value_out;
    wire [`T_DATABUS_DC_EX_tr_0_op2-1:0]    PREG_RD_DC_EX_tr_0_op2_1980_out;
    wire [`T_DATABUS_DC_EX_tr_0_op2-1:0]    pipe_EX_tr_0_op2_forwarded_value_out;
    wire [`T_DATABUS_DC_EX_tr_0_offset-1:0] PREG_RD_DC_EX_tr_0_offset_2059_out;
    wire signed [`T_DATABUS_DC_EX_tr_0_read_flag-1:0] pipe_EX_tr_0_read_flag_forwarded_value_out;
    wire [`T_DATABUS_DC_EX_tr_1_rs1-1:0]    PREG_RD_DC_EX_tr_1_rs1_2085_out;
    wire [`T_DATABUS_DC_EX_tr_1_op1-1:0]    PREG_RD_DC_EX_tr_1_op1_2104_out;
    wire [`T_DATABUS_DC_EX_tr_1_rs2-1:0]    PREG_RD_DC_EX_tr_1_rs2_2133_out;
    wire [`T_DATABUS_DC_EX_tr_1_op2-1:0]    PREG_RD_DC_EX_tr_1_op2_2152_out;
    wire [`T_DATABUS_DC_EX_tr_1_rs3-1:0]    PREG_RD_DC_EX_tr_1_rs3_2177_out;
    wire [`T_DATABUS_DC_EX_tr_1_op3-1:0]    PREG_RD_DC_EX_tr_1_op3_2196_out;
    wire [`T_DATABUS_DC_EX_pc-1:0]          pipe_EX_pc_forwarded_value_out;
    wire [`T_DATABUS_DC_EX_insn_1-1:0]      pipe_EX_insn_1_forwarded_value_out;
    wire [`T_DATABUS_DC_EX_insn_0-1:0]      pipe_EX_insn_0_forwarded_value_out;
    wire [`T_DATABUS_DC_EX_tr_0_rs2-1:0]    pipe_EX_tr_0_rs2_forwarded_value_out;



   DC_EX uut(.A_to_0_cmp_ri_ex_DC_in(A_to_0_cmp_ri_ex_DC_in),
             .A_to_0_cmp_rr_ex_DC_in(A_to_0_cmp_rr_ex_DC_in),
             .A_to_0_branch_execute_DC_in(A_to_0_branch_execute_DC_in),
             .A_to_0_custom_isa_rrr_ex_DC_in(A_to_0_custom_isa_rrr_ex_DC_in),
             .A_to_0_alu_rrr_ex_DC_in(A_to_0_alu_rrr_ex_DC_in),
             .A_to_0_alu_rri_ex_DC_in(A_to_0_alu_rri_ex_DC_in),
             .A_to_0_address_generation_DC_in(A_to_0_address_generation_DC_in),
             .A_to_1_alu_rrr_ex_DC_in(A_to_1_alu_rrr_ex_DC_in),
             .A_to_1_alu_rri_ex_DC_in(A_to_1_alu_rri_ex_DC_in),
             .A_to_0_bus_address_generation_DC_in(A_to_0_bus_address_generation_DC_in),
             .A_to_0_postoperation_acc_DC_in(A_to_0_postoperation_acc_DC_in),
             .A_to_0_st_mem_DC_in(A_to_0_st_mem_DC_in),
             .A_to_0_ld_mem_DC_in(A_to_0_ld_mem_DC_in),
             .A_to_0_st_bus_DC_in(A_to_0_st_bus_DC_in),
             .A_to_0_ld_bus_DC_in(A_to_0_ld_bus_DC_in),
             .A_to_0_writeback_dst_DC_in(A_to_0_writeback_dst_DC_in),
             .A_to_0_branch_writeback_DC_in(A_to_0_branch_writeback_DC_in),
             .A_to_1_writeback_dst_DC_in(A_to_1_writeback_dst_DC_in),
             .PREG_WR_DC_EX_tr_0_rs1_172_in(PREG_WR_DC_EX_tr_0_rs1_172_in),
             .EW_DC_EX_tr_0_rs1_172_in(EW_DC_EX_tr_0_rs1_172_in),
             .PREG_WR_DC_EX_tr_0_op1_212_in(PREG_WR_DC_EX_tr_0_op1_212_in),
             .EW_DC_EX_tr_0_op1_212_in(EW_DC_EX_tr_0_op1_212_in),
             .PREG_WR_DC_EX_tr_0_rs2_242_in(PREG_WR_DC_EX_tr_0_rs2_242_in),
             .EW_DC_EX_tr_0_rs2_242_in(EW_DC_EX_tr_0_rs2_242_in),
             .PREG_WR_DC_EX_tr_0_op2_257_in(PREG_WR_DC_EX_tr_0_op2_257_in),
             .EW_DC_EX_tr_0_op2_257_in(EW_DC_EX_tr_0_op2_257_in),
             .PREG_WR_DC_EX_tr_0_rs3_283_in(PREG_WR_DC_EX_tr_0_rs3_283_in),
             .EW_DC_EX_tr_0_rs3_283_in(EW_DC_EX_tr_0_rs3_283_in),
             .PREG_WR_DC_EX_tr_0_op3_287_in(PREG_WR_DC_EX_tr_0_op3_287_in),
             .EW_DC_EX_tr_0_op3_287_in(EW_DC_EX_tr_0_op3_287_in),
             .PREG_WR_DC_EX_tr_0_rs1_316_in(PREG_WR_DC_EX_tr_0_rs1_316_in),
             .EW_DC_EX_tr_0_rs1_316_in(EW_DC_EX_tr_0_rs1_316_in),
             .PREG_WR_DC_EX_tr_0_op1_343_in(PREG_WR_DC_EX_tr_0_op1_343_in),
             .EW_DC_EX_tr_0_op1_343_in(EW_DC_EX_tr_0_op1_343_in),
             .PREG_WR_DC_EX_tr_0_op2_369_in(PREG_WR_DC_EX_tr_0_op2_369_in),
             .EW_DC_EX_tr_0_op2_369_in(EW_DC_EX_tr_0_op2_369_in),
             .PREG_WR_DC_EX_tr_0_rs1_370_in(PREG_WR_DC_EX_tr_0_rs1_370_in),
             .EW_DC_EX_tr_0_rs1_370_in(EW_DC_EX_tr_0_rs1_370_in),
             .PREG_WR_DC_EX_tr_0_op1_397_in(PREG_WR_DC_EX_tr_0_op1_397_in),
             .EW_DC_EX_tr_0_op1_397_in(EW_DC_EX_tr_0_op1_397_in),
             .PREG_WR_DC_EX_tr_0_rs2_423_in(PREG_WR_DC_EX_tr_0_rs2_423_in),
             .EW_DC_EX_tr_0_rs2_423_in(EW_DC_EX_tr_0_rs2_423_in),
             .PREG_WR_DC_EX_tr_0_op2_438_in(PREG_WR_DC_EX_tr_0_op2_438_in),
             .EW_DC_EX_tr_0_op2_438_in(EW_DC_EX_tr_0_op2_438_in),
             .PREG_WR_DC_EX_tr_0_rs1_492_in(PREG_WR_DC_EX_tr_0_rs1_492_in),
             .EW_DC_EX_tr_0_rs1_492_in(EW_DC_EX_tr_0_rs1_492_in),
             .PREG_WR_DC_EX_tr_0_op1_519_in(PREG_WR_DC_EX_tr_0_op1_519_in),
             .EW_DC_EX_tr_0_op1_519_in(EW_DC_EX_tr_0_op1_519_in),
             .PREG_WR_DC_EX_tr_0_WBV_557_in(PREG_WR_DC_EX_tr_0_WBV_557_in),
             .EW_DC_EX_tr_0_WBV_557_in(EW_DC_EX_tr_0_WBV_557_in),
             .PREG_WR_DC_EX_tr_0_BPR_561_in(PREG_WR_DC_EX_tr_0_BPR_561_in),
             .EW_DC_EX_tr_0_BPR_561_in(EW_DC_EX_tr_0_BPR_561_in),
             .PREG_WR_DC_EX_tr_0_BPR_565_in(PREG_WR_DC_EX_tr_0_BPR_565_in),
             .EW_DC_EX_tr_0_BPR_565_in(EW_DC_EX_tr_0_BPR_565_in),
             .PREG_WR_DC_EX_tr_0_WBV_566_in(PREG_WR_DC_EX_tr_0_WBV_566_in),
             .EW_DC_EX_tr_0_WBV_566_in(EW_DC_EX_tr_0_WBV_566_in),
             .PREG_WR_DC_EX_tr_0_BPR_570_in(PREG_WR_DC_EX_tr_0_BPR_570_in),
             .EW_DC_EX_tr_0_BPR_570_in(EW_DC_EX_tr_0_BPR_570_in),
             .PREG_WR_DC_EX_tr_0_WBV_571_in(PREG_WR_DC_EX_tr_0_WBV_571_in),
             .EW_DC_EX_tr_0_WBV_571_in(EW_DC_EX_tr_0_WBV_571_in),
             .PREG_WR_DC_EX_tr_0_rs1_572_in(PREG_WR_DC_EX_tr_0_rs1_572_in),
             .EW_DC_EX_tr_0_rs1_572_in(EW_DC_EX_tr_0_rs1_572_in),
             .PREG_WR_DC_EX_tr_0_op1_599_in(PREG_WR_DC_EX_tr_0_op1_599_in),
             .EW_DC_EX_tr_0_op1_599_in(EW_DC_EX_tr_0_op1_599_in),
             .PREG_WR_DC_EX_tr_0_rs2_625_in(PREG_WR_DC_EX_tr_0_rs2_625_in),
             .EW_DC_EX_tr_0_rs2_625_in(EW_DC_EX_tr_0_rs2_625_in),
             .PREG_WR_DC_EX_tr_0_op2_640_in(PREG_WR_DC_EX_tr_0_op2_640_in),
             .EW_DC_EX_tr_0_op2_640_in(EW_DC_EX_tr_0_op2_640_in),
             .PREG_WR_DC_EX_tr_0_op3_666_in(PREG_WR_DC_EX_tr_0_op3_666_in),
             .EW_DC_EX_tr_0_op3_666_in(EW_DC_EX_tr_0_op3_666_in),
             .PREG_WR_DC_EX_tr_0_rs1_667_in(PREG_WR_DC_EX_tr_0_rs1_667_in),
             .EW_DC_EX_tr_0_rs1_667_in(EW_DC_EX_tr_0_rs1_667_in),
             .PREG_WR_DC_EX_tr_0_op1_694_in(PREG_WR_DC_EX_tr_0_op1_694_in),
             .EW_DC_EX_tr_0_op1_694_in(EW_DC_EX_tr_0_op1_694_in),
             .PREG_WR_DC_EX_tr_0_rs2_720_in(PREG_WR_DC_EX_tr_0_rs2_720_in),
             .EW_DC_EX_tr_0_rs2_720_in(EW_DC_EX_tr_0_rs2_720_in),
             .PREG_WR_DC_EX_tr_0_op2_735_in(PREG_WR_DC_EX_tr_0_op2_735_in),
             .EW_DC_EX_tr_0_op2_735_in(EW_DC_EX_tr_0_op2_735_in),
             .PREG_WR_DC_EX_tr_0_rs3_761_in(PREG_WR_DC_EX_tr_0_rs3_761_in),
             .EW_DC_EX_tr_0_rs3_761_in(EW_DC_EX_tr_0_rs3_761_in),
             .PREG_WR_DC_EX_tr_0_op3_765_in(PREG_WR_DC_EX_tr_0_op3_765_in),
             .EW_DC_EX_tr_0_op3_765_in(EW_DC_EX_tr_0_op3_765_in),
             .PREG_WR_DC_EX_tr_0_rs1_791_in(PREG_WR_DC_EX_tr_0_rs1_791_in),
             .EW_DC_EX_tr_0_rs1_791_in(EW_DC_EX_tr_0_rs1_791_in),
             .PREG_WR_DC_EX_tr_0_op1_818_in(PREG_WR_DC_EX_tr_0_op1_818_in),
             .EW_DC_EX_tr_0_op1_818_in(EW_DC_EX_tr_0_op1_818_in),
             .PREG_WR_DC_EX_tr_0_op2_844_in(PREG_WR_DC_EX_tr_0_op2_844_in),
             .EW_DC_EX_tr_0_op2_844_in(EW_DC_EX_tr_0_op2_844_in),
             .PREG_WR_DC_EX_tr_0_op3_845_in(PREG_WR_DC_EX_tr_0_op3_845_in),
             .EW_DC_EX_tr_0_op3_845_in(EW_DC_EX_tr_0_op3_845_in),
             .PREG_WR_DC_EX_tr_0_rs1_846_in(PREG_WR_DC_EX_tr_0_rs1_846_in),
             .EW_DC_EX_tr_0_rs1_846_in(EW_DC_EX_tr_0_rs1_846_in),
             .PREG_WR_DC_EX_tr_0_op1_873_in(PREG_WR_DC_EX_tr_0_op1_873_in),
             .EW_DC_EX_tr_0_op1_873_in(EW_DC_EX_tr_0_op1_873_in),
             .PREG_WR_DC_EX_tr_0_rs2_899_in(PREG_WR_DC_EX_tr_0_rs2_899_in),
             .EW_DC_EX_tr_0_rs2_899_in(EW_DC_EX_tr_0_rs2_899_in),
             .PREG_WR_DC_EX_tr_0_op2_914_in(PREG_WR_DC_EX_tr_0_op2_914_in),
             .EW_DC_EX_tr_0_op2_914_in(EW_DC_EX_tr_0_op2_914_in),
             .PREG_WR_DC_EX_tr_0_offset_940_in(PREG_WR_DC_EX_tr_0_offset_940_in),
             .EW_DC_EX_tr_0_offset_940_in(EW_DC_EX_tr_0_offset_940_in),
             .PREG_WR_DC_EX_tr_0_read_flag_941_in(PREG_WR_DC_EX_tr_0_read_flag_941_in),
             .EW_DC_EX_tr_0_read_flag_941_in(EW_DC_EX_tr_0_read_flag_941_in),
             .PREG_WR_DC_EX_tr_0_rs1_942_in(PREG_WR_DC_EX_tr_0_rs1_942_in),
             .EW_DC_EX_tr_0_rs1_942_in(EW_DC_EX_tr_0_rs1_942_in),
             .PREG_WR_DC_EX_tr_0_op1_969_in(PREG_WR_DC_EX_tr_0_op1_969_in),
             .EW_DC_EX_tr_0_op1_969_in(EW_DC_EX_tr_0_op1_969_in),
             .PREG_WR_DC_EX_tr_0_offset_995_in(PREG_WR_DC_EX_tr_0_offset_995_in),
             .EW_DC_EX_tr_0_offset_995_in(EW_DC_EX_tr_0_offset_995_in),
             .PREG_WR_DC_EX_tr_0_read_flag_996_in(PREG_WR_DC_EX_tr_0_read_flag_996_in),
             .EW_DC_EX_tr_0_read_flag_996_in(EW_DC_EX_tr_0_read_flag_996_in),
             .PREG_WR_DC_EX_tr_1_BPR_1005_in(PREG_WR_DC_EX_tr_1_BPR_1005_in),
             .EW_DC_EX_tr_1_BPR_1005_in(EW_DC_EX_tr_1_BPR_1005_in),
             .PREG_WR_DC_EX_tr_1_WBV_1007_in(PREG_WR_DC_EX_tr_1_WBV_1007_in),
             .EW_DC_EX_tr_1_WBV_1007_in(EW_DC_EX_tr_1_WBV_1007_in),
             .PREG_WR_DC_EX_tr_1_BPR_1011_in(PREG_WR_DC_EX_tr_1_BPR_1011_in),
             .EW_DC_EX_tr_1_BPR_1011_in(EW_DC_EX_tr_1_BPR_1011_in),
             .PREG_WR_DC_EX_tr_1_WBV_1012_in(PREG_WR_DC_EX_tr_1_WBV_1012_in),
             .EW_DC_EX_tr_1_WBV_1012_in(EW_DC_EX_tr_1_WBV_1012_in),
             .PREG_WR_DC_EX_tr_1_rs1_1013_in(PREG_WR_DC_EX_tr_1_rs1_1013_in),
             .EW_DC_EX_tr_1_rs1_1013_in(EW_DC_EX_tr_1_rs1_1013_in),
             .PREG_WR_DC_EX_tr_1_op1_1027_in(PREG_WR_DC_EX_tr_1_op1_1027_in),
             .EW_DC_EX_tr_1_op1_1027_in(EW_DC_EX_tr_1_op1_1027_in),
             .PREG_WR_DC_EX_tr_1_rs2_1053_in(PREG_WR_DC_EX_tr_1_rs2_1053_in),
             .EW_DC_EX_tr_1_rs2_1053_in(EW_DC_EX_tr_1_rs2_1053_in),
             .PREG_WR_DC_EX_tr_1_op2_1060_in(PREG_WR_DC_EX_tr_1_op2_1060_in),
             .EW_DC_EX_tr_1_op2_1060_in(EW_DC_EX_tr_1_op2_1060_in),
             .PREG_WR_DC_EX_tr_1_op3_1086_in(PREG_WR_DC_EX_tr_1_op3_1086_in),
             .EW_DC_EX_tr_1_op3_1086_in(EW_DC_EX_tr_1_op3_1086_in),
             .PREG_WR_DC_EX_tr_1_rs1_1087_in(PREG_WR_DC_EX_tr_1_rs1_1087_in),
             .EW_DC_EX_tr_1_rs1_1087_in(EW_DC_EX_tr_1_rs1_1087_in),
             .PREG_WR_DC_EX_tr_1_op1_1098_in(PREG_WR_DC_EX_tr_1_op1_1098_in),
             .EW_DC_EX_tr_1_op1_1098_in(EW_DC_EX_tr_1_op1_1098_in),
             .PREG_WR_DC_EX_tr_1_rs2_1124_in(PREG_WR_DC_EX_tr_1_rs2_1124_in),
             .EW_DC_EX_tr_1_rs2_1124_in(EW_DC_EX_tr_1_rs2_1124_in),
             .PREG_WR_DC_EX_tr_1_op2_1131_in(PREG_WR_DC_EX_tr_1_op2_1131_in),
             .EW_DC_EX_tr_1_op2_1131_in(EW_DC_EX_tr_1_op2_1131_in),
             .PREG_WR_DC_EX_tr_1_rs3_1157_in(PREG_WR_DC_EX_tr_1_rs3_1157_in),
             .EW_DC_EX_tr_1_rs3_1157_in(EW_DC_EX_tr_1_rs3_1157_in),
             .PREG_WR_DC_EX_tr_1_op3_1161_in(PREG_WR_DC_EX_tr_1_op3_1161_in),
             .EW_DC_EX_tr_1_op3_1161_in(EW_DC_EX_tr_1_op3_1161_in),
             .PREG_WR_DC_EX_tr_1_rs1_1187_in(PREG_WR_DC_EX_tr_1_rs1_1187_in),
             .EW_DC_EX_tr_1_rs1_1187_in(EW_DC_EX_tr_1_rs1_1187_in),
             .PREG_WR_DC_EX_tr_1_op1_1198_in(PREG_WR_DC_EX_tr_1_op1_1198_in),
             .EW_DC_EX_tr_1_op1_1198_in(EW_DC_EX_tr_1_op1_1198_in),
             .PREG_WR_DC_EX_tr_1_op2_1224_in(PREG_WR_DC_EX_tr_1_op2_1224_in),
             .EW_DC_EX_tr_1_op2_1224_in(EW_DC_EX_tr_1_op2_1224_in),
             .PREG_WR_DC_EX_tr_1_op3_1225_in(PREG_WR_DC_EX_tr_1_op3_1225_in),
             .EW_DC_EX_tr_1_op3_1225_in(EW_DC_EX_tr_1_op3_1225_in),
             .PREG_WR_DC_EX_tr_0_rs1_1226_in(PREG_WR_DC_EX_tr_0_rs1_1226_in),
             .EW_DC_EX_tr_0_rs1_1226_in(EW_DC_EX_tr_0_rs1_1226_in),
             .PREG_WR_DC_EX_tr_0_op1_1253_in(PREG_WR_DC_EX_tr_0_op1_1253_in),
             .EW_DC_EX_tr_0_op1_1253_in(EW_DC_EX_tr_0_op1_1253_in),
             .PREG_WR_DC_EX_tr_0_rs2_1279_in(PREG_WR_DC_EX_tr_0_rs2_1279_in),
             .EW_DC_EX_tr_0_rs2_1279_in(EW_DC_EX_tr_0_rs2_1279_in),
             .PREG_WR_DC_EX_tr_0_op2_1294_in(PREG_WR_DC_EX_tr_0_op2_1294_in),
             .EW_DC_EX_tr_0_op2_1294_in(EW_DC_EX_tr_0_op2_1294_in),
             .PREG_WR_DC_EX_tr_0_offset_1320_in(PREG_WR_DC_EX_tr_0_offset_1320_in),
             .EW_DC_EX_tr_0_offset_1320_in(EW_DC_EX_tr_0_offset_1320_in),
             .PREG_WR_DC_EX_tr_0_rs1_1322_in(PREG_WR_DC_EX_tr_0_rs1_1322_in),
             .EW_DC_EX_tr_0_rs1_1322_in(EW_DC_EX_tr_0_rs1_1322_in),
             .PREG_WR_DC_EX_tr_0_op1_1349_in(PREG_WR_DC_EX_tr_0_op1_1349_in),
             .EW_DC_EX_tr_0_op1_1349_in(EW_DC_EX_tr_0_op1_1349_in),
             .PREG_WR_DC_EX_tr_0_offset_1375_in(PREG_WR_DC_EX_tr_0_offset_1375_in),
             .EW_DC_EX_tr_0_offset_1375_in(EW_DC_EX_tr_0_offset_1375_in),
             .pipe_DC_insn_1_forwarded_value_in(pipe_DC_insn_1_forwarded_value_in),
             .pipe_DC_insn_0_forwarded_value_in(pipe_DC_insn_0_forwarded_value_in),
             .pipe_DC_pc_forwarded_value_in(pipe_DC_pc_forwarded_value_in),
             .pipe_DC_EX_stall_in(pipe_DC_EX_stall_in),
             .rst_main_in(rst_main_in),
             .clk_main_in(clk_main_in),
             .pipe_EX_MEM_stall_in(pipe_EX_MEM_stall_in),


             .A_to_0_cmp_ri_ex_DC_EX_out(A_to_0_cmp_ri_ex_DC_EX_out),
             .A_to_0_cmp_rr_ex_DC_EX_out(A_to_0_cmp_rr_ex_DC_EX_out),
             .A_to_0_branch_execute_DC_EX_out(A_to_0_branch_execute_DC_EX_out),
             .A_to_0_custom_isa_rrr_ex_DC_EX_out(A_to_0_custom_isa_rrr_ex_DC_EX_out),
             .A_to_0_alu_rrr_ex_DC_EX_out(A_to_0_alu_rrr_ex_DC_EX_out),
             .A_to_0_alu_rri_ex_DC_EX_out(A_to_0_alu_rri_ex_DC_EX_out),
             .A_to_0_address_generation_DC_EX_out(A_to_0_address_generation_DC_EX_out),
             .A_to_1_alu_rrr_ex_DC_EX_out(A_to_1_alu_rrr_ex_DC_EX_out),
             .A_to_1_alu_rri_ex_DC_EX_out(A_to_1_alu_rri_ex_DC_EX_out),
             .A_to_0_bus_address_generation_DC_EX_out(A_to_0_bus_address_generation_DC_EX_out),
             .A_to_0_postoperation_acc_DC_EX_out(A_to_0_postoperation_acc_DC_EX_out),
             .A_to_0_st_mem_DC_EX_out(A_to_0_st_mem_DC_EX_out),
             .A_to_0_ld_mem_DC_EX_out(A_to_0_ld_mem_DC_EX_out),
             .A_to_0_st_bus_DC_EX_out(A_to_0_st_bus_DC_EX_out),
             .A_to_0_ld_bus_DC_EX_out(A_to_0_ld_bus_DC_EX_out),
             .A_to_0_writeback_dst_DC_EX_out(A_to_0_writeback_dst_DC_EX_out),
             .A_to_0_branch_writeback_DC_EX_out(A_to_0_branch_writeback_DC_EX_out),
             .A_to_1_writeback_dst_DC_EX_out(A_to_1_writeback_dst_DC_EX_out),
             .pipe_EX_tr_0_WBV_forwarded_value_out(pipe_EX_tr_0_WBV_forwarded_value_out),
             .pipe_EX_tr_0_BPR_forwarded_value_out(pipe_EX_tr_0_BPR_forwarded_value_out),
             .pipe_EX_tr_1_BPR_forwarded_value_out(pipe_EX_tr_1_BPR_forwarded_value_out),
             .pipe_EX_tr_1_WBV_forwarded_value_out(pipe_EX_tr_1_WBV_forwarded_value_out),
             .PREG_RD_DC_EX_tr_0_rs1_1379_out(PREG_RD_DC_EX_tr_0_rs1_1379_out),
             .PREG_RD_DC_EX_tr_0_op1_1398_out(PREG_RD_DC_EX_tr_0_op1_1398_out),
             .PREG_RD_DC_EX_tr_0_rs2_1401_out(PREG_RD_DC_EX_tr_0_rs2_1401_out),
             .PREG_RD_DC_EX_tr_0_op2_1420_out(PREG_RD_DC_EX_tr_0_op2_1420_out),
             .PREG_RD_DC_EX_insn_1_1466_out(PREG_RD_DC_EX_insn_1_1466_out),
             .PREG_RD_DC_EX_insn_0_1468_out(PREG_RD_DC_EX_insn_0_1468_out),
             .PREG_RD_DC_EX_tr_0_rs3_1676_out(PREG_RD_DC_EX_tr_0_rs3_1676_out),
             .PREG_RD_DC_EX_tr_0_op3_1695_out(PREG_RD_DC_EX_tr_0_op3_1695_out),
             .pipe_EX_tr_0_op3_forwarded_value_out(pipe_EX_tr_0_op3_forwarded_value_out),
             .PREG_RD_DC_EX_tr_0_op2_1980_out(PREG_RD_DC_EX_tr_0_op2_1980_out),
             .pipe_EX_tr_0_op2_forwarded_value_out(pipe_EX_tr_0_op2_forwarded_value_out),
             .PREG_RD_DC_EX_tr_0_offset_2059_out(PREG_RD_DC_EX_tr_0_offset_2059_out),
             .pipe_EX_tr_0_read_flag_forwarded_value_out(pipe_EX_tr_0_read_flag_forwarded_value_out),
             .PREG_RD_DC_EX_tr_1_rs1_2085_out(PREG_RD_DC_EX_tr_1_rs1_2085_out),
             .PREG_RD_DC_EX_tr_1_op1_2104_out(PREG_RD_DC_EX_tr_1_op1_2104_out),
             .PREG_RD_DC_EX_tr_1_rs2_2133_out(PREG_RD_DC_EX_tr_1_rs2_2133_out),
             .PREG_RD_DC_EX_tr_1_op2_2152_out(PREG_RD_DC_EX_tr_1_op2_2152_out),
             .PREG_RD_DC_EX_tr_1_rs3_2177_out(PREG_RD_DC_EX_tr_1_rs3_2177_out),
             .PREG_RD_DC_EX_tr_1_op3_2196_out(PREG_RD_DC_EX_tr_1_op3_2196_out),
             .pipe_EX_pc_forwarded_value_out(pipe_EX_pc_forwarded_value_out),
             .pipe_EX_insn_1_forwarded_value_out(pipe_EX_insn_1_forwarded_value_out),
             .pipe_EX_insn_0_forwarded_value_out(pipe_EX_insn_0_forwarded_value_out),
             .pipe_EX_tr_0_rs2_forwarded_value_out(pipe_EX_tr_0_rs2_forwarded_value_out));
    

initial
begin
  clk_main_in <= 1'b0;
  rst_main_in <= 1'b0;
  counter1 <= 0;
  counter2[0] <= 0; 
  counter2[1] <= 0; 
  counter2[2] <= 0; 
  counter2[3] <= 0; 
  counter2[4] <= 0; 
  counter2[5] <= 0; 
  counter2[6] <= 0; 
  counter2[7] <= 0; 
  counter2[8] <= 0; 
  counter2[9] <= 0; 
  counter2[10] <= 0; 
  counter3[0] <= 0; 
  counter3[1] <= 0; 
  counter3[2] <= 0; 
  counter3[3] <= 0; 
  counter3[4] <= 0; 
  counter3[5] <= 0; 
  counter3[6] <= 0; 
  counter3[7] <= 0; 
  counter3[8] <= 0; 
  counter3[9] <= 0; 
  counter3[10] <= 0; 
  counter4[0] <= 0; 
  counter4[1] <= 0; 
  counter4[2] <= 0; 
  counter4[3] <= 0; 
  counter4[4] <= 0; 
  counter4[5] <= 0; 
  counter5[0] <= 0; 
  counter5[1] <= 0; 
  counter5[2] <= 0; 
  counter5[3] <= 0; 
  counter5[4] <= 0; 
  counter5[5] <= 0; 
  counter5[6] <= 0; 
  counter5[7] <= 0; 
  counter6[0] <= 0; 
  counter6[1] <= 0; 
  counter7[0] <= 0; 
  counter7[1] <= 0; 
  counter7[2] <= 0; 
  counter7[3] <= 0; 
  counter8[0] <= 0; 
  counter8[1] <= 0; 
  counter8[2] <= 0; 
  counter9[0] <= 0; 
  counter9[1] <= 0; 
  counter9[2] <= 0; 
  counter10[0] <= 0; 
  counter10[1] <= 0; 
  counter10[2] <= 0; 
  counter10[3] <= 0; 
  counter11[0] <= 0; 
  counter11[1] <= 0; 
  counter12[0] <= 0; 
  counter12[1] <= 0; 
  counter13[0] <= 0; 
  counter13[1] <= 0; 
  counter14[0] <= 0; 
  counter14[1] <= 0; 
  counter14[2] <= 0; 
  counter15[0] <= 0; 
  counter15[1] <= 0; 
  counter15[2] <= 0; 
  counter16[0] <= 0; 
  counter16[1] <= 0; 
  counter17[0] <= 0; 
  counter17[1] <= 0; 
  counter17[2] <= 0; 
  counter18[0] <= 0; 
  counter18[1] <= 0; 
  counter18[2] <= 0; 
  counter19    <= 0;
  counter20    <= 0;
  counter21    <= 0;
  counter22    <= 0;
  #100;
  rst_main_in <= 1'b1;
  #100000;
  $finish;
end

always #5
  clk_main_in <= ~clk_main_in;
  



always@(negedge clk_main_in)
begin
  counter1 <= counter1 + 1;
  counter2[0] <= counter2[0] + 2; 
  counter2[1] <= counter2[1] + 3; 
  counter2[2] <= counter2[2] + 4; 
  counter2[3] <= counter2[3] + 5; 
  counter2[4] <= counter2[4] + 6; 
  counter2[5] <= counter2[5] + 7; 
  counter2[6] <= counter2[6] + 8; 
  counter2[7] <= counter2[7] + 9; 
  counter2[8] <= counter2[8] + 10; 
  counter2[9] <= counter2[9] + 11; 
  counter2[10] <= counter2[10] + 12; 
  counter3[0] <= counter3[0] + 13; 
  counter3[1] <= counter3[1] + 14; 
  counter3[2] <= counter3[2] + 15; 
  counter3[3] <= counter3[3] + 16; 
  counter3[4] <= counter3[4] + 17; 
  counter3[5] <= counter3[5] + 18; 
  counter3[6] <= counter3[6] + 19; 
  counter3[7] <= counter3[7] + 20; 
  counter3[8] <= counter3[8] + 21; 
  counter3[9] <= counter3[9] + 22; 
  counter3[10] <= counter3[10] + 23; 
  counter4[0] <= counter4[0] + 24; 
  counter4[1] <= counter4[1] + 25; 
  counter4[2] <= counter4[2] + 26; 
  counter4[3] <= counter4[3] + 27; 
  counter4[4] <= counter4[4] + 28; 
  counter4[5] <= counter4[5] + 29; 
  counter5[0] <= counter5[0] + 30; 
  counter5[1] <= counter5[1] + 31; 
  counter5[2] <= counter5[2] + 32; 
  counter5[3] <= counter5[3] + 33; 
  counter5[4] <= counter5[4] + 34; 
  counter5[5] <= counter5[5] + 35; 
  counter5[6] <= counter5[6] + 36; 
  counter5[7] <= counter5[7] + 37; 
  counter6[0] <= counter6[0] + 38; 
  counter6[1] <= counter6[1] + 39; 
  counter7[0] <= counter7[0] + 40; 
  counter7[1] <= counter7[1] + 41; 
  counter7[2] <= counter7[2] + 42; 
  counter7[3] <= counter7[3] + 43; 
  counter8[0] <= counter8[0] + 44; 
  counter8[1] <= counter8[1] + 45; 
  counter8[2] <= counter8[2] + 46; 
  counter9[0] <= counter9[0] + 47; 
  counter9[1] <= counter9[1] + 48; 
  counter9[2] <= counter9[2] + 49; 
  counter10[0] <= counter10[0] + 50; 
  counter10[1] <= counter10[1] + 51; 
  counter10[2] <= counter10[2] + 52; 
  counter10[3] <= counter10[3] + 53; 
  counter11[0] <= counter11[0] + 54; 
  counter11[1] <= counter11[1] + 55; 
  counter12[0] <= counter12[0] + 56; 
  counter12[1] <= counter12[1] + 57; 
  counter13[0] <= counter13[0] + 58; 
  counter13[1] <= counter13[1] + 59; 
  counter14[0] <= counter14[0] + 60; 
  counter14[1] <= counter14[1] + 61; 
  counter14[2] <= counter14[2] + 62; 
  counter15[0] <= counter15[0] + 63; 
  counter15[1] <= counter15[1] + 64; 
  counter15[2] <= counter15[2] + 65; 
  counter16[0] <= counter16[0] + 66; 
  counter16[1] <= counter16[1] + 67; 
  counter17[0] <= counter17[0] + 60; 
  counter17[1] <= counter17[1] + 69; 
  counter17[2] <= counter17[2] + 70; 
  counter18[0] <= counter18[0] + 71; 
  counter18[1] <= counter18[1] + 72; 
  counter18[2] <= counter18[2] + 73; 
  counter19    <= counter19 + 74;
  counter20    <= counter20 + 75;
  counter21    <= counter21 + 76;
  counter22    <= counter22 + 77;
end


    
    

assign PREG_WR_DC_EX_tr_0_rs1_172_in = counter2[0];
assign PREG_WR_DC_EX_tr_0_op1_212_in = counter3[0];
assign PREG_WR_DC_EX_tr_0_rs2_242_in = counter4[0];
assign PREG_WR_DC_EX_tr_0_op2_257_in = counter5[0];
assign PREG_WR_DC_EX_tr_0_rs3_283_in = counter6[0];
assign PREG_WR_DC_EX_tr_0_op3_287_in = counter7[0];
assign PREG_WR_DC_EX_tr_0_rs1_316_in = counter2[1];
assign PREG_WR_DC_EX_tr_0_op1_343_in = counter3[1];
assign PREG_WR_DC_EX_tr_0_op2_369_in = counter5[1];
assign PREG_WR_DC_EX_tr_0_rs1_370_in = counter2[2];
assign PREG_WR_DC_EX_tr_0_op1_397_in = counter3[2];
assign PREG_WR_DC_EX_tr_0_rs2_423_in = counter4[1];
assign PREG_WR_DC_EX_tr_0_op2_438_in = counter5[2];
assign PREG_WR_DC_EX_tr_0_rs1_492_in = counter2[3];
assign PREG_WR_DC_EX_tr_0_op1_519_in = counter3[3];
assign PREG_WR_DC_EX_tr_0_WBV_557_in = counter8[0];
assign PREG_WR_DC_EX_tr_0_BPR_561_in = counter9[0];
assign PREG_WR_DC_EX_tr_0_BPR_565_in = counter9[1];
assign PREG_WR_DC_EX_tr_0_WBV_566_in = counter8[1];
assign PREG_WR_DC_EX_tr_0_BPR_570_in = counter9[2];
assign PREG_WR_DC_EX_tr_0_WBV_571_in = counter8[2];
assign PREG_WR_DC_EX_tr_0_rs1_572_in = counter2[4];
assign PREG_WR_DC_EX_tr_0_op1_599_in = counter3[4];
assign PREG_WR_DC_EX_tr_0_rs2_625_in = counter4[2];
assign PREG_WR_DC_EX_tr_0_op2_640_in = counter5[3];
assign PREG_WR_DC_EX_tr_0_op3_666_in = counter7[1];
assign PREG_WR_DC_EX_tr_0_rs1_667_in = counter2[5];
assign PREG_WR_DC_EX_tr_0_op1_694_in = counter3[5];
assign PREG_WR_DC_EX_tr_0_rs2_720_in = counter4[3];
assign PREG_WR_DC_EX_tr_0_op2_735_in = counter5[4];
assign PREG_WR_DC_EX_tr_0_rs3_761_in = counter6[1];
assign PREG_WR_DC_EX_tr_0_op3_765_in = counter7[2];
assign PREG_WR_DC_EX_tr_0_rs1_791_in = counter2[6];
assign PREG_WR_DC_EX_tr_0_op1_818_in = counter3[6];
assign PREG_WR_DC_EX_tr_0_op2_844_in = counter5[5];
assign PREG_WR_DC_EX_tr_0_op3_845_in = counter7[3];
assign PREG_WR_DC_EX_tr_0_rs1_846_in = counter2[7];
assign PREG_WR_DC_EX_tr_0_op1_873_in = counter3[7];
assign PREG_WR_DC_EX_tr_0_rs2_899_in = counter4[4];
assign PREG_WR_DC_EX_tr_0_op2_914_in = counter5[6];
assign PREG_WR_DC_EX_tr_0_offset_940_in = counter10[0];
assign PREG_WR_DC_EX_tr_0_read_flag_941_in = counter11[0];
assign PREG_WR_DC_EX_tr_0_rs1_942_in = counter2[8];
assign PREG_WR_DC_EX_tr_0_op1_969_in = counter3[8];
assign PREG_WR_DC_EX_tr_0_offset_995_in = counter10[1];
assign PREG_WR_DC_EX_tr_0_read_flag_996_in = counter11[1];
assign PREG_WR_DC_EX_tr_1_BPR_1005_in = counter12[0];
assign PREG_WR_DC_EX_tr_1_WBV_1007_in = counter13[0];
assign PREG_WR_DC_EX_tr_1_BPR_1011_in = counter12[1];
assign PREG_WR_DC_EX_tr_1_WBV_1012_in = counter13[1];
assign PREG_WR_DC_EX_tr_1_rs1_1013_in = counter14[0];
assign PREG_WR_DC_EX_tr_1_op1_1027_in = counter15[0];
assign PREG_WR_DC_EX_tr_1_rs2_1053_in = counter16[0];
assign PREG_WR_DC_EX_tr_1_op2_1060_in = counter18[0];
assign PREG_WR_DC_EX_tr_1_op3_1086_in = counter17[0];
assign PREG_WR_DC_EX_tr_1_rs1_1087_in = counter14[1];
assign PREG_WR_DC_EX_tr_1_op1_1098_in = counter15[1];
assign PREG_WR_DC_EX_tr_1_rs2_1124_in = counter16[1];
assign PREG_WR_DC_EX_tr_1_op2_1131_in = counter18[1];
assign PREG_WR_DC_EX_tr_1_rs3_1157_in = counter19;
assign pipe_DC_insn_1_forwarded_value_in = counter20;
assign pipe_DC_insn_0_forwarded_value_in = counter21;
assign pipe_DC_pc_forwarded_value_in = counter22;
assign PREG_WR_DC_EX_tr_0_offset_1375_in = counter10[2];
assign PREG_WR_DC_EX_tr_0_op1_1349_in = counter3[9];
assign PREG_WR_DC_EX_tr_0_rs1_1322_in = counter2[9];
assign PREG_WR_DC_EX_tr_0_offset_1320_in = counter10[3];
assign PREG_WR_DC_EX_tr_0_op2_1294_in = counter5[7];
assign PREG_WR_DC_EX_tr_0_rs2_1279_in = counter4[5];
assign PREG_WR_DC_EX_tr_0_op1_1253_in = counter3[10];
assign PREG_WR_DC_EX_tr_0_rs1_1226_in = counter2[10];
assign PREG_WR_DC_EX_tr_1_op3_1225_in = counter17[1];
assign PREG_WR_DC_EX_tr_1_op2_1224_in = counter18[2];
assign PREG_WR_DC_EX_tr_1_op1_1198_in = counter15[2];
assign PREG_WR_DC_EX_tr_1_rs1_1187_in = counter14[2];
assign PREG_WR_DC_EX_tr_1_op3_1161_in = counter17[2];
    
assign A_to_0_cmp_ri_ex_DC_in = counter1[0];
assign A_to_0_cmp_rr_ex_DC_in = counter1[1];
assign A_to_0_branch_execute_DC_in = counter1[2];
assign A_to_0_custom_isa_rrr_ex_DC_in = counter1[3];
assign A_to_0_alu_rrr_ex_DC_in = counter1[4];
assign A_to_0_alu_rri_ex_DC_in = counter1[5];
assign A_to_0_address_generation_DC_in = counter1[6];
assign A_to_1_alu_rrr_ex_DC_in = counter1[7];
assign A_to_1_alu_rri_ex_DC_in = counter1[8];
assign A_to_0_bus_address_generation_DC_in = counter1[9];
assign A_to_0_postoperation_acc_DC_in = counter1[10];
assign A_to_0_st_mem_DC_in = counter1[11];
assign A_to_0_ld_mem_DC_in = counter1[12];
assign A_to_0_st_bus_DC_in = counter1[13];
assign A_to_0_ld_bus_DC_in = counter1[14];
assign A_to_0_writeback_dst_DC_in = counter1[15];
assign A_to_0_branch_writeback_DC_in = counter1[16];
assign A_to_1_writeback_dst_DC_in = counter1[17];
assign EW_DC_EX_tr_0_rs1_172_in = counter1[18];
assign EW_DC_EX_tr_0_op1_212_in = counter1[19];
assign EW_DC_EX_tr_0_rs2_242_in = counter1[20];
assign EW_DC_EX_tr_0_op2_257_in = counter1[21];
assign EW_DC_EX_tr_0_rs3_283_in = counter1[22];
assign EW_DC_EX_tr_0_op3_287_in = counter1[23];
assign EW_DC_EX_tr_0_rs1_316_in = counter1[24];
assign EW_DC_EX_tr_0_op1_343_in = counter1[25];
assign EW_DC_EX_tr_0_op2_369_in = counter1[26];
assign EW_DC_EX_tr_0_rs1_370_in = counter1[27];
assign EW_DC_EX_tr_0_op1_397_in = counter1[28];
assign EW_DC_EX_tr_0_rs2_423_in = counter1[29];
assign EW_DC_EX_tr_0_op2_438_in = counter1[30];
assign EW_DC_EX_tr_0_rs1_492_in = counter1[31];
assign EW_DC_EX_tr_0_op1_519_in = counter1[32];
assign EW_DC_EX_tr_0_WBV_557_in = counter1[33];
assign EW_DC_EX_tr_0_BPR_561_in = counter1[34];
assign EW_DC_EX_tr_0_BPR_565_in = counter1[35];
assign EW_DC_EX_tr_0_WBV_566_in = counter1[36];
assign EW_DC_EX_tr_0_BPR_570_in = counter1[37];
assign EW_DC_EX_tr_0_WBV_571_in = counter1[38];
assign EW_DC_EX_tr_0_rs1_572_in = counter1[39];
assign EW_DC_EX_tr_0_op1_599_in = counter1[40];
assign EW_DC_EX_tr_0_rs2_625_in = counter1[41];
assign EW_DC_EX_tr_0_op2_640_in = counter1[42];
assign EW_DC_EX_tr_0_op3_666_in = counter1[43];
assign EW_DC_EX_tr_0_rs1_667_in = counter1[44];
assign EW_DC_EX_tr_0_op1_694_in = counter1[45];
assign EW_DC_EX_tr_0_rs2_720_in = counter1[46];
assign EW_DC_EX_tr_0_op2_735_in = counter1[47];
assign EW_DC_EX_tr_0_rs3_761_in = counter1[48];
assign EW_DC_EX_tr_0_op3_765_in = counter1[49];
assign EW_DC_EX_tr_0_rs1_791_in = counter1[50];
assign EW_DC_EX_tr_0_op1_818_in = counter1[51];
assign EW_DC_EX_tr_0_op2_844_in = counter1[52];
assign EW_DC_EX_tr_0_op3_845_in = counter1[53];
assign EW_DC_EX_tr_0_rs1_846_in = counter1[54];
assign EW_DC_EX_tr_0_op1_873_in = counter1[55];
assign EW_DC_EX_tr_0_rs2_899_in = counter1[56];
assign EW_DC_EX_tr_0_op2_914_in = counter1[57];
assign EW_DC_EX_tr_0_offset_940_in = counter1[58];
assign EW_DC_EX_tr_0_read_flag_941_in = counter1[59];
assign EW_DC_EX_tr_0_rs1_942_in = counter1[60];
assign EW_DC_EX_tr_0_op1_969_in = counter1[61];
assign EW_DC_EX_tr_0_offset_995_in = counter1[62];
assign EW_DC_EX_tr_0_read_flag_996_in = counter1[63];
assign EW_DC_EX_tr_1_BPR_1005_in = counter1[64];
assign EW_DC_EX_tr_1_WBV_1007_in = counter1[65];
assign EW_DC_EX_tr_1_BPR_1011_in = counter1[66];
assign EW_DC_EX_tr_1_WBV_1012_in = counter1[67];
assign EW_DC_EX_tr_1_rs1_1013_in = counter1[68];
assign EW_DC_EX_tr_1_op1_1027_in = counter1[69];
assign EW_DC_EX_tr_1_rs2_1053_in = counter1[70];
assign EW_DC_EX_tr_1_op2_1060_in = counter1[71];
assign EW_DC_EX_tr_1_op3_1086_in = counter1[72];
assign EW_DC_EX_tr_1_rs1_1087_in = counter1[73];
assign EW_DC_EX_tr_1_op1_1098_in = counter1[74];
assign EW_DC_EX_tr_1_rs2_1124_in = counter1[75];
assign EW_DC_EX_tr_1_op2_1131_in = counter1[76];
assign EW_DC_EX_tr_1_rs3_1157_in = counter1[77];
assign EW_DC_EX_tr_1_op3_1161_in = counter1[78];
assign EW_DC_EX_tr_1_rs1_1187_in = counter1[79];
assign EW_DC_EX_tr_1_op1_1198_in = counter1[80];
assign EW_DC_EX_tr_1_op2_1224_in = counter1[81];
assign EW_DC_EX_tr_1_op3_1225_in = counter1[82];
assign EW_DC_EX_tr_0_rs1_1226_in = counter1[83];
assign EW_DC_EX_tr_0_op1_1253_in = counter1[84];
assign EW_DC_EX_tr_0_rs2_1279_in = counter1[85];
assign EW_DC_EX_tr_0_op2_1294_in = counter1[86];
assign EW_DC_EX_tr_0_offset_1320_in = counter1[87];
assign EW_DC_EX_tr_0_rs1_1322_in = counter1[88];
assign EW_DC_EX_tr_0_op1_1349_in = counter1[89];
assign EW_DC_EX_tr_0_offset_1375_in = counter1[90];
assign pipe_DC_EX_stall_in = counter1[91];
assign pipe_EX_MEM_stall_in = counter1[92];


initial
begin
  $dumpfile("DC_EX_rtl.vcd");
  $dumpvars(0,tb_DC_EX.uut);
end

    
endmodule