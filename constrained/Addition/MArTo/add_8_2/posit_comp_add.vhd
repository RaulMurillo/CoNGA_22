-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity posit_comp_add is
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in1 : IN STD_LOGIC_VECTOR (7 downto 0);
    in2 : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of posit_comp_add is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "posit_comp_add_posit_comp_add,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7vx485t-ffg1157-1,HLS_INPUT_CLOCK=5000.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=31.568850,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=630,HLS_VERSION=2021_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
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
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv7_7F : STD_LOGIC_VECTOR (6 downto 0) := "1111111";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal val_V_109_fu_184_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_V_110_fu_188_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_2_fu_176_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_fu_168_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ext_fu_212_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln1527_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_232_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln359_fu_240_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_5_fu_256_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal upper_V_fu_262_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal lower_V_fu_272_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln359_1_fu_282_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal comp_V_fu_276_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_3_fu_290_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_6_fu_298_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_V_111_fu_306_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal lower_V_1_fu_316_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln359_2_fu_326_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal comp_V_1_fu_320_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_4_fu_334_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_7_fu_342_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_5_fu_350_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln312_fu_364_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln422_fu_376_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_4_fu_368_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal top_is_leading_V_fu_358_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_5_fu_388_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal val_V_112_fu_398_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_6_fu_380_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln356_fu_248_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal res_fu_404_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal ret_8_fu_412_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal xor_ln939_fu_426_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_1_fu_432_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln217_1_fu_418_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln359_3_fu_438_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal es_V_fu_452_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln359_4_fu_462_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_3_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_9_fu_446_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ret_10_fu_470_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_4_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal fraction_V_fu_422_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal val_V_113_fu_508_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_V_114_fu_512_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_8_fu_500_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_11_fu_518_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_7_fu_492_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_2_fu_524_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ext_1_fu_536_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln1527_1_fu_544_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_fu_556_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln359_5_fu_564_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_14_fu_580_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal upper_V_2_fu_586_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal lower_V_2_fu_596_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln359_6_fu_606_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal comp_V_2_fu_600_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_9_fu_614_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_15_fu_622_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_V_fu_630_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal lower_V_3_fu_640_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln359_7_fu_650_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal comp_V_3_fu_644_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_10_fu_658_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_16_fu_666_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_11_fu_674_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln312_1_fu_688_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln422_1_fu_700_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_6_fu_692_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal top_is_leading_V_1_fu_682_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_11_fu_712_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal val_V_115_fu_722_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_7_fu_704_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln356_1_fu_572_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal res_2_fu_728_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal ret_17_fu_736_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal xor_ln939_3_fu_750_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_3_fu_756_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln217_2_fu_742_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln359_8_fu_762_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal es_V_1_fu_776_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln359_9_fu_786_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_12_fu_530_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_18_fu_770_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ret_19_fu_794_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_13_fu_550_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal fraction_V_1_fu_746_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal and_ln_fu_816_p6 : STD_LOGIC_VECTOR (11 downto 0);
    signal and_ln1528_1_fu_836_p6 : STD_LOGIC_VECTOR (11 downto 0);
    signal subExpOp2_V_fu_870_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal opt1_V_8_fu_878_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_V_116_fu_892_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_5_fu_886_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_20_fu_898_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_4_fu_830_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal control_V_fu_904_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal lessSignificantSignificand_V_fu_860_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal mostSignificantSignificand_V_fu_850_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln422_2_fu_926_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln422_3_fu_934_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln422_4_fu_942_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal shiftValue_V_fu_958_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal shift_weights_will_zero_V_fu_972_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Result_13_fu_964_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal res_3_fu_950_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal shift_high_V_fu_1004_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Result_14_fu_994_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal sext_ln585_fu_1026_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal p_Result_15_fu_1018_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln585_fu_1030_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal zext_ln978_fu_1034_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal lshr_ln978_2_fu_1038_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal shifted_out_V_fu_1054_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal shifted_V_fu_1044_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal val_V_117_fu_1014_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_16_fu_1064_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln978_1_fu_1074_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal lshr_ln978_3_fu_1078_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal r_6_fu_982_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln359_10_fu_1098_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal shifted_V_3_fu_1084_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln1049_fu_988_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal val_V_118_fu_1058_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_21_fu_1114_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1528_fu_1120_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal shifted_out_V_4_fu_1094_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_4_fu_1106_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln422_fu_910_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln422_1_fu_918_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal shiftedTop_V_fu_1132_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_Result_18_fu_1154_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_Result_17_fu_1146_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal addRes_V_fu_1162_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal usefulRes_V_fu_1176_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal guards_V_fu_1142_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ext_2_fu_1188_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_20_fu_1180_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln359_11_fu_1196_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal ret_23_fu_1204_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal upper_V_4_fu_1210_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal val_V_119_fu_1220_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln359_12_fu_1230_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal comp_V_4_fu_1224_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_21_fu_1238_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal ret_24_fu_1246_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal val_V_120_fu_1254_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal lower_V_4_fu_1264_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln359_13_fu_1274_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal comp_V_5_fu_1268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_22_fu_1282_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal ret_25_fu_1290_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_fu_1298_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal lower_V_5_fu_1312_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_Result_19_fu_1168_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_23_fu_1316_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal top_is_leading_V_2_fu_1306_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_fu_1324_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln1529_fu_1350_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln1529_fu_1342_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal xor_ln1529_1_fu_1364_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln1529_1_fu_1354_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_22_fu_1126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_27_fu_1378_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_24_fu_1332_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln1526_fu_1394_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln1526_fu_1390_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_Result_6_fu_476_p7 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Result_12_fu_800_p7 : STD_LOGIC_VECTOR (11 downto 0);
    signal or_ln1528_3_fu_1406_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ret_26_fu_1358_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_Val2_18_fu_1400_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal es_wo_xor_V_fu_1438_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_19_fu_1456_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_31_fu_1464_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal low_k_V_fu_1478_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Result_27_fu_1448_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_7_fu_1488_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal res_5_fu_1470_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Result_28_fu_1502_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_30_fu_1442_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal val_V_121_fu_1428_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Result_25_fu_1370_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_9_fu_1494_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal shift_high_V_1_fu_1526_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Result_29_fu_1510_p7 : STD_LOGIC_VECTOR (14 downto 0);
    signal sext_ln585_1_fu_1548_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal p_Result_30_fu_1540_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln585_1_fu_1552_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal zext_ln978_2_fu_1556_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal lshr_ln978_fu_1560_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal shifted_out_V_2_fu_1576_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal shifted_V_4_fu_1566_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal val_V_122_fu_1536_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_31_fu_1586_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln978_3_fu_1596_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal lshr_ln978_1_fu_1600_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal shifted_out_V_5_fu_1606_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal val_V_123_fu_1580_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_28_fu_1384_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_33_fu_1634_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1528_5_fu_1642_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_32_fu_1610_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_32_fu_1616_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_33_fu_1648_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_34_fu_1654_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal unroundedResult_V_fu_1624_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln217_fu_1660_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal roundedResult_V_fu_1664_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ret_29_fu_1412_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_26_fu_1420_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1527_fu_1686_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_35_fu_1692_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_36_fu_1698_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_35_fu_1678_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_34_fu_1670_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ce_reg : STD_LOGIC;


