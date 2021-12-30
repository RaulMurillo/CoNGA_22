-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity posit_comp_mul is
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in1 : IN STD_LOGIC_VECTOR (7 downto 0);
    in2 : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of posit_comp_mul is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "posit_comp_mul_posit_comp_mul,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7vx485t-ffg1157-1,HLS_INPUT_CLOCK=500.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=23.165950,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=524,HLS_VERSION=2021_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv7_7F : STD_LOGIC_VECTOR (6 downto 0) := "1111111";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv11_4F0 : STD_LOGIC_VECTOR (10 downto 0) := "10011110000";
    constant ap_const_lv11_508 : STD_LOGIC_VECTOR (10 downto 0) := "10100001000";
    constant ap_const_lv11_2F0 : STD_LOGIC_VECTOR (10 downto 0) := "01011110000";
    constant ap_const_lv11_308 : STD_LOGIC_VECTOR (10 downto 0) := "01100001000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal val_V_fu_182_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_V_63_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_2_fu_174_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_fu_166_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ext_fu_210_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln1527_fu_218_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_230_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln359_fu_238_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_3_fu_254_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal upper_V_fu_260_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal lower_V_fu_270_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln359_1_fu_280_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal comp_V_fu_274_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_3_fu_288_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_4_fu_296_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_V_64_fu_304_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal lower_V_1_fu_314_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln359_2_fu_324_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal comp_V_1_fu_318_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_4_fu_332_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_5_fu_340_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_5_fu_348_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln312_fu_362_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln422_fu_374_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_4_fu_366_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal top_is_leading_V_fu_356_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_5_fu_386_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal val_V_65_fu_396_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_9_fu_378_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln356_fu_246_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal res_12_fu_402_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal ret_6_fu_410_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal xor_ln939_fu_424_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_1_fu_430_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln217_fu_416_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln359_3_fu_436_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal es_V_fu_450_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln359_4_fu_460_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_1_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_7_fu_444_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ret_8_fu_468_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_2_fu_224_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal fraction_V_fu_420_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal val_V_66_fu_506_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_V_67_fu_510_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_8_fu_498_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_9_fu_516_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_7_fu_490_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_2_fu_522_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ext_1_fu_534_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln1527_1_fu_542_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_fu_554_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln359_5_fu_562_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_12_fu_578_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal upper_V_2_fu_584_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal lower_V_2_fu_594_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln359_6_fu_604_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal comp_V_2_fu_598_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_9_fu_612_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_13_fu_620_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_V_68_fu_628_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal lower_V_3_fu_638_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln359_7_fu_648_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal comp_V_3_fu_642_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_10_fu_656_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_14_fu_664_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_11_fu_672_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln312_1_fu_686_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln422_1_fu_698_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_6_fu_690_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal top_is_leading_V_1_fu_680_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_11_fu_710_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal val_V_69_fu_720_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_10_fu_702_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln356_1_fu_570_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal res_13_fu_726_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal ret_15_fu_734_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal xor_ln939_3_fu_748_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_3_fu_754_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln217_1_fu_740_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln359_8_fu_760_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal es_V_1_fu_774_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln359_9_fu_784_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_10_fu_528_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_16_fu_768_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ret_17_fu_792_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_11_fu_548_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal fraction_V_1_fu_744_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Result_12_fu_798_p7 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Result_6_fu_474_p7 : STD_LOGIC_VECTOR (11 downto 0);
    signal or_ln1528_fu_814_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal and_ln_fu_828_p6 : STD_LOGIC_VECTOR (11 downto 0);
    signal and_ln1528_1_fu_848_p6 : STD_LOGIC_VECTOR (11 downto 0);
    signal r_4_fu_842_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_5_fu_862_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_13_fu_874_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_Result_14_fu_884_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal ret_20_fu_902_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_fu_924_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_17_fu_938_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_6_fu_932_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_14_fu_952_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_21_fu_946_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_22_fu_960_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_16_fu_916_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_24_fu_972_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal last_bits_V_fu_978_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal ret_23_fu_966_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_18_fu_982_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_19_fu_990_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal exp1_V_fu_1006_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal exp2_V_fu_1014_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal sext_ln225_2_fu_1022_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal sext_ln225_3_fu_1026_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln217_2_fu_1034_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln306_fu_1030_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln217_1_fu_1044_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln217_4_fu_1050_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln217_fu_1038_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ret_19_fu_868_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal expSumVal_V_fu_1054_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal opt1_V_11_fu_998_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_what2_s_fu_1076_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Result_15_fu_908_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_18_fu_1086_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_14_fu_1060_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_19_fu_1100_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_7_fu_1108_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln359_10_fu_1114_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln_fu_1128_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln217_fu_1136_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln217_5_fu_1140_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal ret_25_fu_1122_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_Val2_s_fu_1144_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ret_18_fu_820_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_9_fu_1094_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_8_fu_1158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln1527_fu_1164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_21_fu_1150_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_26_fu_1170_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_27_fu_1176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln416_fu_1190_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal res_fu_1182_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal res_15_fu_1198_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_Result_20_fu_1068_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal val_V_70_fu_1080_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal val_V_71_fu_1210_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_21_fu_1214_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln217_6_fu_1206_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_22_fu_1224_p7 : STD_LOGIC_VECTOR (13 downto 0);
    signal opt1_V_12_fu_1240_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_24_fu_1260_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal es_wo_xor_V_fu_1276_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln359_11_fu_1268_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_26_fu_1300_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_29_fu_1308_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal low_k_V_fu_1322_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Result_24_fu_1292_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_10_fu_1332_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal res_16_fu_1314_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Result_26_fu_1354_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_28_fu_1286_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal significand_V_fu_1256_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Result_25_fu_1346_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_13_fu_1338_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal shift_high_V_fu_1378_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Result_27_fu_1362_p7 : STD_LOGIC_VECTOR (14 downto 0);
    signal sext_ln585_fu_1400_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal p_Result_28_fu_1392_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln585_fu_1404_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal zext_ln978_fu_1408_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal lshr_ln978_fu_1412_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal shifted_out_V_fu_1428_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal shifted_V_fu_1418_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal val_V_72_fu_1388_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_29_fu_1438_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln978_1_fu_1448_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal lshr_ln978_1_fu_1452_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal shifted_out_V_2_fu_1458_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal val_V_73_fu_1432_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_31_fu_1494_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_32_fu_1486_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1528_7_fu_1502_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_30_fu_1462_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_30_fu_1468_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_31_fu_1508_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_32_fu_1514_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal unroundedResult_V_fu_1476_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln217_3_fu_1520_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_Result_23_fu_1248_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal roundedResult_V_fu_1524_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_Result_34_fu_1538_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_38_fu_1554_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1527_fu_1562_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_33_fu_1568_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_34_fu_1574_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_35_fu_1546_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_33_fu_1530_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component posit_comp_mul_mul_5s_5s_10_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (4 downto 0);
        din1 : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;



