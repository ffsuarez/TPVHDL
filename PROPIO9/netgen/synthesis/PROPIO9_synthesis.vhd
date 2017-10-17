--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PROPIO9_synthesis.vhd
-- /___/   /\     Timestamp: Sat Oct 07 20:02:20 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm PROPIO9 -w -dir netgen/synthesis -ofmt vhdl -sim PROPIO9.ngc PROPIO9_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: PROPIO9.ngc
-- Output file	: D:\workdirectory\PROPIO9\netgen\synthesis\PROPIO9_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: PROPIO9
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

entity PROPIO9 is
  port (
    D : in STD_LOGIC := 'X'; 
    EN0 : in STD_LOGIC := 'X'; 
    EN1 : in STD_LOGIC := 'X'; 
    Q : out STD_LOGIC 
  );
end PROPIO9;

architecture Structure of PROPIO9 is
  signal D_IBUF_0 : STD_LOGIC; 
  signal EN0_IBUF_1 : STD_LOGIC; 
  signal EN1_IBUF_2 : STD_LOGIC; 
  signal Q_OBUF_3 : STD_LOGIC; 
begin
  Mmux_Q11 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => D_IBUF_0,
      I1 => EN0_IBUF_1,
      I2 => EN1_IBUF_2,
      O => Q_OBUF_3
    );
  D_IBUF : IBUF
    port map (
      I => D,
      O => D_IBUF_0
    );
  EN0_IBUF : IBUF
    port map (
      I => EN0,
      O => EN0_IBUF_1
    );
  EN1_IBUF : IBUF
    port map (
      I => EN1,
      O => EN1_IBUF_2
    );
  Q_OBUF : OBUF
    port map (
      I => Q_OBUF_3,
      O => Q
    );

end Structure;

