--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ENCRIPTADOR_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 18 15:24:26 2017
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
    letra_codigo : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    ent_datos : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    salida_datos : out STD_LOGIC_VECTOR ( 10 downto 0 ) 
  );
end ENCRIPTADOR;

architecture Structure of ENCRIPTADOR is
  signal letra_codigo_10_IBUF_0 : STD_LOGIC; 
  signal letra_codigo_9_IBUF_1 : STD_LOGIC; 
  signal letra_codigo_8_IBUF_2 : STD_LOGIC; 
  signal letra_codigo_7_IBUF_3 : STD_LOGIC; 
  signal letra_codigo_6_IBUF_4 : STD_LOGIC; 
  signal letra_codigo_5_IBUF_5 : STD_LOGIC; 
  signal letra_codigo_4_IBUF_6 : STD_LOGIC; 
  signal letra_codigo_3_IBUF_7 : STD_LOGIC; 
  signal letra_codigo_2_IBUF_8 : STD_LOGIC; 
  signal letra_codigo_1_IBUF_9 : STD_LOGIC; 
  signal letra_codigo_0_IBUF_10 : STD_LOGIC; 
  signal ent_datos_10_IBUF_11 : STD_LOGIC; 
  signal ent_datos_9_IBUF_12 : STD_LOGIC; 
  signal ent_datos_8_IBUF_13 : STD_LOGIC; 
  signal ent_datos_7_IBUF_14 : STD_LOGIC; 
  signal ent_datos_6_IBUF_15 : STD_LOGIC; 
  signal ent_datos_5_IBUF_16 : STD_LOGIC; 
  signal ent_datos_4_IBUF_17 : STD_LOGIC; 
  signal ent_datos_3_IBUF_18 : STD_LOGIC; 
  signal ent_datos_2_IBUF_19 : STD_LOGIC; 
  signal ent_datos_1_IBUF_20 : STD_LOGIC; 
  signal ent_datos_0_IBUF_21 : STD_LOGIC; 
  signal clk_BUFGP_22 : STD_LOGIC; 
  signal ultimo_dato_IBUF_23 : STD_LOGIC; 
  signal reset2_IBUF_24 : STD_LOGIC; 
  signal fin_OBUF_25 : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_9_Q : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_8_Q : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_7_Q : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_6_Q : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_5_Q : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_4_Q : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_3_Q : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_2_Q : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_1_Q : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_0_Q : STD_LOGIC; 
  signal ent_datos_10_letra_codigo_10_xor_1_OUT_10_Q : STD_LOGIC; 
  signal salida_datos_9_37 : STD_LOGIC; 
  signal salida_datos_8_38 : STD_LOGIC; 
  signal salida_datos_7_39 : STD_LOGIC; 
  signal salida_datos_6_40 : STD_LOGIC; 
  signal salida_datos_5_41 : STD_LOGIC; 
  signal salida_datos_4_42 : STD_LOGIC; 
  signal salida_datos_3_43 : STD_LOGIC; 
  signal salida_datos_2_44 : STD_LOGIC; 
  signal salida_datos_1_45 : STD_LOGIC; 
  signal salida_datos_0_46 : STD_LOGIC; 
  signal salida_datos_10_47 : STD_LOGIC; 
  signal counter_0_rstpot_87 : STD_LOGIC; 
  signal counter_1_rstpot_88 : STD_LOGIC; 
  signal counter : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  fin_1 : LDE_1
    port map (
      D => ultimo_dato_IBUF_23,
      G => counter(0),
      GE => counter(1),
      Q => fin_OBUF_25
    );
  salida_datos_9 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_9_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_9_37
    );
  salida_datos_8 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_8_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_8_38
    );
  salida_datos_5 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_5_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_5_41
    );
  salida_datos_7 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_7_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_7_39
    );
  salida_datos_6 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_6_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_6_40
    );
  salida_datos_4 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_4_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_4_42
    );
  salida_datos_3 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_3_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_3_43
    );
  salida_datos_2 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_2_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_2_44
    );
  salida_datos_1 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_1_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_1_45
    );
  salida_datos_0 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_0_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_0_46
    );
  salida_datos_10 : LDE_1
    port map (
      D => ent_datos_10_letra_codigo_10_xor_1_OUT_10_Q,
      G => counter(0),
      GE => counter(1),
      Q => salida_datos_10_47
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_10_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_10_IBUF_11,
      I1 => letra_codigo_10_IBUF_0,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_10_Q
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_9_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_9_IBUF_12,
      I1 => letra_codigo_9_IBUF_1,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_9_Q
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_8_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_8_IBUF_13,
      I1 => letra_codigo_8_IBUF_2,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_8_Q
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_7_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_7_IBUF_14,
      I1 => letra_codigo_7_IBUF_3,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_7_Q
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_6_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_6_IBUF_15,
      I1 => letra_codigo_6_IBUF_4,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_6_Q
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_5_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_5_IBUF_16,
      I1 => letra_codigo_5_IBUF_5,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_5_Q
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_4_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_4_IBUF_17,
      I1 => letra_codigo_4_IBUF_6,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_4_Q
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_3_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_3_IBUF_18,
      I1 => letra_codigo_3_IBUF_7,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_3_Q
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_2_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_2_IBUF_19,
      I1 => letra_codigo_2_IBUF_8,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_2_Q
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_1_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_1_IBUF_20,
      I1 => letra_codigo_1_IBUF_9,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_1_Q
    );
  Mxor_ent_datos_10_letra_codigo_10_xor_1_OUT_0_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ent_datos_0_IBUF_21,
      I1 => letra_codigo_0_IBUF_10,
      O => ent_datos_10_letra_codigo_10_xor_1_OUT_0_Q
    );
  letra_codigo_10_IBUF : IBUF
    port map (
      I => letra_codigo(10),
      O => letra_codigo_10_IBUF_0
    );
  letra_codigo_9_IBUF : IBUF
    port map (
      I => letra_codigo(9),
      O => letra_codigo_9_IBUF_1
    );
  letra_codigo_8_IBUF : IBUF
    port map (
      I => letra_codigo(8),
      O => letra_codigo_8_IBUF_2
    );
  letra_codigo_7_IBUF : IBUF
    port map (
      I => letra_codigo(7),
      O => letra_codigo_7_IBUF_3
    );
  letra_codigo_6_IBUF : IBUF
    port map (
      I => letra_codigo(6),
      O => letra_codigo_6_IBUF_4
    );
  letra_codigo_5_IBUF : IBUF
    port map (
      I => letra_codigo(5),
      O => letra_codigo_5_IBUF_5
    );
  letra_codigo_4_IBUF : IBUF
    port map (
      I => letra_codigo(4),
      O => letra_codigo_4_IBUF_6
    );
  letra_codigo_3_IBUF : IBUF
    port map (
      I => letra_codigo(3),
      O => letra_codigo_3_IBUF_7
    );
  letra_codigo_2_IBUF : IBUF
    port map (
      I => letra_codigo(2),
      O => letra_codigo_2_IBUF_8
    );
  letra_codigo_1_IBUF : IBUF
    port map (
      I => letra_codigo(1),
      O => letra_codigo_1_IBUF_9
    );
  letra_codigo_0_IBUF : IBUF
    port map (
      I => letra_codigo(0),
      O => letra_codigo_0_IBUF_10
    );
  ent_datos_10_IBUF : IBUF
    port map (
      I => ent_datos(10),
      O => ent_datos_10_IBUF_11
    );
  ent_datos_9_IBUF : IBUF
    port map (
      I => ent_datos(9),
      O => ent_datos_9_IBUF_12
    );
  ent_datos_8_IBUF : IBUF
    port map (
      I => ent_datos(8),
      O => ent_datos_8_IBUF_13
    );
  ent_datos_7_IBUF : IBUF
    port map (
      I => ent_datos(7),
      O => ent_datos_7_IBUF_14
    );
  ent_datos_6_IBUF : IBUF
    port map (
      I => ent_datos(6),
      O => ent_datos_6_IBUF_15
    );
  ent_datos_5_IBUF : IBUF
    port map (
      I => ent_datos(5),
      O => ent_datos_5_IBUF_16
    );
  ent_datos_4_IBUF : IBUF
    port map (
      I => ent_datos(4),
      O => ent_datos_4_IBUF_17
    );
  ent_datos_3_IBUF : IBUF
    port map (
      I => ent_datos(3),
      O => ent_datos_3_IBUF_18
    );
  ent_datos_2_IBUF : IBUF
    port map (
      I => ent_datos(2),
      O => ent_datos_2_IBUF_19
    );
  ent_datos_1_IBUF : IBUF
    port map (
      I => ent_datos(1),
      O => ent_datos_1_IBUF_20
    );
  ent_datos_0_IBUF : IBUF
    port map (
      I => ent_datos(0),
      O => ent_datos_0_IBUF_21
    );
  ultimo_dato_IBUF : IBUF
    port map (
      I => ultimo_dato,
      O => ultimo_dato_IBUF_23
    );
  reset2_IBUF : IBUF
    port map (
      I => reset2,
      O => reset2_IBUF_24
    );
  salida_datos_10_OBUF : OBUF
    port map (
      I => salida_datos_10_47,
      O => salida_datos(10)
    );
  salida_datos_9_OBUF : OBUF
    port map (
      I => salida_datos_9_37,
      O => salida_datos(9)
    );
  salida_datos_8_OBUF : OBUF
    port map (
      I => salida_datos_8_38,
      O => salida_datos(8)
    );
  salida_datos_7_OBUF : OBUF
    port map (
      I => salida_datos_7_39,
      O => salida_datos(7)
    );
  salida_datos_6_OBUF : OBUF
    port map (
      I => salida_datos_6_40,
      O => salida_datos(6)
    );
  salida_datos_5_OBUF : OBUF
    port map (
      I => salida_datos_5_41,
      O => salida_datos(5)
    );
  salida_datos_4_OBUF : OBUF
    port map (
      I => salida_datos_4_42,
      O => salida_datos(4)
    );
  salida_datos_3_OBUF : OBUF
    port map (
      I => salida_datos_3_43,
      O => salida_datos(3)
    );
  salida_datos_2_OBUF : OBUF
    port map (
      I => salida_datos_2_44,
      O => salida_datos(2)
    );
  salida_datos_1_OBUF : OBUF
    port map (
      I => salida_datos_1_45,
      O => salida_datos(1)
    );
  salida_datos_0_OBUF : OBUF
    port map (
      I => salida_datos_0_46,
      O => salida_datos(0)
    );
  fin_OBUF : OBUF
    port map (
      I => fin_OBUF_25,
      O => fin
    );
  counter_0 : FD
    port map (
      C => clk_BUFGP_22,
      D => counter_0_rstpot_87,
      Q => counter(0)
    );
  counter_1 : FD
    port map (
      C => clk_BUFGP_22,
      D => counter_1_rstpot_88,
      Q => counter(1)
    );
  counter_1_rstpot : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => reset2_IBUF_24,
      I1 => counter(0),
      I2 => counter(1),
      O => counter_1_rstpot_88
    );
  counter_0_rstpot : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => reset2_IBUF_24,
      I1 => counter(0),
      I2 => counter(1),
      O => counter_0_rstpot_87
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_22
    );

end Structure;

