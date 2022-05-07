###################################################################

# Created by write_sdc on Thu Apr 28 20:20:48 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions tt_1v8_25c -library tt_1v8_25c
set_max_area 0
create_clock [get_ports clk_PH1]  -period 4  -waveform {0 2}
set_clock_uncertainty 0.004  [get_clocks clk_PH1]
set_clock_transition -max -rise 0.25 [get_clocks clk_PH1]
set_clock_transition -max -fall 0.25 [get_clocks clk_PH1]
set_clock_transition -min -rise 0.25 [get_clocks clk_PH1]
set_clock_transition -min -fall 0.25 [get_clocks clk_PH1]
set_input_delay -clock clk_PH1  2  [get_ports clk_PH2]
set_input_delay -clock clk_PH1  2  [get_ports rst_n]
set_input_delay -clock clk_PH1  2  [get_ports RUN]
set_input_delay -clock clk_PH1  2  [get_ports {DATA_IN[7]}]
set_input_delay -clock clk_PH1  2  [get_ports {DATA_IN[6]}]
set_input_delay -clock clk_PH1  2  [get_ports {DATA_IN[5]}]
set_input_delay -clock clk_PH1  2  [get_ports {DATA_IN[4]}]
set_input_delay -clock clk_PH1  2  [get_ports {DATA_IN[3]}]
set_input_delay -clock clk_PH1  2  [get_ports {DATA_IN[2]}]
set_input_delay -clock clk_PH1  2  [get_ports {DATA_IN[1]}]
set_input_delay -clock clk_PH1  2  [get_ports {DATA_IN[0]}]
