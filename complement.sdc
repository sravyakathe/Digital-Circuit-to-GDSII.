# SDC for rcomplement module

# Define the operating clock for reference (optional for combinational logic)
create_clock -name clk -period 10.0

# Input delays (assumed from external source, 2 ns after clk edge)
set_input_delay 2.0 -clock clk [get_ports a]
set_input_delay 2.0 -clock clk [get_ports cin1]
set_input_delay 2.0 -clock clk [get_ports cin2]
set_input_delay 2.0 -clock clk [get_ports r]

# Output delays (required time before next clock edge, assume 3 ns)
set_output_delay 3.0 -clock clk [get_ports y[*]]

# Set load on outputs (optional – e.g., 10fF)
set_load 10e-15 [get_ports y[*]]

# Optional: Set driving cells (e.g., assume std inverter for inputs)
set_driving_cell -lib_cell INVX1 [get_ports {a cin1 cin2 r}]

# Optional: Set maximum transition time (slew)
set_max_transition 0.5 [all_outputs]

# Optional: Set maximum capacitance
set_max_capacitance 0.2 [all_outputs]
