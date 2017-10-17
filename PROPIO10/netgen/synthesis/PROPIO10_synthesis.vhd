--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PROPIO10_synthesis.vhd
-- /___/   /\     Timestamp: Sat Oct 07 20:57:09 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm PROPIO10 -w -dir netgen/synthesis -ofmt vhdl -sim PROPIO10.ngc PROPIO10_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: PROPIO10.ngc
-- Output file	: D:\workdirectory\PROPIO10\netgen\synthesis\PROPIO10_synthesis.vhd
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity PROPIO10 is
  port (
    Z : out STD_LOGIC; 
    A_BUS : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end PROPIO10;

architecture Structure of PROPIO10 is
  signal Z_OBUF_0 : STD_LOGIC; 
begin
  A_BUS_0_IBUF : IBUF
    port map (
      I => A_BUS(0),
      O => Z_OBUF_0
    );
  Z_OBUF : OBUF
    port map (
      I => Z_OBUF_0,
      O => Z
    );

end Structure;

