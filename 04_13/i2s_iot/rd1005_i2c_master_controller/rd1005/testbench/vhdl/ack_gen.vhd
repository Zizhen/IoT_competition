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
--  Name:  acl_gen.vhd  
-- 
--  Description:  This module generates ack signal upon detection of cs_l signal
-- 
--  Code Revision History :
---------------------------------------------------------------------------
-- Ver: | Author			|Mod. Date	|Changes Made:
-- V1.0 | 				|2004           |Initial ver
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned."-";
use ieee.std_logic_unsigned."+";


--Module  ack_gen
--This modules sole purpose is to respond to uP transactions 4 clock cycles
--  after cs_l is active by asserting ack_l



entity ack_gen is port(clk   : in std_logic;
                       rst_l : in std_logic;
                       cs_l  : in std_logic;
                       ack_l : out std_logic);
end ack_gen;            


architecture behave of ack_gen is
-----------------------------------------------------------------------
-- registers & wires

signal count: std_logic_vector(2 downto 0);

begin

--// ack_l starts off deasserted or high
--// then when the count(2) = '1' 
--// then ack_l = '0'


ack : process(clk,rst_l)
begin 
  if (rst_l = '0') then 
        ack_l <= '1';
  elsif(rising_edge(clk)) then
      if(count(2) = '1') then 
        ack_l <= '0';
      else  
        ack_l <= '1';
      end if;
  end if;
end process;

-- whiles cs_l = '0' the counter will count
-- up to "100" and hold until cs_l = '1' 
cnt : process(clk,rst_l)
begin 
  if (rst_l = '0') then 
        count <= "000";
  elsif(rising_edge(clk)) then
     if ((cs_l = '0') and (count <= "011")) then 
        count <= count + 1;
     elsif(cs_l = '1') then
        count <= "000";
     else
        count <= count;
     end if;
  end if;
end process;

end behave;

--------------------------------- E O F --------------------------------------