begin



    addRes_V_fu_1162_p2 <= std_logic_vector(unsigned(p_Result_18_fu_1154_p3) + unsigned(p_Result_17_fu_1146_p3));
    add_ln1526_fu_1394_p2 <= std_logic_vector(unsigned(select_ln422_2_fu_926_p3) + unsigned(ap_const_lv6_1));
    and_ln1528_1_fu_836_p6 <= ((((ret_3_fu_206_p2 & ap_const_lv6_0) & p_Result_s_fu_168_p3) & ret_4_fu_226_p2) & ap_const_lv3_0);
    and_ln_fu_816_p6 <= ((((ret_12_fu_530_p2 & ap_const_lv6_0) & p_Result_7_fu_492_p3) & ret_13_fu_550_p2) & ap_const_lv3_0);
    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;
    ap_return <= 
        p_Result_35_fu_1678_p3 when (ret_36_fu_1698_p2(0) = '1') else 
        p_Result_34_fu_1670_p3;
    comp_V_1_fu_320_p2 <= "1" when (val_V_111_fu_306_p4 = ap_const_lv2_0) else "0";
    comp_V_2_fu_600_p2 <= "1" when (upper_V_2_fu_586_p4 = ap_const_lv4_0) else "0";
    comp_V_3_fu_644_p2 <= "1" when (val_V_fu_630_p4 = ap_const_lv2_0) else "0";
    comp_V_4_fu_1224_p2 <= "1" when (upper_V_4_fu_1210_p4 = ap_const_lv4_0) else "0";
    comp_V_5_fu_1268_p2 <= "1" when (val_V_120_fu_1254_p4 = ap_const_lv2_0) else "0";
    comp_V_fu_276_p2 <= "1" when (upper_V_fu_262_p4 = ap_const_lv4_0) else "0";
    control_V_fu_904_p2 <= (ret_20_fu_898_p2 or r_4_fu_830_p2);
    es_V_1_fu_776_p4 <= ret_17_fu_736_p2(4 downto 3);
    es_V_fu_452_p4 <= ret_8_fu_412_p2(4 downto 3);
    es_wo_xor_V_fu_1438_p1 <= p_Val2_18_fu_1400_p2(2 - 1 downto 0);
    ext_1_fu_536_p3 <= in2(7 downto 7);
    ext_2_fu_1188_p3 <= addRes_V_fu_1162_p2(5 downto 5);
    ext_fu_212_p3 <= in1(7 downto 7);
    fraction_V_1_fu_746_p1 <= ret_17_fu_736_p2(3 - 1 downto 0);
    fraction_V_fu_422_p1 <= ret_8_fu_412_p2(3 - 1 downto 0);
    guards_V_fu_1142_p1 <= res_4_fu_1106_p3(2 - 1 downto 0);
    icmp_ln1049_fu_988_p2 <= "0" when (p_Result_13_fu_964_p3 = ap_const_lv7_0) else "1";
    lessSignificantSignificand_V_fu_860_p4 <= ((p_Result_s_fu_168_p3 & ret_4_fu_226_p2) & fraction_V_fu_422_p1);
    low_k_V_fu_1478_p4 <= p_Val2_18_fu_1400_p2(4 downto 2);
    lower_V_1_fu_316_p1 <= ret_6_fu_298_p3(4 - 1 downto 0);
    lower_V_2_fu_596_p1 <= ret_14_fu_580_p2(2 - 1 downto 0);
    lower_V_3_fu_640_p1 <= ret_15_fu_622_p3(4 - 1 downto 0);
    lower_V_4_fu_1264_p1 <= ret_24_fu_1246_p3(5 - 1 downto 0);
    lower_V_5_fu_1312_p1 <= ret_25_fu_1290_p3(6 - 1 downto 0);
    lower_V_fu_272_p1 <= ret_5_fu_256_p2(2 - 1 downto 0);
    lshr_ln978_1_fu_1600_p2 <= std_logic_vector(shift_right(unsigned(p_Result_31_fu_1586_p4),to_integer(unsigned('0' & zext_ln978_3_fu_1596_p1(10-1 downto 0)))));
    lshr_ln978_2_fu_1038_p2 <= std_logic_vector(shift_right(unsigned(zext_ln585_fu_1030_p1),to_integer(unsigned('0' & zext_ln978_fu_1034_p1(20-1 downto 0)))));
    lshr_ln978_3_fu_1078_p2 <= std_logic_vector(shift_right(unsigned(p_Result_16_fu_1064_p4),to_integer(unsigned('0' & zext_ln978_1_fu_1074_p1(9-1 downto 0)))));
    lshr_ln978_fu_1560_p2 <= std_logic_vector(shift_right(unsigned(zext_ln585_1_fu_1552_p1),to_integer(unsigned('0' & zext_ln978_2_fu_1556_p1(21-1 downto 0)))));
    mostSignificantSignificand_V_fu_850_p4 <= ((p_Result_7_fu_492_p3 & ret_13_fu_550_p2) & fraction_V_1_fu_746_p1);
    opt1_V_6_fu_380_p3 <= 
        trunc_ln422_fu_376_p1 when (tmp_5_fu_350_p3(0) = '1') else 
        tmp_4_fu_368_p3;
    opt1_V_7_fu_704_p3 <= 
        trunc_ln422_1_fu_700_p1 when (tmp_11_fu_674_p3(0) = '1') else 
        tmp_6_fu_692_p3;
    opt1_V_8_fu_878_p3 <= (ret_18_fu_770_p2 & ret_19_fu_794_p2);
    opt1_V_9_fu_1494_p3 <= 
        r_7_fu_1488_p2 when (p_Result_27_fu_1448_p3(0) = '1') else 
        low_k_V_fu_1478_p4;
    opt1_V_fu_1324_p3 <= 
        ret_25_fu_1290_p3 when (tmp_fu_1298_p3(0) = '1') else 
        p_Result_23_fu_1316_p3;
    or_ln1527_fu_1686_p2 <= (p_Result_26_fu_1420_p3 or p_Result_19_fu_1168_p3);
    or_ln1528_3_fu_1406_p2 <= (p_Result_6_fu_476_p7 or p_Result_12_fu_800_p7);
    or_ln1528_5_fu_1642_p2 <= (ret_28_fu_1384_p2 or p_Result_33_fu_1634_p3);
    or_ln1528_fu_1120_p2 <= (val_V_118_fu_1058_p2 or ret_21_fu_1114_p2);
    p_Result_10_fu_658_p3 <= (lower_V_3_fu_640_p1 & select_ln359_7_fu_650_p3);
    p_Result_11_fu_712_p4 <= ((comp_V_2_fu_600_p2 & comp_V_3_fu_644_p2) & top_is_leading_V_1_fu_682_p2);
    p_Result_12_fu_800_p7 <= (((((ret_12_fu_530_p2 & ret_18_fu_770_p2) & ret_19_fu_794_p2) & p_Result_7_fu_492_p3) & ret_13_fu_550_p2) & fraction_V_1_fu_746_p1);
    p_Result_13_fu_964_p3 <= (select_ln422_4_fu_942_p3 & ap_const_lv2_0);
    p_Result_14_fu_994_p4 <= ((res_3_fu_950_p3 & select_ln422_4_fu_942_p3) & ap_const_lv8_0);
    p_Result_15_fu_1018_p3 <= (shift_high_V_fu_1004_p4 & ap_const_lv1_0);
    p_Result_16_fu_1064_p4 <= ((res_3_fu_950_p3 & shifted_V_fu_1044_p4) & ap_const_lv1_0);
    p_Result_17_fu_1146_p3 <= (select_ln422_fu_910_p3 & select_ln422_1_fu_918_p3);
    p_Result_18_fu_1154_p3 <= (res_3_fu_950_p3 & shiftedTop_V_fu_1132_p4);
    p_Result_19_fu_1168_p3 <= addRes_V_fu_1162_p2(5 downto 5);
    p_Result_20_fu_1180_p3 <= (usefulRes_V_fu_1176_p1 & guards_V_fu_1142_p1);
    p_Result_21_fu_1238_p3 <= (val_V_119_fu_1220_p1 & select_ln359_12_fu_1230_p3);
    p_Result_22_fu_1282_p3 <= (lower_V_4_fu_1264_p1 & select_ln359_13_fu_1274_p3);
    p_Result_23_fu_1316_p3 <= (lower_V_5_fu_1312_p1 & p_Result_19_fu_1168_p3);
    p_Result_24_fu_1332_p4 <= ((comp_V_4_fu_1224_p2 & comp_V_5_fu_1268_p2) & top_is_leading_V_2_fu_1306_p2);
    p_Result_25_fu_1370_p3 <= xor_ln1529_1_fu_1364_p2(2 downto 2);
    p_Result_26_fu_1420_p3 <= ret_26_fu_1358_p2(6 downto 6);
    p_Result_27_fu_1448_p3 <= p_Val2_18_fu_1400_p2(5 downto 5);
    p_Result_28_fu_1502_p3 <= res_5_fu_1470_p3(1 downto 1);
    p_Result_29_fu_1510_p7 <= (((((p_Result_28_fu_1502_p3 & res_5_fu_1470_p3) & ret_30_fu_1442_p2) & val_V_121_fu_1428_p4) & p_Result_25_fu_1370_p3) & ap_const_lv6_0);
    p_Result_2_fu_176_p3 <= in1(6 downto 6);
    p_Result_30_fu_1540_p3 <= (shift_high_V_1_fu_1526_p4 & ap_const_lv1_0);
    p_Result_31_fu_1586_p4 <= ((p_Result_28_fu_1502_p3 & shifted_V_4_fu_1566_p4) & ap_const_lv1_0);
    p_Result_32_fu_1616_p3 <= lshr_ln978_1_fu_1600_p2(1 downto 1);
    p_Result_33_fu_1634_p3 <= lshr_ln978_1_fu_1600_p2(2 downto 2);
    p_Result_34_fu_1670_p3 <= (p_Result_19_fu_1168_p3 & roundedResult_V_fu_1664_p2);
    p_Result_35_fu_1678_p3 <= (ret_29_fu_1412_p3 & ap_const_lv7_0);
    p_Result_3_fu_290_p3 <= (lower_V_fu_272_p1 & select_ln359_1_fu_282_p3);
    p_Result_4_fu_334_p3 <= (lower_V_1_fu_316_p1 & select_ln359_2_fu_326_p3);
    p_Result_5_fu_388_p4 <= ((comp_V_fu_276_p2 & comp_V_1_fu_320_p2) & top_is_leading_V_fu_358_p2);
    p_Result_6_fu_476_p7 <= (((((ret_3_fu_206_p2 & ret_9_fu_446_p2) & ret_10_fu_470_p2) & p_Result_s_fu_168_p3) & ret_4_fu_226_p2) & fraction_V_fu_422_p1);
    p_Result_7_fu_492_p3 <= in2(7 downto 7);
    p_Result_8_fu_500_p3 <= in2(6 downto 6);
    p_Result_9_fu_614_p3 <= (lower_V_2_fu_596_p1 & select_ln359_6_fu_606_p3);
    p_Result_s_fu_168_p3 <= in1(7 downto 7);
    p_Val2_18_fu_1400_p2 <= std_logic_vector(unsigned(add_ln1526_fu_1394_p2) - unsigned(zext_ln1526_fu_1390_p1));
    r_1_fu_432_p2 <= (xor_ln939_fu_426_p2 xor ap_const_lv1_1);
    r_2_fu_524_p2 <= (ret_11_fu_518_p2 xor ap_const_lv1_1);
    r_3_fu_756_p2 <= (xor_ln939_3_fu_750_p2 xor ap_const_lv1_1);
    r_4_fu_830_p2 <= "1" when (and_ln_fu_816_p6 = ap_const_lv12_0) else "0";
    r_5_fu_886_p2 <= "0" when (and_ln1528_1_fu_836_p6 = ap_const_lv12_0) else "1";
    r_6_fu_982_p2 <= "0" when (shift_weights_will_zero_V_fu_972_p4 = ap_const_lv3_0) else "1";
    r_7_fu_1488_p2 <= (low_k_V_fu_1478_p4 xor ap_const_lv3_7);
    r_fu_200_p2 <= (ret_fu_194_p2 xor ap_const_lv1_1);
    res_2_fu_728_p3 <= 
        ap_const_lv3_6 when (val_V_115_fu_722_p2(0) = '1') else 
        p_Result_11_fu_712_p4;
    res_3_fu_950_p3 <= 
        p_Result_7_fu_492_p3 when (control_V_fu_904_p2(0) = '1') else 
        p_Result_s_fu_168_p3;
    res_4_fu_1106_p3 <= 
        select_ln359_10_fu_1098_p3 when (r_6_fu_982_p2(0) = '1') else 
        shifted_V_3_fu_1084_p4;
    res_5_fu_1470_p3 <= 
        ap_const_lv2_1 when (ret_31_fu_1464_p2(0) = '1') else 
        ap_const_lv2_2;
    res_fu_404_p3 <= 
        ap_const_lv3_6 when (val_V_112_fu_398_p2(0) = '1') else 
        p_Result_5_fu_388_p4;
    ret_10_fu_470_p2 <= (select_ln359_4_fu_462_p3 xor es_V_fu_452_p4);
    ret_11_fu_518_p2 <= (val_V_114_fu_512_p2 or p_Result_8_fu_500_p3);
    ret_12_fu_530_p2 <= (r_2_fu_524_p2 and p_Result_7_fu_492_p3);
    ret_13_fu_550_p2 <= (xor_ln1527_1_fu_544_p2 and ret_11_fu_518_p2);
    ret_14_fu_580_p2 <= (val_V_113_fu_508_p1 xor select_ln359_5_fu_564_p3);
    ret_15_fu_622_p3 <= 
        p_Result_9_fu_614_p3 when (comp_V_2_fu_600_p2(0) = '1') else 
        ret_14_fu_580_p2;
    ret_16_fu_666_p3 <= 
        p_Result_10_fu_658_p3 when (comp_V_3_fu_644_p2(0) = '1') else 
        ret_15_fu_622_p3;
    ret_17_fu_736_p2 <= (select_ln356_1_fu_572_p3 xor opt1_V_7_fu_704_p3);
    ret_18_fu_770_p2 <= (zext_ln217_2_fu_742_p1 xor select_ln359_8_fu_762_p3);
    ret_19_fu_794_p2 <= (select_ln359_9_fu_786_p3 xor es_V_1_fu_776_p4);
    ret_20_fu_898_p2 <= (val_V_116_fu_892_p2 and r_5_fu_886_p2);
    ret_21_fu_1114_p2 <= (r_6_fu_982_p2 and icmp_ln1049_fu_988_p2);
    ret_22_fu_1126_p2 <= (shifted_out_V_4_fu_1094_p1 or or_ln1528_fu_1120_p2);
    ret_23_fu_1204_p2 <= (select_ln359_11_fu_1196_p3 xor p_Result_20_fu_1180_p3);
    ret_24_fu_1246_p3 <= 
        p_Result_21_fu_1238_p3 when (comp_V_4_fu_1224_p2(0) = '1') else 
        ret_23_fu_1204_p2;
    ret_25_fu_1290_p3 <= 
        p_Result_22_fu_1282_p3 when (comp_V_5_fu_1268_p2(0) = '1') else 
        ret_24_fu_1246_p3;
    ret_26_fu_1358_p2 <= (select_ln359_11_fu_1196_p3 xor opt1_V_fu_1324_p3);
    ret_27_fu_1378_p2 <= "0" when (trunc_ln1529_1_fu_1354_p1 = select_ln359_13_fu_1274_p3) else "1";
    ret_28_fu_1384_p2 <= (ret_27_fu_1378_p2 or ret_22_fu_1126_p2);
    ret_29_fu_1412_p3 <= or_ln1528_3_fu_1406_p2(11 downto 11);
    ret_30_fu_1442_p2 <= (select_ln359_13_fu_1274_p3 xor es_wo_xor_V_fu_1438_p1);
    ret_31_fu_1464_p2 <= (tmp_19_fu_1456_p3 xor p_Result_19_fu_1168_p3);
    ret_32_fu_1610_p2 <= (val_V_123_fu_1580_p2 or shifted_out_V_5_fu_1606_p1);
    ret_33_fu_1648_p2 <= (ret_32_fu_1610_p2 or or_ln1528_5_fu_1642_p2);
    ret_34_fu_1654_p2 <= (ret_33_fu_1648_p2 and p_Result_32_fu_1616_p3);
    ret_35_fu_1692_p2 <= (or_ln1527_fu_1686_p2 xor ap_const_lv1_1);
    ret_36_fu_1698_p2 <= (ret_35_fu_1692_p2 or ret_29_fu_1412_p3);
    ret_3_fu_206_p2 <= (r_fu_200_p2 and p_Result_s_fu_168_p3);
    ret_4_fu_226_p2 <= (xor_ln1527_fu_220_p2 and ret_fu_194_p2);
    ret_5_fu_256_p2 <= (val_V_109_fu_184_p1 xor select_ln359_fu_240_p3);
    ret_6_fu_298_p3 <= 
        p_Result_3_fu_290_p3 when (comp_V_fu_276_p2(0) = '1') else 
        ret_5_fu_256_p2;
    ret_7_fu_342_p3 <= 
        p_Result_4_fu_334_p3 when (comp_V_1_fu_320_p2(0) = '1') else 
        ret_6_fu_298_p3;
    ret_8_fu_412_p2 <= (select_ln356_fu_248_p3 xor opt1_V_6_fu_380_p3);
    ret_9_fu_446_p2 <= (zext_ln217_1_fu_418_p1 xor select_ln359_3_fu_438_p3);
    ret_fu_194_p2 <= (val_V_110_fu_188_p2 or p_Result_2_fu_176_p3);
    roundedResult_V_fu_1664_p2 <= std_logic_vector(unsigned(unroundedResult_V_fu_1624_p4) + unsigned(zext_ln217_fu_1660_p1));
    select_ln1529_fu_1342_p3 <= 
        ap_const_lv3_7 when (ext_2_fu_1188_p3(0) = '1') else 
        ap_const_lv3_0;
    select_ln356_1_fu_572_p3 <= 
        ap_const_lv5_1F when (tmp_8_fu_556_p3(0) = '1') else 
        ap_const_lv5_0;
    select_ln356_fu_248_p3 <= 
        ap_const_lv5_1F when (tmp_1_fu_232_p3(0) = '1') else 
        ap_const_lv5_0;
    select_ln359_10_fu_1098_p3 <= 
        ap_const_lv7_7F when (res_3_fu_950_p3(0) = '1') else 
        ap_const_lv7_0;
    select_ln359_11_fu_1196_p3 <= 
        ap_const_lv7_7F when (ext_2_fu_1188_p3(0) = '1') else 
        ap_const_lv7_0;
    select_ln359_12_fu_1230_p3 <= 
        ap_const_lv4_F when (ext_2_fu_1188_p3(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_13_fu_1274_p3 <= 
        ap_const_lv2_3 when (ext_2_fu_1188_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_1_fu_282_p3 <= 
        ap_const_lv4_F when (tmp_1_fu_232_p3(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_2_fu_326_p3 <= 
        ap_const_lv2_3 when (tmp_1_fu_232_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_3_fu_438_p3 <= 
        ap_const_lv4_F when (r_1_fu_432_p2(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_4_fu_462_p3 <= 
        ap_const_lv2_3 when (ext_fu_212_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_5_fu_564_p3 <= 
        ap_const_lv6_3F when (tmp_8_fu_556_p3(0) = '1') else 
        ap_const_lv6_0;
    select_ln359_6_fu_606_p3 <= 
        ap_const_lv4_F when (tmp_8_fu_556_p3(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_7_fu_650_p3 <= 
        ap_const_lv2_3 when (tmp_8_fu_556_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_8_fu_762_p3 <= 
        ap_const_lv4_F when (r_3_fu_756_p2(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_9_fu_786_p3 <= 
        ap_const_lv2_3 when (ext_1_fu_536_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_fu_240_p3 <= 
        ap_const_lv6_3F when (tmp_1_fu_232_p3(0) = '1') else 
        ap_const_lv6_0;
    select_ln422_1_fu_918_p3 <= 
        lessSignificantSignificand_V_fu_860_p4 when (control_V_fu_904_p2(0) = '1') else 
        mostSignificantSignificand_V_fu_850_p4;
    select_ln422_2_fu_926_p3 <= 
        subExpOp2_V_fu_870_p3 when (control_V_fu_904_p2(0) = '1') else 
        opt1_V_8_fu_878_p3;
    select_ln422_3_fu_934_p3 <= 
        opt1_V_8_fu_878_p3 when (control_V_fu_904_p2(0) = '1') else 
        subExpOp2_V_fu_870_p3;
    select_ln422_4_fu_942_p3 <= 
        mostSignificantSignificand_V_fu_850_p4 when (control_V_fu_904_p2(0) = '1') else 
        lessSignificantSignificand_V_fu_860_p4;
    select_ln422_fu_910_p3 <= 
        p_Result_s_fu_168_p3 when (control_V_fu_904_p2(0) = '1') else 
        p_Result_7_fu_492_p3;
        sext_ln585_1_fu_1548_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_29_fu_1510_p7),20));

        sext_ln585_fu_1026_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_14_fu_994_p4),19));

    shiftValue_V_fu_958_p2 <= std_logic_vector(unsigned(select_ln422_2_fu_926_p3) - unsigned(select_ln422_3_fu_934_p3));
    shift_high_V_1_fu_1526_p4 <= opt1_V_9_fu_1494_p3(2 downto 1);
    shift_high_V_fu_1004_p4 <= shiftValue_V_fu_958_p2(2 downto 1);
    shift_weights_will_zero_V_fu_972_p4 <= shiftValue_V_fu_958_p2(5 downto 3);
    shiftedTop_V_fu_1132_p4 <= res_4_fu_1106_p3(6 downto 2);
    shifted_V_3_fu_1084_p4 <= lshr_ln978_3_fu_1078_p2(7 downto 1);
    shifted_V_4_fu_1566_p4 <= lshr_ln978_fu_1560_p2(13 downto 6);
    shifted_V_fu_1044_p4 <= lshr_ln978_2_fu_1038_p2(12 downto 6);
    shifted_out_V_2_fu_1576_p1 <= lshr_ln978_fu_1560_p2(6 - 1 downto 0);
    shifted_out_V_4_fu_1094_p1 <= lshr_ln978_3_fu_1078_p2(1 - 1 downto 0);
    shifted_out_V_5_fu_1606_p1 <= lshr_ln978_1_fu_1600_p2(1 - 1 downto 0);
    shifted_out_V_fu_1054_p1 <= lshr_ln978_2_fu_1038_p2(6 - 1 downto 0);
    subExpOp2_V_fu_870_p3 <= (ret_9_fu_446_p2 & ret_10_fu_470_p2);
    tmp_11_fu_674_p3 <= ret_16_fu_666_p3(5 downto 5);
    tmp_19_fu_1456_p3 <= p_Val2_18_fu_1400_p2(5 downto 5);
    tmp_1_fu_232_p3 <= in1(6 downto 6);
    tmp_4_fu_368_p3 <= (trunc_ln312_fu_364_p1 & p_Result_2_fu_176_p3);
    tmp_5_fu_350_p3 <= ret_7_fu_342_p3(5 downto 5);
    tmp_6_fu_692_p3 <= (trunc_ln312_1_fu_688_p1 & p_Result_8_fu_500_p3);
    tmp_8_fu_556_p3 <= in2(6 downto 6);
    tmp_fu_1298_p3 <= ret_25_fu_1290_p3(6 downto 6);
    top_is_leading_V_1_fu_682_p2 <= (tmp_11_fu_674_p3 xor ap_const_lv1_1);
    top_is_leading_V_2_fu_1306_p2 <= (tmp_fu_1298_p3 xor ap_const_lv1_1);
    top_is_leading_V_fu_358_p2 <= (tmp_5_fu_350_p3 xor ap_const_lv1_1);
    trunc_ln1529_1_fu_1354_p1 <= opt1_V_fu_1324_p3(2 - 1 downto 0);
    trunc_ln1529_fu_1350_p1 <= opt1_V_fu_1324_p3(3 - 1 downto 0);
    trunc_ln312_1_fu_688_p1 <= ret_16_fu_666_p3(4 - 1 downto 0);
    trunc_ln312_fu_364_p1 <= ret_7_fu_342_p3(4 - 1 downto 0);
    trunc_ln422_1_fu_700_p1 <= ret_16_fu_666_p3(5 - 1 downto 0);
    trunc_ln422_fu_376_p1 <= ret_7_fu_342_p3(5 - 1 downto 0);
    unroundedResult_V_fu_1624_p4 <= lshr_ln978_1_fu_1600_p2(8 downto 2);
    upper_V_2_fu_586_p4 <= ret_14_fu_580_p2(5 downto 2);
    upper_V_4_fu_1210_p4 <= ret_23_fu_1204_p2(6 downto 3);
    upper_V_fu_262_p4 <= ret_5_fu_256_p2(5 downto 2);
    usefulRes_V_fu_1176_p1 <= addRes_V_fu_1162_p2(5 - 1 downto 0);
    val_V_109_fu_184_p1 <= in1(6 - 1 downto 0);
    val_V_110_fu_188_p2 <= "0" when (val_V_109_fu_184_p1 = ap_const_lv6_0) else "1";
    val_V_111_fu_306_p4 <= ret_6_fu_298_p3(5 downto 4);
    val_V_112_fu_398_p2 <= "1" when (p_Result_5_fu_388_p4 = ap_const_lv3_7) else "0";
    val_V_113_fu_508_p1 <= in2(6 - 1 downto 0);
    val_V_114_fu_512_p2 <= "0" when (val_V_113_fu_508_p1 = ap_const_lv6_0) else "1";
    val_V_115_fu_722_p2 <= "1" when (p_Result_11_fu_712_p4 = ap_const_lv3_7) else "0";
    val_V_116_fu_892_p2 <= "1" when (signed(subExpOp2_V_fu_870_p3) > signed(opt1_V_8_fu_878_p3)) else "0";
    val_V_117_fu_1014_p1 <= shiftValue_V_fu_958_p2(1 - 1 downto 0);
    val_V_118_fu_1058_p2 <= "0" when (shifted_out_V_fu_1054_p1 = ap_const_lv6_0) else "1";
    val_V_119_fu_1220_p1 <= ret_23_fu_1204_p2(3 - 1 downto 0);
    val_V_120_fu_1254_p4 <= ret_24_fu_1246_p3(6 downto 5);
    val_V_121_fu_1428_p4 <= ret_26_fu_1358_p2(5 downto 3);
    val_V_122_fu_1536_p1 <= opt1_V_9_fu_1494_p3(1 - 1 downto 0);
    val_V_123_fu_1580_p2 <= "0" when (shifted_out_V_2_fu_1576_p1 = ap_const_lv6_0) else "1";
    val_V_fu_630_p4 <= ret_15_fu_622_p3(5 downto 4);
    xor_ln1527_1_fu_544_p2 <= (ext_1_fu_536_p3 xor ap_const_lv1_1);
    xor_ln1527_fu_220_p2 <= (ext_fu_212_p3 xor ap_const_lv1_1);
    xor_ln1529_1_fu_1364_p2 <= (trunc_ln1529_fu_1350_p1 xor select_ln1529_fu_1342_p3);
    xor_ln939_3_fu_750_p2 <= (tmp_8_fu_556_p3 xor ext_1_fu_536_p3);
    xor_ln939_fu_426_p2 <= (tmp_1_fu_232_p3 xor ext_fu_212_p3);
    zext_ln1526_fu_1390_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_24_fu_1332_p4),6));
    zext_ln217_1_fu_418_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(res_fu_404_p3),4));
    zext_ln217_2_fu_742_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(res_2_fu_728_p3),4));
    zext_ln217_fu_1660_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_34_fu_1654_p2),7));
    zext_ln585_1_fu_1552_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln585_1_fu_1548_p1),21));
    zext_ln585_fu_1030_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln585_fu_1026_p1),20));
    zext_ln978_1_fu_1074_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(val_V_117_fu_1014_p1),9));
    zext_ln978_2_fu_1556_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_30_fu_1540_p3),21));
    zext_ln978_3_fu_1596_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(val_V_122_fu_1536_p1),10));
    zext_ln978_fu_1034_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_15_fu_1018_p3),20));
end behav;