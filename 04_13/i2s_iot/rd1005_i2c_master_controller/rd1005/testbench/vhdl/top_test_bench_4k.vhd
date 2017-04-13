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

---------------------------------------------------------------------------
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

---------------------------------------------------------------------------
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

---------------------------------------------------------------------------
-- 
--  Name:  i2c_slave.vhd  
-- 
--  Description:  i2c slave emulation model for simulation
-- 
--  Code Revision History :
---------------------------------------------------------------------------
-- Ver: | Author			|Mod. Date	|Changes Made:
-- V1.0 | 				    |2004       |Initial ver
---------------------------------------------------------------------------


--This is a generic standard mode slave model for I2C.
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned."-";
use ieee.std_logic_unsigned."+";
use ieee.std_logic_textio.all;
use std.textio.all;
use ieee.numeric_std.all;


entity i2c_slave is port (     scl : in std_logic;
                         sda : inout std_logic);

end i2c_slave;

architecture behave of i2c_slave is

signal clk : std_logic := '0';
signal rst_l : std_logic;
type mem_256 is array (255 downto 0) of std_logic_vector(7 downto 0);
signal mem:mem_256;
signal word_address    : std_logic_vector(7 downto 0) := "00000000"; -- counts the active byte 
signal start_detect    : std_logic;
signal stop_detect     : std_logic;
signal sda_reg         : std_logic;
signal sda_reg_delayed : std_logic;
signal scl_reg         : std_logic;
signal scl_reg_delayed : std_logic;
signal start_pulse     : std_logic;
signal stop_pulse      : std_logic;
signal scl_pulse       : std_logic;
signal scl_neg_pulse   : std_logic;
signal address_reg_7   : std_logic_vector(6 downto 0);-- All 7 Bits of 7 bit addressing
signal temp10          : std_logic_vector(9 downto 0);
signal address_reg_10_upper      : std_logic_vector(6 downto 0);-- Upper 2 bits of address
signal address_reg_10_lower      : std_logic_vector(7 downto 0); -- lower 8 bits of address
signal current_state  : std_logic_vector(3 downto 0);
signal next_state     : std_logic_vector(3 downto 0);
signal in_reg         : std_logic_vector(7 downto 0) := "00000000"; 
signal out_reg        : std_logic_vector(7 downto 0):= "00000000"; -- registers used to hold the input
-- and output data to-from the sda line
signal bit_counter    : std_logic_vector(3 downto 0) := "0000"; -- Used to counter what bit is being selected
-- for the in_reg and out_reg
signal r_w_bit        : std_logic := '0'; -- used to hold the read write bit;
signal hit_7          : std_logic := '0'; 
signal hit_10_upper   : std_logic := '0'; 
signal hit_10_lower   : std_logic := '0'; -- flags for address hits
signal sda_out        : std_logic := '0'; 
signal sda_out2       : std_logic := '0'; 
signal ack_ctrl       : std_logic := '0'; 
signal in_reg_enable  : std_logic := '0'; -- the clock enable for the in_reg registers.
signal out_en         : std_logic := '0'; -- the output enable
signal word_add_flag  : std_logic := '0'; 
signal ack_flag       : std_logic := '0'; 
signal temp_add_upper : std_logic_vector(7 downto 1) := "0000000"; 
signal temp_add_lower : std_logic_vector(7 downto 0) := "00000000"; -- temp_add_upper & temp_add_lower are
-- used to hold the first & 
-- second address bytes of 10 bit
-- addressing so that during a 10 bit addressing
-- read the value of the current 10 bit address
-- can be compared with the last read.
signal read_10_flag : std_logic := '0'; -- This flag is set when the temp_add matches the current 
-- address_reg_10_upper and the r/w is a 1.  This tells
-- the ack to goto a data read state instead of getting
-- the second byte of address.


-----------------------------------------------------------------------
-- defines

-- used for address_mode parameter
constant seven_bit : integer := 0; 
-- used for address_mode parameter
constant ten_bit : integer := 1; 
-- used in upper 5 bits of address_reg_10_upper 
-- DON'T CHANGE
--`define ten_bit_add "11110"
constant ten_bit_add : std_logic_vector(4 downto 0) := "11110";
--  a 1 turns this on and a 0 off
--`define debug 0
constant debug : integer := 0;

-----------------------------------------------------------------------
-- constants
constant period      : time := 30 ns;-- using 33 MHz
constant reset_time  : time := 20 ns;-- hold reset low this long

-- DESIGNER SET the following parameter to use 7 or 10 bit addressing
constant address_mode : integer := 0; --`seven_bit;  Use `seven_bit or `ten_bit

-- depending on the value in address_mode either seven_bit_address or 
-- ten_bit_address will be used.

-- DESIGNER SET the next parameter with the 7 bit address the slave
-- should respond to. MSB->LSB
-- example: "1010_000"; 
constant seven_bit_address : std_logic_vector(6 downto 0) := "1010000";

-- DESIGNER SET the next parameter with the 10 bit address the slave
-- should respond to. MSB->LSB
-- example: "1011001010";
constant ten_bit_address : std_logic_vector(9 downto 0) := "1011001010";

-- state bits
constant idle     : std_logic_vector(3 downto 0) := "0000"; 
constant start    : std_logic_vector(3 downto 0) := "0001"; 
constant address  : std_logic_vector(3 downto 0) := "0010"; 
constant ack      : std_logic_vector(3 downto 0) := "0011"; 
constant data     : std_logic_vector(3 downto 0) := "0100"; 
constant data_ack : std_logic_vector(3 downto 0) := "0101"; 


signal test_std_vec : std_logic_vector(7 downto 0);
signal test_int :integer;

-- signals to convert sda and scl from 0 or H values to bit values
signal sda1 : bit;
signal scl1 : bit;

begin
test_std_vec <= "00000010";
-----------------------------------------------------------------------
-- internal clock for the model

clk <= not clk after(period / 2);


-----------------------------------------------------------------------

-----------------------------------------------------------------------------
-- sda_out is an internal reg that is assigned a 0 when the output should be
-- 0 and it assigns a Z otherwise.

sda <= '0' when (sda_out = '0' and out_en = '1' and sda_out2 = '0') else 'Z'; 

sda1 <= To_bit(sda);
scl1 <= To_bit(scl);
----------------------------------------------------------------------
-- print some status
status1:process(scl1)
variable L :line;
begin
 if(rising_edge(clk)) then
   if (debug = 1 and scl1 = '1') then
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L,string'(" Received Clock Data "));
    write(L, sda1);
    writeline(output,L);   

   end if;
 end if;
end process;


-----------------------------------------------------------------------
-- initialize the address registers, mem array, clk and control the reset

initial : process 
variable L : line;
variable cnt:std_logic_vector(7 downto 0);
begin
      rst_l          <= '0'; -- turn on reset signal 
      wait for reset_time;                           
      rst_l          <= '1'; -- turn off reset signal    
      temp10 <= "0000000000";
      address_reg_10_upper <= "0000000";
      address_reg_10_lower <= "00000000";
    -- initialize the address registers
    if (address_mode = seven_bit) then
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L,string'(" Using 7 bit Addressing "));
    writeline(output,L);   

      address_reg_7 <= seven_bit_address;
    elsif (address_mode = ten_bit) then
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L,string'(" Using 10 Bit Addressing "));
    writeline(output,L);   

      temp10 <= ten_bit_address;
      address_reg_10_upper <= ten_bit_add & temp10(9 downto 8); --{`ten_bit_add, temp10[9:8]};  2 MSB
      address_reg_10_lower <= temp10(7 downto 0);
    else 
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L,string'(" ERROR address_mode parameter is INVALID "));
    writeline(output,L);   
    end if;
    
    wait; -- execute this process only once
    
