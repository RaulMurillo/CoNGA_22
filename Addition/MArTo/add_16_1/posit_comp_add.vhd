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
    in1 : IN STD_LOGIC_VECTOR (15 downto 0);
    in2 : IN STD_LOGIC_VECTOR (15 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of posit_comp_add is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "posit_comp_add_posit_comp_add,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7vx485t-ffg1157-1,HLS_INPUT_CLOCK=10000.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=38.981425,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=1207,HLS_VERSION=2021_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv14_3FFF : STD_LOGIC_VECTOR (13 downto 0) := "11111111111111";
    constant ap_const_lv13_1FFF : STD_LOGIC_VECTOR (12 downto 0) := "1111111111111";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv4_E : STD_LOGIC_VECTOR (3 downto 0) := "1110";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_ready : STD_LOGIC;
    signal add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_in1 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_in2 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return : STD_LOGIC_VECTOR (22 downto 0);
    signal val_V_73_fu_178_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal val_V_74_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_2_fu_170_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_fu_188_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_fu_162_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_206_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln1527_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_226_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln359_fu_234_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal ret_3_fu_250_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal upper_V_fu_256_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal lower_V_fu_266_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln359_1_fu_276_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal comp_V_fu_270_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_3_fu_284_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal ret_4_fu_292_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal upper_V_1_fu_300_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal lower_V_1_fu_310_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln359_2_fu_320_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal comp_V_1_fu_314_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_4_fu_328_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal ret_5_fu_336_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal val_V_75_fu_344_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal lower_V_2_fu_354_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln359_3_fu_364_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal comp_V_2_fu_358_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_5_fu_372_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal ret_6_fu_380_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_6_fu_388_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln312_fu_402_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln422_fu_414_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_5_fu_406_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal top_is_leading_V_fu_396_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_6_fu_426_p5 : STD_LOGIC_VECTOR (3 downto 0);
    signal val_V_76_fu_438_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_4_fu_418_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal select_ln356_fu_242_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal res_fu_444_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ret_7_fu_452_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal xor_ln939_fu_466_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_1_fu_472_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln217_1_fu_458_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln359_4_fu_478_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal val_V_77_fu_492_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_1_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_8_fu_486_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ret_9_fu_500_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_2_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal fraction_V_fu_462_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal val_V_78_fu_539_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal val_V_79_fu_543_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_9_fu_531_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_10_fu_549_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_8_fu_523_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_2_fu_555_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_13_fu_567_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln1527_1_fu_575_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_14_fu_587_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln359_5_fu_595_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal ret_13_fu_611_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal upper_V_3_fu_617_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal lower_V_3_fu_627_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln359_6_fu_637_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal comp_V_3_fu_631_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_10_fu_645_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal ret_14_fu_653_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal upper_V_4_fu_661_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal lower_V_4_fu_671_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln359_7_fu_681_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal comp_V_4_fu_675_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_11_fu_689_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal ret_15_fu_697_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal val_V_fu_705_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal lower_V_5_fu_715_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln359_8_fu_725_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal comp_V_5_fu_719_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_12_fu_733_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal ret_16_fu_741_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_18_fu_749_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln312_1_fu_763_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln422_1_fu_775_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_7_fu_767_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal top_is_leading_V_1_fu_757_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_13_fu_787_p5 : STD_LOGIC_VECTOR (3 downto 0);
    signal val_V_80_fu_799_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_5_fu_779_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal select_ln356_1_fu_603_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal res_2_fu_805_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ret_17_fu_813_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal xor_ln939_3_fu_827_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_3_fu_833_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln217_2_fu_819_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln359_9_fu_839_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal val_V_81_fu_853_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_11_fu_561_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_18_fu_847_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ret_19_fu_861_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_12_fu_581_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal fraction_V_1_fu_823_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal es_wo_xor_V_fu_896_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_24_fu_904_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_26_fu_926_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_21_fu_934_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal low_k_V_fu_948_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_Result_16_fu_918_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_4_fu_958_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal res_3_fu_940_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Result_18_fu_980_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_20_fu_912_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal significand_V_fu_892_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Result_17_fu_972_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_19_fu_988_p7 : STD_LOGIC_VECTOR (28 downto 0);
    signal opt1_V_fu_964_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal shift_high_V_fu_1008_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Result_20_fu_1022_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln312_fu_1004_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal zext_ln978_fu_1030_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal r_5_fu_1034_p2 : STD_LOGIC_VECTOR (39 downto 0);
    signal shifted_out_V_fu_1050_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal shifted_V_fu_1040_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_21_fu_1060_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal shift_low_V_fu_1018_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal sext_ln978_fu_1070_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal zext_ln978_1_fu_1074_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal lshr_ln978_fu_1078_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal shifted_out_V_1_fu_1084_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal r_6_fu_1088_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal val_V_82_fu_1054_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_23_fu_1126_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_24_fu_1118_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1528_fu_1134_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_22_fu_1094_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_22_fu_1100_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_23_fu_1140_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_24_fu_1146_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal unroundedResult_V_fu_1108_p4 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln217_fu_1152_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_15_fu_884_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal roundedResult_V_fu_1156_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_26_fu_1170_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_38_fu_1186_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1527_fu_1194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_25_fu_1200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_26_fu_1206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_27_fu_1178_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_25_fu_1162_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component posit_comp_add_posit_add_16u_1u_VivadoWrapper_s IS
    port (
        ap_ready : OUT STD_LOGIC;
        in1 : IN STD_LOGIC_VECTOR (20 downto 0);
        in2 : IN STD_LOGIC_VECTOR (20 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (22 downto 0) );
    end component;



begin
    add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156 : component posit_comp_add_posit_add_16u_1u_VivadoWrapper_s
    port map (
        ap_ready => add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_ready,
        in1 => add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_in1,
        in2 => add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_in2,
        ap_return => add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return);




    add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_in1 <= (((((ret_1_fu_200_p2 & ret_8_fu_486_p2) & ret_9_fu_500_p2) & p_Result_s_fu_162_p3) & ret_2_fu_220_p2) & fraction_V_fu_462_p1);
    add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_in2 <= (((((ret_11_fu_561_p2 & ret_18_fu_847_p2) & ret_19_fu_861_p2) & p_Result_8_fu_523_p3) & ret_12_fu_581_p2) & fraction_V_1_fu_823_p1);
    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;
    ap_return <= 
        p_Result_27_fu_1178_p3 when (ret_26_fu_1206_p2(0) = '1') else 
        p_Result_25_fu_1162_p3;
    comp_V_1_fu_314_p2 <= "1" when (upper_V_1_fu_300_p4 = ap_const_lv4_0) else "0";
    comp_V_2_fu_358_p2 <= "1" when (val_V_75_fu_344_p4 = ap_const_lv2_0) else "0";
    comp_V_3_fu_631_p2 <= "1" when (upper_V_3_fu_617_p4 = ap_const_lv8_0) else "0";
    comp_V_4_fu_675_p2 <= "1" when (upper_V_4_fu_661_p4 = ap_const_lv4_0) else "0";
    comp_V_5_fu_719_p2 <= "1" when (val_V_fu_705_p4 = ap_const_lv2_0) else "0";
    comp_V_fu_270_p2 <= "1" when (upper_V_fu_256_p4 = ap_const_lv8_0) else "0";
    es_wo_xor_V_fu_896_p3 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(14 downto 14);
    fraction_V_1_fu_823_p1 <= ret_17_fu_813_p2(12 - 1 downto 0);
    fraction_V_fu_462_p1 <= ret_7_fu_452_p2(12 - 1 downto 0);
    low_k_V_fu_948_p4 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(18 downto 15);
    lower_V_1_fu_310_p1 <= ret_4_fu_292_p3(10 - 1 downto 0);
    lower_V_2_fu_354_p1 <= ret_5_fu_336_p3(12 - 1 downto 0);
    lower_V_3_fu_627_p1 <= ret_13_fu_611_p2(6 - 1 downto 0);
    lower_V_4_fu_671_p1 <= ret_14_fu_653_p3(10 - 1 downto 0);
    lower_V_5_fu_715_p1 <= ret_15_fu_697_p3(12 - 1 downto 0);
    lower_V_fu_266_p1 <= ret_3_fu_250_p2(6 - 1 downto 0);
    lshr_ln978_fu_1078_p2 <= std_logic_vector(shift_right(unsigned(sext_ln978_fu_1070_p1),to_integer(unsigned('0' & zext_ln978_1_fu_1074_p1(22-1 downto 0)))));
    opt1_V_4_fu_418_p3 <= 
        trunc_ln422_fu_414_p1 when (tmp_6_fu_388_p3(0) = '1') else 
        tmp_5_fu_406_p3;
    opt1_V_5_fu_779_p3 <= 
        trunc_ln422_1_fu_775_p1 when (tmp_18_fu_749_p3(0) = '1') else 
        tmp_7_fu_767_p3;
    opt1_V_fu_964_p3 <= 
        r_4_fu_958_p2 when (p_Result_16_fu_918_p3(0) = '1') else 
        low_k_V_fu_948_p4;
    or_ln1527_fu_1194_p2 <= (tmp_38_fu_1186_p3 or tmp_24_fu_904_p3);
    or_ln1528_fu_1134_p2 <= (p_Result_24_fu_1118_p3 or p_Result_23_fu_1126_p3);
    p_Result_10_fu_645_p3 <= (lower_V_3_fu_627_p1 & select_ln359_6_fu_637_p3);
    p_Result_11_fu_689_p3 <= (lower_V_4_fu_671_p1 & select_ln359_7_fu_681_p3);
    p_Result_12_fu_733_p3 <= (lower_V_5_fu_715_p1 & select_ln359_8_fu_725_p3);
    p_Result_13_fu_787_p5 <= (((comp_V_3_fu_631_p2 & comp_V_4_fu_675_p2) & comp_V_5_fu_719_p2) & top_is_leading_V_1_fu_757_p2);
    p_Result_15_fu_884_p3 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(13 downto 13);
    p_Result_16_fu_918_p3 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(19 downto 19);
    p_Result_17_fu_972_p3 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(22 downto 22);
    p_Result_18_fu_980_p3 <= res_3_fu_940_p3(1 downto 1);
    p_Result_19_fu_988_p7 <= (((((p_Result_18_fu_980_p3 & res_3_fu_940_p3) & ret_20_fu_912_p2) & significand_V_fu_892_p1) & p_Result_17_fu_972_p3) & ap_const_lv12_0);
    p_Result_20_fu_1022_p3 <= (shift_high_V_fu_1008_p4 & ap_const_lv2_0);
    p_Result_21_fu_1060_p4 <= ((p_Result_18_fu_980_p3 & shifted_V_fu_1040_p4) & ap_const_lv3_0);
    p_Result_22_fu_1100_p3 <= lshr_ln978_fu_1078_p2(3 downto 3);
    p_Result_23_fu_1126_p3 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(21 downto 21);
    p_Result_24_fu_1118_p3 <= lshr_ln978_fu_1078_p2(4 downto 4);
    p_Result_25_fu_1162_p3 <= (p_Result_15_fu_884_p3 & roundedResult_V_fu_1156_p2);
    p_Result_26_fu_1170_p3 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(20 downto 20);
    p_Result_27_fu_1178_p3 <= (p_Result_26_fu_1170_p3 & ap_const_lv15_0);
    p_Result_2_fu_170_p3 <= in1(14 downto 14);
    p_Result_3_fu_284_p3 <= (lower_V_fu_266_p1 & select_ln359_1_fu_276_p3);
    p_Result_4_fu_328_p3 <= (lower_V_1_fu_310_p1 & select_ln359_2_fu_320_p3);
    p_Result_5_fu_372_p3 <= (lower_V_2_fu_354_p1 & select_ln359_3_fu_364_p3);
    p_Result_6_fu_426_p5 <= (((comp_V_fu_270_p2 & comp_V_1_fu_314_p2) & comp_V_2_fu_358_p2) & top_is_leading_V_fu_396_p2);
    p_Result_8_fu_523_p3 <= in2(15 downto 15);
    p_Result_9_fu_531_p3 <= in2(14 downto 14);
    p_Result_s_fu_162_p3 <= in1(15 downto 15);
    r_1_fu_472_p2 <= (xor_ln939_fu_466_p2 xor ap_const_lv1_1);
    r_2_fu_555_p2 <= (ret_10_fu_549_p2 xor ap_const_lv1_1);
    r_3_fu_833_p2 <= (xor_ln939_3_fu_827_p2 xor ap_const_lv1_1);
    r_4_fu_958_p2 <= (low_k_V_fu_948_p4 xor ap_const_lv4_F);
    r_5_fu_1034_p2 <= std_logic_vector(shift_right(unsigned(sext_ln312_fu_1004_p1),to_integer(unsigned('0' & zext_ln978_fu_1030_p1(31-1 downto 0)))));
    r_6_fu_1088_p2 <= "0" when (shifted_out_V_1_fu_1084_p1 = ap_const_lv3_0) else "1";
    r_fu_194_p2 <= (ret_fu_188_p2 xor ap_const_lv1_1);
    res_2_fu_805_p3 <= 
        ap_const_lv4_E when (val_V_80_fu_799_p2(0) = '1') else 
        p_Result_13_fu_787_p5;
    res_3_fu_940_p3 <= 
        ap_const_lv2_1 when (ret_21_fu_934_p2(0) = '1') else 
        ap_const_lv2_2;
    res_fu_444_p3 <= 
        ap_const_lv4_E when (val_V_76_fu_438_p2(0) = '1') else 
        p_Result_6_fu_426_p5;
    ret_10_fu_549_p2 <= (val_V_79_fu_543_p2 or p_Result_9_fu_531_p3);
    ret_11_fu_561_p2 <= (r_2_fu_555_p2 and p_Result_8_fu_523_p3);
    ret_12_fu_581_p2 <= (xor_ln1527_1_fu_575_p2 and ret_10_fu_549_p2);
    ret_13_fu_611_p2 <= (val_V_78_fu_539_p1 xor select_ln359_5_fu_595_p3);
    ret_14_fu_653_p3 <= 
        p_Result_10_fu_645_p3 when (comp_V_3_fu_631_p2(0) = '1') else 
        ret_13_fu_611_p2;
    ret_15_fu_697_p3 <= 
        p_Result_11_fu_689_p3 when (comp_V_4_fu_675_p2(0) = '1') else 
        ret_14_fu_653_p3;
    ret_16_fu_741_p3 <= 
        p_Result_12_fu_733_p3 when (comp_V_5_fu_719_p2(0) = '1') else 
        ret_15_fu_697_p3;
    ret_17_fu_813_p2 <= (select_ln356_1_fu_603_p3 xor opt1_V_5_fu_779_p3);
    ret_18_fu_847_p2 <= (zext_ln217_2_fu_819_p1 xor select_ln359_9_fu_839_p3);
    ret_19_fu_861_p2 <= (val_V_81_fu_853_p3 xor tmp_13_fu_567_p3);
    ret_1_fu_200_p2 <= (r_fu_194_p2 and p_Result_s_fu_162_p3);
    ret_20_fu_912_p2 <= (tmp_24_fu_904_p3 xor es_wo_xor_V_fu_896_p3);
    ret_21_fu_934_p2 <= (tmp_26_fu_926_p3 xor tmp_24_fu_904_p3);
    ret_22_fu_1094_p2 <= (val_V_82_fu_1054_p2 or r_6_fu_1088_p2);
    ret_23_fu_1140_p2 <= (ret_22_fu_1094_p2 or or_ln1528_fu_1134_p2);
    ret_24_fu_1146_p2 <= (ret_23_fu_1140_p2 and p_Result_22_fu_1100_p3);
    ret_25_fu_1200_p2 <= (or_ln1527_fu_1194_p2 xor ap_const_lv1_1);
    ret_26_fu_1206_p2 <= (ret_25_fu_1200_p2 or p_Result_26_fu_1170_p3);
    ret_2_fu_220_p2 <= (xor_ln1527_fu_214_p2 and ret_fu_188_p2);
    ret_3_fu_250_p2 <= (val_V_73_fu_178_p1 xor select_ln359_fu_234_p3);
    ret_4_fu_292_p3 <= 
        p_Result_3_fu_284_p3 when (comp_V_fu_270_p2(0) = '1') else 
        ret_3_fu_250_p2;
    ret_5_fu_336_p3 <= 
        p_Result_4_fu_328_p3 when (comp_V_1_fu_314_p2(0) = '1') else 
        ret_4_fu_292_p3;
    ret_6_fu_380_p3 <= 
        p_Result_5_fu_372_p3 when (comp_V_2_fu_358_p2(0) = '1') else 
        ret_5_fu_336_p3;
    ret_7_fu_452_p2 <= (select_ln356_fu_242_p3 xor opt1_V_4_fu_418_p3);
    ret_8_fu_486_p2 <= (zext_ln217_1_fu_458_p1 xor select_ln359_4_fu_478_p3);
    ret_9_fu_500_p2 <= (val_V_77_fu_492_p3 xor tmp_fu_206_p3);
    ret_fu_188_p2 <= (val_V_74_fu_182_p2 or p_Result_2_fu_170_p3);
    roundedResult_V_fu_1156_p2 <= std_logic_vector(unsigned(unroundedResult_V_fu_1108_p4) + unsigned(zext_ln217_fu_1152_p1));
    select_ln356_1_fu_603_p3 <= 
        ap_const_lv13_1FFF when (tmp_14_fu_587_p3(0) = '1') else 
        ap_const_lv13_0;
    select_ln356_fu_242_p3 <= 
        ap_const_lv13_1FFF when (tmp_1_fu_226_p3(0) = '1') else 
        ap_const_lv13_0;
    select_ln359_1_fu_276_p3 <= 
        ap_const_lv8_FF when (tmp_1_fu_226_p3(0) = '1') else 
        ap_const_lv8_0;
    select_ln359_2_fu_320_p3 <= 
        ap_const_lv4_F when (tmp_1_fu_226_p3(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_3_fu_364_p3 <= 
        ap_const_lv2_3 when (tmp_1_fu_226_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_4_fu_478_p3 <= 
        ap_const_lv5_1F when (r_1_fu_472_p2(0) = '1') else 
        ap_const_lv5_0;
    select_ln359_5_fu_595_p3 <= 
        ap_const_lv14_3FFF when (tmp_14_fu_587_p3(0) = '1') else 
        ap_const_lv14_0;
    select_ln359_6_fu_637_p3 <= 
        ap_const_lv8_FF when (tmp_14_fu_587_p3(0) = '1') else 
        ap_const_lv8_0;
    select_ln359_7_fu_681_p3 <= 
        ap_const_lv4_F when (tmp_14_fu_587_p3(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_8_fu_725_p3 <= 
        ap_const_lv2_3 when (tmp_14_fu_587_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_9_fu_839_p3 <= 
        ap_const_lv5_1F when (r_3_fu_833_p2(0) = '1') else 
        ap_const_lv5_0;
    select_ln359_fu_234_p3 <= 
        ap_const_lv14_3FFF when (tmp_1_fu_226_p3(0) = '1') else 
        ap_const_lv14_0;
        sext_ln312_fu_1004_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_19_fu_988_p7),40));

        sext_ln978_fu_1070_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_21_fu_1060_p4),22));

    shift_high_V_fu_1008_p4 <= opt1_V_fu_964_p3(3 downto 2);
    shift_low_V_fu_1018_p1 <= opt1_V_fu_964_p3(2 - 1 downto 0);
    shifted_V_fu_1040_p4 <= r_5_fu_1034_p2(27 downto 12);
    shifted_out_V_1_fu_1084_p1 <= lshr_ln978_fu_1078_p2(3 - 1 downto 0);
    shifted_out_V_fu_1050_p1 <= r_5_fu_1034_p2(12 - 1 downto 0);
    significand_V_fu_892_p1 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(12 - 1 downto 0);
    tmp_13_fu_567_p3 <= in2(15 downto 15);
    tmp_14_fu_587_p3 <= in2(14 downto 14);
    tmp_18_fu_749_p3 <= ret_16_fu_741_p3(13 downto 13);
    tmp_1_fu_226_p3 <= in1(14 downto 14);
    tmp_24_fu_904_p3 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(13 downto 13);
    tmp_26_fu_926_p3 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(19 downto 19);
    tmp_38_fu_1186_p3 <= add_V_posit_add_16u_1u_VivadoWrapper_s_fu_156_ap_return(12 downto 12);
    tmp_5_fu_406_p3 <= (trunc_ln312_fu_402_p1 & p_Result_2_fu_170_p3);
    tmp_6_fu_388_p3 <= ret_6_fu_380_p3(13 downto 13);
    tmp_7_fu_767_p3 <= (trunc_ln312_1_fu_763_p1 & p_Result_9_fu_531_p3);
    tmp_fu_206_p3 <= in1(15 downto 15);
    top_is_leading_V_1_fu_757_p2 <= (tmp_18_fu_749_p3 xor ap_const_lv1_1);
    top_is_leading_V_fu_396_p2 <= (tmp_6_fu_388_p3 xor ap_const_lv1_1);
    trunc_ln312_1_fu_763_p1 <= ret_16_fu_741_p3(12 - 1 downto 0);
    trunc_ln312_fu_402_p1 <= ret_6_fu_380_p3(12 - 1 downto 0);
    trunc_ln422_1_fu_775_p1 <= ret_16_fu_741_p3(13 - 1 downto 0);
    trunc_ln422_fu_414_p1 <= ret_6_fu_380_p3(13 - 1 downto 0);
    unroundedResult_V_fu_1108_p4 <= lshr_ln978_fu_1078_p2(18 downto 4);
    upper_V_1_fu_300_p4 <= ret_4_fu_292_p3(13 downto 10);
    upper_V_3_fu_617_p4 <= ret_13_fu_611_p2(13 downto 6);
    upper_V_4_fu_661_p4 <= ret_14_fu_653_p3(13 downto 10);
    upper_V_fu_256_p4 <= ret_3_fu_250_p2(13 downto 6);
    val_V_73_fu_178_p1 <= in1(14 - 1 downto 0);
    val_V_74_fu_182_p2 <= "0" when (val_V_73_fu_178_p1 = ap_const_lv14_0) else "1";
    val_V_75_fu_344_p4 <= ret_5_fu_336_p3(13 downto 12);
    val_V_76_fu_438_p2 <= "1" when (p_Result_6_fu_426_p5 = ap_const_lv4_F) else "0";
    val_V_77_fu_492_p3 <= ret_7_fu_452_p2(12 downto 12);
    val_V_78_fu_539_p1 <= in2(14 - 1 downto 0);
    val_V_79_fu_543_p2 <= "0" when (val_V_78_fu_539_p1 = ap_const_lv14_0) else "1";
    val_V_80_fu_799_p2 <= "1" when (p_Result_13_fu_787_p5 = ap_const_lv4_F) else "0";
    val_V_81_fu_853_p3 <= ret_17_fu_813_p2(12 downto 12);
    val_V_82_fu_1054_p2 <= "0" when (shifted_out_V_fu_1050_p1 = ap_const_lv12_0) else "1";
    val_V_fu_705_p4 <= ret_15_fu_697_p3(13 downto 12);
    xor_ln1527_1_fu_575_p2 <= (tmp_13_fu_567_p3 xor ap_const_lv1_1);
    xor_ln1527_fu_214_p2 <= (tmp_fu_206_p3 xor ap_const_lv1_1);
    xor_ln939_3_fu_827_p2 <= (tmp_14_fu_587_p3 xor tmp_13_fu_567_p3);
    xor_ln939_fu_466_p2 <= (tmp_fu_206_p3 xor tmp_1_fu_226_p3);
    zext_ln217_1_fu_458_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(res_fu_444_p3),5));
    zext_ln217_2_fu_819_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(res_2_fu_805_p3),5));
    zext_ln217_fu_1152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_24_fu_1146_p2),15));
    zext_ln978_1_fu_1074_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shift_low_V_fu_1018_p1),22));
    zext_ln978_fu_1030_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_20_fu_1022_p3),40));
end behav;
