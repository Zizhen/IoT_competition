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
--  Name:  pullup.vhd  
-- 
--  Description:  Emulate Pullup on the IO
-- 
--  Code Revision History :
---------------------------------------------------------------------------
-- Ver: | Author			|Mod. Date	    |Changes Made:
-- V1.0 | 				    |2004           |Initial ver
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pullup is
        port (Enb : in std_logic;
              O : out std_logic);
end;

architecture beh of pullup is
begin
  O <= 'H' when (Enb= 'Z' or Enb = 'H') else 'Z' after 2 ns;

end;

--------------------------------- E O F --------------------------------------