end process;


------------------------------------------------------------------------
-- start and stop detect logic
ss : process (clk,rst_l,sda1)
begin 
  if (rst_l = '0') then
      sda_reg <= '1'; -- bus is active low
      sda_reg_delayed <= '1';
  elsif(rising_edge(clk)) then 
      if(sda1 = '1') then
       sda_reg <= '1';
      else
       sda_reg <= '0';
      end if;
      sda_reg_delayed <= sda_reg;
  end if;  
end process;

-- detect a high to low while scl is high 
-- start_pulse
srtpulse : process(clk,rst_l)
begin 
  if (rst_l = '0') then 
      start_pulse <= '0';
  elsif(rising_edge(clk)) then
    if(sda_reg = '0' and sda_reg_delayed = '1' and scl1 = '1') then
      start_pulse <= '1';
    else 
      start_pulse <= '0';
    end if;
  end if;
end process;

-- start flag
srtflg : process(clk,rst_l)
begin 
  if (rst_l = '0') then 
      start_detect <= '0';
  elsif(rising_edge(clk)) then
    if(start_pulse = '1') then
      start_detect <= '1';  
    elsif (scl1 = '0') then 
      start_detect <= '0'; -- clear start bit 
    else
      start_detect <= start_detect;
    end if;
    
  end if;
end process;

-- detect a low to high while scl is high 
-- stop_pulse
stppulse : process(clk,rst_l)
begin 
  if (rst_l = '0') then 
      stop_pulse <= '0';
  elsif(rising_edge(clk)) then
    if (sda_reg = '1' and sda_reg_delayed = '0' and scl1 = '1') then 
      stop_pulse <= '1';
    else 
      stop_pulse <= '0';
    end if;
  end if;
end process;

--stop flag
stpflg : process(clk,rst_l)
begin 
  if (rst_l = '0') then 
      stop_detect <= '0';
  elsif(rising_edge(clk)) then
    if (stop_pulse = '1') then
      stop_detect <= '1';  
    elsif (current_state = idle) then
      stop_detect <= '0'; -- clear start bit 
    end if;
  end if;
end process;  
------------------------------------------
 

------------------------------------------
-- SCL posedge & nededge detector regs
scldet : process(clk,rst_l,scl)
begin 
  if (rst_l = '0') then 
      scl_reg <= '1';
      scl_reg_delayed <= '1';
  elsif(rising_edge(clk)) then
      if(scl1 = '1') then
        scl_reg <= '1';
      else
       scl_reg <= '0';
      end if;
      scl_reg_delayed <= scl_reg;
  end if;
    
end process;

-- SCL posedge detector
sclpos : process(clk,rst_l)
begin 
  if (rst_l = '0') then 
      scl_pulse <= '0';    
  elsif(rising_edge(clk)) then
    if (scl_reg = '1' and scl_reg_delayed = '0') then
      scl_pulse <= '1';
    else 
      scl_pulse <= '0'; 
    end if;
  end if;  
end process;

-- SCL negedge detector
sclneg : process(clk,rst_l)
begin 
  if (rst_l = '0') then 
      scl_neg_pulse <= '0';
  elsif(rising_edge(clk)) then
    if (scl_reg = '0' and scl_reg_delayed = '1') then 
      scl_neg_pulse <= '1';
    else 
      scl_neg_pulse <= '0';
    end if;
  end if;
    
end process;

--------------------------------------------


--------------------------------------------
-- Output Mux
outmux:process(out_reg, bit_counter,ack_ctrl,sda_out2)
begin
  if(ack_ctrl = '0') then
    case bit_counter is
      when "0000" =>
            sda_out <= out_reg(7); 
      when "0001" =>
            sda_out <= out_reg(6);
      when "0010" =>
            sda_out <= out_reg(5);
      when "0011" =>
            sda_out <= out_reg(4);
      when "0100" =>
            sda_out <= out_reg(3);
      when "0101" =>
            sda_out <= out_reg(2);
      when "0110" =>
            sda_out <= out_reg(1);
      when "0111" =>
            sda_out <= out_reg(0);
      when others =>
            sda_out <= out_reg(0);
      end case;
  else
    sda_out <= sda_out2;
  end if;

end process;

--------------------------------------------



--------------------------------------------
-- Input De-Mux
inmux :process(clk,rst_l)
begin 
 if (rst_l = '0') then 
   in_reg <= "00000000";
 elsif(rising_edge(clk)) then
   if (in_reg_enable = '1') then 
     case bit_counter is
       when "0000" =>
          in_reg(7) <= sda_reg_delayed;
       when "0001" =>
          in_reg(6) <= sda_reg_delayed;
       when "0010" =>
          in_reg(5) <= sda_reg_delayed;
       when "0011" =>
          in_reg(4) <= sda_reg_delayed;
       when "0100" =>
          in_reg(3) <= sda_reg_delayed;
       when "0101" =>
          in_reg(2) <= sda_reg_delayed;
       when "0110" =>
          in_reg(1) <= sda_reg_delayed;
       when "0111" =>
          in_reg(0) <= sda_reg_delayed;
       when others =>
          in_reg <= in_reg;
     end case;
   else
     in_reg <= in_reg;
   end if;
 end if;
end process;

--------------------------------------------


--------------------------------------------
-- I2C Slave State Machine
slave_state_machine : process(clk,rst_l)
variable L:line;
variable cnt : std_logic_vector(7 downto 0);
begin 

  if (rst_l = '0') then 
      current_state  <= idle;
      next_state     <= idle;
      r_w_bit        <= '0';
      out_reg        <= "00000000";
      out_en         <= '0'; -- disable output
      bit_counter    <= "0000";
      word_address   <= "00000000"; -- initialize byte #
      word_add_flag  <= '0';
      ack_flag       <= '0';
      in_reg_enable  <= '0';
      temp_add_upper <= "0000000";
      temp_add_lower <= "00000000";
      read_10_flag   <= '0';
      hit_10_upper   <= '0';
      hit_10_lower   <= '0';
      hit_7          <= '0';
      sda_out2       <= '0';

