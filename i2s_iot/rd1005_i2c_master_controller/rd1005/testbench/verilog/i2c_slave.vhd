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

--------------------------------- E O F --------------------------------------
