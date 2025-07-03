# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Tue Jul 01 15:34:26 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design rcomplement

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} 
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {a[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports cin1]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports cin2]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports r]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {y[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {y[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {y[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 3.0 [get_ports {y[0]}]
set_max_transition 0.5 [get_ports {y[3]}]
set_max_transition 0.5 [get_ports {y[2]}]
set_max_transition 0.5 [get_ports {y[1]}]
set_max_transition 0.5 [get_ports {y[0]}]
set_max_capacitance 0.2 [get_ports {y[3]}]
set_max_capacitance 0.2 [get_ports {y[2]}]
set_max_capacitance 0.2 [get_ports {y[1]}]
set_max_capacitance 0.2 [get_ports {y[0]}]
set_driving_cell -lib_cell INVX1 -library slow -pin "Y" [get_ports {a[3]}]
set_driving_cell -lib_cell INVX1 -library slow -pin "Y" [get_ports {a[2]}]
set_driving_cell -lib_cell INVX1 -library slow -pin "Y" [get_ports {a[1]}]
set_driving_cell -lib_cell INVX1 -library slow -pin "Y" [get_ports {a[0]}]
set_driving_cell -lib_cell INVX1 -library slow -pin "Y" [get_ports cin1]
set_driving_cell -lib_cell INVX1 -library slow -pin "Y" [get_ports cin2]
set_driving_cell -lib_cell INVX1 -library slow -pin "Y" [get_ports r]
set_wire_load_mode "enclosed"