-- initialize the mem array
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L,string'(" Initializing Memory "));
    writeline(output,L);   
    cnt := "00000000";
    for I in 0 to 255 loop
      mem(I) <= cnt;  
      cnt := cnt + '1';
    end loop;
-- initialize the mem array
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L,string'(" Done Initializing Memory "));
    writeline(output,L);   

  elsif(rising_edge(clk)) then
    case current_state is
      when idle =>
              sda_out2 <= '0';
              if (start_detect = '1' and scl1 = '1') then 
                current_state <= start;
              else
                current_state <= idle;
                in_reg_enable <= '0';
              end if;
      when start =>
              sda_out2 <= '0';
              if (start_detect = '1' and scl1 = '1') then 
                current_state <= start;
              end if;
        
              if (stop_detect = '1' and scl1 = '1') then
                current_state <= idle;

              elsif (scl_pulse = '1') then
                  bit_counter <= "0000";
                  in_reg_enable <= '1';

              elsif (in_reg_enable = '1') then
                  in_reg_enable <= '0'; 
                  bit_counter <= bit_counter + '1';
                  current_state <= address;
-- clear all the address hit flags
                  hit_7 <= '0';
                  hit_10_upper <= '0';
                  hit_10_lower <= '0';
                  word_add_flag <= '0';
                  ack_flag <= '0';
              end if;

      when address =>
        
                if (start_detect = '1' and scl1 = '1') then 
                  current_state <= start;
                  ack_ctrl <= '0';
                  sda_out2 <= '0' after 2 ns;
        
                elsif (stop_detect = '1' and scl1 = '1') then
                  current_state <= idle;
                  ack_ctrl <= '0';
                  sda_out2 <= '0' after 2 ns;
 
                elsif (scl_pulse = '1' and (bit_counter <= "1000")) then                
                  in_reg_enable <= '1';
                  ack_ctrl <= '0';
                  sda_out2 <= '0' after 2 ns;
        
                elsif (in_reg_enable = '1') then 
                  in_reg_enable <= '0'; 
                  bit_counter <= bit_counter + '1';
                  current_state <= address;
                  ack_ctrl <= '0';
                  sda_out2 <= '0' after 2 ns;
        
                elsif (bit_counter = "1000" and address_mode = seven_bit) then 
-- determine if r or w and set r_w_bit
                  if (in_reg(7 downto 1) = address_reg_7) then 
                    r_w_bit <= in_reg(0);
                    current_state <= ack;
                    hit_7 <= '1';
                    ack_flag <= '0'; -- used in ack state
                    ack_ctrl <= '0';
                    sda_out2 <= '0' after 2 ns;
                  else 
-- the address is not for this slave                 
                    ack_ctrl <= '1';
                    sda_out2 <= '1' after 2 ns;
                    current_state <= idle;
                  end if;
        
-- check if upper address byte is a hit in 10 bit addressing
                elsif (bit_counter = "1000" and address_mode = ten_bit and hit_10_upper = '0') then
-- first time checking upper hit
                  if (in_reg(7 downto 1) = address_reg_10_upper) then 
                    ack_ctrl <= '0';
                    sda_out2 <= '0' after 2 ns;
                    r_w_bit <= in_reg(0);
                    current_state <= ack;
                    hit_10_upper <= '1';
                    ack_flag <= '0'; -- used in ack state
                    if (in_reg(0) = '0') then
                      temp_add_upper <= in_reg(7 downto 1);
                      read_10_flag <= '0'; -- clear
                    elsif ((in_reg(0) = '1') and (temp_add_upper = in_reg(7 downto 1))
                            and (temp_add_lower = address_reg_10_lower) ) then
-- This flag is set because the last 10 bit addressing 
-- mode write was for this slave, so this read only 
-- requires a match of the first byte of addressing
                      read_10_flag <= '1'; -- set             
                    end if;
                  else 
-- the address is not for this slave
                    ack_ctrl <= '1';
                    sda_out2 <= '1' after 2 ns;
                    current_state <= idle;
                    temp_add_upper <= in_reg(7 downto 1); -- holds value of last
                                                  -- upper add
                    read_10_flag <= '0'; -- clear
                  end if;

        
-- check if lower address byte is a hit in 10 bit addressing
                elsif (bit_counter = "1000" and address_mode = ten_bit and hit_10_upper = '1') then
-- is the lower address a hit?
                  if (in_reg(7 downto 0) = address_reg_10_lower) then
                    current_state <= ack;
                    hit_10_lower <= '1';
                    ack_flag <= '0'; -- used in ack state
                    temp_add_lower <= in_reg(7 downto 0);
                    ack_ctrl <= '0';
                    sda_out2 <= '0' after 2 ns;
                  else 
-- the address is not for this slave
                    ack_ctrl <= '1';
                    sda_out2 <= '1' after 2 ns;
                    current_state <= idle;
                    temp_add_lower <= in_reg(7 downto 0);
                  end if; 
                end if;  
 
      when ack =>
-- starts with scl high
          ack_ctrl <= '0';
          sda_out2 <= '0' after 2 ns;   
-- if we get a start goto start
              if (start_detect = '1' and scl1 = '1') then
                  current_state <= start;


-- if there is a stop goto idle
              elsif (stop_detect = '1' and scl1 = '1') then
                  current_state <= idle;

-- if there is an address hit acknowledge the address 
              elsif (((hit_7 = '1') or (hit_10_upper = '1') or (hit_10_lower = '1')) 
                       and scl_neg_pulse = '1' and ack_flag = '0') then 
                 out_en <= '1' after 2 ns; -- turn on OE
                 ack_flag <= '1';
        
