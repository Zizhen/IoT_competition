                    I2S Controller Reference Design
===================================================================================================
 
File List
 1. /rd1101/docs/rd1101.pdf                                 --> I2S Controller design document
    /rd1101/docs/rd1101_readme.txt                          --> Read me file (this file)    
 2. /rd1101/project/tb_i2s_vhd.udo_example                  --> vital glitch removal example 
    /rd1101/project/xo3l/verilog/xo3l_verilog_lse.ldf	    --> Lattice Diamond project file (LSE)
    /rd1101/project/xo3l/verilog/xo3l_verilog_lse.lpf       --> preference file (LSE)           
    /rd1101/project/xo3l/verilog/xo3l_verilog_lse1.sty      --> strategy file	(LSE)
    /rd1101/project/xo3l/verilog/xo3l_verilog_lse.ldf	    --> Lattice Diamond project file (Synplify Pro)
    /rd1101/project/xo3l/verilog/xo3l_verilog_lse.lpf       --> preference file (Synplify Pro)           
    /rd1101/project/xo3l/verilog/xo3l_verilog_lse1.sty      --> strategy file	(Synplify Pro)
 3. /rd1101/simulation/xo2/verilog/rtl_verilog.do 	    --> RTL simulation script file for verilog for xo2
    /rd1101/simulation/xo2/vhdl/rtl_vhdl.do 		    --> RTL simulation script file for vhdl for xo2
    /rd1101/simulation/xo3l/verilog/rtl_verilog.do 	    --> RTL simulation script file for verilog for xo3l
    /rd1101/simulation/xo3l/vhdl/rtl_vhdl.do 		    --> RTL simulation script file for vhdl for xo3l
 4. /rd1101/source/verilog/dpram_rtl.v                      --> verilog source file
    /rd1101/source/verilog/gen_control_reg.v                --> verilog source file
    /rd1101/source/verilog/gen_event_reg.v                  --> verilog source file
    /rd1101/source/verilog/i2s_codec.v                      --> verilog source file
    /rd1101/source/verilog/i2s_topm.v                       --> verilog source file
    /rd1101/source/verilog/rx_i2s_wbd.v                     --> verilog source file
    /rd1101/source/verilog/tx_i2s_wbd.v                     --> verilog source file
    /rd1101/source/vhdl/dpram_rtl.vhd                       --> VHDL source file
    /rd1101/source/vhdl/gen_control_reg.vhd                 --> VHDL source file
    /rd1101/source/vhdl/gen_event_reg.vhd                   --> VHDL source file
    /rd1101/source/vhdl/i2s_codec.vhd                       --> VHDL source file
    /rd1101/source/vhdl/i2s_topm.vhd                        --> VHDL source file
    /rd1101/source/vhdl/rx_i2s_wbd.vhd                      --> VHDL source file
    /rd1101/source/vhdl/tx_i2s_wbd.vhd                      --> VHDL source file
 5. /rd1101/testbench/verilog/tb_i2s.v                      --> Testbench for verilog simulation     
    /rd1101/testbench/vhdl/tb_i2s.vhd                       --> Testbench for VHDL simulation 
    
===================================================================================================  
!!IMPORTANT NOTES:!!
1. Unzip the rd1101_revyy.y.zip file using the existing folder names, where yy.y is the current
   version of the zip file
2. If there is lpf file or lci file available for the reference design:
	2.1 copy the content of the provided lpf file to the <project_name>.lpf file under your ispLEVER project, 
	2.2 use Constraint Files >> Add >> Exiting File to import the lpf to Diamond project and set it to be active,
	2.3 copy the content of the provided lct file to the <project_name>.lct under your cpld project.  
3. If there is sty file (strategy file for Diamond) available for the design, go to File List tab on the left 
   side of the GUI. Right click on Strategies >> Add >> Existing File. Then right click on the imported file 
   name and select "Set as Active Strategy".

===================================================================================================  
Using ispLEVER or ispLEVER Classic software
---------------------------------------------------------------------------------------------------
HOW TO CREATE A ISPLEVER OR ISPLEVER CLASSIC PROJECT:
1. Bring up ISPLEVER OR ISPLEVER CLASSIC software, in the GUI, select File >> New Project
2. In the New Project popup, select the Project location, provide a Project name, select Design Entry Type 
   and click Next.
3. Use rd1101.pdf to see which device /speedgrade should be selected to achieve the desired timing result
4. Add the necessary source files from the rd1101\source directory, click Next.Note:when this design is
   used as i2s transmitter master,please add source file tx_i2s_wbd.v(tx_i2s_wbd.vhd) and do not add source
   file rx_i2s_wbd.v(rx_i2s_wbd.vhd). when this design is used as i2s receiver master,please add source file 
   rx_i2s_wbd.v(rx_i2s_wbd.vhd) and do not add source file tx_i2s_wbd.v(tx_i2s_wbd.vhd).
