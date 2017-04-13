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

--------------------------------- E O F --------------------------------------