-- once the acknowledge is presented turn off the OE
-- print the address, and goto address or data depending on
-- addressing mode
              elsif (((hit_7 = '1') or (hit_10_upper = '1') or (hit_10_lower = '1')) 
                       and scl_neg_pulse = '1' and ack_flag = '1' ) then 
                 out_en <= '0' after 2 ns; -- turn off OE
                 bit_counter <= "0000";

                 
                 if (hit_10_upper = '1' and hit_10_lower = '0') then
                 write(L,now, justified => right, field=>10,unit=>ns);
                 write(L,string'(" 10 bit addressing Upper address is "));
                 write(L, in_reg);
                 writeline(output,L);   

                  if (read_10_flag = '0') then 
                    current_state <= address;
                  elsif (read_10_flag = '1') then
-- going to the data state because a read in 10 bit
-- addressing only requires a hit on the upper address if
-- the last write was a hit.
                    current_state <= data;
                  end if;
                 elsif (hit_7 = '1' or hit_10_lower = '1') then
-- hit_10_lower or hit_7 
                  current_state <= data;
                  if (hit_10_lower = '1') then
                    write(L,now, justified => right, field=>10,unit=>ns);
                    write(L,string'(" 10 bit addressing Lower address is  "));
                    write(L, in_reg);
                    writeline(output,L);   

                  elsif (hit_7 = '1') then
                    write(L,now, justified => right, field=>10,unit=>ns);
                    write(L,string'(" 7 bit addressing & address is "));
                    write(L, in_reg);
                    writeline(output,L);   
                  end if;
                 end if;                 
 
-- if there is no hit, return to idle
              elsif (hit_7 = '0' and hit_10_upper = '0' and hit_10_lower = '0') then
-- no_ack
                 out_en <= '0' after 2 ns;
                 bit_counter <= "0000";
                 current_state <= idle;

              end if;
 
      when data =>
              ack_ctrl <= '0';
              sda_out2 <= '0' after 2 ns; 
-- starts with scl low
              if (start_detect = '1' and scl1 = '1') then
                  current_state <= start;
        
              elsif (stop_detect = '1' and scl1 = '1') then
                current_state <= idle;

-- write data
              else -- outer else
                if (r_w_bit = '0' and scl_pulse = '1' and (bit_counter <= "1000") ) then
-- write
                  in_reg_enable <= '1';
                elsif (r_w_bit = '0' and in_reg_enable = '1' and (bit_counter <= "1000")) then
-- write more
                  in_reg_enable <= '0'; 
                  bit_counter <= bit_counter + '1';
                  current_state <= data;
                elsif (r_w_bit = '0' and (bit_counter = "1000")) then
-- write last bit
                   in_reg_enable <= '0'; -- disable
                   current_state <= data_ack;
                   ack_flag <= '0'; -- used in data_ack state
                   if (word_add_flag = '0') then 
                     word_address <= in_reg;
                     word_add_flag <= '1'; -- set the flag
                   else 
                     mem(to_integer(unsigned(word_address))) <= in_reg;
                     word_address <= word_address + '1';
                   end if;
-- read data
                elsif (r_w_bit = '1' and (bit_counter = "0000") and scl_neg_pulse = '0') then 
-- read first bit of word
-- scl is low at start of read
                   out_en <= '1' after 2 ns; -- turn on OE
                   out_reg <= mem(to_integer(unsigned(word_address)));
                elsif (r_w_bit = '1' and (bit_counter < "0111") and scl_neg_pulse = '1') then 
-- set up next bit
                    bit_counter <= bit_counter + '1';
                elsif (r_w_bit = '1' and (bit_counter = "0111") and scl_neg_pulse = '1') then 
-- we already output the last bit
                  bit_counter <= "0000";
                  out_en <= '0' after 2 ns; -- turn off OE
                  word_address <= word_address + '1';
                  current_state <= data_ack;
                  ack_flag <= '0'; -- used in data_ack state
                end if;
              end if; -- outer else
 
      when data_ack =>

              if (start_detect = '1' and scl1 = '1') then
                  current_state <= start;
                  ack_ctrl <= '0';
                  sda_out2 <= '0' after 2 ns; 
              elsif (stop_detect = '1' and scl1 = '1') then
                  current_state <= idle;
                  ack_ctrl <= '0';
                  sda_out2 <= '0' after 2 ns;
-- starts with scl high on write
              elsif ( r_w_bit = '0' and scl_neg_pulse = '1' and ack_flag = '0') then
                 write(L,now, justified => right, field=>10,unit=>ns);
                 write(L,string'(" Slave Data Received on write is "));
                 write(L, in_reg);
                 writeline(output,L);   
                 out_en <= '1' after 2 ns; -- turn on OE
                 ack_ctrl <= '1';
                 sda_out2 <= '0' after 2 ns;
                 ack_flag <= '1';
              elsif ( r_w_bit = '0' and scl_neg_pulse = '1' and ack_flag = '1' ) then
                 out_en <= '0' after 2 ns; -- turn off OE
                 ack_ctrl <= '1';
                 sda_out2 <= '1' after 2 ns;
                 bit_counter <= "0000";
                 current_state <= data; 
        
-- starts with scl low on read
              elsif (r_w_bit = '1' and scl_pulse = '1') then 
-- check sda for ack now
                 write(L,now, justified => right, field=>10,unit=>ns);
                 write(L,string'(" Slave Data transmitted on read is "));
                 write(L, out_reg);
                 writeline(output,L);   
                 ack_ctrl <= '0';
                 sda_out2 <= '0' after 2 ns;

                   if (sda1 = '0') then
                     next_state <= data;
                     bit_counter <= "0000";
                     write(L,now, justified => right, field=>10,unit=>ns);
                     write(L,string'(" Master ACK'd on a Data Read, returning to Data "));
                     writeline(output,L);   

                     ack_flag <= '1';
                   elsif (sda1 = '1') then
                     write(L,now, justified => right, field=>10,unit=>ns);
                     write(L,string'(" No ACK on a Data Read, returning to Idle "));
                     writeline(output,L);   
                     next_state <= idle;
                     ack_flag <= '1';
                   end if;
                elsif (r_w_bit = '1' and ack_flag = '0') then
                  out_en <= '0' after 2 ns; -- turn off OE
                elsif (r_w_bit = '1' and scl_neg_pulse = '1') then
                  current_state <= next_state;
                end if;
 
      when others =>
                ack_ctrl <= '0';
                sda_out2 <= '0' after 2 ns; 
                if (start_detect = '1' and scl1 ='1') then
                  current_state <= start;
                elsif (stop_detect = '1' and scl1 = '1') then
                  current_state <= idle;
                else 
                  current_state <= idle;
                  write(L,now, justified => right, field=>10,unit=>ns);
                  write(L,string'(" Something is broken is the SM returning to idle "));
                  writeline(output,L);   
                end if;
    end case;
  end if;
end process;

end behave;

---------------------------------------------------------------------------
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
---------------------------------------------------------------------------
-- 
--  Name:  up_model.vhd  
-- 
--  Description:  Emulate microprocessor transactions to the I2C master
-- 
--  Code Revision History :
---------------------------------------------------------------------------
-- Ver: | Author		|Mod. Date	|Changes Made:
-- V1.0 | 				  |2004       |Initial ver
-- V1.1 | CM        |2009       |delay data_out to data to remove 
--                              |setup/hold timing violation
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned."-";
use ieee.std_logic_unsigned."+";
use ieee.std_logic_textio.all;         
use std.textio.all;                    
use ieee.numeric_std.all;              

 
entity up_model is port(clk     : in std_logic;
                        reset_l : in std_logic;
                        ack_l   : in std_logic;
                        intr_l  : in std_logic;
                        rw_l    : out std_logic;
                        cs_l    : out std_logic;
                        addr    : out std_logic_vector(2 downto 0);
                        data    : inout std_logic_vector(7 downto 0));
end up_model;


architecture behave of up_model is              

-- --------------------------------------------------------------------
-- Constants

-- defining the address map as constants
constant data_buf      : std_logic_vector(2 downto 0) := "000";
constant low_addr      : std_logic_vector(2 downto 0) := "001";
constant upper_addr    : std_logic_vector(2 downto 0) := "010";
constant master_code   : std_logic_vector(2 downto 0) := "011";
constant comm_stat     : std_logic_vector(2 downto 0) := "100";
constant byte_count    : std_logic_vector(2 downto 0) := "101";
constant iack_reg      : std_logic_vector(2 downto 0) := "110";

constant INPUT_DLY : time := 10 ns;

-----------------------------------------------------------------------
-- reg declarations
signal data_ret : std_logic_vector(7 downto 0) := "00000000";
signal cntr     : std_logic_vector(7 downto 0) := "00000000";
signal cntr2    : std_logic_vector(13 downto 0) := "00000000000000";
signal cntr3    : std_logic_vector(13 downto 0) := "00000000000000";
signal not_used : std_logic_vector(7 downto 0):= "00000000";
signal data_out : std_logic_vector(7 downto 0):= "00000000";
------------------------------------------
-- variables

signal num_errors : integer:= 0;
signal int_flag   : integer:= 0; 
signal empty_flag : integer:= 0;  
signal done_flag  : integer:= 0; 
signal full_flag  : integer:= 0; 
signal RWL        : std_logic:= '0'; -- intermediate rw_l signal for tristate problem
signal RWL_delay  : std_logic:= '0'; -- delayed version of RWL to delay data_out to data, for removing timing violation



begin
-----------------------------------------------------------------------
-- tri-state buffer for data bus
rw_l <= RWL after INPUT_DLY;
RWL_delay <= RWL after INPUT_DLY;
----data <= data_out when RWL = '0' else "ZZZZZZZZ";
data <= data_out when RWL_delay = '0' else "ZZZZZZZZ";
--data <= data_out when RWL = '0' else "HHHHHHHH";
---------------------------------------------------------------------------

--//    Module  up_model
--// This module provides micro processor transactions to the I2C Master.
--// It is the stimulus control block for the top level simulation.


--init 2;
-------------------------------------------------------------------------
-- Initial Block to call uP tasks
-- These tasks read and write the appropriate data to the I2C master
-- This is the heart of the simulation because all tests are called from
-- here
--procedure init2 is
init2 : process

--//-------------------------------------------------------------------------
--// error_check

procedure error_check is
 variable L : line;
  begin 
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" Simulation complete with "));
    write(L, num_errors);
    write(L, string'(" errors. "));
    writeline(output,L);   

    ----assert False
    report "End of Verification, if error number is 0, verify is passed, otherwise please check wave";
    ----severity Failure;

end error_check; 

--//--------------------------------------------------------------------------
--// kill_time
procedure kill_time is
begin 
  
  wait until rising_edge(clk);
  wait until rising_edge(clk);
  wait until rising_edge(clk);
  wait until rising_edge(clk);
    
  
end kill_time;


--// -----------------------------------------------------------------------
--// Define the uP Tasks
--// ----------------------------------------------------------------------
--// write_data_buf
procedure write_data_buf
          (data_in   : in std_logic_vector(7 downto 0)) is
 variable L : line;
 begin 
  kill_time;
  wait until rising_edge(clk);
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L,string'(" Writing Data Buf "));
    write(L, data_in);
    writeline(output,L);   

    addr <= data_buf;  
    RWL <= '0';
    data_out <= data_in;  
  wait until rising_edge(clk);
    cs_l     <= '0' after INPUT_DLY;
  wait until ack_l = '0';
  wait until rising_edge(clk);
    cs_l     <= '1' after INPUT_DLY;
  wait until rising_edge(clk);
    RWL  <= '1';
end write_data_buf;
  

--// ----------------------------------------------------------------------
--// read_data_buf

procedure read_data_buf
          (expected   : in std_logic_vector(7 downto 0);
           signal data_back  : out std_logic_vector(7 downto 0)) is
 variable L : line;
 begin 
  kill_time;
  wait until rising_edge(clk);
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L,string'(" Reading Data Buf Reg "));
    writeline(output,L);   
    addr  <= data_buf;
    RWL <= '1'; 
  wait until rising_edge(clk);
    cs_l     <= '0' after INPUT_DLY;
  wait until ack_l = '0';
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" Read Data "));
    write(L, data);
    writeline(output,L);   

    data_back <= data; --// The value returned from the task
  wait until rising_edge(clk);
    cs_l  <= '1' after INPUT_DLY;
    RWL  <= '1'; 
 
    if (data /= expected) then 
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" ERROR: data returned = "));
    write(L, data);
    write(L, string'(" data_expected = "));
    write(L, expected);
    writeline(output,L);   
     num_errors <= num_errors + 1; 
    end if;

end read_data_buf;   
  




--// ----------------------------------------------------------------------
--// write_low_add

procedure write_low_add
          (addr_in  : in std_logic_vector(7 downto 0)) is
 variable L : line;
 begin
  kill_time;
  wait until rising_edge(clk);
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" Writing Low Addr Reg "));
    write(L, addr_in);
    writeline(output,L);   

    addr <= low_addr after INPUT_DLY;  
    RWL <= '0';
    data_out <= addr_in;  
  wait until rising_edge(clk);
    cs_l     <= '0' after INPUT_DLY;
  wait until ack_l = '0';
  wait until rising_edge(clk);
    cs_l     <= '1' after INPUT_DLY;
  wait until rising_edge(clk);
    RWL     <= '1';

end write_low_add;  

--// ----------------------------------------------------------------------
--// write_upper_add
procedure write_upper_add
          (addr_in : in std_logic_vector(7 downto 0)) is
 variable L : line;
 begin 
  kill_time;   
  wait until rising_edge(clk);
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" Writing Upper Addr Reg "));
    write(L, addr_in);
    writeline(output,L);   

    addr <= upper_addr after INPUT_DLY;  
    RWL <= '0';
    data_out <= addr_in;  
  wait until rising_edge(clk);
    cs_l     <= '0' after INPUT_DLY;
  wait until ack_l = '0';
  wait until rising_edge(clk);
    cs_l     <= '1' after INPUT_DLY;
  wait until rising_edge(clk);
    RWL  <= '1';

