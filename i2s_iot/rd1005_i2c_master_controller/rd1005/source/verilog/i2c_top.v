//   ==================================================================
//   >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
//   ------------------------------------------------------------------
//   Copyright (c) 2013 by Lattice Semiconductor Corporation
//   ALL RIGHTS RESERVED 
//   ------------------------------------------------------------------
//
//   Permission:
//
//      Lattice SG Pte. Ltd. grants permission to use this code
//      pursuant to the terms of the Lattice Reference Design License Agreement. 
//
//
//   Disclaimer:
//
//      This VHDL or Verilog source code is intended as a design reference
//      which illustrates how these types of functions can be implemented.
//      It is the user's responsibility to verify their design for
//      consistency and functionality through the use of formal
//      verification methods.  Lattice provides no warranty
//      regarding the use or functionality of this code.
//
//   --------------------------------------------------------------------
//
//                  Lattice SG Pte. Ltd.
//                  101 Thomson Road, United Square #07-02 
//                  Singapore 307591
//
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                       +65-6631-2000 (Singapore)
//                       +1-503-268-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
//   --------------------------------------------------------------------
//
// 
//  Name: i2c_top.v
// 
//  Description: Top-level module of the I2C Master Controller design
//      This design is intended to be used as a master controller
//      for a I2C Bus. The user will use this module to read or
//      write from the a I2C Bus.
//
//  Code Revision History :
//-------------------------------------------------------------------------
// Ver: | Author		|Mod. Date	    |Changes Made:
// V1.0 | CM            |2009           |Initial ver - Verilog Wrapper
//-------------------------------------------------------------------------



module I2C_Top (
       SDA,SCL,
       Clock,Reset_L,
       CS_L, RW_L,INTR_L, 
       A0,A1,A2, 
       DATA);       



// i2c signals
inout SDA, SCL; 	

// microprocessor signals
input Clock;			// MP clock
input Reset_L;			// Reset, active low
input A0, A1, A2; 		// Address bits for register selection
input CS_L;  			// Chip select, active low  
input RW_L;				// Read/Write, write active low
output INTR_L;			// Interrupt request, active low
inout [7:0] DATA;		// data bus to/from attached devices (note: Data(7) is MSB


//I2C Control Signals
wire Start_Enable ;
wire Stop_Enable  ;
wire Start_Det_Bit;
wire Stop_Det_Bit ;
////signal Interrupt_Enable      : std_logic;  -- not being used
wire SDA_EN_1     ;
wire SDA_EN_2     ;
wire SDA_EN_3     ;

wire SDA_EN_1_out ;
wire SDA_EN_2_out ;
wire SDA_EN_3_out ;

wire SCL_CK       ;
////signal SCLH_CK               : std_logic; -- not being used
wire SCL_synch             ;
wire SDA_synch             ;
wire [2:0] Bit_Count       ;
wire Bit_Count_Enable      ;
wire Byte_Count_Enable     ;
wire Bit_Count_Flag        ;
wire Byte_Count_Flag       ;
wire Trans_Buf_Empty_Set   ;
wire Read_Buf_Full_Set     ;
wire Iack_Clear            ;
wire Go_Clear              ;
wire Trans_Buffer_Empty    ;
wire Read_Buffer_Full      ;
wire [2:0] abits           ;

wire SDA1                 ;
wire SCL1                 ;
wire wcsack               ;
wire rcsack               ;
//Register Blocks
wire [7:0] Command_Reg   ;            //CMD part of Command_Status Reg Contains:
                                      //Go, Abort, Iack, I2C_Mode,
                                      //I2C_address Size, Trans_IE and Recieve_IE. 
wire [7:0] Status_Reg    ;            // Status part of Command_Status Reg Contains:
                                      //I2C_Bus_Busy, Abort_Ack, Lost_Arb, Error
                                      //Trans_Done, Recieve_Done, Trans_Buf_Empty,
                                      //and Recieve_Buf_Full
                                      //I2C bus busy,and retry count
wire [7:0] Read_Buffer      ;        //Data for I2C Read transaction
wire [7:0] Trans_Buffer     ;        //Data for I2C Write transaction
wire [7:0] Low_Address_Reg  ;        //Low order Address bits for I2C Slave
//signal dummy		     : std_logic_vector(2 downto 0);        -- uppder order address bits are not used
wire [7:0] Byte_Count_Reg   ;        // I2C Transaction Byte Count
  
