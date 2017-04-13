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
---- Generic event register.                                      ----
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
--
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
-- $Log: RD#RD1101#source#vhdl#gen_event_reg.vhd,v $
-- Revision 1.1  2013-07-04 19:38:10-07  lsccad
-- ...No comments entered during checkin...
--
-- Revision 1.6  2007/10/11 19:14:43  gedra
-- Code beautification
--
-- Revision 1.5  2004/07/12 17:06:41  gedra
-- Fixed bug with lock event generation.
--
-- Revision 1.4  2004/07/11 16:19:50  gedra
-- Bug-fix.
--
-- Revision 1.3  2004/06/06 15:42:20  gedra
-- Cleaned up lint warnings.
--
-- Revision 1.2  2004/06/04 15:55:07  gedra
-- Cleaned up lint warnings.
--
-- Revision 1.1  2004/06/03 17:49:26  gedra
-- Generic event register. Used in both receiver and transmitter.
--
---------------------------------------------------------------------------
-- Code Revision History (LSC) :
---------------------------------------------------------------------------
-- Ver: | Author	|Mod. Date	|Changes Made:
-- V1.0 | JT		  |9/2010                         
---------------------------------------------------------------------------
                          
library IEEE;
use IEEE.std_logic_1164.all;

entity gen_event_reg is
   generic (DATA_WIDTH : integer:=16);
   port (
      clk      : in  std_logic;         -- clock  
      rst      : in  std_logic;         -- reset
      evt_wr   : in  std_logic;         -- event register write     
      evt_rd   : in  std_logic;         -- event register read
      evt_din  : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- write data
      event_hap    : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- event vector
      evt_mask : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- irq mask
      evt_en   : in  std_logic;         -- irq enable
      evt_dout : out std_logic_vector(DATA_WIDTH - 1 downto 0);  -- read data
      evt_irq  : out std_logic);        -- interrupt  request
end gen_event_reg;

architecture rtl of gen_event_reg is

   signal evt_internal, zero : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal evt1,evt0:std_logic;

begin
   evt_internal(1)<=evt1;
   evt_internal(0)<=evt0;
   evt_internal(DATA_WIDTH - 1 downto 2)<=(others => '0');
   evt_dout <= evt_internal when evt_rd = '1' else (others => '0');
   zero     <= (others                                     => '0');

-- IRQ generation:
-- IRQ signal will pulse low when writing to the event register. This will
-- capture situations when not all active events are cleared or an event happens
-- at the same time as it is cleared.
   IR : process (clk)
   begin
      if rising_edge(clk) then
         if ((evt_internal and evt_mask) /= zero) and evt_en = '1' then
            evt_irq <= '1';
         else
            evt_irq <= '0';
         end if;
      end if;
   end process IR;

-- event register generation   

      EBIT : process (clk, rst)
      begin
         if rst = '1' then
            evt0 <='0';
            evt1 <='0';
            
         else
            if rising_edge(clk) then
               if event_hap(0) = '1' then                        -- set event
                  evt0 <= '1';
               elsif evt_wr = '1' and evt_din(0) = '1' then  -- clear event
                  evt0 <='0';
               end if;
               
               if event_hap(1) = '1' then                        -- set event
                  evt1 <= '1';
               elsif evt_wr = '1' and evt_din(1) = '1' then  -- clear event
                  evt1 <='0';
               end if;
               
               
               
            end if;
         end if;
      end process EBIT;

   
end rtl;