end write_upper_add; 



--// ----------------------------------------------------------------------
--// write_master_code
procedure write_master_code
          (data_in : in std_logic_vector(7 downto 0)) is
 variable L : line;
 begin 
  kill_time;
  wait until rising_edge(clk);
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" Writing Master Code Reg "));
    write(L, data_in);
    writeline(output,L);   

    addr <= master_code after INPUT_DLY;  
    RWL <= '0';
    data_out <= data_in;  
  wait until rising_edge(clk);
    cs_l     <= '0' after INPUT_DLY;
  wait until ack_l = '0';
  wait until rising_edge(clk);
    cs_l     <= '1' after INPUT_DLY;
  wait until rising_edge(clk);
    RWL  <= '1';
end write_master_code;
  


--// ----------------------------------------------------------------------
--// write_command_reg
procedure write_command_reg
          (data_in : in std_logic_vector(7 downto 0)) is
 variable L : line;
 begin 
  kill_time;   
  wait until rising_edge(clk);
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" Writing Command Reg "));
    write(L, data_in);
    writeline(output,L);   

    addr <= comm_stat after INPUT_DLY;  
    RWL <= '0';
    data_out <= data_in;  
  wait until rising_edge(clk);
    cs_l     <= '0' after INPUT_DLY;
  wait until ack_l = '0';
  wait until rising_edge(clk);
    cs_l     <= '1' after INPUT_DLY;
  wait until rising_edge(clk);
    RWL  <= '1';

