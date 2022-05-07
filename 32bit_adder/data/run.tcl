#specify libraries
set target_library { /data3/course_lib_umc18/synopsys/tt_1v8_25c.db }
set link_library {* /data3/course_lib_umc18/synopsys/tt_1v8_25c.db /soft1/synopsys/dc/libraries/syn/dw_foundation.sldb }
set symbol_library { /data3/course_lib_umc18/umc18.sdb }
set synthetic_library { /soft1/synopsys/dc/libraries/syn/dw_foundation.sldb}
remove_design -all

# specify your verilog files here (please list all RTL files),if
set FILE_LIST {"./src/Add32.v"}
#set FILE_LIST {"add"}
set TOP_CELL Add32
analyze -format verilog $FILE_LIST
elaborate $TOP_CELL
current_design $TOP_CELL
set_operating_conditions -max "tt_1v8_25c" -max_library "tt_1v8_25c"
link
uniquify

#specify your constraint here
#In case that your design only have combine logic, use this 2 below
set My_delay 0.77
set_max_delay $My_delay -from [all_inputs] -to [all_outputs]
#In case that your design have a clock,use this 3 below
#set CLK_PERIOD 2
#create_clock [get_ports clk] -period $CLK_PERIOD
#set_dont_touch_network [all_clocks]
set_max_area 0

#compile&output files
check_design
compile_ultra

write -hierarchy -format verilog -output "output/${TOP_CELL}_map.v"
#sh mkdir reports
sh rm  -r {./reports/}
sh mkdir {./reports/}
report_timing > "./reports/${TOP_CELL}_timing.rpt"
report_timing -delay min >> "../reports/${TOP_CELL}_timing.rpt"
report_area > "./reports/${TOP_CELL}_area.rpt"
report_power > "./reports/${TOP_CELL}_power.rpt"
