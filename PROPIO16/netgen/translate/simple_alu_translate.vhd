--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: simple_alu_translate.vhd
-- /___/   /\     Timestamp: Sun Oct 15 20:22:31 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm simple_alu -w -dir netgen/translate -ofmt vhdl -sim simple_alu.ngd simple_alu_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: simple_alu.ngd
-- Output file	: D:\workdirectory\PROPIO16\netgen\translate\simple_alu_translate.vhd
-- # of Entities	: 1
-- Design Name	: simple_alu
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity simple_alu is
  port (
    ctrl : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    src0 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    srcl : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    result : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end simple_alu;

architecture Structure of simple_alu is
  signal ctrl_2_IBUF_0 : STD_LOGIC; 
  signal ctrl_1_IBUF_1 : STD_LOGIC; 
  signal ctrl_0_IBUF_2 : STD_LOGIC; 
  signal src0_7_IBUF_3 : STD_LOGIC; 
  signal src0_6_IBUF_4 : STD_LOGIC; 
  signal src0_5_IBUF_5 : STD_LOGIC; 
  signal src0_4_IBUF_6 : STD_LOGIC; 
  signal src0_3_IBUF_7 : STD_LOGIC; 
  signal src0_2_IBUF_8 : STD_LOGIC; 
  signal src0_1_IBUF_9 : STD_LOGIC; 
  signal src0_0_IBUF_10 : STD_LOGIC; 
  signal srcl_7_IBUF_11 : STD_LOGIC; 
  signal srcl_6_IBUF_12 : STD_LOGIC; 
  signal srcl_5_IBUF_13 : STD_LOGIC; 
  signal srcl_4_IBUF_14 : STD_LOGIC; 
  signal srcl_3_IBUF_15 : STD_LOGIC; 
  signal srcl_2_IBUF_16 : STD_LOGIC; 
  signal srcl_1_IBUF_17 : STD_LOGIC; 
  signal srcl_0_IBUF_18 : STD_LOGIC; 
  signal result_7_OBUF_26 : STD_LOGIC; 
  signal result_6_OBUF_27 : STD_LOGIC; 
  signal result_5_OBUF_28 : STD_LOGIC; 
  signal result_4_OBUF_29 : STD_LOGIC; 
  signal result_3_OBUF_30 : STD_LOGIC; 
  signal result_2_OBUF_31 : STD_LOGIC; 
  signal result_1_OBUF_32 : STD_LOGIC; 
  signal result_0_OBUF_33 : STD_LOGIC; 
  signal Mmux_result_rs_AS_inv : STD_LOGIC; 
  signal Mmux_result_rs_A : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Mmux_result_rs_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mmux_result_rs_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  Mmux_result_rs_cy_0_Q : X_MUX2
    port map (
      IB => Mmux_result_rs_AS_inv,
      IA => Mmux_result_rs_A(0),
      SEL => Mmux_result_rs_lut(0),
      O => Mmux_result_rs_cy(0)
    );
  Mmux_result_rs_xor_0_Q : X_XOR2
    port map (
      I0 => Mmux_result_rs_AS_inv,
      I1 => Mmux_result_rs_lut(0),
      O => result_0_OBUF_33
    );
  Mmux_result_rs_cy_1_Q : X_MUX2
    port map (
      IB => Mmux_result_rs_cy(0),
      IA => Mmux_result_rs_A(1),
      SEL => Mmux_result_rs_lut(1),
      O => Mmux_result_rs_cy(1)
    );
  Mmux_result_rs_xor_1_Q : X_XOR2
    port map (
      I0 => Mmux_result_rs_cy(0),
      I1 => Mmux_result_rs_lut(1),
      O => result_1_OBUF_32
    );
  Mmux_result_rs_cy_2_Q : X_MUX2
    port map (
      IB => Mmux_result_rs_cy(1),
      IA => Mmux_result_rs_A(2),
      SEL => Mmux_result_rs_lut(2),
      O => Mmux_result_rs_cy(2)
    );
  Mmux_result_rs_xor_2_Q : X_XOR2
    port map (
      I0 => Mmux_result_rs_cy(1),
      I1 => Mmux_result_rs_lut(2),
      O => result_2_OBUF_31
    );
  Mmux_result_rs_cy_3_Q : X_MUX2
    port map (
      IB => Mmux_result_rs_cy(2),
      IA => Mmux_result_rs_A(3),
      SEL => Mmux_result_rs_lut(3),
      O => Mmux_result_rs_cy(3)
    );
  Mmux_result_rs_xor_3_Q : X_XOR2
    port map (
      I0 => Mmux_result_rs_cy(2),
      I1 => Mmux_result_rs_lut(3),
      O => result_3_OBUF_30
    );
  Mmux_result_rs_cy_4_Q : X_MUX2
    port map (
      IB => Mmux_result_rs_cy(3),
      IA => Mmux_result_rs_A(4),
      SEL => Mmux_result_rs_lut(4),
      O => Mmux_result_rs_cy(4)
    );
  Mmux_result_rs_xor_4_Q : X_XOR2
    port map (
      I0 => Mmux_result_rs_cy(3),
      I1 => Mmux_result_rs_lut(4),
      O => result_4_OBUF_29
    );
  Mmux_result_rs_cy_5_Q : X_MUX2
    port map (
      IB => Mmux_result_rs_cy(4),
      IA => Mmux_result_rs_A(5),
      SEL => Mmux_result_rs_lut(5),
      O => Mmux_result_rs_cy(5)
    );
  Mmux_result_rs_xor_5_Q : X_XOR2
    port map (
      I0 => Mmux_result_rs_cy(4),
      I1 => Mmux_result_rs_lut(5),
      O => result_5_OBUF_28
    );
  Mmux_result_rs_cy_6_Q : X_MUX2
    port map (
      IB => Mmux_result_rs_cy(5),
      IA => Mmux_result_rs_A(6),
      SEL => Mmux_result_rs_lut(6),
      O => Mmux_result_rs_cy(6)
    );
  Mmux_result_rs_xor_6_Q : X_XOR2
    port map (
      I0 => Mmux_result_rs_cy(5),
      I1 => Mmux_result_rs_lut(6),
      O => result_6_OBUF_27
    );
  Mmux_result_rs_xor_7_Q : X_XOR2
    port map (
      I0 => Mmux_result_rs_cy(6),
      I1 => Mmux_result_rs_lut(7),
      O => result_7_OBUF_26
    );
  Mmux_result_rs_AS_inv2 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => ctrl_2_IBUF_0,
      ADR1 => ctrl_0_IBUF_2,
      O => Mmux_result_rs_AS_inv
    );
  Mmux_result_A11 : X_LUT5
    generic map(
      INIT => X"E8AAAAAA"
    )
    port map (
      ADR0 => src0_0_IBUF_10,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => srcl_0_IBUF_18,
      ADR3 => ctrl_1_IBUF_1,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_A(0)
    );
  Mmux_result_A21 : X_LUT5
    generic map(
      INIT => X"E8AAAAAA"
    )
    port map (
      ADR0 => src0_1_IBUF_9,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => srcl_1_IBUF_17,
      ADR3 => ctrl_1_IBUF_1,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_A(1)
    );
  Mmux_result_A31 : X_LUT5
    generic map(
      INIT => X"E8AAAAAA"
    )
    port map (
      ADR0 => src0_2_IBUF_8,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => srcl_2_IBUF_16,
      ADR3 => ctrl_1_IBUF_1,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_A(2)
    );
  Mmux_result_A41 : X_LUT5
    generic map(
      INIT => X"E8AAAAAA"
    )
    port map (
      ADR0 => src0_3_IBUF_7,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => srcl_3_IBUF_15,
      ADR3 => ctrl_1_IBUF_1,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_A(3)
    );
  Mmux_result_A51 : X_LUT5
    generic map(
      INIT => X"E8AAAAAA"
    )
    port map (
      ADR0 => src0_4_IBUF_6,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => srcl_4_IBUF_14,
      ADR3 => ctrl_1_IBUF_1,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_A(4)
    );
  Mmux_result_A61 : X_LUT5
    generic map(
      INIT => X"E8AAAAAA"
    )
    port map (
      ADR0 => src0_5_IBUF_5,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => srcl_5_IBUF_13,
      ADR3 => ctrl_1_IBUF_1,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_A(5)
    );
  Mmux_result_A71 : X_LUT5
    generic map(
      INIT => X"E8AAAAAA"
    )
    port map (
      ADR0 => src0_6_IBUF_4,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => srcl_6_IBUF_12,
      ADR3 => ctrl_1_IBUF_1,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_A(6)
    );
  ctrl_2_IBUF : X_BUF
    port map (
      I => ctrl(2),
      O => ctrl_2_IBUF_0
    );
  ctrl_1_IBUF : X_BUF
    port map (
      I => ctrl(1),
      O => ctrl_1_IBUF_1
    );
  ctrl_0_IBUF : X_BUF
    port map (
      I => ctrl(0),
      O => ctrl_0_IBUF_2
    );
  src0_7_IBUF : X_BUF
    port map (
      I => src0(7),
      O => src0_7_IBUF_3
    );
  src0_6_IBUF : X_BUF
    port map (
      I => src0(6),
      O => src0_6_IBUF_4
    );
  src0_5_IBUF : X_BUF
    port map (
      I => src0(5),
      O => src0_5_IBUF_5
    );
  src0_4_IBUF : X_BUF
    port map (
      I => src0(4),
      O => src0_4_IBUF_6
    );
  src0_3_IBUF : X_BUF
    port map (
      I => src0(3),
      O => src0_3_IBUF_7
    );
  src0_2_IBUF : X_BUF
    port map (
      I => src0(2),
      O => src0_2_IBUF_8
    );
  src0_1_IBUF : X_BUF
    port map (
      I => src0(1),
      O => src0_1_IBUF_9
    );
  src0_0_IBUF : X_BUF
    port map (
      I => src0(0),
      O => src0_0_IBUF_10
    );
  srcl_7_IBUF : X_BUF
    port map (
      I => srcl(7),
      O => srcl_7_IBUF_11
    );
  srcl_6_IBUF : X_BUF
    port map (
      I => srcl(6),
      O => srcl_6_IBUF_12
    );
  srcl_5_IBUF : X_BUF
    port map (
      I => srcl(5),
      O => srcl_5_IBUF_13
    );
  srcl_4_IBUF : X_BUF
    port map (
      I => srcl(4),
      O => srcl_4_IBUF_14
    );
  srcl_3_IBUF : X_BUF
    port map (
      I => srcl(3),
      O => srcl_3_IBUF_15
    );
  srcl_2_IBUF : X_BUF
    port map (
      I => srcl(2),
      O => srcl_2_IBUF_16
    );
  srcl_1_IBUF : X_BUF
    port map (
      I => srcl(1),
      O => srcl_1_IBUF_17
    );
  srcl_0_IBUF : X_BUF
    port map (
      I => srcl(0),
      O => srcl_0_IBUF_18
    );
  Mmux_result_rs_lut_7_Q : X_LUT5
    generic map(
      INIT => X"2946AAAA"
    )
    port map (
      ADR0 => src0_7_IBUF_3,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => ctrl_1_IBUF_1,
      ADR3 => srcl_7_IBUF_11,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_lut(7)
    );
  Mmux_result_rs_lut_0_Q : X_LUT5
    generic map(
      INIT => X"24965555"
    )
    port map (
      ADR0 => src0_0_IBUF_10,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => srcl_0_IBUF_18,
      ADR3 => ctrl_1_IBUF_1,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_lut(0)
    );
  Mmux_result_rs_lut_1_Q : X_LUT5
    generic map(
      INIT => X"2946AAAA"
    )
    port map (
      ADR0 => src0_1_IBUF_9,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => ctrl_1_IBUF_1,
      ADR3 => srcl_1_IBUF_17,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_lut(1)
    );
  Mmux_result_rs_lut_2_Q : X_LUT5
    generic map(
      INIT => X"2946AAAA"
    )
    port map (
      ADR0 => src0_2_IBUF_8,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => ctrl_1_IBUF_1,
      ADR3 => srcl_2_IBUF_16,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_lut(2)
    );
  Mmux_result_rs_lut_3_Q : X_LUT5
    generic map(
      INIT => X"2946AAAA"
    )
    port map (
      ADR0 => src0_3_IBUF_7,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => ctrl_1_IBUF_1,
      ADR3 => srcl_3_IBUF_15,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_lut(3)
    );
  Mmux_result_rs_lut_4_Q : X_LUT5
    generic map(
      INIT => X"2946AAAA"
    )
    port map (
      ADR0 => src0_4_IBUF_6,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => ctrl_1_IBUF_1,
      ADR3 => srcl_4_IBUF_14,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_lut(4)
    );
  Mmux_result_rs_lut_5_Q : X_LUT5
    generic map(
      INIT => X"2946AAAA"
    )
    port map (
      ADR0 => src0_5_IBUF_5,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => ctrl_1_IBUF_1,
      ADR3 => srcl_5_IBUF_13,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_lut(5)
    );
  Mmux_result_rs_lut_6_Q : X_LUT5
    generic map(
      INIT => X"2946AAAA"
    )
    port map (
      ADR0 => src0_6_IBUF_4,
      ADR1 => ctrl_0_IBUF_2,
      ADR2 => ctrl_1_IBUF_1,
      ADR3 => srcl_6_IBUF_12,
      ADR4 => ctrl_2_IBUF_0,
      O => Mmux_result_rs_lut(6)
    );
  result_7_OBUF : X_OBUF
    port map (
      I => result_7_OBUF_26,
      O => result(7)
    );
  result_6_OBUF : X_OBUF
    port map (
      I => result_6_OBUF_27,
      O => result(6)
    );
  result_5_OBUF : X_OBUF
    port map (
      I => result_5_OBUF_28,
      O => result(5)
    );
  result_4_OBUF : X_OBUF
    port map (
      I => result_4_OBUF_29,
      O => result(4)
    );
  result_3_OBUF : X_OBUF
    port map (
      I => result_3_OBUF_30,
      O => result(3)
    );
  result_2_OBUF : X_OBUF
    port map (
      I => result_2_OBUF_31,
      O => result(2)
    );
  result_1_OBUF : X_OBUF
    port map (
      I => result_1_OBUF_32,
      O => result(1)
    );
  result_0_OBUF : X_OBUF
    port map (
      I => result_0_OBUF_33,
      O => result(0)
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

