remove_design -all
# specify your verilog files here (please list all RTL files)
set FILE_LIST {"src/URISC.v"}
# specify your top module here
set TOP_CELL URISC

#reset_design

analyze -format verilog $FILE_LIST
elaborate $TOP_CELL
current_design $TOP_CELL
link
uniquify
check_design

source "./constrain.tcl"

compile_ultra

sh rm  -r output/
sh mkdir output
#write -hierarchy -format db -output "output/${TOP_CELL}_map.db"
write -hierarchy -format ddc -output "output/${TOP_CELL}_map.ddc"
write -hierarchy -format verilog -output "output/${TOP_CELL}_map.v"
write_sdf "output/${TOP_CELL}_map.sdf"
write_sdc "output/${TOP_CELL}_map.sdc"

sh mkdir reports
report_timing > "reports/${TOP_CELL}_timing.rpt"
report_timing -delay min >> "reports/${TOP_CELL}_timing.rpt"
report_area > "reports/${TOP_CELL}_area.rpt"
report_power > "reports/${TOP_CELL}_power.rpt"
