transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../ip/design_1/ipshared/3cbc" -l xil_defaultlib \
"../../../bd/design_1/ip/design_1_Pong_Top_0_1/sim/design_1_Pong_Top_0_1.v" \
"../../../bd/design_1/ip/design_1_pixel_generator_0_1/sim/design_1_pixel_generator_0_1.v" \
"../../../bd/design_1/ip/design_1_vga_handler_0_1/sim/design_1_vga_handler_0_1.v" \
"../../../bd/design_1/ip/design_1_button_Debouncer_0_3/sim/design_1_button_Debouncer_0_3.v" \
"../../../bd/design_1/ip/design_1_button_Debouncer_1_0/sim/design_1_button_Debouncer_1_0.v" \
"../../../bd/design_1/ip/design_1_button_Debouncer_2_0/sim/design_1_button_Debouncer_2_0.v" \
"c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_sim_netlist.v" \
"c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_sim_netlist.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

