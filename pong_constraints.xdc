# Clock signal
set_property PACKAGE_PIN N14  [get_ports i_clock]							
set_property IOSTANDARD LVCMOS33 [get_ports i_clock]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports i_clock]
 
 ##Buttons
set_property PACKAGE_PIN P6  	 [get_ports i_reset]						
set_property IOSTANDARD LVCMOS33 [get_ports i_reset]
set_property PACKAGE_PIN T10 	 [get_ports i_up_but]						
set_property IOSTANDARD LVCMOS33 [get_ports i_up_but]
set_property PACKAGE_PIN R11 	 [get_ports i_down_but]						
set_property IOSTANDARD LVCMOS33 [get_ports i_down_but]

##VGA Connector
set_property PACKAGE_PIN R10     [get_ports o_red]				
set_property IOSTANDARD LVCMOS33 [get_ports o_red]
set_property PACKAGE_PIN N9     [get_ports o_green]				
set_property IOSTANDARD LVCMOS33 [get_ports o_green]
set_property PACKAGE_PIN T7     [get_ports o_blue]				
set_property IOSTANDARD LVCMOS33 [get_ports o_blue]
set_property PACKAGE_PIN P9     [get_ports o_hsync]						
set_property IOSTANDARD LVCMOS33 [get_ports o_hsync]
set_property PACKAGE_PIN R7     [get_ports o_vsync]						
set_property IOSTANDARD LVCMOS33 [get_ports o_vsync]