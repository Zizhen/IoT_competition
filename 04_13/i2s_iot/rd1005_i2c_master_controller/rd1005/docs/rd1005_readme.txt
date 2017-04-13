                    I2C Master Controller Reference Design                          
============================================================================================================
File List
 1. /rd1005/docs/rd1005.pdf                                 --> I2C master design document
    /rd1005/docs/rd1005_readme.txt                          --> Read me file (this file)
    /rd1005/docs/i2c_Bus_specification.pdf                  --> I2C spec version 2.1
    /rd1005/docs/revision_history.xlsx                  --> Revision history
 2. /rd1005/project/<device_name>/verilog/<device_name>_verilog.ldf	    --> Lattice Diamond project file for verilog; device_name = ecp3,ecp5,lptm,xo,xo2,xp2
    /rd1005/project/<device_name>/verilog/<device_name>_verilog.lpf       --> preference file for verilog           
    /rd1005/project/<device_name>/verilog/<device_name>_verilog.sty      --> strategy file for verilog  
	/rd1005/project/<device_name>/vhdl/<device_name>_vhdl.ldf	            --> Lattice Diamond project file for vhdl
    /rd1005/project/<device_name>/vhdl/<device_name>_vhdl.lpf             --> preference file for vhdl          
    /rd1005/project/<device_name>/vhdl/<device_name>_vhdl.sty            --> strategy file for vhdl  
   

 3. /rd1005/simulation/<device_name>/verilog/rtl_verilog.do           --> Verilog RTL simulation script for xo2
    /rd1005/simulation/<device_name>/verilog/timing_verilog.do        --> Verilog TIMING simulation script for xo2
    /rd1005/simulation/<device_name>/vhdl/rtl_vhdl.do                 --> VHDL RTL simulation script for xo2
    /rd1005/simulation/<device_name>/vhdl/timing_vhdl.do              --> VHDL TIMING simulation script for xo2
	
	

 4. /rd1005/source/vhdl/I2C_Top.vhd                	    --> VHDL source file - top level
    /rd1005/source/vhdl/I2C_Mpu_Blk.vhd                     --> VHDL source file                                                         
    /rd1005/source/vhdl/I2C_Main_Blk.vhd                    --> VHDL source file 
    /rd1005/source/vhdl/I2C_Synch_Blk.vhd                   --> VHDL source file  
    /rd1005/source/vhdl/I2C_Arb_Blk.vhd                     --> VHDL source file 
    /rd1005/source/vhdl/I2C_Clk_Blk.vhd                     --> VHDL source file 
    /rd1005/source/vhdl/I2C_Cnt_Blk.vhd                     --> VHDL source file 
    /rd1005/source/vhdl/I2C_INT_Blk.vhd                     --> VHDL source file 
    /rd1005/source/vhdl/I2C_SS_Blk.vhd                      --> VHDL source file 
    /rd1005/source/verilog/i2c_top.v                        --> Verilog source file, Verilog wrapper (for Verilog users)                                                 
 5. /rd1005/testbench/vhdl/top_test_bench.vhd               --> Testbench for simulation - top-level 
    /rd1005/testbench/vhdl/ack_gen.vhd                      --> Testbench for simulation  
    /rd1005/testbench/vhdl/clk_reset.vhd                    --> Testbench for simulation 
    /rd1005/testbench/vhdl/i2c_slave.vhd                    --> Testbench for simulation                                                                                       
    /rd1005/testbench/vhdl/up_model.vhd                     --> Testbench for simulation 
    /rd1005/testbench/vhdl/pullup.vhd                       --> Testbench for simulation 
    /rd1005/testbench/top_test_bench_4k.vhd                 --> Testbench for 4KZE simulation

===============================================================================================================================
Important Notes:
1. Unzip the rd1005_revyy.y.zip file using the existing folder names, where yy.y is the current version of the zip file 
2. If there is lpf file or lci file available for the reference design:
   2.1 copy the content of the provided lpf file to the <project_name>.lpf file under your ispLEVER project,
   2.2 use Constraint Files >> Add >> Exiting File to import the lpf to Diamond project and set it to be active,
   2.3 copy the content of the provided lct file to the <project_name>.lct under your cpld project.
