----------------------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<<<
----------------------------------------------------------------------
----                                                              ----
---- WISHBONE SPDIF IP Core                                       ----
----                                                              ----
---- This file is part of the SPDIF project                       ----
---- http://www.opencores.org/cores/spdif_interface/              ----
----                                                              ----
---- Description                                                  ----
---- Generic control register.                                    ----
----                                                              ----
----                                                              ----
---- To Do:                                                       ----
---- -                                                            ----
----                                                              ----
---- Author(s):                                                   ----
---- - Geir Drange, gedra@opencores.org                           ----
----                                                              ----
----------------------------------------------------------------------
----                                                              ----
---- Copyright (C) 2004 Authors and OPENCORES.ORG                 ----
----                                                              ----
---- This source file may be used and distributed without         ----
---- restriction provided that this copyright statement is not    ----
---- removed from the file and that any derivative work contains  ----
---- the original copyright notice and the associated disclaimer. ----
----                                                              ----
---- This source file is free software; you can redistribute it   ----
---- and/or modify it under the terms of the GNU Lesser General   ----
---- Public License as published by the Free Software Foundation; ----
---- either version 2.1 of the License, or (at your option) any   ----
---- later version.                                               ----
----                                                              ----
---- This source is distributed in the hope that it will be       ----
---- useful, but WITHOUT ANY WARRANTY; without even the implied   ----
---- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ----
---- PURPOSE. See the GNU Lesser General Public License for more  ----
---- details.                                                     ----
----                                                              ----
---- You should have received a copy of the GNU Lesser General    ----
---- Public License along with this source; if not, download it   ----
---- from http://www.opencores.org/lgpl.shtml                     ----
----                                                              ----
----------------------------------------------------------------------
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
-- CVS Revision History
--
-- $Log: RD#RD1101#source#vhdl#gen_control_reg.vhd,v $
-- Revision 1.1  2013-07-04 19:38:12-07  lsccad
-- ...No comments entered during checkin...
--
-- Revision 1.5  2007/10/11 19:14:43  gedra
-- Code beautification
--
-- Revision 1.4  2004/06/26 14:14:47  gedra
-- Converted to numeric_std and fixed a few bugs.
--
-- Revision 1.3  2004/06/06 15:42:19  gedra
-- Cleaned up lint warnings.
--
-- Revision 1.2  2004/06/04 15:55:07  gedra
-- Cleaned up lint warnings.
--
-- Revision 1.1  2004/06/03 17:47:17  gedra
-- Generic control register. Used in both recevier and transmitter.
---------------------------------------------------------------------------
-- Code Revision History (LSC) :
---------------------------------------------------------------------------
-- Ver: | Author	|Mod. Date	|Changes Made:
-- V1.0 | JT		  |9/2010                         
---------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity gen_control_reg is
   generic (DATA_WIDTH : integer:=16); 
   port (
      clk       : in  std_logic;        -- clock  
      rst       : in  std_logic;        -- reset
      ctrl_wr   : in  std_logic;        -- control register write  
      ctrl_rd   : in  std_logic;        -- control register read
      ctrl_din  : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- write data
      ctrl_dout : out std_logic_vector(DATA_WIDTH - 1 downto 0);  -- read data
      ctrl_bits : out std_logic_vector(DATA_WIDTH - 1 downto 0));  -- control bits
end gen_control_reg;

architecture rtl of gen_control_reg is

   signal ctrl_internal : std_logic_vector(DATA_WIDTH - 1 downto 0);

begin

   ctrl_dout <= ctrl_internal when ctrl_rd = '1' else (others => '0');
   ctrl_bits <= ctrl_internal;

         CBIT : process (clk, rst)
         begin
            if rst = '1' then
               ctrl_internal <= (others => '0');
            else
               if rising_edge(clk) then
                  if ctrl_wr = '1' then
                     ctrl_internal(15 downto 0) <= ctrl_din(15 downto 0);
                  end if;
               end if;
            end if;
         end process CBIT;
   
end rtl;
