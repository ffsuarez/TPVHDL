--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PROPIO17_translate.vhd
-- /___/   /\     Timestamp: Sun Oct 15 21:07:26 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm PROPIO17 -w -dir netgen/translate -ofmt vhdl -sim PROPIO17.ngd PROPIO17_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: PROPIO17.ngd
-- Output file	: D:\workdirectory\PROPIO17\netgen\translate\PROPIO17_translate.vhd
-- # of Entities	: 1
-- Design Name	: PROPIO17
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

entity PROPIO17 is
  port (
    step : out STD_LOGIC; 
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end PROPIO17;

architecture Structure of PROPIO17 is
  signal step_OBUF_0 : STD_LOGIC; 
begin
  XST_VCC : X_ONE
    port map (
      O => step_OBUF_0
    );
  step_OBUF : X_OBUF
    port map (
      I => step_OBUF_0,
      O => step
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