5. Click Finish. Now the project is successfully created. 
6. Make sure the provided lpf or lct is used in the current directory. 

---------------------------------------------------------------------------------------------------
HOW TO RUN SIMULATION FROM ISPLEVER OR ISPLEVER CLASSIC PROJECT:
0. Before simulation, please be sure whether this design is used as i2s transmitter master or 
   as i2s receiver master. 
   IF as i2s transmitter master,please do as the following:
   0.1 Set the parameter IS_RECEIVER in the source file i2s_topm.v(i2s_topm.vhd) to 0.
   0.2 Comment "`define IS_RECEIVER" line for Verilog testbench.
   0.3 Set the parameter IS_RECEIVER to 0 for the VHDL testbench. 
   IF as i2s receiver master,please do as the following:
   0.1 Set the parameter IS_RECEIVER in the source file i2s_topm.v(i2s_topm.vhd) to 1.
   0.2 Do not comment "`define IS_RECEIVER" line for Verilog testbench.
   0.3 Set the parameter IS_RECEIVER to 1 for the VHDL testbench. 
1. Import the top-level testbench into the project as test fixture and associate with the device	
2. In the Project Navigator, highlight the testbench file on the left-side panel, user will see 3 
   simulation options on the right panel.
3. For functional simulation, double click on Verilog (or VHDL) Functional Simulation with Aldec 
   Active-HDL. Aldec simulator will be brought up, click yes to overwrite the existing file. The 
   simulator will initialize and run for 1us.
4. Type "run 500us" for vhdl or "run -all" for verilog in the Console panel

5. For timing simulation, double click on Verilog (or VHDL) Post-Route Timing Simulation with Aldec 
   Active-HDL. Similar message will be shown in the console panel of the Aldec Active-HDL simulator.
   5.1 Run 500us to see the complete simulation
   5.1 In timing simulation you may see some warnings about narrow widths or vital glitches. These 
       warnings can be ignored. 
   5.2 Vital glitches can be removed by added a vsim command in the udo file. Use the udo.example 
       under the \project directory
   
===================================================================================================    
Using Diamond Software
---------------------------------------------------------------------------------------------------  
HOW TO CREATE A PROJECT IN DIAMOND:
1. Launch Diamond software, in the GUI, select File >> New Project, click Next
2. In the New Project popup, select the Project location and provide a Project name and implementation 
   name, click Next.
3. Add the necessary source files from the rd1101\source directory, click Next. .Note:when this design is
   used as i2s transmitter master,please add source file tx_i2s_wbd.v(tx_i2s_wbd.vhd) and do not add source
   file rx_i2s_wbd.v(rx_i2s_wbd.vhd). when this design is used as i2s receiver master,please add source file 
   rx_i2s_wbd.v(rx_i2s_wbd.vhd) and do not add source file tx_i2s_wbd.v(tx_i2s_wbd.vhd).
4. Select the desired part and speedgrade. You may use rd1101.pdf to see which device and speedgrade 
   can be selected to achieve the published timing result 
5. Click Finish. Now the project is successfully created. 
6. MAKE SURE the provided lpf and/or sty files are used in the current directory. 
      
----------------------------------------------------------------------------------------------------      
HOW TO RUN SIMULATION UNDER DIAMOND:
1. Bring up the Simulation Wizard under the Tools menu 
2. Next provide a name for simulation project, and select RTL or post-route simulation
	2.1 For post-route simulation, must export verilog or vhdl simulation file after Place and Route
3. Next add the test bench files form the rd1101\TestBench directory 
4. Next click Finish, this will bring up the Aldec simulator automatically
5. In Aldec environment, you can manually activate the simulation or you can use a script
	5.1 Use the provided script in the rd1101\Simulation\<language> directory
	  a. For functional simulation, change the library name to the device family
	  	i) MachXO2: ovi_machxo2 for verilog, machxo2 for vhdl
	  	ii) MachXO: ovi_machxo for verilog, machxo for vhdl
	  	iii)XP2: ovi_xp2 for verilog, xp2 for vhdl
                iV)XO3L; ovi_machxo3l for verilog, machxo3l for vhdl
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
		d. At the Console panel, type "run 500us" for VHDL simulation, or "run -all" for Verilog 
		   simulation
		e. For timing simulation, you must manually add 
		   -sdfmax ITX32M="./final_xo2/final_xo2_final_xo2_vo.sdf"
		   into the asim or vsim command. Use the command in timing_xxx.do as an example
6. The simulation result will be similar to the one described in ispLEVER simulation section. 
