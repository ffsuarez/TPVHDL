--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ENCRIPTADOR_translate.vhd
-- /___/   /\     Timestamp: Wed Oct 18 15:07:25 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm ENCRIPTADOR -w -dir netgen/translate -ofmt vhdl -sim ENCRIPTADOR.ngd ENCRIPTADOR_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: ENCRIPTADOR.ngd
-- Output file	: D:\workdirectory\ENCRIPTADOR\netgen\translate\ENCRIPTADOR_translate.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal letra_codigo_11_IBUF_3 : STD_LOGIC; 
  signal letra_codigo_10_IBUF_4 : STD_LOGIC; 
  signal letra_codigo_9_IBUF_5 : STD_LOGIC; 
  signal letra_codigo_8_IBUF_6 : STD_LOGIC; 
  signal letra_codigo_7_IBUF_7 : STD_LOGIC; 
  signal letra_codigo_6_IBUF_8 : STD_LOGIC; 
  signal letra_codigo_5_IBUF_9 : STD_LOGIC; 
  signal letra_codigo_4_IBUF_10 : STD_LOGIC; 
  signal letra_codigo_3_IBUF_11 : STD_LOGIC; 
  signal letra_codigo_2_IBUF_12 : STD_LOGIC; 
  signal letra_codigo_1_IBUF_13 : STD_LOGIC; 
  signal letra_codigo_0_IBUF_14 : STD_LOGIC; 
  signal ent_datos_11_IBUF_15 : STD_LOGIC; 
  signal ent_datos_10_IBUF_16 : STD_LOGIC; 
  signal ent_datos_9_IBUF_17 : STD_LOGIC; 
  signal ent_datos_8_IBUF_18 : STD_LOGIC; 
  signal ent_datos_7_IBUF_19 : STD_LOGIC; 
  signal ent_datos_6_IBUF_20 : STD_LOGIC; 
  signal ent_datos_5_IBUF_21 : STD_LOGIC; 
  signal ent_datos_4_IBUF_22 : STD_LOGIC; 
  signal ent_datos_3_IBUF_23 : STD_LOGIC; 
  signal ent_datos_2_IBUF_24 : STD_LOGIC; 
  signal ent_datos_1_IBUF_25 : STD_LOGIC; 
  signal ent_datos_0_IBUF_26 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal ultimo_dato_IBUF_28 : STD_LOGIC; 
  signal reset2_IBUF_29 : STD_LOGIC; 
  signal fin_OBUF_30 : STD_LOGIC; 
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
  signal salida_datos_10_43 : STD_LOGIC; 
  signal salida_datos_9_44 : STD_LOGIC; 
  signal salida_datos_8_45 : STD_LOGIC; 
  signal salida_datos_7_46 : STD_LOGIC; 
  signal salida_datos_6_47 : STD_LOGIC; 
  signal salida_datos_5_48 : STD_LOGIC; 
  signal salida_datos_4_49 : STD_LOGIC; 
  signal salida_datos_3_50 : STD_LOGIC; 
  signal salida_datos_2_51 : STD_LOGIC; 
  signal salida_datos_1_52 : STD_LOGIC; 
  signal salida_datos_0_53 : STD_LOGIC; 
  signal salida_datos_11_54 : STD_LOGIC; 
  signal counter_0_rstpot_97 : STD_LOGIC; 
  signal counter_1_rstpot_98 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal NlwInverterSignal_fin_G : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_10_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_9_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_8_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_7_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_6_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_5_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_4_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_3_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_2_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_1_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_0_G : STD_LOGIC; 
  signal NlwInverterSignal_salida_datos_11_G : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal counter : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  fin_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ultimo_dato_IBUF_28,
      CLK => NlwInverterSignal_fin_G,
      GE => counter(1),
      O => fin_OBUF_30,
      SET => GND,
      RST => GND
    );
  salida_datos_10 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_10_Q,
      CLK => NlwInverterSignal_salida_datos_10_G,
      GE => counter(1),
      O => salida_datos_10_43,
      SET => GND,
      RST => GND
    );
  salida_datos_9 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_9_Q,
      CLK => NlwInverterSignal_salida_datos_9_G,
      GE => counter(1),
      O => salida_datos_9_44,
      SET => GND,
      RST => GND
    );
  salida_datos_8 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_8_Q,
      CLK => NlwInverterSignal_salida_datos_8_G,
      GE => counter(1),
      O => salida_datos_8_45,
      SET => GND,
      RST => GND
    );
  salida_datos_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_7_Q,
      CLK => NlwInverterSignal_salida_datos_7_G,
      GE => counter(1),
      O => salida_datos_7_46,
      SET => GND,
      RST => GND
    );
  salida_datos_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_6_Q,
      CLK => NlwInverterSignal_salida_datos_6_G,
      GE => counter(1),
      O => salida_datos_6_47,
      SET => GND,
      RST => GND
    );
  salida_datos_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_5_Q,
      CLK => NlwInverterSignal_salida_datos_5_G,
      GE => counter(1),
      O => salida_datos_5_48,
      SET => GND,
      RST => GND
    );
  salida_datos_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_4_Q,
      CLK => NlwInverterSignal_salida_datos_4_G,
      GE => counter(1),
      O => salida_datos_4_49,
      SET => GND,
      RST => GND
    );
  salida_datos_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_3_Q,
      CLK => NlwInverterSignal_salida_datos_3_G,
      GE => counter(1),
      O => salida_datos_3_50,
      SET => GND,
      RST => GND
    );
  salida_datos_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_2_Q,
      CLK => NlwInverterSignal_salida_datos_2_G,
      GE => counter(1),
      O => salida_datos_2_51,
      SET => GND,
      RST => GND
    );
  salida_datos_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_1_Q,
      CLK => NlwInverterSignal_salida_datos_1_G,
      GE => counter(1),
      O => salida_datos_1_52,
      SET => GND,
      RST => GND
    );
  salida_datos_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_0_Q,
      CLK => NlwInverterSignal_salida_datos_0_G,
      GE => counter(1),
      O => salida_datos_0_53,
      SET => GND,
      RST => GND
    );
  salida_datos_11 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => ent_datos_11_letra_codigo_11_xor_1_OUT_11_Q,
      CLK => NlwInverterSignal_salida_datos_11_G,
      GE => counter(1),
      O => salida_datos_11_54,
      SET => GND,
      RST => GND
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_11_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_11_IBUF_15,
      ADR1 => letra_codigo_11_IBUF_3,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_11_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_10_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_10_IBUF_16,
      ADR1 => letra_codigo_10_IBUF_4,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_10_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_9_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_9_IBUF_17,
      ADR1 => letra_codigo_9_IBUF_5,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_9_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_8_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_8_IBUF_18,
      ADR1 => letra_codigo_8_IBUF_6,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_8_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_7_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_7_IBUF_19,
      ADR1 => letra_codigo_7_IBUF_7,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_7_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_6_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_6_IBUF_20,
      ADR1 => letra_codigo_6_IBUF_8,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_6_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_5_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_5_IBUF_21,
      ADR1 => letra_codigo_5_IBUF_9,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_5_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_4_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_4_IBUF_22,
      ADR1 => letra_codigo_4_IBUF_10,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_4_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_3_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_3_IBUF_23,
      ADR1 => letra_codigo_3_IBUF_11,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_3_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_2_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_2_IBUF_24,
      ADR1 => letra_codigo_2_IBUF_12,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_2_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_1_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_1_IBUF_25,
      ADR1 => letra_codigo_1_IBUF_13,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_1_Q
    );
  Mxor_ent_datos_11_letra_codigo_11_xor_1_OUT_0_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ent_datos_0_IBUF_26,
      ADR1 => letra_codigo_0_IBUF_14,
      O => ent_datos_11_letra_codigo_11_xor_1_OUT_0_Q
    );
  letra_codigo_11_IBUF : X_BUF
    port map (
      I => letra_codigo(11),
      O => letra_codigo_11_IBUF_3
    );
  letra_codigo_10_IBUF : X_BUF
    port map (
      I => letra_codigo(10),
      O => letra_codigo_10_IBUF_4
    );
  letra_codigo_9_IBUF : X_BUF
    port map (
      I => letra_codigo(9),
      O => letra_codigo_9_IBUF_5
    );
  letra_codigo_8_IBUF : X_BUF
    port map (
      I => letra_codigo(8),
      O => letra_codigo_8_IBUF_6
    );
  letra_codigo_7_IBUF : X_BUF
    port map (
      I => letra_codigo(7),
      O => letra_codigo_7_IBUF_7
    );
  letra_codigo_6_IBUF : X_BUF
    port map (
      I => letra_codigo(6),
      O => letra_codigo_6_IBUF_8
    );
  letra_codigo_5_IBUF : X_BUF
    port map (
      I => letra_codigo(5),
      O => letra_codigo_5_IBUF_9
    );
  letra_codigo_4_IBUF : X_BUF
    port map (
      I => letra_codigo(4),
      O => letra_codigo_4_IBUF_10
    );
  letra_codigo_3_IBUF : X_BUF
    port map (
      I => letra_codigo(3),
      O => letra_codigo_3_IBUF_11
    );
  letra_codigo_2_IBUF : X_BUF
    port map (
      I => letra_codigo(2),
      O => letra_codigo_2_IBUF_12
    );
  letra_codigo_1_IBUF : X_BUF
    port map (
      I => letra_codigo(1),
      O => letra_codigo_1_IBUF_13
    );
  letra_codigo_0_IBUF : X_BUF
    port map (
      I => letra_codigo(0),
      O => letra_codigo_0_IBUF_14
    );
  ent_datos_11_IBUF : X_BUF
    port map (
      I => ent_datos(11),
      O => ent_datos_11_IBUF_15
    );
  ent_datos_10_IBUF : X_BUF
    port map (
      I => ent_datos(10),
      O => ent_datos_10_IBUF_16
    );
  ent_datos_9_IBUF : X_BUF
    port map (
      I => ent_datos(9),
      O => ent_datos_9_IBUF_17
    );
  ent_datos_8_IBUF : X_BUF
    port map (
      I => ent_datos(8),
      O => ent_datos_8_IBUF_18
    );
  ent_datos_7_IBUF : X_BUF
    port map (
      I => ent_datos(7),
      O => ent_datos_7_IBUF_19
    );
  ent_datos_6_IBUF : X_BUF
    port map (
      I => ent_datos(6),
      O => ent_datos_6_IBUF_20
    );
  ent_datos_5_IBUF : X_BUF
    port map (
      I => ent_datos(5),
      O => ent_datos_5_IBUF_21
    );
  ent_datos_4_IBUF : X_BUF
    port map (
      I => ent_datos(4),
      O => ent_datos_4_IBUF_22
    );
  ent_datos_3_IBUF : X_BUF
    port map (
      I => ent_datos(3),
      O => ent_datos_3_IBUF_23
    );
  ent_datos_2_IBUF : X_BUF
    port map (
      I => ent_datos(2),
      O => ent_datos_2_IBUF_24
    );
  ent_datos_1_IBUF : X_BUF
    port map (
      I => ent_datos(1),
      O => ent_datos_1_IBUF_25
    );
  ent_datos_0_IBUF : X_BUF
    port map (
      I => ent_datos(0),
      O => ent_datos_0_IBUF_26
    );
  ultimo_dato_IBUF : X_BUF
    port map (
      I => ultimo_dato,
      O => ultimo_dato_IBUF_28
    );
  reset2_IBUF : X_BUF
    port map (
      I => reset2,
      O => reset2_IBUF_29
    );
  counter_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => counter_0_rstpot_97,
      O => counter(0),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  counter_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => counter_1_rstpot_98,
      O => counter(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  counter_1_rstpot : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => reset2_IBUF_29,
      ADR1 => counter(0),
      ADR2 => counter(1),
      O => counter_1_rstpot_98
    );
  counter_0_rstpot : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => reset2_IBUF_29,
      ADR1 => counter(0),
      ADR2 => counter(1),
      O => counter_0_rstpot_97
    );
  clk_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG_2,
      O => clk_BUFGP
    );
  clk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_2
    );
  salida_datos_11_OBUF : X_OBUF
    port map (
      I => salida_datos_11_54,
      O => salida_datos(11)
    );
  salida_datos_10_OBUF : X_OBUF
    port map (
      I => salida_datos_10_43,
      O => salida_datos(10)
    );
  salida_datos_9_OBUF : X_OBUF
    port map (
      I => salida_datos_9_44,
      O => salida_datos(9)
    );
  salida_datos_8_OBUF : X_OBUF
    port map (
      I => salida_datos_8_45,
      O => salida_datos(8)
    );
  salida_datos_7_OBUF : X_OBUF
    port map (
      I => salida_datos_7_46,
      O => salida_datos(7)
    );
  salida_datos_6_OBUF : X_OBUF
    port map (
      I => salida_datos_6_47,
      O => salida_datos(6)
    );
  salida_datos_5_OBUF : X_OBUF
    port map (
      I => salida_datos_5_48,
      O => salida_datos(5)
    );
  salida_datos_4_OBUF : X_OBUF
    port map (
      I => salida_datos_4_49,
      O => salida_datos(4)
    );
  salida_datos_3_OBUF : X_OBUF
    port map (
      I => salida_datos_3_50,
      O => salida_datos(3)
    );
  salida_datos_2_OBUF : X_OBUF
    port map (
      I => salida_datos_2_51,
      O => salida_datos(2)
    );
  salida_datos_1_OBUF : X_OBUF
    port map (
      I => salida_datos_1_52,
      O => salida_datos(1)
    );
  salida_datos_0_OBUF : X_OBUF
    port map (
      I => salida_datos_0_53,
      O => salida_datos(0)
    );
  fin_OBUF : X_OBUF
    port map (
      I => fin_OBUF_30,
      O => fin
    );
  NlwInverterBlock_fin_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_fin_G
    );
  NlwBlock_ENCRIPTADOR_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_salida_datos_10_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_10_G
    );
  NlwInverterBlock_salida_datos_9_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_9_G
    );
  NlwInverterBlock_salida_datos_8_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_8_G
    );
  NlwInverterBlock_salida_datos_7_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_7_G
    );
  NlwInverterBlock_salida_datos_6_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_6_G
    );
  NlwInverterBlock_salida_datos_5_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_5_G
    );
  NlwInverterBlock_salida_datos_4_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_4_G
    );
  NlwInverterBlock_salida_datos_3_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_3_G
    );
  NlwInverterBlock_salida_datos_2_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_2_G
    );
  NlwInverterBlock_salida_datos_1_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_1_G
    );
  NlwInverterBlock_salida_datos_0_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_0_G
    );
  NlwInverterBlock_salida_datos_11_G : X_INV
    port map (
      I => counter(0),
      O => NlwInverterSignal_salida_datos_11_G
    );
  NlwBlock_ENCRIPTADOR_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

