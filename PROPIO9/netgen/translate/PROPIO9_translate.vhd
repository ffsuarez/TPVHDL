--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PROPIO9_translate.vhd
-- /___/   /\     Timestamp: Sat Oct 07 20:04:33 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm PROPIO9 -w -dir netgen/translate -ofmt vhdl -sim PROPIO9.ngd PROPIO9_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: PROPIO9.ngd
-- Output file	: D:\workdirectory\PROPIO9\netgen\translate\PROPIO9_translate.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  Mmux_Q11 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => D_IBUF_0,
      ADR1 => EN0_IBUF_1,
      ADR2 => EN1_IBUF_2,
      O => Q_OBUF_3
    );
  D_IBUF : X_BUF
    port map (
      I => D,
      O => D_IBUF_0
    );
  EN0_IBUF : X_BUF
    port map (
      I => EN0,
      O => EN0_IBUF_1
    );
  EN1_IBUF : X_BUF
    port map (
      I => EN1,
      O => EN1_IBUF_2
    );
  Q_OBUF : X_OBUF
    port map (
      I => Q_OBUF_3,
      O => Q
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