// Command Register Bits ( Written from MPU)
wire I2C_GO         ;
wire I2C_Abort      ;
wire I2C_Iack       ;
wire I2C_Mode       ;
wire I2C_Addr_Size  ;
wire I2C_Recieve_IE ;
wire I2C_Trans_IE   ;

// Status Register Bits
wire I2C_Bus_Busy   ;
wire I2C_Abort_Ack  ;
wire I2C_Error      ;
wire I2C_Lost_Arb   ; // 0 indicates lost arbitration
wire I2C_Done       ; 

// I2C Read/Write Bit
wire I2C_RW_Bit     ;


//begin
//======================================================================================
//Key Register signal assignments: GO, Abort, and Mode
//======================================================================================
assign I2C_GO         = Command_Reg[7];
assign I2C_Abort      = Command_Reg[6];
assign I2C_Mode       = Command_Reg[4];
assign I2C_Addr_Size  = Command_Reg[2];
assign I2C_Trans_IE   = Command_Reg[1];
assign I2C_Recieve_IE = Command_Reg[0];
assign I2C_RW_Bit     = Low_Address_Reg[0];

//Status Register Assignments
assign I2C_Bus_Busy   = Status_Reg[7];    
assign I2C_Abort_Ack  = Status_Reg[6];    
assign I2C_Error      = Status_Reg[5];  
assign I2C_Lost_Arb   = Status_Reg[4];    
assign I2C_Done       = Status_Reg[3];          


assign SDA1  = SDA;
assign SCL1  = SCL;

//============================================================================
//SCL, SCLH, SDA, and SDAH drivers
//============================================================================

assign SCL = SCL_CK ? 1'b0 : 1'bz;

assign SDA = (SDA_EN_1 | SDA_EN_2 | SDA_EN_3) ? 1'b0 : 1'bz;

assign abits = {A2, A1, A0};

MPU_to_I2C MPU_to_I2C_1 
               (.MPU_CLK           (Clock),
                .Rst_L             (Reset_L),
                .CS_L              (CS_L),
                .Addr_Bits         (abits), 
                .RW_L              (RW_L),
                .Read_Buffer       (Read_Buffer),
                .Status_Reg     ({I2C_Bus_Busy,I2C_Error,I2C_Abort_Ack,I2C_Lost_Arb,I2C_Done}),
               // .Status_Reg[3]     (I2C_Error),
               // .Status_Reg[2]     (I2C_Abort_Ack),
               // .Status_Reg[1]     (I2C_Lost_Arb), 
               // .Status_Reg[0]     (I2C_Done), 
                .TBE_Set           (Trans_Buf_Empty_Set),
                .RBF_Set           (Read_Buf_Full_Set),
                .Iack_Clear        (Iack_Clear),
                .Go_Clear          (Go_Clear),
                .Low_Address_Reg   (Low_Address_Reg),
                .Upper_Address_Reg (),
                .Byte_Count_Reg    (Byte_Count_Reg), 
                .Command_Reg       (Command_Reg),
                .Trans_Buffer      (Trans_Buffer),
                .Trans_Buffer_Empty(Trans_Buffer_Empty),
                .Read_Buffer_Full  (Read_Buffer_Full),
                .Iack              (I2C_Iack),
                .DATA 						 (DATA)
                );

I2C_Main I2C_Main_1 
               (.MPU_CLK           (Clock),
                .Rst_L             (Reset_L),
                .SCL               (SCL_synch),
                .SDA               (SDA_synch),
                .Bit_Count         (Bit_Count),
                .Bit_Cnt_Flag      (Bit_Count_Flag),
                .Byte_Cnt_Flag     (Byte_Count_Flag),
                .Trans_Buffer      (Trans_Buffer), 
                .Low_Address_Reg   (Low_Address_Reg),
                .Lost_Arb          (I2C_Lost_Arb),
                .Start_Det         (Start_Det_Bit),
                .Stop_Det          (Stop_Det_Bit),
                .Command_Reg       ({I2C_GO, I2C_Abort}),
                //.Command_Reg[1]    (I2C_GO), 
                //.Command_Reg[0]    (I2C_Abort),
                .Status_Reg        ({Status_Reg[7:5],Status_Reg[3]}),
                //.Status_Reg[3:1]   (Status_Reg[7 : 5]),
                //.Status_Reg[0]     (Status_Reg[3]),
                .Read_Buffer       (Read_Buffer),
                .Bit_Cnt_EN        (Bit_Count_Enable),
                .Byte_Cnt_EN       (Byte_Count_Enable),
                .Start_EN          (Start_Enable),
                .Stop_EN           (Stop_Enable),
                .SDA_EN1           (SDA_EN_1),
                .TBE_Set           (Trans_Buf_Empty_Set),
                .RBF_Set           (Read_Buf_Full_Set),
                .Go_Clear          (Go_Clear),
                .WCS_Ack           (wcsack),
                .RCS_Ack           (rcsack)
                );


