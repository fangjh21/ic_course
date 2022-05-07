# specify your clock port here
set CLK {"clk_PH1"}
# specify your clock period here (in nanosecend)
set CLK_PERIOD 4

create_clock [get_ports $CLK] -period $CLK_PERIOD
set_dont_touch_network [all_clocks]
set_clock_uncertainty [expr $CLK_PERIOD * 0.001] [all_clocks]
set_clock_transition 0.25 [all_clocks]

set all_in_except_clk [remove_from_collection [all_inputs] [get_ports $CLK]]

set_input_delay [expr $CLK_PERIOD * 0.5] -clock $CLK $all_in_except_clk

set_max_area 0

set_operating_conditions -max "tt_1v8_25c" -max_library "tt_1v8_25c" 

set auto_wire_load_selection false