begin
    mul_5s_5s_10_1_1_U1 : component posit_comp_mul_mul_5s_5s_10_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 5,
        din1_WIDTH => 5,
        dout_WIDTH => 10)
    port map (
        din0 => p_Result_14_fu_884_p4,
        din1 => p_Result_13_fu_874_p4,
        dout => ret_20_fu_902_p2);




    add_ln217_1_fu_1044_p2 <= std_logic_vector(unsigned(zext_ln217_2_fu_1034_p1) + unsigned(zext_ln306_fu_1030_p1));
    add_ln217_fu_1038_p2 <= std_logic_vector(signed(sext_ln225_2_fu_1022_p1) + signed(sext_ln225_3_fu_1026_p1));
    and_ln1527_fu_1164_p2 <= (r_9_fu_1094_p2 and r_8_fu_1158_p2);
    and_ln1528_1_fu_848_p6 <= ((((ret_10_fu_528_p2 & ap_const_lv6_0) & p_Result_7_fu_490_p3) & ret_11_fu_548_p2) & ap_const_lv3_0);
    and_ln_fu_828_p6 <= ((((ret_1_fu_204_p2 & ap_const_lv6_0) & p_Result_s_fu_166_p3) & ret_2_fu_224_p2) & ap_const_lv3_0);
    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;
    ap_return <= 
        p_Result_35_fu_1546_p3 when (ret_34_fu_1574_p2(0) = '1') else 
        p_Result_33_fu_1530_p3;
    comp_V_1_fu_318_p2 <= "1" when (val_V_64_fu_304_p4 = ap_const_lv2_0) else "0";
    comp_V_2_fu_598_p2 <= "1" when (upper_V_2_fu_584_p4 = ap_const_lv4_0) else "0";
    comp_V_3_fu_642_p2 <= "1" when (val_V_68_fu_628_p4 = ap_const_lv2_0) else "0";
    comp_V_fu_274_p2 <= "1" when (upper_V_fu_260_p4 = ap_const_lv4_0) else "0";
    es_V_1_fu_774_p4 <= ret_15_fu_734_p2(4 downto 3);
    es_V_fu_450_p4 <= ret_6_fu_410_p2(4 downto 3);
    es_wo_xor_V_fu_1276_p4 <= opt1_V_12_fu_1240_p3(6 downto 5);
    exp1_V_fu_1006_p3 <= (ret_7_fu_444_p2 & ret_8_fu_468_p2);
    exp2_V_fu_1014_p3 <= (ret_16_fu_768_p2 & ret_17_fu_792_p2);
    expSumVal_V_fu_1054_p2 <= std_logic_vector(unsigned(zext_ln217_4_fu_1050_p1) + unsigned(add_ln217_fu_1038_p2));
    ext_1_fu_534_p3 <= in2(7 downto 7);
    ext_fu_210_p3 <= in1(7 downto 7);
    fraction_V_1_fu_744_p1 <= ret_15_fu_734_p2(3 - 1 downto 0);
    fraction_V_fu_420_p1 <= ret_6_fu_410_p2(3 - 1 downto 0);
    last_bits_V_fu_978_p1 <= ret_20_fu_902_p2(7 - 1 downto 0);
    low_k_V_fu_1322_p4 <= opt1_V_12_fu_1240_p3(9 downto 7);
    lower_V_1_fu_314_p1 <= ret_4_fu_296_p3(4 - 1 downto 0);
    lower_V_2_fu_594_p1 <= ret_12_fu_578_p2(2 - 1 downto 0);
    lower_V_3_fu_638_p1 <= ret_13_fu_620_p3(4 - 1 downto 0);
    lower_V_fu_270_p1 <= ret_3_fu_254_p2(2 - 1 downto 0);
    lshr_ln978_1_fu_1452_p2 <= std_logic_vector(shift_right(unsigned(p_Result_29_fu_1438_p4),to_integer(unsigned('0' & zext_ln978_1_fu_1448_p1(10-1 downto 0)))));
    lshr_ln978_fu_1412_p2 <= std_logic_vector(shift_right(unsigned(zext_ln585_fu_1404_p1),to_integer(unsigned('0' & zext_ln978_fu_1408_p1(21-1 downto 0)))));
    opt1_V_10_fu_702_p3 <= 
        trunc_ln422_1_fu_698_p1 when (tmp_11_fu_672_p3(0) = '1') else 
        tmp_6_fu_690_p3;
    opt1_V_11_fu_998_p3 <= 
        p_Result_18_fu_982_p3 when (ret_23_fu_966_p2(0) = '1') else 
        p_Result_19_fu_990_p3;
    opt1_V_12_fu_1240_p3 <= 
        zext_ln217_6_fu_1206_p1 when (ret_26_fu_1170_p2(0) = '1') else 
        p_Result_22_fu_1224_p7;
    opt1_V_13_fu_1338_p3 <= 
        r_10_fu_1332_p2 when (p_Result_24_fu_1292_p3(0) = '1') else 
        low_k_V_fu_1322_p4;
    opt1_V_9_fu_378_p3 <= 
        trunc_ln422_fu_374_p1 when (tmp_5_fu_348_p3(0) = '1') else 
        tmp_4_fu_366_p3;
    or_ln1527_fu_1562_p2 <= (tmp_38_fu_1554_p3 or tmp_24_fu_1260_p3);
    or_ln1528_7_fu_1502_p2 <= (p_Result_32_fu_1486_p3 or p_Result_31_fu_1494_p3);
    or_ln1528_fu_814_p2 <= (p_Result_6_fu_474_p7 or p_Result_12_fu_798_p7);
    or_ln_fu_1128_p3 <= (ap_const_lv3_4 & r_7_fu_1108_p2);
    p_Result_10_fu_656_p3 <= (lower_V_3_fu_638_p1 & select_ln359_7_fu_648_p3);
    p_Result_11_fu_710_p4 <= ((comp_V_2_fu_598_p2 & comp_V_3_fu_642_p2) & top_is_leading_V_1_fu_680_p2);
    p_Result_12_fu_798_p7 <= (((((ret_10_fu_528_p2 & ret_16_fu_768_p2) & ret_17_fu_792_p2) & p_Result_7_fu_490_p3) & ret_11_fu_548_p2) & fraction_V_1_fu_744_p1);
    p_Result_13_fu_874_p4 <= ((p_Result_s_fu_166_p3 & ret_2_fu_224_p2) & fraction_V_fu_420_p1);
    p_Result_14_fu_884_p4 <= ((p_Result_7_fu_490_p3 & ret_11_fu_548_p2) & fraction_V_1_fu_744_p1);
    p_Result_15_fu_908_p3 <= ret_20_fu_902_p2(9 downto 9);
    p_Result_16_fu_916_p3 <= ret_20_fu_902_p2(7 downto 7);
    p_Result_17_fu_938_p3 <= ret_20_fu_902_p2(8 downto 8);
    p_Result_18_fu_982_p3 <= (ret_24_fu_972_p2 & last_bits_V_fu_978_p1);
    p_Result_19_fu_990_p3 <= (last_bits_V_fu_978_p1 & ap_const_lv1_0);
    p_Result_20_fu_1068_p3 <= opt1_V_11_fu_998_p3(3 downto 3);
    p_Result_21_fu_1150_p3 <= p_Val2_s_fu_1144_p2(6 downto 6);
    p_Result_22_fu_1224_p7 <= (((((p_Result_20_fu_1068_p3 & val_V_70_fu_1080_p2) & ret_18_fu_820_p3) & val_V_71_fu_1210_p1) & p_Result_15_fu_908_p3) & tmp_21_fu_1214_p4);
    p_Result_23_fu_1248_p3 <= opt1_V_12_fu_1240_p3(4 downto 4);
    p_Result_24_fu_1292_p3 <= opt1_V_12_fu_1240_p3(10 downto 10);
    p_Result_25_fu_1346_p3 <= opt1_V_12_fu_1240_p3(13 downto 13);
    p_Result_26_fu_1354_p3 <= res_16_fu_1314_p3(1 downto 1);
    p_Result_27_fu_1362_p7 <= (((((p_Result_26_fu_1354_p3 & res_16_fu_1314_p3) & ret_28_fu_1286_p2) & significand_V_fu_1256_p1) & p_Result_25_fu_1346_p3) & ap_const_lv6_0);
    p_Result_28_fu_1392_p3 <= (shift_high_V_fu_1378_p4 & ap_const_lv1_0);
    p_Result_29_fu_1438_p4 <= ((p_Result_26_fu_1354_p3 & shifted_V_fu_1418_p4) & ap_const_lv1_0);
    p_Result_2_fu_174_p3 <= in1(6 downto 6);
    p_Result_30_fu_1468_p3 <= lshr_ln978_1_fu_1452_p2(1 downto 1);
    p_Result_31_fu_1494_p3 <= opt1_V_12_fu_1240_p3(12 downto 12);
    p_Result_32_fu_1486_p3 <= lshr_ln978_1_fu_1452_p2(2 downto 2);
    p_Result_33_fu_1530_p3 <= (p_Result_23_fu_1248_p3 & roundedResult_V_fu_1524_p2);
    p_Result_34_fu_1538_p3 <= opt1_V_12_fu_1240_p3(11 downto 11);
    p_Result_35_fu_1546_p3 <= (p_Result_34_fu_1538_p3 & ap_const_lv7_0);
    p_Result_3_fu_288_p3 <= (lower_V_fu_270_p1 & select_ln359_1_fu_280_p3);
    p_Result_4_fu_332_p3 <= (lower_V_1_fu_314_p1 & select_ln359_2_fu_324_p3);
    p_Result_5_fu_386_p4 <= ((comp_V_fu_274_p2 & comp_V_1_fu_318_p2) & top_is_leading_V_fu_356_p2);
    p_Result_6_fu_474_p7 <= (((((ret_1_fu_204_p2 & ret_7_fu_444_p2) & ret_8_fu_468_p2) & p_Result_s_fu_166_p3) & ret_2_fu_224_p2) & fraction_V_fu_420_p1);
    p_Result_7_fu_490_p3 <= in2(7 downto 7);
    p_Result_8_fu_498_p3 <= in2(6 downto 6);
    p_Result_9_fu_612_p3 <= (lower_V_2_fu_594_p1 & select_ln359_6_fu_604_p3);
    p_Result_s_fu_166_p3 <= in1(7 downto 7);
    p_Val2_s_fu_1144_p2 <= std_logic_vector(unsigned(zext_ln217_5_fu_1140_p1) + unsigned(ret_25_fu_1122_p2));
    p_what2_s_fu_1076_p1 <= opt1_V_11_fu_998_p3(3 - 1 downto 0);
    r_10_fu_1332_p2 <= (low_k_V_fu_1322_p4 xor ap_const_lv3_7);
    r_1_fu_430_p2 <= (xor_ln939_fu_424_p2 xor ap_const_lv1_1);
    r_2_fu_522_p2 <= (ret_9_fu_516_p2 xor ap_const_lv1_1);
    r_3_fu_754_p2 <= (xor_ln939_3_fu_748_p2 xor ap_const_lv1_1);
    r_4_fu_842_p2 <= "1" when (and_ln_fu_828_p6 = ap_const_lv12_0) else "0";
    r_5_fu_862_p2 <= "1" when (and_ln1528_1_fu_848_p6 = ap_const_lv12_0) else "0";
    r_6_fu_932_p2 <= (tmp_fu_924_p3 xor ap_const_lv1_1);
    r_7_fu_1108_p2 <= (tmp_19_fu_1100_p3 xor ap_const_lv1_1);
    r_8_fu_1158_p2 <= (ret_18_fu_820_p3 xor ap_const_lv1_1);
    r_9_fu_1094_p2 <= (tmp_18_fu_1086_p3 or p_Result_15_fu_908_p3);
    r_fu_198_p2 <= (ret_fu_192_p2 xor ap_const_lv1_1);
    res_12_fu_402_p3 <= 
        ap_const_lv3_6 when (val_V_65_fu_396_p2(0) = '1') else 
        p_Result_5_fu_386_p4;
    res_13_fu_726_p3 <= 
        ap_const_lv3_6 when (val_V_69_fu_720_p2(0) = '1') else 
        p_Result_11_fu_710_p4;
    res_14_fu_1060_p3 <= 
        ap_const_lv7_0 when (ret_19_fu_868_p2(0) = '1') else 
        expSumVal_V_fu_1054_p2;
    res_15_fu_1198_p3 <= 
        select_ln416_fu_1190_p3 when (ret_27_fu_1176_p2(0) = '1') else 
        res_fu_1182_p3;
    res_16_fu_1314_p3 <= 
        ap_const_lv2_1 when (ret_29_fu_1308_p2(0) = '1') else 
        ap_const_lv2_2;
    res_fu_1182_p3 <= 
        ap_const_lv11_4F0 when (p_Result_15_fu_908_p3(0) = '1') else 
        ap_const_lv11_508;
    ret_10_fu_528_p2 <= (r_2_fu_522_p2 and p_Result_7_fu_490_p3);
    ret_11_fu_548_p2 <= (xor_ln1527_1_fu_542_p2 and ret_9_fu_516_p2);
    ret_12_fu_578_p2 <= (val_V_66_fu_506_p1 xor select_ln359_5_fu_562_p3);
    ret_13_fu_620_p3 <= 
        p_Result_9_fu_612_p3 when (comp_V_2_fu_598_p2(0) = '1') else 
        ret_12_fu_578_p2;
    ret_14_fu_664_p3 <= 
        p_Result_10_fu_656_p3 when (comp_V_3_fu_642_p2(0) = '1') else 
        ret_13_fu_620_p3;
    ret_15_fu_734_p2 <= (select_ln356_1_fu_570_p3 xor opt1_V_10_fu_702_p3);
    ret_16_fu_768_p2 <= (zext_ln217_1_fu_740_p1 xor select_ln359_8_fu_760_p3);
    ret_17_fu_792_p2 <= (select_ln359_9_fu_784_p3 xor es_V_1_fu_774_p4);
    ret_18_fu_820_p3 <= or_ln1528_fu_814_p2(11 downto 11);
    ret_19_fu_868_p2 <= (r_5_fu_862_p2 or r_4_fu_842_p2);
    ret_1_fu_204_p2 <= (r_fu_198_p2 and p_Result_s_fu_166_p3);
    ret_21_fu_946_p2 <= (r_6_fu_932_p2 and p_Result_17_fu_938_p3);
    ret_22_fu_960_p2 <= (tmp_fu_924_p3 xor tmp_14_fu_952_p3);
    ret_23_fu_966_p2 <= (ret_22_fu_960_p2 or ret_21_fu_946_p2);
    ret_24_fu_972_p2 <= (ret_21_fu_946_p2 or p_Result_16_fu_916_p3);
    ret_25_fu_1122_p2 <= (select_ln359_10_fu_1114_p3 xor res_14_fu_1060_p3);
    ret_26_fu_1170_p2 <= (p_Result_21_fu_1150_p3 and and_ln1527_fu_1164_p2);
    ret_27_fu_1176_p2 <= (ret_26_fu_1170_p2 and r_7_fu_1108_p2);
    ret_28_fu_1286_p2 <= (select_ln359_11_fu_1268_p3 xor es_wo_xor_V_fu_1276_p4);
    ret_29_fu_1308_p2 <= (tmp_26_fu_1300_p3 xor tmp_24_fu_1260_p3);
    ret_2_fu_224_p2 <= (xor_ln1527_fu_218_p2 and ret_fu_192_p2);
    ret_30_fu_1462_p2 <= (val_V_73_fu_1432_p2 or shifted_out_V_2_fu_1458_p1);
    ret_31_fu_1508_p2 <= (ret_30_fu_1462_p2 or or_ln1528_7_fu_1502_p2);
    ret_32_fu_1514_p2 <= (ret_31_fu_1508_p2 and p_Result_30_fu_1468_p3);
    ret_33_fu_1568_p2 <= (or_ln1527_fu_1562_p2 xor ap_const_lv1_1);
    ret_34_fu_1574_p2 <= (ret_33_fu_1568_p2 or p_Result_34_fu_1538_p3);
    ret_3_fu_254_p2 <= (val_V_fu_182_p1 xor select_ln359_fu_238_p3);
    ret_4_fu_296_p3 <= 
        p_Result_3_fu_288_p3 when (comp_V_fu_274_p2(0) = '1') else 
        ret_3_fu_254_p2;
    ret_5_fu_340_p3 <= 
        p_Result_4_fu_332_p3 when (comp_V_1_fu_318_p2(0) = '1') else 
        ret_4_fu_296_p3;
    ret_6_fu_410_p2 <= (select_ln356_fu_246_p3 xor opt1_V_9_fu_378_p3);
    ret_7_fu_444_p2 <= (zext_ln217_fu_416_p1 xor select_ln359_3_fu_436_p3);
    ret_8_fu_468_p2 <= (select_ln359_4_fu_460_p3 xor es_V_fu_450_p4);
    ret_9_fu_516_p2 <= (val_V_67_fu_510_p2 or p_Result_8_fu_498_p3);
    ret_fu_192_p2 <= (val_V_63_fu_186_p2 or p_Result_2_fu_174_p3);
    roundedResult_V_fu_1524_p2 <= std_logic_vector(unsigned(unroundedResult_V_fu_1476_p4) + unsigned(zext_ln217_3_fu_1520_p1));
    select_ln356_1_fu_570_p3 <= 
        ap_const_lv5_1F when (tmp_8_fu_554_p3(0) = '1') else 
        ap_const_lv5_0;
    select_ln356_fu_246_p3 <= 
        ap_const_lv5_1F when (tmp_1_fu_230_p3(0) = '1') else 
        ap_const_lv5_0;
    select_ln359_10_fu_1114_p3 <= 
        ap_const_lv7_7F when (r_7_fu_1108_p2(0) = '1') else 
        ap_const_lv7_0;
    select_ln359_11_fu_1268_p3 <= 
        ap_const_lv2_3 when (tmp_24_fu_1260_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_1_fu_280_p3 <= 
        ap_const_lv4_F when (tmp_1_fu_230_p3(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_2_fu_324_p3 <= 
        ap_const_lv2_3 when (tmp_1_fu_230_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_3_fu_436_p3 <= 
        ap_const_lv4_F when (r_1_fu_430_p2(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_4_fu_460_p3 <= 
        ap_const_lv2_3 when (ext_fu_210_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_5_fu_562_p3 <= 
        ap_const_lv6_3F when (tmp_8_fu_554_p3(0) = '1') else 
        ap_const_lv6_0;
    select_ln359_6_fu_604_p3 <= 
        ap_const_lv4_F when (tmp_8_fu_554_p3(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_7_fu_648_p3 <= 
        ap_const_lv2_3 when (tmp_8_fu_554_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_8_fu_760_p3 <= 
        ap_const_lv4_F when (r_3_fu_754_p2(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_9_fu_784_p3 <= 
        ap_const_lv2_3 when (ext_1_fu_534_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_fu_238_p3 <= 
        ap_const_lv6_3F when (tmp_1_fu_230_p3(0) = '1') else 
        ap_const_lv6_0;
    select_ln416_fu_1190_p3 <= 
        ap_const_lv11_2F0 when (p_Result_15_fu_908_p3(0) = '1') else 
        ap_const_lv11_308;
        sext_ln217_fu_1136_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(or_ln_fu_1128_p3),5));

        sext_ln225_2_fu_1022_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(exp1_V_fu_1006_p3),7));

        sext_ln225_3_fu_1026_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(exp2_V_fu_1014_p3),7));

        sext_ln585_fu_1400_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_27_fu_1362_p7),20));

    shift_high_V_fu_1378_p4 <= opt1_V_13_fu_1338_p3(2 downto 1);
    shifted_V_fu_1418_p4 <= lshr_ln978_fu_1412_p2(13 downto 6);
    shifted_out_V_2_fu_1458_p1 <= lshr_ln978_1_fu_1452_p2(1 - 1 downto 0);
    shifted_out_V_fu_1428_p1 <= lshr_ln978_fu_1412_p2(6 - 1 downto 0);
    significand_V_fu_1256_p1 <= opt1_V_12_fu_1240_p3(3 - 1 downto 0);
    tmp_11_fu_672_p3 <= ret_14_fu_664_p3(5 downto 5);
    tmp_14_fu_952_p3 <= ret_20_fu_902_p2(7 downto 7);
    tmp_18_fu_1086_p3 <= opt1_V_11_fu_998_p3(7 downto 7);
    tmp_19_fu_1100_p3 <= res_14_fu_1060_p3(6 downto 6);
    tmp_1_fu_230_p3 <= in1(6 downto 6);
    tmp_21_fu_1214_p4 <= opt1_V_11_fu_998_p3(7 downto 4);
    tmp_24_fu_1260_p3 <= opt1_V_12_fu_1240_p3(4 downto 4);
    tmp_26_fu_1300_p3 <= opt1_V_12_fu_1240_p3(10 downto 10);
    tmp_38_fu_1554_p3 <= opt1_V_12_fu_1240_p3(3 downto 3);
    tmp_4_fu_366_p3 <= (trunc_ln312_fu_362_p1 & p_Result_2_fu_174_p3);
    tmp_5_fu_348_p3 <= ret_5_fu_340_p3(5 downto 5);
    tmp_6_fu_690_p3 <= (trunc_ln312_1_fu_686_p1 & p_Result_8_fu_498_p3);
    tmp_8_fu_554_p3 <= in2(6 downto 6);
    tmp_fu_924_p3 <= ret_20_fu_902_p2(9 downto 9);
    top_is_leading_V_1_fu_680_p2 <= (tmp_11_fu_672_p3 xor ap_const_lv1_1);
    top_is_leading_V_fu_356_p2 <= (tmp_5_fu_348_p3 xor ap_const_lv1_1);
    trunc_ln312_1_fu_686_p1 <= ret_14_fu_664_p3(4 - 1 downto 0);
    trunc_ln312_fu_362_p1 <= ret_5_fu_340_p3(4 - 1 downto 0);
    trunc_ln422_1_fu_698_p1 <= ret_14_fu_664_p3(5 - 1 downto 0);
    trunc_ln422_fu_374_p1 <= ret_5_fu_340_p3(5 - 1 downto 0);
    unroundedResult_V_fu_1476_p4 <= lshr_ln978_1_fu_1452_p2(8 downto 2);
    upper_V_2_fu_584_p4 <= ret_12_fu_578_p2(5 downto 2);
    upper_V_fu_260_p4 <= ret_3_fu_254_p2(5 downto 2);
    val_V_63_fu_186_p2 <= "0" when (val_V_fu_182_p1 = ap_const_lv6_0) else "1";
    val_V_64_fu_304_p4 <= ret_4_fu_296_p3(5 downto 4);
    val_V_65_fu_396_p2 <= "1" when (p_Result_5_fu_386_p4 = ap_const_lv3_7) else "0";
    val_V_66_fu_506_p1 <= in2(6 - 1 downto 0);
    val_V_67_fu_510_p2 <= "0" when (val_V_66_fu_506_p1 = ap_const_lv6_0) else "1";
    val_V_68_fu_628_p4 <= ret_13_fu_620_p3(5 downto 4);
    val_V_69_fu_720_p2 <= "1" when (p_Result_11_fu_710_p4 = ap_const_lv3_7) else "0";
    val_V_70_fu_1080_p2 <= "0" when (p_what2_s_fu_1076_p1 = ap_const_lv3_0) else "1";
    val_V_71_fu_1210_p1 <= res_14_fu_1060_p3(6 - 1 downto 0);
    val_V_72_fu_1388_p1 <= opt1_V_13_fu_1338_p3(1 - 1 downto 0);
    val_V_73_fu_1432_p2 <= "0" when (shifted_out_V_fu_1428_p1 = ap_const_lv6_0) else "1";
    val_V_fu_182_p1 <= in1(6 - 1 downto 0);
    xor_ln1527_1_fu_542_p2 <= (ext_1_fu_534_p3 xor ap_const_lv1_1);
    xor_ln1527_fu_218_p2 <= (ext_fu_210_p3 xor ap_const_lv1_1);
    xor_ln939_3_fu_748_p2 <= (tmp_8_fu_554_p3 xor ext_1_fu_534_p3);
    xor_ln939_fu_424_p2 <= (tmp_1_fu_230_p3 xor ext_fu_210_p3);
    zext_ln217_1_fu_740_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(res_13_fu_726_p3),4));
    zext_ln217_2_fu_1034_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_21_fu_946_p2),2));
    zext_ln217_3_fu_1520_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_32_fu_1514_p2),7));
    zext_ln217_4_fu_1050_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln217_1_fu_1044_p2),7));
    zext_ln217_5_fu_1140_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln217_fu_1136_p1),7));
    zext_ln217_6_fu_1206_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(res_15_fu_1198_p3),14));
    zext_ln217_fu_416_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(res_12_fu_402_p3),4));
    zext_ln306_fu_1030_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_23_fu_966_p2),2));
    zext_ln585_fu_1404_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln585_fu_1400_p1),21));
    zext_ln978_1_fu_1448_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(val_V_72_fu_1388_p1),10));
    zext_ln978_fu_1408_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_28_fu_1392_p3),21));
end behav;
