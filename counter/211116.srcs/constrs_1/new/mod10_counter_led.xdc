set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports reset]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports clk]

set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports seg_data[6]] 
set_property -dict {PACKAGE_PIN W8 IOSTANDARD LVCMOS33} [get_ports seg_data[5]]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports seg_data[4]]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports seg_data[3]]
set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVCMOS33} [get_ports seg_data[2]]
set_property -dict {PACKAGE_PIN Y6 IOSTANDARD LVCMOS33} [get_ports seg_data[1]]
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVCMOS33} [get_ports seg_data[0]]

set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports count[3]]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports count[2]]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports count[1]]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports count[0]]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF] 