end write_command_reg;



--// ----------------------------------------------------------------------
--// read_status_reg
procedure read_status_reg
          (debug : in std_logic;
           signal data_back : out std_logic_vector(7 downto 0)) is --// pass a 1 to turn debug on & a 0 to turn it off
 variable L : line;
 begin 
  kill_time;
  wait until rising_edge(clk);
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" Reading Status Reg "));
    writeline(output,L);   

  addr  <= comm_stat after INPUT_DLY;
  RWL  <= '1'; 
  wait until rising_edge(clk);
    cs_l  <= '0' after INPUT_DLY;
  wait until ack_l = '0';
  if (debug = '1') then
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" uP Read Data "));
    write(L, data);
    writeline(output,L);   

  end if;
  data_back <= data; --// The value returned from the task
    wait until rising_edge(clk);
    cs_l  <= '1' after INPUT_DLY;
    RWL  <= '1'; 
 
end read_status_reg;
 
--//--------------------------------------------------------------------------
--// check_done task
procedure check_done is
   variable L : line;
  begin 
  
  -- check for done bit before continuing
  
 
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" Checking the done bit "));
    writeline(output,L);   

  -- initialize some variables
   cntr <= "00000000";
   done_flag <= 0;
   
   -- start checking status
   while (cntr /= "11111111" and done_flag = 0) loop 
     wait until rising_edge(clk);
     wait until rising_edge(clk);
     -- read the status
     read_status_reg('0',data_ret);
      
     if (data_ret(3) = '1') then 
     -- we have the done bit so set the done flag
       done_flag <= 1;
     else 
     -- status says not done
        cntr <= cntr + 1;
     end if;
   end loop; -- end of while

   if (cntr = "11111111") then 
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" ERROR cntr expired waiting for Done Flag!"));
    writeline(output,L);   

     num_errors <= num_errors + 1;
   end if;  
 
end check_done;



--// ----------------------------------------------------------------------
--// write_byte_count
procedure write_byte_count 
          (data_in : std_logic_vector(7 downto 0)) is
 variable L : line;
 begin
  kill_time;
  wait until rising_edge(clk);
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" Writing Byte Count "));
    write(L, data_in);
    writeline(output,L);   

    addr <= byte_count after INPUT_DLY;  
    RWL <= '0';
    data_out <= data_in;  
  wait until rising_edge(clk);
    cs_l     <= '0' after INPUT_DLY;
  wait until ack_l = '0';
  wait until rising_edge(clk);
    cs_l     <= '1' after INPUT_DLY;
  wait until rising_edge(clk);
    RWL  <= '1';
  
end write_byte_count;



--// ----------------------------------------------------------------------
--// clear_iack
procedure clear_iack is
 variable L : line;
begin
  kill_time;
  wait until rising_edge(clk);
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" Clearing Iack Reg "));
    writeline(output,L);   

    addr <= iack_reg after INPUT_DLY;  
    RWL <= '0';
    data_out <= "00000000";  
  wait until rising_edge(clk);
    cs_l     <= '0' after INPUT_DLY;
  wait until ack_l = '0';
  wait until rising_edge(clk);
    cs_l     <= '1' after INPUT_DLY;
  wait until rising_edge(clk);
    RWL  <= '1';
end clear_iack; 
  


--// write two byte test

-- this test writes to address "low_add"
-- to access the slave device. The first byte
-- of data written to the slave sets up the 
-- word pointer, and the second byte writes
-- data to the location pointed to inside
-- the slave by the address written into the 
-- word pointer.  The tasks passed a value of
-- 1 to use interrupts, and 0 to use polling mode.
-- Then low_add is the address  of the slave, 
-- and byte1 is the first byte written, and
-- byte2 is the second byte written.

procedure  write_two_byte_test
           (int_on   : in std_logic; --// a 1 uses interrupts, a 0 polling
            low_add  : in std_logic_vector(6 downto 0);
            byte1    : in std_logic_vector(7 downto 0);
            byte2    : in std_logic_vector(7 downto 0)) is
 variable L : line;
begin
 
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" << Starting the write_two_byte_test >> "));
    writeline(output,L);   

--  // set up the lower address buffer

  write_low_add(low_add & '0');
 
--  // write the upper address
--  // just initialize as zero's
  write_upper_add("00000000");
  
--  // write byte count with 2
  write_byte_count("00000010"); 

 
--  // write the data buffer
--  // this will be the value written into the 
--  // word pointer inside the model
  write_data_buf(byte1);
 
--  // write the command reg
--  // if interrupts are enabled turn them on
--  // else use polling mode.
--  // either way, set the GO bit.
 
  if (int_on = '1') then 
     write_command_reg("10000011"); --// go & int's on, and 7 bit addr 
  elsif (int_on = '0') then 
     write_command_reg("10000000"); --// go & polling, and 7 bit addr
  else 
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" ERROR write_two_byte_test passed and illegal value!! "));
    writeline(output,L);   

    num_errors <= num_errors + 1;
--    $stop;
  end if;
 
--  // so at this point the I2C controller should start it's
--  // transactions.  Address phase, and then writing the first byte of data.
--  // so, at some point the controller will set the trans_buffer_empty flag.
--  // Then the uP will write the next byte of data, which will be byte2.
--  // The following section checks for  the empty flag in the status register
--  // before writing the next byte.  This is done differently in interrupt
--  // and polling mode.
 
  
  if (int_on = '1') then 
--   // interrupt section
 
   wait for 10000 ns; --#10000; // waiting 100 us till address phase is done.
    
--   // initialize loop variables
   cntr2 <= "00000000000000";--13'h0;
   int_flag <= 0;
   
   while ((cntr2 /= "11111111111111") and (int_flag = 0)) loop
     wait until rising_edge(clk);
      if (intr_l = '0') then
--        // we have an interrupt so read status
        int_flag <= 1;
        read_status_reg('0',data_ret);
        
        if (data_ret(1) = '1') then 
--          // clear iack
          clear_iack;