3. If there is sty file (strategy file for Diamond) available for the design, go to File List tab on the left side of the GUI. 
   Right click on Strategies >> Add >> Existing File. Then right click on the imported file name and select "Set as Active Strategy".
4. The .do simulation scripts are location specific. User must modify the paths to point to their librarylocation or Diamond project paths.
==============================================================================================================================
How to create a ispLEVER or ispLEVER Classic project:
1. Bring up ISPLEVER OR ISPLEVER CLASSIC software, in the GUI, select File >> New Project
2. In the New Project popup, select the Project location, provide a Project name,select Design Entry Type and click Next.
3. Use RD1005.pdf to see which device /speedgrade should be selected to achieve
4. Make sure provided lpf or lct is used in the current directory.   
5. Add the necessary source files from the rdxxxx/source directory, and the testbench from rdxxxx/testbench directory, click Next
   Note:In the left-side panel ,by clicking on top-level testbench user can add Testbench Dependency files.
6. Click Finish,now the project is successfully created.
 
How to run simulation:

1. In the Project Navigator, highlight the ../../testbench/vhdl/top_test_bench.vhd on the left-side panel,                  
   user will see 3 simulation options on the right panel.
2. For functional or timing simulation, double click on Verilog Functional or timing  Simulation with Aldec Active-HDL.
   Aldec simulator will be brought up, click yes to overwrite the existing file.
   Note:Aldec simulation will run for default 1us.
3. In the Console window, type "run -all" or "run  850us" for VHDL ( or any other timelength user wishes to run simulation).
   Functional simulation will run until complete, user will see a script shown in the Console panel like this 

            0 ns Initializing Memory 
            0 ns Done Initializing Memory 
           15 ns Initializing Memory 
           15 ns Done Initializing Memory 
           20 ns Using 7 bit Addressing 
          540 ns
      Simulation Starting
          555 ns << Starting the write_two_byte_test >> 
          705 ns Writing Low Addr Reg 10100000
         1095 ns Writing Upper Addr Reg 00000000
         1485 ns Writing Byte Count 00000010
         1875 ns Writing Data Buf 00001010
         2265 ns Writing Command Reg 10000011
       108195 ns 7 bit addressing & address is 10100000
       118335 ns Reading Status Reg 
       118695 ns Clearing Iack Reg 
       119085 ns Writing Data Buf 10111011
       186435 ns Slave Data Received on write is 00001010
       274455 ns Slave Data Received on write is 10111011
       319325 ns Checking the done bit 
       319515 ns Reading Status Reg 
       319935 ns Reading Status Reg 
       320145 ns << Starting the read_two_byte_test >> 
       320295 ns Writing Low Addr Reg 10100000
       320685 ns Writing Upper Addr Reg 00000000
       321075 ns Writing Byte Count 00000001
       321465 ns Writing Data Buf 00001010
       321855 ns Writing Command Reg 10000011
       421155 ns 7 bit addressing & address is 10100000
       499395 ns Slave Data Received on write is 00001010
       522095 ns Checking the done bit 
       522225 ns Writing Low Addr Reg 10100001
       522615 ns Writing Byte Count 00000010
       523005 ns Writing Command Reg 10000011
       626535 ns 7 bit addressing & address is 10100001
       709665 ns Slave Data transmitted on read is 10111011
       709665 ns Master ACK'd on a Data Read, returning to Data 
       797685 ns Slave Data transmitted on read is 00001011
       797685 ns Master ACK'd on a Data Read, returning to Data 
       823395 ns Reading Status Reg 
       823755 ns Clearing Iack Reg 
       824145 ns Reading Data Buf Reg 
       824325 ns Read Data 00001011
       824355 ns Checking the done bit 
       824565 ns Reading Status Reg 
       824985 ns Reading Status Reg 
       825195 ns Simulation complete with 0 errors. 
       EXECUTION:: NOTE   : End of Verification, if error number is 0, verify is passed, otherwise please check wave 
             
