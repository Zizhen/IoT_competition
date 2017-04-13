--   ==================================================================
--   >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
--   ------------------------------------------------------------------
--   Copyright (c) 2013 by Lattice Semiconductor Corporation
--   ALL RIGHTS RESERVED 
--   ------------------------------------------------------------------
--
--   Permission:
--
--      Lattice SG Pte. Ltd. grants permission to use this code
--      pursuant to the terms of the Lattice Reference Design License Agreement. 
--
--
--   Disclaimer:
--
--      This VHDL or Verilog source code is intended as a design reference
--      which illustrates how these types of functions can be implemented.
--      It is the user's responsibility to verify their design for
--      consistency and functionality through the use of formal
--      verification methods.  Lattice provides no warranty
--      regarding the use or functionality of this code.
--
--   --------------------------------------------------------------------
--
--                  Lattice SG Pte. Ltd.
--                  101 Thomson Road, United Square #07-02 
--                  Singapore 307591
--
--
--                  TEL: 1-800-Lattice (USA and Canada)
--                       +65-6631-2000 (Singapore)
--                       +1-503-268-8001 (other locations)
--
--                  web: http:--www.latticesemi.com/
--                  email: techsupport@latticesemi.com
--
--   --------------------------------------------------------------------
-- 
--  Name:  clk_reset.vhd  
-- 
--  Description:  The generic clock module
-- 
--  Code Revision History :
---------------------------------------------------------------------------
-- Ver: | Author			|Mod. Date	    |Changes Made:
-- V1.0 | 				    |2004           |Initial ver
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;         
use std.textio.all;                    
use ieee.numeric_std.all;              


--This is a generic clock module.  It takes into account the reset 
--recovery time for Vantis Macrocell flip-flops.


entity clk_reset is port(clk   : out std_logic;
                         rst_l : out std_logic);

end clk_reset;

architecture behave of clk_reset is
-----------------------------------------------------------------------
-- registers

signal clk_en  : std_logic := '0';
signal int_clk : std_logic := '0';


-----------------------------------------------------------------------
-- clock parameter frequencies

constant  clk_33 : time := 30 ns;              --// 33   MHz
constant  clk_62 : time := 16 ns;              --// 62.5 MHz
constant  clk_71 : time := 14 ns;              --// 71.4 MHz
constant  clk_83 : time := 12 ns;              --// 83.3 MHz
constant  clk_10 : time := 10 ns;              --// 100  MHz
constant  clk_12 : time := 8 ns;               --// 125  MHz

constant period : time := clk_33;         -- // using 33 MHz
-----------------------------------------------------------------------
-- reset parameters

constant reset_recovery : time := 8 ns; --// 8 nsec between res and clk
constant reset_time : time := 500 ns;   --// make reset time whatever  

begin
-----------------------------------------------------------------------
-- clock generation

int_clk <= not int_clk after(period / 2);

clk <= int_clk and clk_en;

-----------------------------------------------------------------------


initda: process
variable L : line;
begin    
  clk_en   <= '0';               --// turn off clock to outside world
  rst_l    <= '0';               --// turn on reset signal
  wait for reset_time;                           
  wait until rising_edge(int_clk);
  rst_l    <= '1';
  wait for reset_recovery;
  wait until falling_edge(int_clk);
  clk_en   <= '1';    
    write(L,now, justified => right, field=>10,unit=>ns);
    writeline(output,L);   
    write(L,string'("Simulation Starting"));
    writeline(output,L);   
  wait;
end process;             
                
end behave;                                    
--------------------------------- E O F --------------------------------------
