--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CP_synthesis.vhd
-- /___/   /\     Timestamp: Fri Oct 06 16:25:34 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm CP -w -dir netgen/synthesis -ofmt vhdl -sim CP.ngc CP_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: CP.ngc
-- Output file	: D:\workdirectory\PROPIO7\netgen\synthesis\CP_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: CP
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity CP is
  port (
    X : in STD_LOGIC := 'X'; 
    Y : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    out1 : out STD_LOGIC; 
    Z : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    cuenta : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end CP;

architecture Structure of CP is
  signal Z_7_IBUF_0 : STD_LOGIC; 
  signal Z_6_IBUF_1 : STD_LOGIC; 
  signal Z_5_IBUF_2 : STD_LOGIC; 
  signal Z_4_IBUF_3 : STD_LOGIC; 
  signal Z_3_IBUF_4 : STD_LOGIC; 
  signal Z_2_IBUF_5 : STD_LOGIC; 
  signal Z_1_IBUF_6 : STD_LOGIC; 
  signal Z_0_IBUF_7 : STD_LOGIC; 
  signal X_IBUF_8 : STD_LOGIC; 
  signal Y_IBUF_9 : STD_LOGIC; 
  signal reset_IBUF_10 : STD_LOGIC; 
  signal CLK_BUFGP_11 : STD_LOGIC; 
  signal out1_OBUF_12 : STD_LOGIC; 
  signal a : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal out18 : STD_LOGIC; 
  signal out181_41 : STD_LOGIC; 
  signal Mcount_aux_cy_1_rt_63 : STD_LOGIC; 
  signal Mcount_aux_cy_2_rt_64 : STD_LOGIC; 
  signal Mcount_aux_cy_3_rt_65 : STD_LOGIC; 
  signal Mcount_aux_cy_4_rt_66 : STD_LOGIC; 
  signal Mcount_aux_cy_5_rt_67 : STD_LOGIC; 
  signal Mcount_aux_cy_6_rt_68 : STD_LOGIC; 
  signal Mcount_aux_xor_7_rt_69 : STD_LOGIC; 
  signal aux : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_aux_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_aux_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  aux_0 : FDCE
    port map (
      C => CLK_BUFGP_11,
      CE => a,
      CLR => reset_IBUF_10,
      D => Result(0),
      Q => aux(0)
    );
  aux_1 : FDCE
    port map (
      C => CLK_BUFGP_11,
      CE => a,
      CLR => reset_IBUF_10,
      D => Result(1),
      Q => aux(1)
    );
  aux_2 : FDCE
    port map (
      C => CLK_BUFGP_11,
      CE => a,
      CLR => reset_IBUF_10,
      D => Result(2),
      Q => aux(2)
    );
  aux_3 : FDCE
    port map (
      C => CLK_BUFGP_11,
      CE => a,
      CLR => reset_IBUF_10,
      D => Result(3),
      Q => aux(3)
    );
  aux_4 : FDCE
    port map (
      C => CLK_BUFGP_11,
      CE => a,
      CLR => reset_IBUF_10,
      D => Result(4),
      Q => aux(4)
    );
  aux_5 : FDCE
    port map (
      C => CLK_BUFGP_11,
      CE => a,
      CLR => reset_IBUF_10,
      D => Result(5),
      Q => aux(5)
    );
  aux_6 : FDCE
    port map (
      C => CLK_BUFGP_11,
      CE => a,
      CLR => reset_IBUF_10,
      D => Result(6),
      Q => aux(6)
    );
  aux_7 : FDCE
    port map (
      C => CLK_BUFGP_11,
      CE => a,
      CLR => reset_IBUF_10,
      D => Result(7),
      Q => aux(7)
    );
  Mcount_aux_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcount_aux_lut(0),
      O => Mcount_aux_cy(0)
    );
  Mcount_aux_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Mcount_aux_lut(0),
      O => Result(0)
    );
  Mcount_aux_cy_1_Q : MUXCY
    port map (
      CI => Mcount_aux_cy(0),
      DI => N1,
      S => Mcount_aux_cy_1_rt_63,
      O => Mcount_aux_cy(1)
    );
  Mcount_aux_xor_1_Q : XORCY
    port map (
      CI => Mcount_aux_cy(0),
      LI => Mcount_aux_cy_1_rt_63,
      O => Result(1)
    );
  Mcount_aux_cy_2_Q : MUXCY
    port map (
      CI => Mcount_aux_cy(1),
      DI => N1,
      S => Mcount_aux_cy_2_rt_64,
      O => Mcount_aux_cy(2)
    );
  Mcount_aux_xor_2_Q : XORCY
    port map (
      CI => Mcount_aux_cy(1),
      LI => Mcount_aux_cy_2_rt_64,
      O => Result(2)
    );
  Mcount_aux_cy_3_Q : MUXCY
    port map (
      CI => Mcount_aux_cy(2),
      DI => N1,
      S => Mcount_aux_cy_3_rt_65,
      O => Mcount_aux_cy(3)
    );
  Mcount_aux_xor_3_Q : XORCY
    port map (
      CI => Mcount_aux_cy(2),
      LI => Mcount_aux_cy_3_rt_65,
      O => Result(3)
    );
  Mcount_aux_cy_4_Q : MUXCY
    port map (
      CI => Mcount_aux_cy(3),
      DI => N1,
      S => Mcount_aux_cy_4_rt_66,
      O => Mcount_aux_cy(4)
    );
  Mcount_aux_xor_4_Q : XORCY
    port map (
      CI => Mcount_aux_cy(3),
      LI => Mcount_aux_cy_4_rt_66,
      O => Result(4)
    );
  Mcount_aux_cy_5_Q : MUXCY
    port map (
      CI => Mcount_aux_cy(4),
      DI => N1,
      S => Mcount_aux_cy_5_rt_67,
      O => Mcount_aux_cy(5)
    );
  Mcount_aux_xor_5_Q : XORCY
    port map (
      CI => Mcount_aux_cy(4),
      LI => Mcount_aux_cy_5_rt_67,
      O => Result(5)
    );
  Mcount_aux_cy_6_Q : MUXCY
    port map (
      CI => Mcount_aux_cy(5),
      DI => N1,
      S => Mcount_aux_cy_6_rt_68,
      O => Mcount_aux_cy(6)
    );
  Mcount_aux_xor_6_Q : XORCY
    port map (
      CI => Mcount_aux_cy(5),
      LI => Mcount_aux_cy_6_rt_68,
      O => Result(6)
    );
  Mcount_aux_xor_7_Q : XORCY
    port map (
      CI => Mcount_aux_cy(6),
      LI => Mcount_aux_xor_7_rt_69,
      O => Result(7)
    );
  a1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => X_IBUF_8,
      I1 => Y_IBUF_9,
      O => a
    );
  out181 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => aux(1),
      I1 => Z_1_IBUF_6,
      I2 => aux(6),
      I3 => Z_6_IBUF_1,
      I4 => aux(5),
      I5 => Z_5_IBUF_2,
      O => out18
    );
  out182 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => aux(4),
      I1 => Z_4_IBUF_3,
      I2 => aux(3),
      I3 => Z_3_IBUF_4,
      I4 => aux(2),
      I5 => Z_2_IBUF_5,
      O => out181_41
    );
  out183 : LUT6
    generic map(
      INIT => X"8200008200000000"
    )
    port map (
      I0 => out18,
      I1 => aux(7),
      I2 => Z_7_IBUF_0,
      I3 => aux(0),
      I4 => Z_0_IBUF_7,
      I5 => out181_41,
      O => out1_OBUF_12
    );
  Z_7_IBUF : IBUF
    port map (
      I => Z(7),
      O => Z_7_IBUF_0
    );
  Z_6_IBUF : IBUF
    port map (
      I => Z(6),
      O => Z_6_IBUF_1
    );
  Z_5_IBUF : IBUF
    port map (
      I => Z(5),
      O => Z_5_IBUF_2
    );
  Z_4_IBUF : IBUF
    port map (
      I => Z(4),
      O => Z_4_IBUF_3
    );
  Z_3_IBUF : IBUF
    port map (
      I => Z(3),
      O => Z_3_IBUF_4
    );
  Z_2_IBUF : IBUF
    port map (
      I => Z(2),
      O => Z_2_IBUF_5
    );
  Z_1_IBUF : IBUF
    port map (
      I => Z(1),
      O => Z_1_IBUF_6
    );
  Z_0_IBUF : IBUF
    port map (
      I => Z(0),
      O => Z_0_IBUF_7
    );
  X_IBUF : IBUF
    port map (
      I => X,
      O => X_IBUF_8
    );
  Y_IBUF : IBUF
    port map (
      I => Y,
      O => Y_IBUF_9
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_10
    );
  cuenta_7_OBUF : OBUF
    port map (
      I => aux(7),
      O => cuenta(7)
    );
  cuenta_6_OBUF : OBUF
    port map (
      I => aux(6),
      O => cuenta(6)
    );
  cuenta_5_OBUF : OBUF
    port map (
      I => aux(5),
      O => cuenta(5)
    );
  cuenta_4_OBUF : OBUF
    port map (
      I => aux(4),
      O => cuenta(4)
    );
  cuenta_3_OBUF : OBUF
    port map (
      I => aux(3),
      O => cuenta(3)
    );
  cuenta_2_OBUF : OBUF
    port map (
      I => aux(2),
      O => cuenta(2)
    );
  cuenta_1_OBUF : OBUF
    port map (
      I => aux(1),
      O => cuenta(1)
    );
  cuenta_0_OBUF : OBUF
    port map (
      I => aux(0),
      O => cuenta(0)
    );
  out1_OBUF : OBUF
    port map (
      I => out1_OBUF_12,
      O => out1
    );
  Mcount_aux_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => aux(1),
      O => Mcount_aux_cy_1_rt_63
    );
  Mcount_aux_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => aux(2),
      O => Mcount_aux_cy_2_rt_64
    );
  Mcount_aux_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => aux(3),
      O => Mcount_aux_cy_3_rt_65
    );
  Mcount_aux_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => aux(4),
      O => Mcount_aux_cy_4_rt_66
    );
  Mcount_aux_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => aux(5),
      O => Mcount_aux_cy_5_rt_67
    );
  Mcount_aux_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => aux(6),
      O => Mcount_aux_cy_6_rt_68
    );
  Mcount_aux_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => aux(7),
      O => Mcount_aux_xor_7_rt_69
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_11
    );
  Mcount_aux_lut_0_INV_0 : INV
    port map (
      I => aux(0),
      O => Mcount_aux_lut(0)
    );

end Structure;

