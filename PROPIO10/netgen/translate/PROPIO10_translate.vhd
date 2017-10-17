--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PROPIO10_translate.vhd
-- /___/   /\     Timestamp: Sat Oct 07 21:02:53 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm PROPIO10 -w -dir netgen/translate -ofmt vhdl -sim PROPIO10.ngd PROPIO10_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: PROPIO10.ngd
-- Output file	: D:\workdirectory\PROPIO10\netgen\translate\PROPIO10_translate.vhd
-- # of Entities	: 1
-- Design Name	: PROPIO10
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

entity PROPIO10 is
  port (
    Z : out STD_LOGIC; 
    A_BUS : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end PROPIO10;

architecture Structure of PROPIO10 is
  signal Z_OBUF_0 : STD_LOGIC; 
begin
  XST_GND : X_ZERO
    port map (
      O => Z_OBUF_0
    );
  Z_OBUF : X_OBUF
    port map (
      I => Z_OBUF_0,
      O => Z
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

