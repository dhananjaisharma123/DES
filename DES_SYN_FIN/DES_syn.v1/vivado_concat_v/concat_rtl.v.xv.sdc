# written for flow package Vivado 
set sdc_version 1.7 

create_clock -name clk -period 2.0 -waveform { 0.0 1.0 } [get_ports {clk}]
set_clock_uncertainty 0.0 [get_clocks {clk}]

create_clock -name virtual_io_clk -period 2.0
## IO TIMING CONSTRAINTS
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {rst}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {input_rsc_dat[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {input_rsc_triosy_lz}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {key_rsc_dat[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {key_rsc_triosy_lz}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {return_rsc_dat[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {return_rsc_triosy_lz}]

