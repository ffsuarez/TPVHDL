--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CP_translate.vhd
-- /___/   /\     Timestamp: Fri Oct 06 16:35:02 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm CP -w -dir netgen/translate -ofmt vhdl -sim CP.ngd CP_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: CP.ngd
-- Output file	: D:\workdirectory\PROPIO7\netgen\translate\CP_translate.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal Z_7_IBUF_3 : STD_LOGIC; 
  signal Z_6_IBUF_4 : STD_LOGIC; 
  signal Z_5_IBUF_5 : STD_LOGIC; 
  signal Z_4_IBUF_6 : STD_LOGIC; 
  signal Z_3_IBUF_7 : STD_LOGIC; 
  signal Z_2_IBUF_8 : STD_LOGIC; 
  signal Z_1_IBUF_9 : STD_LOGIC; 
  signal Z_0_IBUF_10 : STD_LOGIC; 
  signal X_IBUF_11 : STD_LOGIC; 
  signal Y_IBUF_12 : STD_LOGIC; 
  signal reset_IBUF_13 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal out1_OBUF_15 : STD_LOGIC; 
  signal a : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal out18 : STD_LOGIC; 
  signal out181_44 : STD_LOGIC; 
  signal Mcount_aux_cy_1_rt_66 : STD_LOGIC; 
  signal Mcount_aux_cy_2_rt_67 : STD_LOGIC; 
  signal Mcount_aux_cy_3_rt_68 : STD_LOGIC; 
  signal Mcount_aux_cy_4_rt_69 : STD_LOGIC; 
  signal Mcount_aux_cy_5_rt_70 : STD_LOGIC; 
  signal Mcount_aux_cy_6_rt_71 : STD_LOGIC; 
  signal Mcount_aux_xor_7_rt_72 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal aux : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_aux_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_aux_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  XST_VCC : X_ONE
    port map (
      O => N0
    );
  XST_GND : X_ZERO
    port map (
      O => N1
    );
  aux_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => a,
      RST => reset_IBUF_13,
      I => Result(0),
      O => aux(0),
      SET => GND
    );
  aux_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => a,
      RST => reset_IBUF_13,
      I => Result(1),
      O => aux(1),
      SET => GND
    );
  aux_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => a,
      RST => reset_IBUF_13,
      I => Result(2),
      O => aux(2),
      SET => GND
    );
  aux_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => a,
      RST => reset_IBUF_13,
      I => Result(3),
      O => aux(3),
      SET => GND
    );
  aux_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => a,
      RST => reset_IBUF_13,
      I => Result(4),
      O => aux(4),
      SET => GND
    );
  aux_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => a,
      RST => reset_IBUF_13,
      I => Result(5),
      O => aux(5),
      SET => GND
    );
  aux_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => a,
      RST => reset_IBUF_13,
      I => Result(6),
      O => aux(6),
      SET => GND
    );
  aux_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => a,
      RST => reset_IBUF_13,
      I => Result(7),
      O => aux(7),
      SET => GND
    );
  Mcount_aux_cy_0_Q : X_MUX2
    port map (
      IB => N1,
      IA => N0,
      SEL => Mcount_aux_lut(0),
      O => Mcount_aux_cy(0)
    );
  Mcount_aux_xor_0_Q : X_XOR2
    port map (
      I0 => N1,
      I1 => Mcount_aux_lut(0),
      O => Result(0)
    );
  Mcount_aux_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_aux_cy(0),
      IA => N1,
      SEL => Mcount_aux_cy_1_rt_66,
      O => Mcount_aux_cy(1)
    );
  Mcount_aux_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_aux_cy(0),
      I1 => Mcount_aux_cy_1_rt_66,
      O => Result(1)
    );
  Mcount_aux_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_aux_cy(1),
      IA => N1,
      SEL => Mcount_aux_cy_2_rt_67,
      O => Mcount_aux_cy(2)
    );
  Mcount_aux_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_aux_cy(1),
      I1 => Mcount_aux_cy_2_rt_67,
      O => Result(2)
    );
  Mcount_aux_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_aux_cy(2),
      IA => N1,
      SEL => Mcount_aux_cy_3_rt_68,
      O => Mcount_aux_cy(3)
    );
  Mcount_aux_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_aux_cy(2),
      I1 => Mcount_aux_cy_3_rt_68,
      O => Result(3)
    );
  Mcount_aux_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_aux_cy(3),
      IA => N1,
      SEL => Mcount_aux_cy_4_rt_69,
      O => Mcount_aux_cy(4)
    );
  Mcount_aux_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_aux_cy(3),
      I1 => Mcount_aux_cy_4_rt_69,
      O => Result(4)
    );
  Mcount_aux_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_aux_cy(4),
      IA => N1,
      SEL => Mcount_aux_cy_5_rt_70,
      O => Mcount_aux_cy(5)
    );
  Mcount_aux_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_aux_cy(4),
      I1 => Mcount_aux_cy_5_rt_70,
      O => Result(5)
    );
  Mcount_aux_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_aux_cy(5),
      IA => N1,
      SEL => Mcount_aux_cy_6_rt_71,
      O => Mcount_aux_cy(6)
    );
  Mcount_aux_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_aux_cy(5),
      I1 => Mcount_aux_cy_6_rt_71,
      O => Result(6)
    );
  Mcount_aux_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_aux_cy(6),
      I1 => Mcount_aux_xor_7_rt_72,
      O => Result(7)
    );
  a1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => X_IBUF_11,
      ADR1 => Y_IBUF_12,
      O => a
    );
  out181 : X_LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      ADR0 => aux(1),
      ADR1 => Z_1_IBUF_9,
      ADR2 => aux(6),
      ADR3 => Z_6_IBUF_4,
      ADR4 => aux(5),
      ADR5 => Z_5_IBUF_5,
      O => out18
    );
  out182 : X_LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      ADR0 => aux(4),
      ADR1 => Z_4_IBUF_6,
      ADR2 => aux(3),
      ADR3 => Z_3_IBUF_7,
      ADR4 => aux(2),
      ADR5 => Z_2_IBUF_8,
      O => out181_44
    );
  out183 : X_LUT6
    generic map(
      INIT => X"8200008200000000"
    )
    port map (
      ADR0 => out18,
      ADR1 => aux(7),
      ADR2 => Z_7_IBUF_3,
      ADR3 => aux(0),
      ADR4 => Z_0_IBUF_10,
      ADR5 => out181_44,
      O => out1_OBUF_15
    );
  Z_7_IBUF : X_BUF
    port map (
      I => Z(7),
      O => Z_7_IBUF_3
    );
  Z_6_IBUF : X_BUF
    port map (
      I => Z(6),
      O => Z_6_IBUF_4
    );
  Z_5_IBUF : X_BUF
    port map (
      I => Z(5),
      O => Z_5_IBUF_5
    );
  Z_4_IBUF : X_BUF
    port map (
      I => Z(4),
      O => Z_4_IBUF_6
    );
  Z_3_IBUF : X_BUF
    port map (
      I => Z(3),
      O => Z_3_IBUF_7
    );
  Z_2_IBUF : X_BUF
    port map (
      I => Z(2),
      O => Z_2_IBUF_8
    );
  Z_1_IBUF : X_BUF
    port map (
      I => Z(1),
      O => Z_1_IBUF_9
    );
  Z_0_IBUF : X_BUF
    port map (
      I => Z(0),
      O => Z_0_IBUF_10
    );
  X_IBUF : X_BUF
    port map (
      I => X,
      O => X_IBUF_11
    );
  Y_IBUF : X_BUF
    port map (
      I => Y,
      O => Y_IBUF_12
    );
  reset_IBUF : X_BUF
    port map (
      I => reset,
      O => reset_IBUF_13
    );
  Mcount_aux_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => aux(1),
      O => Mcount_aux_cy_1_rt_66,
      ADR1 => GND
    );
  Mcount_aux_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => aux(2),
      O => Mcount_aux_cy_2_rt_67,
      ADR1 => GND
    );
  Mcount_aux_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => aux(3),
      O => Mcount_aux_cy_3_rt_68,
      ADR1 => GND
    );
  Mcount_aux_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => aux(4),
      O => Mcount_aux_cy_4_rt_69,
      ADR1 => GND
    );
  Mcount_aux_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => aux(5),
      O => Mcount_aux_cy_5_rt_70,
      ADR1 => GND
    );
  Mcount_aux_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => aux(6),
      O => Mcount_aux_cy_6_rt_71,
      ADR1 => GND
    );
  Mcount_aux_xor_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => aux(7),
      O => Mcount_aux_xor_7_rt_72,
      ADR1 => GND
    );
  Mcount_aux_lut_0_INV_0 : X_INV
    port map (
      I => aux(0),
      O => Mcount_aux_lut(0)
    );
  CLK_BUFGP_BUFG : X_CKBUF
    port map (
      I => CLK_BUFGP_IBUFG_2,
      O => CLK_BUFGP
    );
  CLK_BUFGP_IBUFG : X_CKBUF
    port map (
      I => CLK,
      O => CLK_BUFGP_IBUFG_2
    );
  cuenta_7_OBUF : X_OBUF
    port map (
      I => aux(7),
      O => cuenta(7)
    );
  cuenta_6_OBUF : X_OBUF
    port map (
      I => aux(6),
      O => cuenta(6)
    );
  cuenta_5_OBUF : X_OBUF
    port map (
      I => aux(5),
      O => cuenta(5)
    );
  cuenta_4_OBUF : X_OBUF
    port map (
      I => aux(4),
      O => cuenta(4)
    );
  cuenta_3_OBUF : X_OBUF
    port map (
      I => aux(3),
      O => cuenta(3)
    );
  cuenta_2_OBUF : X_OBUF
    port map (
      I => aux(2),
      O => cuenta(2)
    );
  cuenta_1_OBUF : X_OBUF
    port map (
      I => aux(1),
      O => cuenta(1)
    );
  cuenta_0_OBUF : X_OBUF
    port map (
      I => aux(0),
      O => cuenta(0)
    );
  out1_OBUF : X_OBUF
    port map (
      I => out1_OBUF_15,
      O => out1
    );
  NlwBlock_CP_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

