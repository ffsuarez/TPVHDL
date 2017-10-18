--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ENCRIPTADOR_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 18 15:05:22 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ENCRIPTADOR -w -dir netgen/synthesis -ofmt vhdl -sim ENCRIPTADOR.ngc ENCRIPTADOR_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: ENCRIPTADOR.ngc
-- Output file	: D:\workdirectory\ENCRIPTADOR\netgen\synthesis\ENCRIPTADOR_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ENCRIPTADOR
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

entity ENCRIPTADOR is
  port (
    clk : in STD_LOGIC := 'X'; 
    ultimo_dato : in STD_LOGIC := 'X'; 
    reset2 : in STD_LOGIC := 'X'; 
    fin : out STD_LOGIC; 
    letra_codigo : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
    ent_datos : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
    salida_datos : out STD_LOGIC_VECTOR ( 11 downto 0 ) 
  );
end ENCRIPTADOR;

architecture Structure of ENCRIPTADOR is
  signal letra_codigo_11_IBUF_0 : STD_LOGIC; 
  signal letra_codigo_10_IBUF_1 : STD_LOGIC; 
  signal letra_codigo_9_IBUF_2 : STD_LOGIC; 
  signal letra_codigo_8_IBUF_3 : STD_LOGIC; 
  signal letra_codigo_7_IBUF_4 : STD_LOGIC; 
  signal letra_codigo_6_IBUF_5 : STD_LOGIC; 
  signal letra_codigo_5_IBUF_6 : STD_LOGIC; 
  signal letra_codigo_4_IBUF_7 : STD_LOGIC; 
  signal letra_codigo_3_IBUF_8 : STD_LOGIC; 
  signal letra_codigo_2_IBUF_9 : STD_LOGIC; 
  signal letra_codigo_1_IBUF_10 : STD_LOGIC; 
  signal letra_codigo_0_IBUF_11 : STD_LOGIC; 
  signal ent_datos_11_IBUF_12 : STD_LOGIC; 
  signal ent_datos_10_IBUF_13 : STD_LOGIC; 
  signal ent_datos_9_IBUF_14 : STD_LOGIC; 
  signal ent_datos_8_IBUF_15 : STD_LOGIC; 
  signal ent_datos_7_IBUF_16 : STD_LOGIC; 
  signal ent_datos_6_IBUF_17 : STD_LOGIC; 
  signal ent_datos_5_IBUF_18 : STD_LOGIC; 
  signal ent_datos_4_IBUF_19 : STD_LOGIC; 
  signal ent_datos_3_IBUF_20 : STD_LOGIC; 
  signal ent_datos_2_IBUF_21 : STD_LOGIC; 
  signal ent_datos_1_IBUF_22 : STD_LOGIC; 
  signal ent_datos_0_IBUF_23 : STD_LOGIC; 
  signal clk_BUFGP_24 : STD_LOGIC; 
  signal ultimo_dato_IBUF_25 : STD_LOGIC; 
  signal reset2_IBUF_26 : STD_LOGIC; 
  signal fin_OBUF_27 : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_10_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_9_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_8_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_7_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_6_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_5_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_4_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_3_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_2_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_1_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_0_Q : STD_LOGIC; 
  signal ent_datos_11_letra_codigo_11_xor_1_OUT_11_Q : STD_LOGIC; 
  signal salida_datos_10_40 : STD_LOGIC; 
  signal salida_datos_9_41 : STD_LOGIC; 
  signal salida_datos_8_42 : STD_LOGIC; 
  signal salida_datos_7_43 : STD_LOGIC; 
  signal salida_datos_6_44 : STD_LOGIC; 
  signal salida_datos_5_45 : STD_LOGIC; 
  signal salida_datos_4_46 : STD_LOGIC; 
  signal salida_datos_3_47 : STD_LOGIC; 
  signal salida_datos_2_48 : STD_LOGIC; 
  signal salida_datos_1_49 : STD_LOGIC; 
  signal salida_datos_0_50 : STD_LOGIC; 
  signal salida_datos_11_51 : STD_LOGIC; 
  signal counter_0_rstpot_94 : STD_LOGIC; 
  signal counter_1_rstpot_95 : STD_LOGIC; 
  signal counter : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  fin_1 : LDE_1
    port map (
      D => ultimo_dato_IBUF_25,
      G => counter(0),
      GE => counter(1),
      Q => fin_OBUF_27
    );
  salida_datos_10 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_10_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_10_40
    );
  salida_datos_9 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_9_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_9_41
    );
  salida_datos_8 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_8_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_8_42
    );
  salida_datos_7 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_7_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_7_43
    );
  salida_datos_6 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_6_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_6_44
    );
  salida_datos_5 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_5_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_5_45
    );
  salida_datos_4 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_4_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_4_46
    );
  salida_datos_3 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_3_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_3_47
    );
  salida_datos_2 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_2_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_2_48
    );
  salida_datos_1 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_1_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_1_49
    );
  salida_datos_0 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_0_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_0_50
    );
  salida_datos_11 : LDE_1
    port map (
      D => ent_datos_11_letra_codigo_11_xor_1_OUT_11_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_11_51
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_11_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_11_IBUF_12,
      I1 => letra_codigo_11_IBUF_0,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_11_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_10_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_10_IBUF_13,
      I1 => letra_codigo_10_IBUF_1,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_10_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_9_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_9_IBUF_14,
      I1 => letra_codigo_9_IBUF_2,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_9_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_8_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_8_IBUF_15,
      I1 => letra_codigo_8_IBUF_3,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_8_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_7_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_7_IBUF_16,
      I1 => letra_codigo_7_IBUF_4,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_7_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_6_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_6_IBUF_17,
      I1 => letra_codigo_6_IBUF_5,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_6_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_5_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_5_IBUF_18,
      I1 => letra_codigo_5_IBUF_6,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_5_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_4_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_4_IBUF_19,
      I1 => letra_codigo_4_IBUF_7,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_4_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_3_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_3_IBUF_20,
      I1 => letra_codigo_3_IBUF_8,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_3_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_2_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_2_IBUF_21,
      I1 => letra_codigo_2_IBUF_9,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_2_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_1_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_1_IBUF_22,
      I1 => letra_codigo_1_IBUF_10,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_1_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_0_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_0_IBUF_23,
      I1 => letra_codigo_0_IBUF_11,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_0_Q
    );
  letra_codigo_11_IBUF : IBUF
    port map (
      I => letra_codigo(11),
      O => letra_codigo_11_IBUF_0
    );
  letra_codigo_10_IBUF : IBUF
    port map (
      I => letra_codigo(10),
      O => letra_codigo_10_IBUF_1
    );
  letra_codigo_9_IBUF : IBUF
    port map (
      I => letra_codigo(9),
      O => letra_codigo_9_IBUF_2
    );
  letra_codigo_8_IBUF : IBUF
    port map (
      I => letra_codigo(8),
      O => letra_codigo_8_IBUF_3
    );
  letra_codigo_7_IBUF : IBUF
    port map (
      I => letra_codigo(7),
      O => letra_codigo_7_IBUF_4
    );
  letra_codigo_6_IBUF : IBUF
    port map (
      I => letra_codigo(6),
      O => letra_codigo_6_IBUF_5
    );
  letra_codigo_5_IBUF : IBUF
    port map (
      I => letra_codigo(5),
      O => letra_codigo_5_IBUF_6
    );
  letra_codigo_4_IBUF : IBUF
    port map (
      I => letra_codigo(4),
      O => letra_codigo_4_IBUF_7
    );
  letra_codigo_3_IBUF : IBUF
    port map (
      I => letra_codigo(3),
      O => letra_codigo_3_IBUF_8
    );
  letra_codigo_2_IBUF : IBUF
    port map (
      I => letra_codigo(2),
      O => letra_codigo_2_IBUF_9
    );
  letra_codigo_1_IBUF : IBUF
    port map (
      I => letra_codigo(1),
      O => letra_codigo_1_IBUF_10
    );
  letra_codigo_0_IBUF : IBUF
    port map (
      I => letra_codigo(0),
      O => letra_codigo_0_IBUF_11
    );
  ent_datos_11_IBUF : IBUF
    port map (
      I => ent_datos(11),
      O => ent_datos_11_IBUF_12
    );
  ent_datos_10_IBUF : IBUF
    port map (
      I => ent_datos(10),
      O => ent_datos_10_IBUF_13
    );
  ent_datos_9_IBUF : IBUF
    port map (
      I => ent_datos(9),
      O => ent_datos_9_IBUF_14
    );
  ent_datos_8_IBUF : IBUF
    port map (
      I => ent_datos(8),
      O => ent_datos_8_IBUF_15
    );
  ent_datos_7_IBUF : IBUF
    port map (
      I => ent_datos(7),
      O => ent_datos_7_IBUF_16
    );
  ent_datos_6_IBUF : IBUF
    port map (
      I => ent_datos(6),
      O => ent_datos_6_IBUF_17
    );
  ent_datos_5_IBUF : IBUF
    port map (
      I => ent_datos(5),
      O => ent_datos_5_IBUF_18
    );
  ent_datos_4_IBUF : IBUF
    port map (
      I => ent_datos(4),
      O => ent_datos_4_IBUF_19
    );
  ent_datos_3_IBUF : IBUF
    port map (
      I => ent_datos(3),
      O => ent_datos_3_IBUF_20
    );
  ent_datos_2_IBUF : IBUF
    port map (
      I => ent_datos(2),
      O => ent_datos_2_IBUF_21
    );
  ent_datos_1_IBUF : IBUF
    port map (
      I => ent_datos(1),
      O => ent_datos_1_IBUF_22
    );
  ent_datos_0_IBUF : IBUF
    port map (
      I => ent_datos(0),
      O => ent_datos_0_IBUF_23
    );
  ultimo_dato_IBUF : IBUF
    port map (
      I => ultimo_dato,
      O => ultimo_dato_IBUF_25
    );
  reset2_IBUF : IBUF
    port map (
      I => reset2,
      O => reset2_IBUF_26
    );
  salida_datos_11_OBUF : OBUF
    port map (
      I => salida_datos_11_51,
      O => salida_datos(11)
    );
  salida_datos_10_OBUF : OBUF
    port map (
      I => salida_datos_10_40,
      O => salida_datos(10)
    );
  salida_datos_9_OBUF : OBUF
    port map (
      I => salida_datos_9_41,
      O => salida_datos(9)
    );
  salida_datos_8_OBUF : OBUF
    port map (
      I => salida_datos_8_42,
      O => salida_datos(8)
    );
  salida_datos_7_OBUF : OBUF
    port map (
      I => salida_datos_7_43,
      O => salida_datos(7)
    );
  salida_datos_6_OBUF : OBUF
    port map (
      I => salida_datos_6_44,
      O => salida_datos(6)
    );
  salida_datos_5_OBUF : OBUF
    port map (
      I => salida_datos_5_45,
      O => salida_datos(5)
    );
  salida_datos_4_OBUF : OBUF
    port map (
      I => salida_datos_4_46,
      O => salida_datos(4)
    );
  salida_datos_3_OBUF : OBUF
    port map (
      I => salida_datos_3_47,
      O => salida_datos(3)
    );
  salida_datos_2_OBUF : OBUF
    port map (
      I => salida_datos_2_48,
      O => salida_datos(2)
    );
  salida_datos_1_OBUF : OBUF
    port map (
      I => salida_datos_1_49,
      O => salida_datos(1)
    );
  salida_datos_0_OBUF : OBUF
    port map (
      I => salida_datos_0_50,
      O => salida_datos(0)
    );
  fin_OBUF : OBUF
    port map (
      I => fin_OBUF_27,
      O => fin
    );
  counter_0 : FD
    port map (
      C => clk_BUFGP_24,
      D => counter_0_rstpot_94,
      Q => counter(0)
    );
  counter_1 : FD
    port map (
      C => clk_BUFGP_24,
      D => counter_1_rstpot_95,
      Q => counter(1)
    );
  counter_1_rstpot : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => reset2_IBUF_26,
      I1 => counter(0),
      I2 => counter(1),
      O => counter_1_rstpot_95
    );
  counter_0_rstpot : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => reset2_IBUF_26,
      I1 => counter(0),
      I2 => counter(1),
      O => counter_0_rstpot_94
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_24
    );

end Structure;

