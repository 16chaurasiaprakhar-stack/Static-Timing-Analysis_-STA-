# Static-Timing-Analysis_-STA-
 OpenSTA in a static timing analysis (STA) tool used to verify the timing correctness of digital circuits at the gate level. It analyses the timing paths in a design based on the netlist, timing libraries, and design constraints to check for violations of setup and hold times. It calculates delays caused by cells and critical paths



## PROCEDURE TO CREATE:

RTL CODE & SYNTH file are pre required to use STA 

*STEP 1*

1.1: Create a directory for your lab: mkdir <project_name>
1.2: Open lab directory: cd <project_name>
gvim file.v
2.2: save the file using command- :wq

*STEP 2*

Create .sdc file
gvim file.sdc
 
*STEP 3*

command: sta
# Loads the liberty to osu018 standard cell library
i) read_liberty osu018_stdcells.lib

# Reads your synthesized gate-level Verilog netlist
ii) read_verilog file_synth.v

# Links the loaded netlist and library to the top module name
iii) link_design file

# Loads your timing constraints from an SDC file
iv) read_sdc file.sdc

# Runs timing analysis to check all timing constraints and generates a report.
v) report_checks

//There are many operation can be peformed using STA 