Synch_Block Synch_1 
              (.MPU_CLK (Clock), 
               .Rst_L ( Reset_L), 
               .SCL (SCL1), 
               .SDA (SDA1),
               .SCL_synch (SCL_synch), 
               .SDA_synch (SDA_synch)
               );


I2C_Clock_Generator #(7, 162, 14, 325) I2C_Clock_Gen_1 
                 // generic map
                 // (cnt_f_hi => 7,
                 //  cnt_s_hi => 162,--11,
                 //  cnt_f_lo => 14,
                 //  cnt_s_lo => 325)--22)
                  (.MPU_CLK (Clock),
                   .Rst_L   (Reset_L), 
                   .Mode    (I2C_Mode), 
                   .Abort   (I2C_Abort),
                   .SCL_CK  (SCL_CK)
                   );

Counter_Block Counter_Blk_1 
               (.MPU_CLK (Clock), 
                .Rst_L   (Reset_L),
                .SCL     (SCL_synch), 
                .Abort   (Command_Reg[6]), 
                .Byte_Cnt_EN    (Byte_Count_Enable),
                .Bit_Cnt_EN     (Bit_Count_Enable),
                .Go             (I2C_GO),
                .Byte_Count_Reg (Byte_Count_Reg), 
                .Bit_Count      (Bit_Count),
                .Bit_Cnt_Flag   (Bit_Count_Flag),
                .Byte_Cnt_Flag  (Byte_Count_Flag)
                ); 

Arbitrator Arb_1 
       (.MPU_CLK  (Clock),
        .Rst_L    (Reset_L), 
        .SCL      (SCL_synch),
        .SDA      (SDA_synch),
        .SDA_EN1  (SDA_EN_1),
        .SDA_EN2  (SDA_EN_2), 
        .SDA_EN3  (SDA_EN_3),
        .WCS_Ack  (wcsack),
        .RCS_Ack  (rcsack),
        .Lost_ARB (Status_Reg[4])
        );

Int_Ctrl_Block Int_Ctrl_1
             (.MPU_CLK              (Clock),
              .RST_L                (Reset_L),
              .abort                (I2C_Abort),
              .Trans_IE             (I2C_Trans_IE),
              .Recieve_IE           (I2C_Recieve_IE),
              .I2C_RW               (I2C_RW_Bit),
              .Trans_Buffer_Empty   (Trans_Buffer_Empty),
              .Recieve_Buffer_Full  (Read_Buffer_Full),
              .Iack                 (I2C_Iack),
              .Iack_Clear           (Iack_Clear),
              .INTR_L               (INTR_L)
              );

Start_Generator Start_Gen_1
             (.MPU_CLK      (Clock), 
              .Rst_L        (Reset_L),
              .Start_Enable (Start_Enable),
              .SCL          (SCL_synch), 
              .SDA          (SDA_synch),
              .SDA_EN2      (SDA_EN_2)
              );

Start_Detect Start_Det_1
             (.MPU_CLK   (Clock), 
              .Rst_L     (Reset_L), 
              .SCL       (SCL_synch),
              .SDA       (SDA_synch),
              .Start_Det (Start_Det_Bit)
              );

Stop_Generator Stop_Gen_1
             (.MPU_CLK      (Clock), 
              .Rst_L        (Reset_L),
              .Stop_Enable  (Stop_Enable),
              .SCL          (SCL_synch), 
              .SDA          (SDA_synch),
              .SDA_EN3      (SDA_EN_3)
              );

Stop_Detect Stop_Det_1
             (.MPU_CLK   (Clock), 
              .Rst_L     (Reset_L), 
              .SCL       (SCL_synch),
              .SDA       (SDA_synch),
              .Stop_Det  (Stop_Det_Bit)
              );


endmodule


