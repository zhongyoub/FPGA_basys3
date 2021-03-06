# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/FPGA_basys3/code_key/code_key.cache/wt [current_project]
set_property parent.project_path D:/FPGA_basys3/code_key/code_key.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  D:/FPGA_basys3/code_key/code_key.srcs/sources_1/new/clk_div.v
  D:/FPGA_basys3/code_key/code_key.srcs/sources_1/new/code_key_top.v
}
read_xdc D:/FPGA_basys3/code_key/code_key.srcs/constrs_1/new/code_key.xdc
set_property used_in_implementation false [get_files D:/FPGA_basys3/code_key/code_key.srcs/constrs_1/new/code_key.xdc]

synth_design -top code_key_top -part xc7a35tcpg236-1
write_checkpoint -noxdef code_key_top.dcp
catch { report_utilization -file code_key_top_utilization_synth.rpt -pb code_key_top_utilization_synth.pb }