4. For post-route functional or timing simulation simulation, double click on Verilog Post-Route Functional or Timing 
   Simulation with Aldec Active-HDLor Aldec Verilog Timing simulation.Type "run -all" or "run 850us" in the Console window. Similar message 
   will be shown in the console panel of the Aldec Active-HDL simulator. 
   
========================================================================================================================================
How to create a project in Diamond:
1. Bring up Diamond software, in the GUI, select File >> New Project, click Next
2. In the New Project popup, select the Project location and provide a Project name, click Next.
   Note: default project location is /RDxxxx/project/<device_family>_diamond/<language>       
3. Add the necessary source files from the RDxxxx/source directory, click Next
4. Select device, speedgrade,package, click Next
5. Click Finish. Now the project is successfully created. 
   
How to run simulation under Diamond:

1. Bring up the Simulation Wizard under the Tools menu.
2. Next provide a name for simulation project, and select RTL or post-route simulation
   2.1 For post-route simulation, must export verilog or vhdl simulation file after Place and Route
3. Next add the test bench files form the RD1005/TestBench directory
   3.1 For VHDL, make sure the top-level test bench is last to be added
4. Next click Finish, this will bring up the Aldec simulator automatically
5. In Aldec environment, you can manually activate the simulation or you can use a script
   5.1 Use the provided script in the RD1005/Simulation/<language> directory
    a. For FUNCTIONAL simulation, change the library name to the device family
    i) MachXO2: ovi_machxo2 for verilog, machxo2 for vhdl
   ii) MachXO: ovi_machxo for verilog, machxo for vhdl
   iii)XP2: ovi_xp2 for verilog, xp2 for vhdl
   iv) ECP3: ovi_ecp3 for verilog, ecp3 for vhdl
    v) XO3L: ovi_machxo3l for verilog, machxo3l for vhdl
	vi)ECP5: ovi_ecp5u for verilog, ecp5u for vhdl
    b. For POST-ROUTE simulation, open the script and change the following:
    i) The sdf file name and the path pointing to your sdf file.
       The path usually looks like "./<implementation_name>/<sdf_file_name>.sdf"
   ii) Change the library name using the library name described above
    c. Click Tools > Execute Macro and select the xxx.do file to run the simulation
    d. This will run the simulation until finish
   5.2 Manually activate the simulation
    a. Click Simulation > Initialize Simulation
    b. Click File > New > Waveform, this will bring up the Waveform panel
    c. Click on the top-level testbench, drag all the signals into the Waveform panel  
    d. At the Console panel, type "run 850us" for VHDL simulation, or "run -all" for Verilog simulation
    e. For timing simulation, you must manually add -sdfmax i2cblock="./temp/temp_temp_vho.sdf"
       into the asim or vsim command. Use the command in timing_xxx.do as an
6. The simulation result will be similar to the one described in ispLEVER simulation section.

=========================================================================================================================
How to run Fit / Place and Route, JEDEC generation, and Timing Analysis in ispLEVER :

1. Highlight the device on the left-side panel of the Project Navigator (ispLEVER). On the right-side panel,
 a. if it is 4000ZE device, double click on Fit Design. This will bring the deisgn through fitting.
 b. if it is XO2/XO/XP2 device, double click on Place and Route Design. This will bring the design through synthesis, mapping, and place and route.
 c. if it is Platform Manager,double click on Place and Route Design. This will bring the design through synthesis, mapping, and place and route.
2. To view the report , do the right click on "Report Summary-HTML" and click "View".
   Report will appear in internet browser.
3. Highlight the device on the left-side panel of the Project Navigator. On the right-side panel, double click on
 a. Generate Data File (JEDEC) 
    This will generate the jedec file for the design.    
Note: Platform Manager supports mix-language design. To use Verilog as the top-level module, simply remove the i2c_top.vhd, and import 
i2c_top.v into the Project Navigator. Then reapeat the above procedures. 

How to run Place and Route, JEDEC generation, and Timing Analysis in Diamond:

1. Double click the process in the Process panel to run the process, e.g. Double click on Place and Route design. 
2. Double click on Expoert File >> JEDEC file to generate the jedec files. 
3. Run the Place and Route Trace, then go to Report tab to view the TRACE report. 




==============================================================================================================================================


