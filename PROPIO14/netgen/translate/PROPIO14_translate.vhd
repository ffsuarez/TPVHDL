--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PROPIO14_translate.vhd
-- /___/   /\     Timestamp: Sun Oct 15 19:09:01 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm PROPIO14 -w -dir netgen/translate -ofmt vhdl -sim PROPIO14.ngd PROPIO14_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: PROPIO14.ngd
-- Output file	: D:\workdirectory\PROPIO14\netgen\translate\PROPIO14_translate.vhd
-- # of Entities	: 1
-- Design Name	: PROPIO14
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

entity PROPIO14 is
  port (
    x : in STD_LOGIC := 'X'; 
    y : in STD_LOGIC := 'X'; 
    s : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC 
  );
end PROPIO14;

architecture Structure of PROPIO14 is
  signal x_IBUF_0 : STD_LOGIC; 
  signal y_IBUF_1 : STD_LOGIC; 
  signal s_IBUF_2 : STD_LOGIC; 
  signal q_OBUF_3 : STD_LOGIC; 
begin
  q_MLTSRCEDGELogicTrst1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => s_IBUF_2,
      ADR1 => x_IBUF_0,
      ADR2 => y_IBUF_1,
      O => q_OBUF_3
    );
  x_IBUF : X_BUF
    port map (
      I => x,
      O => x_IBUF_0
    );
  y_IBUF : X_BUF
    port map (
      I => y,
      O => y_IBUF_1
    );
  s_IBUF : X_BUF
    port map (
      I => s,
      O => s_IBUF_2
    );
  q_OBUF : X_OBUF
    port map (
      I => q_OBUF_3,
      O => q
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

