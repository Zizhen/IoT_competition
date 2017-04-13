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
--  Name:  top_test_bench.vhd  
-- 
--  Description:  top-level testbench for simulation
-- 
--  Code Revision History :
---------------------------------------------------------------------------
-- Ver: | Author			|Mod. Date	|Changes Made:
-- V1.0 | 				|2004           |Initial ver
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
