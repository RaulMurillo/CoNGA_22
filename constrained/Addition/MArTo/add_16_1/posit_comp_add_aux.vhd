-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity posit_comp_add_posit_add_16u_1u_VivadoWrapper_s is
port (
    ap_ready : OUT STD_LOGIC;
    in1 : IN STD_LOGIC_VECTOR (20 downto 0);
    in2 : IN STD_LOGIC_VECTOR (20 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (22 downto 0) );
end;


architecture behav of posit_comp_add_posit_add_16u_1u_VivadoWrapper_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv21_0 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000000";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal tmp_fu_130_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_138_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal and_ln_fu_148_p5 : STD_LOGIC_VECTOR (20 downto 0);
    signal tmp_39_fu_166_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_174_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal and_ln1528_1_fu_184_p5 : STD_LOGIC_VECTOR (20 downto 0);
    signal subExpOp2_V_fu_220_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal opt1_V_11_fu_230_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_V_fu_246_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_7_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_fu_252_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal control_V_6_fu_258_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt0_V_9_fu_208_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_10_fu_196_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal lessSignificantSignificand_V_fu_216_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal mostSignificantSignificand_V_fu_204_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal select_ln422_2_fu_280_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln422_3_fu_288_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln422_4_fu_296_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal shiftValue_V_fu_312_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal shift_weights_will_zero_V_fu_326_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Result_s_fu_318_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal res_fu_304_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_32_fu_348_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal shift_high_V_fu_362_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Result_33_fu_376_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln312_fu_358_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal zext_ln978_fu_384_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal r_9_fu_388_p2 : STD_LOGIC_VECTOR (39 downto 0);
    signal shifted_out_V_fu_404_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal shifted_V_fu_394_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_34_fu_414_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal shift_low_V_fu_372_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal sext_ln978_fu_424_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal zext_ln978_2_fu_428_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal lshr_ln978_fu_432_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal shifted_out_V_2_fu_448_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal r_8_fu_336_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln359_fu_458_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal shifted_V_3_fu_438_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln1049_fu_342_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal val_V_101_fu_408_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_29_fu_474_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1528_4_fu_480_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_10_fu_452_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_4_fu_466_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln422_fu_264_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln422_1_fu_272_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal shiftedTop_V_fu_492_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_36_fu_514_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_35_fu_506_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal addRes_V_fu_522_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal usefulRes_V_fu_536_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal guards_V_fu_502_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ext_fu_548_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_38_fu_540_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln359_10_fu_556_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ret_31_fu_564_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal upper_V_fu_570_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal lower_V_fu_580_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln359_11_fu_590_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal comp_V_fu_584_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_39_fu_598_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ret_32_fu_606_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal upper_V_3_fu_614_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal lower_V_6_fu_624_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln359_12_fu_634_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal comp_V_6_fu_628_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_40_fu_642_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ret_33_fu_650_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal val_V_102_fu_658_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal lower_V_7_fu_668_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal select_ln359_13_fu_678_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal comp_V_7_fu_672_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_41_fu_686_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ret_34_fu_694_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_56_fu_702_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal lower_V_8_fu_716_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_37_fu_528_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_42_fu_720_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal top_is_leading_V_fu_710_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal opt1_V_fu_728_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_59_fu_748_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1527_fu_756_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_fu_762_p6 : STD_LOGIC_VECTOR (15 downto 0);
    signal ret_35_fu_776_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_11_fu_782_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_43_fu_736_p5 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln359_14_fu_788_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ret_36_fu_796_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal v1_V_fu_810_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_45_fu_814_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal opt1_V_12_fu_822_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln1529_fu_838_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln1529_fu_830_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal xor_ln1529_1_fu_852_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln1529_1_fu_842_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ret_30_fu_486_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_38_fu_866_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_44_fu_802_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal ret_40_fu_882_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln1526_fu_878_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln1528_fu_894_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal ret_37_fu_846_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_46_fu_858_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_39_fu_872_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_41_fu_900_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_s_fu_888_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_64_fu_908_p4 : STD_LOGIC_VECTOR (12 downto 0);


begin



    addRes_V_fu_522_p2 <= std_logic_vector(unsigned(p_Result_36_fu_514_p3) + unsigned(p_Result_35_fu_506_p3));
    and_ln1528_1_fu_184_p5 <= (((tmp_39_fu_166_p3 & ap_const_lv6_0) & tmp_1_fu_174_p4) & ap_const_lv12_0);
    and_ln_fu_148_p5 <= (((tmp_fu_130_p3 & ap_const_lv6_0) & tmp_s_fu_138_p4) & ap_const_lv12_0);
    ap_ready <= ap_const_logic_1;
    ap_return <= (((((p_Result_46_fu_858_p3 & ret_39_fu_872_p2) & ret_41_fu_900_p3) & p_Val2_s_fu_888_p2) & p_Result_37_fu_528_p3) & tmp_64_fu_908_p4);
    comp_V_6_fu_628_p2 <= "1" when (upper_V_3_fu_614_p4 = ap_const_lv4_0) else "0";
    comp_V_7_fu_672_p2 <= "1" when (val_V_102_fu_658_p4 = ap_const_lv2_0) else "0";
    comp_V_fu_584_p2 <= "1" when (upper_V_fu_570_p4 = ap_const_lv8_0) else "0";
    control_V_6_fu_258_p2 <= (ret_fu_252_p2 or r_fu_160_p2);
    ext_fu_548_p3 <= addRes_V_fu_522_p2(14 downto 14);
    guards_V_fu_502_p1 <= res_4_fu_466_p3(2 - 1 downto 0);
    icmp_ln1049_fu_342_p2 <= "0" when (p_Result_s_fu_318_p3 = ap_const_lv16_0) else "1";
    lessSignificantSignificand_V_fu_216_p1 <= in1(14 - 1 downto 0);
    lower_V_6_fu_624_p1 <= ret_32_fu_606_p3(12 - 1 downto 0);
    lower_V_7_fu_668_p1 <= ret_33_fu_650_p3(14 - 1 downto 0);
    lower_V_8_fu_716_p1 <= ret_34_fu_694_p3(15 - 1 downto 0);
    lower_V_fu_580_p1 <= ret_31_fu_564_p2(8 - 1 downto 0);
    lshr_ln978_fu_432_p2 <= std_logic_vector(shift_right(unsigned(sext_ln978_fu_424_p1),to_integer(unsigned('0' & zext_ln978_2_fu_428_p1(22-1 downto 0)))));
    mostSignificantSignificand_V_fu_204_p1 <= in2(14 - 1 downto 0);
    opt0_V_9_fu_208_p3 <= in1(13 downto 13);
    opt1_V_10_fu_196_p3 <= in2(13 downto 13);
    opt1_V_11_fu_230_p4 <= in2(19 downto 14);
    opt1_V_12_fu_822_p3 <= 
        p_Result_45_fu_814_p3 when (ret_35_fu_776_p2(0) = '1') else 
        opt1_V_fu_728_p3;
    opt1_V_fu_728_p3 <= 
        ret_34_fu_694_p3 when (tmp_56_fu_702_p3(0) = '1') else 
        p_Result_42_fu_720_p3;
    or_ln1527_fu_756_p2 <= (top_is_leading_V_fu_710_p2 or tmp_59_fu_748_p3);
    or_ln1528_4_fu_480_p2 <= (val_V_101_fu_408_p2 or ret_29_fu_474_p2);
    or_ln1528_fu_894_p2 <= (in2 or in1);
    p_Result_32_fu_348_p4 <= ((res_fu_304_p3 & select_ln422_4_fu_296_p3) & ap_const_lv14_0);
    p_Result_33_fu_376_p3 <= (shift_high_V_fu_362_p4 & ap_const_lv2_0);
    p_Result_34_fu_414_p4 <= ((res_fu_304_p3 & shifted_V_fu_394_p4) & ap_const_lv3_0);
    p_Result_35_fu_506_p3 <= (select_ln422_fu_264_p3 & select_ln422_1_fu_272_p3);
    p_Result_36_fu_514_p3 <= (res_fu_304_p3 & shiftedTop_V_fu_492_p4);
    p_Result_37_fu_528_p3 <= addRes_V_fu_522_p2(14 downto 14);
    p_Result_38_fu_540_p3 <= (usefulRes_V_fu_536_p1 & guards_V_fu_502_p1);
    p_Result_39_fu_598_p3 <= (lower_V_fu_580_p1 & select_ln359_11_fu_590_p3);
    p_Result_40_fu_642_p3 <= (lower_V_6_fu_624_p1 & select_ln359_12_fu_634_p3);
    p_Result_41_fu_686_p3 <= (lower_V_7_fu_668_p1 & select_ln359_13_fu_678_p3);
    p_Result_42_fu_720_p3 <= (lower_V_8_fu_716_p1 & p_Result_37_fu_528_p3);
    p_Result_43_fu_736_p5 <= (((comp_V_fu_584_p2 & comp_V_6_fu_628_p2) & comp_V_7_fu_672_p2) & top_is_leading_V_fu_710_p2);
    p_Result_44_fu_802_p3 <= (ret_35_fu_776_p2 & ret_36_fu_796_p2);
    p_Result_45_fu_814_p3 <= (v1_V_fu_810_p1 & p_Result_37_fu_528_p3);
    p_Result_46_fu_858_p3 <= xor_ln1529_1_fu_852_p2(2 downto 2);
    p_Result_s_fu_318_p3 <= (select_ln422_4_fu_296_p3 & ap_const_lv2_0);
    p_Val2_s_fu_888_p2 <= std_logic_vector(unsigned(ret_40_fu_882_p2) - unsigned(zext_ln1526_fu_878_p1));
    r_10_fu_452_p2 <= "0" when (shifted_out_V_2_fu_448_p1 = ap_const_lv3_0) else "1";
    r_11_fu_782_p2 <= (ret_35_fu_776_p2 xor ap_const_lv1_1);
    r_7_fu_240_p2 <= "0" when (and_ln1528_1_fu_184_p5 = ap_const_lv21_0) else "1";
    r_8_fu_336_p2 <= "0" when (shift_weights_will_zero_V_fu_326_p4 = ap_const_lv2_0) else "1";
    r_9_fu_388_p2 <= std_logic_vector(shift_right(unsigned(sext_ln312_fu_358_p1),to_integer(unsigned('0' & zext_ln978_fu_384_p1(31-1 downto 0)))));
    r_fu_160_p2 <= "1" when (and_ln_fu_148_p5 = ap_const_lv21_0) else "0";
    res_4_fu_466_p3 <= 
        select_ln359_fu_458_p3 when (r_8_fu_336_p2(0) = '1') else 
        shifted_V_3_fu_438_p4;
    res_fu_304_p3 <= 
        opt1_V_10_fu_196_p3 when (control_V_6_fu_258_p2(0) = '1') else 
        opt0_V_9_fu_208_p3;
    ret_29_fu_474_p2 <= (r_8_fu_336_p2 and icmp_ln1049_fu_342_p2);
    ret_30_fu_486_p2 <= (r_10_fu_452_p2 or or_ln1528_4_fu_480_p2);
    ret_31_fu_564_p2 <= (select_ln359_10_fu_556_p3 xor p_Result_38_fu_540_p3);
    ret_32_fu_606_p3 <= 
        p_Result_39_fu_598_p3 when (comp_V_fu_584_p2(0) = '1') else 
        ret_31_fu_564_p2;
    ret_33_fu_650_p3 <= 
        p_Result_40_fu_642_p3 when (comp_V_6_fu_628_p2(0) = '1') else 
        ret_32_fu_606_p3;
    ret_34_fu_694_p3 <= 
        p_Result_41_fu_686_p3 when (comp_V_7_fu_672_p2(0) = '1') else 
        ret_33_fu_650_p3;
    ret_35_fu_776_p2 <= "1" when (tmp_i_fu_762_p6 = ap_const_lv16_0) else "0";
    ret_36_fu_796_p2 <= (select_ln359_14_fu_788_p3 and p_Result_43_fu_736_p5);
    ret_37_fu_846_p2 <= (select_ln359_10_fu_556_p3 xor opt1_V_12_fu_822_p3);
    ret_38_fu_866_p2 <= "0" when (trunc_ln1529_1_fu_842_p1 = select_ln359_13_fu_678_p3) else "1";
    ret_39_fu_872_p2 <= (ret_38_fu_866_p2 or ret_30_fu_486_p2);
    ret_40_fu_882_p2 <= std_logic_vector(unsigned(select_ln422_2_fu_280_p3) + unsigned(ap_const_lv6_1));
    ret_41_fu_900_p3 <= or_ln1528_fu_894_p2(20 downto 20);
    ret_fu_252_p2 <= (val_V_fu_246_p2 and r_7_fu_240_p2);
    select_ln1529_fu_830_p3 <= 
        ap_const_lv3_7 when (ext_fu_548_p3(0) = '1') else 
        ap_const_lv3_0;
    select_ln359_10_fu_556_p3 <= 
        ap_const_lv16_FFFF when (ext_fu_548_p3(0) = '1') else 
        ap_const_lv16_0;
    select_ln359_11_fu_590_p3 <= 
        ap_const_lv8_FF when (ext_fu_548_p3(0) = '1') else 
        ap_const_lv8_0;
    select_ln359_12_fu_634_p3 <= 
        ap_const_lv4_F when (ext_fu_548_p3(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_13_fu_678_p3 <= 
        ap_const_lv2_3 when (ext_fu_548_p3(0) = '1') else 
        ap_const_lv2_0;
    select_ln359_14_fu_788_p3 <= 
        ap_const_lv4_F when (r_11_fu_782_p2(0) = '1') else 
        ap_const_lv4_0;
    select_ln359_fu_458_p3 <= 
        ap_const_lv16_FFFF when (res_fu_304_p3(0) = '1') else 
        ap_const_lv16_0;
    select_ln422_1_fu_272_p3 <= 
        lessSignificantSignificand_V_fu_216_p1 when (control_V_6_fu_258_p2(0) = '1') else 
        mostSignificantSignificand_V_fu_204_p1;
    select_ln422_2_fu_280_p3 <= 
        subExpOp2_V_fu_220_p4 when (control_V_6_fu_258_p2(0) = '1') else 
        opt1_V_11_fu_230_p4;
    select_ln422_3_fu_288_p3 <= 
        opt1_V_11_fu_230_p4 when (control_V_6_fu_258_p2(0) = '1') else 
        subExpOp2_V_fu_220_p4;
    select_ln422_4_fu_296_p3 <= 
        mostSignificantSignificand_V_fu_204_p1 when (control_V_6_fu_258_p2(0) = '1') else 
        lessSignificantSignificand_V_fu_216_p1;
    select_ln422_fu_264_p3 <= 
        opt0_V_9_fu_208_p3 when (control_V_6_fu_258_p2(0) = '1') else 
        opt1_V_10_fu_196_p3;
        sext_ln312_fu_358_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_32_fu_348_p4),40));

        sext_ln978_fu_424_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_34_fu_414_p4),22));

    shiftValue_V_fu_312_p2 <= std_logic_vector(unsigned(select_ln422_2_fu_280_p3) - unsigned(select_ln422_3_fu_288_p3));
    shift_high_V_fu_362_p4 <= shiftValue_V_fu_312_p2(3 downto 2);
    shift_low_V_fu_372_p1 <= shiftValue_V_fu_312_p2(2 - 1 downto 0);
    shift_weights_will_zero_V_fu_326_p4 <= shiftValue_V_fu_312_p2(5 downto 4);
    shiftedTop_V_fu_492_p4 <= res_4_fu_466_p3(15 downto 2);
    shifted_V_3_fu_438_p4 <= lshr_ln978_fu_432_p2(18 downto 3);
    shifted_V_fu_394_p4 <= r_9_fu_388_p2(27 downto 12);
    shifted_out_V_2_fu_448_p1 <= lshr_ln978_fu_432_p2(3 - 1 downto 0);
    shifted_out_V_fu_404_p1 <= r_9_fu_388_p2(12 - 1 downto 0);
    subExpOp2_V_fu_220_p4 <= in1(19 downto 14);
    tmp_1_fu_174_p4 <= in1(13 downto 12);
    tmp_39_fu_166_p3 <= in1(20 downto 20);
    tmp_56_fu_702_p3 <= ret_34_fu_694_p3(15 downto 15);
    tmp_59_fu_748_p3 <= opt1_V_fu_728_p3(15 downto 15);
    tmp_64_fu_908_p4 <= ret_37_fu_846_p2(15 downto 3);
    tmp_fu_130_p3 <= in2(20 downto 20);
    tmp_i_fu_762_p6 <= ((((ap_const_lv12_0 & comp_V_fu_584_p2) & comp_V_6_fu_628_p2) & comp_V_7_fu_672_p2) & or_ln1527_fu_756_p2);
    tmp_s_fu_138_p4 <= in2(13 downto 12);
    top_is_leading_V_fu_710_p2 <= (tmp_56_fu_702_p3 xor ap_const_lv1_1);
    trunc_ln1529_1_fu_842_p1 <= opt1_V_12_fu_822_p3(2 - 1 downto 0);
    trunc_ln1529_fu_838_p1 <= opt1_V_12_fu_822_p3(3 - 1 downto 0);
    upper_V_3_fu_614_p4 <= ret_32_fu_606_p3(15 downto 12);
    upper_V_fu_570_p4 <= ret_31_fu_564_p2(15 downto 8);
    usefulRes_V_fu_536_p1 <= addRes_V_fu_522_p2(14 - 1 downto 0);
    v1_V_fu_810_p1 <= opt1_V_fu_728_p3(15 - 1 downto 0);
    val_V_101_fu_408_p2 <= "0" when (shifted_out_V_fu_404_p1 = ap_const_lv12_0) else "1";
    val_V_102_fu_658_p4 <= ret_33_fu_650_p3(15 downto 14);
    val_V_fu_246_p2 <= "1" when (signed(subExpOp2_V_fu_220_p4) > signed(opt1_V_11_fu_230_p4)) else "0";
    xor_ln1529_1_fu_852_p2 <= (trunc_ln1529_fu_838_p1 xor select_ln1529_fu_830_p3);
    zext_ln1526_fu_878_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_44_fu_802_p3),6));
    zext_ln978_2_fu_428_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shift_low_V_fu_372_p1),22));
    zext_ln978_fu_384_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_33_fu_376_p3),40));
end behav;