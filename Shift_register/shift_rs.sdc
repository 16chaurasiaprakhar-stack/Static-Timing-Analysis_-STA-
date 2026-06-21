# Clock Definition

create_clock -name clk -period 10 [get_ports clk]


# Input Delay Constraints


set_input_delay -clock clk -min 5 [get_ports clk]
set_input_delay -clock clk -max 5 [get_ports {rst data_in}]


# Input Transition


set_input_transition -min 5 [get_ports {rst data_in}]
set_input_transition -max 5 [get_ports clk]

# Output Load


set_load -pin_load 4 [get_ports q]


# Output Delay


set_output_delay -clock clk -min 2 [get_ports q]