--        // writing next data word.
          write_data_buf(byte2);
        elsif (data_ret(1) = '0') then 
          write(L,now, justified => right, field=>10,unit=>ns);
          write(L, string'(" ERROR: Recieved an Interrupt and expected the Transmit Buffer Empty Flag to be set, but its not"));
          writeline(output,L);   

          num_errors <= num_errors + 1;
        end if;
      else 
--      // no interrupt yet so count up
        cntr2 <= cntr2 + 1;
      end if;
   end loop; --// end of while
 
   if (cntr2 = "11111111111111") then
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" ERROR: cntr expired waiting for an Interrupt! Second Byte of Data Not Sent"));
    writeline(output,L);   

     num_errors <= num_errors + 1;
   end if;
   
--  end of interrupt section
 
 
  elsif (int_on = '0') then
--   // polling section
  
   
   wait for 100000 ns; --#100000; // waiting 100 us till address phase is done.
   
--   // initialize some variables
   cntr2 <= "00000000000000";--13'h0;
   empty_flag <= 0;
   
--   // start checking status
   while ((cntr2 /= "11111111111111") and (empty_flag = 0)) loop
     wait until rising_edge(clk);
     wait until rising_edge(clk);
--      // read the status
      read_status_reg('0',data_ret);
      
      if (data_ret(1) = '1') then
--        // we have an empty flag so write the next data word
        empty_flag <= 1;
--        // writing next data word.
        write_data_buf(byte2);
      else 
--       // status says no empty flag
        cntr2 <= cntr2 + 1;
      end if;
   end loop; --// end of while
 
   if (cntr2 = "11111111111111") then
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" ERROR: cntr expired waiting for Empty Flag! Second Byte of Data Not Sent"));
    writeline(output,L);   

     num_errors <= num_errors + 1;
   end if;
     
--  end of the polling section
  end if;
 
 
  wait for 200000 ns; --#200000; // kill some time
 

--  // check for done bit before continuing

  
  check_done; 
 
  
  
end write_two_byte_test;

--//------------------------------------------------------------------------
--// read_two_byte_test
procedure read_two_byte_test
          (int_on : in std_logic;
           low_add : in std_logic_vector(6 downto 0);
           word_pointer : in std_logic_vector(7 downto 0);
           byte1 : in std_logic_vector(7 downto 0)) is
   variable L : line;
  begin 
    
-- This test starts by accessing the slave at the 
-- value in "low_add". Then writing the word pointer to the 
-- value in "word_pointer".  Then it will read from the slave
-- at address "low_add".  The first data word it will expect 
-- back is "byte1".  Then the second byte it will expect back is
-- "word_pointer" + 1.  This is because the memory array inside
-- the I2C slave model is stored with address equals data.
-- This means the address of the location after the first read
-- will be "word_pointer" + 1. Since the address equals data
-- the data we expect back is "word_pointer" + 1;
 
  
 
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" << Starting the read_two_byte_test >> "));
    writeline(output,L);   
 
--  // set up the lower address buffer
--  // {low_add,1'b0} 1'b0 is for write
  write_low_add(low_add & '0');
 
--  // write the upper address
--  // just initialize as zero's
  write_upper_add("00000000");
  
--  // write byte count with 1
--  // because we are only writing to the 
--  // word_pointer
  write_byte_count("00000001");
 
--  // write the data buffer
--  // this will be the value written into the 
--  // word pointer inside the model
  write_data_buf(word_pointer);
 
