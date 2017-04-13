-------------------------------------------------------------------------------
			RD1171 Source Files Setup:

	To load pre-compiled project in icecube2:
		1. Open iCEcube2 and select "Open Project".
		2. Browse to  the directory "RD1171\Project\I2S_Controller".
		3. Select the project file "I2S_Controller_sbt.project" to load the project in iCEcube2.

	To Synthesize with iCEcube2:
		1. Create a new Project in the iCEcube2 software, choose appropriate Device
		   (Select "iCE40 LP1K CM121" for this project).
		2. To add design source files add files from the directory "RD1171\Source".
		3. Select the files 
			a.Verilog/I2S_Controller.v
			b.Verilog/i2s_tx.v
			c.Verilog/i2s_rx.v
		4. Launch Synthesis tool, RUN synthesis in Synplify and close upon successful completion.

---------------------------------------------------------------------------------
