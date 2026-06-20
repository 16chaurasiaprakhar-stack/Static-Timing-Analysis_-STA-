# Static Timing Analysis (STA) using OpenSTA

OpenSTA is a static timing analysis (STA) tool used to verify the timing correctness of digital circuits at the gate level. It analyzes the timing paths in a design based on the netlist, timing libraries, and design constraints to check for violations of setup and hold times. It calculates delays caused by cells and identifies critical paths.

---

## Technical Terminology

* **Startpoint:** The clock pin where the timing path begins (e.g., `f1:CLK`).
* **Endpoint:** The signal or port where the timing path ends (e.g., `out`).
* **Arrival Time:** The actual time data takes to propagate from the startpoint to the endpoint.
* **Required Time:** The latest allowable time for data to arrive at the endpoint to meet timing requirements.
* **Slack:** The difference between the required time and the arrival time, showing the timing margin ($Slack = Required\ Time - Arrival\ Time$).
* **Violated:** Indicates that the timing requirement is not met because the data arrives too late. 
    * *Example:* If the arrival time (30.724) is greater than the required time (20.000), the slack is negative (-10.724), causing a violation.

---

## Procedure

> **Pre-requisites:** The RTL code and the synthesized gate-level netlist file (`.v`) are required before starting the STA process.

### Step 1: Set Up the Work Directory and RTL
1. Create a directory for your lab:
   ```bash
   mkdir <project_name>
**1.2: Open lab directory:**
`cd <project_name>`

**Open/Create Verilog file:**
`gvim file.v`

**2.2: Save the file using command:**
`:wq`

---

### STEP 2

**Create .sdc file:**
`gvim file.sdc`

---

### STEP 3

**Start STA tool:**
`sta`

**i) Loads the liberty to osu018 standard cell library:**
`read_liberty osu018_stdcells.lib`

**ii) Reads your synthesized gate-level Verilog netlist:**
`read_verilog file_synth.v`

**iii) Links the loaded netlist and library to the top module name:**
`link_design file`

**iv) Loads your timing constraints from an SDC file:**
`read_sdc file.sdc`

**v) Runs timing analysis to check all timing constraints and generates a report:**
`report_checks`

*(There are many operations that can be performed using STA)*
