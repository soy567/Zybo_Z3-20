set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports row[3]]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports row[2]]
set_property -dict {PACKAGE_PIN W8 IOSTANDARD LVCMOS33} [get_ports row[1]]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports row[0]]

set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports col[3]]
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVCMOS33} [get_ports col[2]]
set_property -dict {PACKAGE_PIN Y6 IOSTANDARD LVCMOS33} [get_ports col[1]]
set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVCMOS33} [get_ports col[0]]

set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports clk]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports reset]

set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports led_out[3]]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports led_out[2]]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports led_out[1]]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports led_out[0]]