--  // write the command reg
--  // if interrupts are enabled turn them on
--  // else use polling mode.
--  // either way, set the GO bit.
 
  if (int_on = '1') then 
     write_command_reg("10000011"); --// go & int's on, and 7 bit addr 
  elsif (int_on = '0') then 
     write_command_reg("10000000"); --// go & polling, and 7 bit addr
  else  
    write(L,now, justified => right, field=>10,unit=>ns);
    write(L, string'(" ERROR: read_two_byte_test passed and illegal value!"));
    writeline(output,L);   
    num_errors <= num_errors + 1;
--    $stop;
  end if;
 
 
--  // all right, at this point the I2C controller should be writing the
--  // word pointer. 
 
 
  wait for 200000 ns; --#200000; // waiting 200000 ns till cycle is done.
 

--  // check for done bit before continuing
  
  check_done;
 
 
 
--  // the word_pointer should contain "word_pointer"
 
--   // Now execute a 2 byte read
   
--  // set up the lower address buffer
--  // {low_add,1'b1}   1'b1 is for read
  write_low_add(low_add & '1');
  
  
--  // write byte count with 2
--  // we are reading back 2 bytes 
  write_byte_count("00000010");--8'h2);
 
--  // write the command reg
--  // if interrupts are enabled turn them on
-- // else use polling mode.
--  // either way, set the GO bit.
 
  if (int_on = '1') then 
     write_command_reg("10000011"); --// go & int's on, and 7 bit addr 
  elsif (int_on = '0') then 
     write_command_reg("10000000"); --// go & polling, and 7 bit addr
  end if;
 
 
  if (int_on = '1') then 
--    // interrupt section
   
   wait for 100000 ns; --#100000; // waiting 100 us till address phase is done.
 
 
  for I in 0 to 1 loop  
    --// wait 100us for data read to finish
 
 wait for 100000 ns; --#100000;
    
--     // initialize loop variables
     cntr3 <= "00000000000000"; --13'h0;
     int_flag <= 0;
    
    while ((cntr3 /= "11111111111111") and (int_flag = 0)) loop 
     wait until rising_edge(clk);
        if (intr_l = '0') then 
--          // we have an interrupt so read status
          int_flag <= 1;
          read_status_reg('0',data_ret);
        
          if (data_ret(0) = '1') then 
            --// receive buffer is full
            --// clear iack
            clear_iack;
            --// read data_buf.

            if (I = 0) then 
              read_data_buf(byte1, not_used);
            elsif (I = 1) then
              read_data_buf((word_pointer + 1), not_used);
            end if;
          end if;

           if (data_ret(0) = '0') then
             write(L,now, justified => right, field=>10,unit=>ns);
             write(L, string'(" ERROR:recieved an Interrupt and expected the Receive Buffer Full Flag to be set, but its not"));
             writeline(output,L);   

            num_errors <= num_errors + 1;
           end if;
        else 
--        // no interrupt yet so count up
          cntr3 <= cntr3 + 1;
        end if;
     end loop;--// end of while
 
     if (cntr3 = "11111111111111") then 
       write(L,now, justified => right, field=>10,unit=>ns);
       write(L, string'(" ERROR: cntr expired waiting for an Interrupt! Data Not Received"));
       writeline(output,L);   

       num_errors <= num_errors + 1;
     end if;
 
  end loop; --// end of "for" loop
  
-- end of interrupt section
 
  elsif (int_on = '0') then 
 
--   // polling section
 
   wait for 100000 ns;--#100000; // waiting 100 us till address phase is done.
 
 
  for I in 0 to 3 loop
--     // wait 100us for data read to finish
 
  wait for 100000 ns; --#100000;
 
--  // initialize loop variables
     cntr3 <= "00000000000000";
     full_flag <= 0;
   
    while ((cntr3 /= "11111111111111") and (full_flag = 0)) loop
     wait until rising_edge(clk);
          read_status_reg('0',data_ret);
        
        if (data_ret(0) = '1') then
--            // receive buffer is full
--          // read data_buf.
            full_flag <= 1;
            if (I = 0) then 
              read_data_buf(byte1, not_used);
            elsif (I = 1) then 
              read_data_buf((word_pointer + 1), not_used);
            end if;
        else 
--        // buffer is not full yet
          cntr3 <= cntr3 + 1;
        end if;
     end loop; --// end of while
 
     if (cntr3 = "11111111111111") then 
       write(L,now, justified => right, field=>10,unit=>ns);
       write(L, string'(" ERROR: cntr expired waiting for Full Flag! Data Not Received"));
       writeline(output,L);   

       num_errors <= num_errors + 1;
     end if;
 
  end loop;--// end of "for" loop
   
  end if;  
--   end of polling section
 
--  // check for done bit before continuing

  
  check_done;
 
  
  end read_two_byte_test; --// end of the procedure



begin
num_errors <= 0;        
data_out <= "00000000"; 
RWL <= '1';             
cs_l <= '1';            
addr <= "ZZZ";

wait for 10 ns;
wait until reset_l = '1'; --// wait for reset to be deasserted
wait until rising_edge(clk);
 
--// execute the write_two_byte_test interrupt mode
--// slave responds to 7'b1010_000 
--// byte1 is 0A, and byte2 is BB
  write_two_byte_test('1', "1010000", "00001010", "10111011");
--//  write_two_byte_test(0, 7'b1010_000, 8'h0A, 8'hBB );

--// next run the read_two_byte_test in interrupt mode
--// slave responds to 7'b1010_000 bit 
--// word_pointer is set to 8'h0A
--// byte1 is set to 8'hBB
  read_two_byte_test('1', "1010000", "00001010", "10111011" );


--// execute the write_two_byte_test polling mode
--// slave responds to 7'b1010_000 
--// byte1 is 8'h10, and byte2 is 8'hFF
--//   write_two_byte_test(0, 7'b1010_000, 8'h10, 8'hFF);


--// next run the read_two_byte_test in polling mode
--// slave responds to 7'b1010_000 bit 
--// word_pointer is set to 8'h10
--// byte1 is set to 8'hFF
--//   read_two_byte_test(0, 7'b1010_000, 8'h10, 8'hFF); 


--// check the number of errors
error_check;


--// stop the simulation
--$stop;

end process;



end behave;

---------------------------------------------------------------------------
-- 
--  Name:  top_test_bench_4k.vhd  
-- 
--  Description:  top-level testbench for simulation
-- 
--  Code Revision History :
---------------------------------------------------------------------------
-- Ver: | Author			|Mod. Date	|Changes Made:
-- V1.0 | 				|2004           |Initial ver
-- V1.1 |c.m.         |June 2009  |Merge testbenches into one file
---------------------------------------------------------------------------

library ieee;                                     
use ieee.std_logic_1164.all;                      


--This is the top level test bench used to test the I2C Master Controller


entity top_test_bench is 
end top_test_bench;
------------------------------------------------
-- Top level test bench contains no ports


architecture behave of top_test_bench is

component clk_reset is port(clk   : out std_logic;
                         rst_l : out std_logic);

end component;

component pullup is port(Enb : in std_logic;
              O : out std_logic);
end component;

component up_model is port(clk     : in std_logic;
                        reset_l : in std_logic;
                        ack_l   : in std_logic;
                        intr_l  : in std_logic;
                        rw_l    : out std_logic;
                        cs_l    : out std_logic;
                        addr    : out std_logic_vector(2 downto 0);
                        data    : inout std_logic_vector(7 downto 0));
end component;

component i2c_slave is port (     scl : inout std_logic;
                         sda : inout std_logic);

end component;

component ack_gen is port(clk   : in std_logic;
                       rst_l : in std_logic;
                       cs_l  : in std_logic;
                       ack_l : out std_logic);
end component;     

component I2C_Top is
  port(SDA        : inout std_logic;              -- Serial Data Line of the I2C bus
       SCL        : inout std_logic;              -- Serial Clock Line of the I2C bus
       Clock      : in std_logic;                 -- MP Clock 
       Reset_L    : in std_logic;                 -- Reset, active low
       CS_L       : in std_logic;                 -- Chip select, active low
       A0         : in std_logic;                 -- Address bits for register selection
       A1         : in std_logic;                 -- Address bits for register selection
       A2         : in std_logic;                 -- Address bits for register selection
       RW_L       : in std_logic;                 -- Read/Write, write active low
       INTR_L     : out std_logic;                -- Interupt Request, active low
       DATA       : inout std_logic_vector(7 downto 0)); -- data bus to/from attached device(NOTE: Data(7) is MSB                         
end component;

-----------------------------------------------
-- Wire Declarations

signal clk,rst_l,cs_l,rw_l,ack_l,intr_l : std_logic;
signal addr : std_logic_vector(2 downto 0);
signal data : std_logic_vector(7 downto 0);
signal sda,scl: std_logic;

-- ---------------------------------------------
-- Instantiate the Clock Reset Block
begin

pullup_sda: pullup port map (Enb => sda,
                             O   => sda);
pullup_scl: pullup port map (Enb => scl,
                             O   => scl);

clk_rst: clk_reset port map 
                  (clk => clk,
                   rst_l => rst_l);

-- ----------------------------------------------
-- Instantiate the Micro Processor (uP) Model
-- This model contains all the tasks called
-- to apply the stimulus to the design

up: up_model port map
            (clk     => clk,
             reset_l => rst_l,
             cs_l    => cs_l,
             rw_l    => rw_l,
             ack_l   => ack_l,
             intr_l  => intr_l,
             addr    => addr,
             data    => data
            );
        
-- ----------------------------------------------
-- Instantiate the ack_gen block, used to 
-- acknowledge uP cycles 4 clock tics after !cs_l

ackgen: ack_gen port map
               (clk   => clk,
                rst_l => rst_l,
                cs_l  => cs_l,
                ack_l => ack_l
               );           

-- ---------------------------------------------
-- Instantiate one of the I2C_Slave models

i2c_slv_1: i2c_slave port map
                    (scl => scl,
                     sda => sda
                    );


------------------------------------------------

i2cblock: I2C_Top port map
        ( SDA     => sda,
          SCL     => scl,
          Clock   => clk,
          Reset_L => rst_l,
          CS_L    => cs_l,
          A0      => addr(0),
          A1      => addr(1),
          A2      => addr(2),
          RW_L    => rw_l,
          INTR_L  => intr_l,
          DATA    => data
       );


end behave;


--------------------------------- E O F --------------------------------------
