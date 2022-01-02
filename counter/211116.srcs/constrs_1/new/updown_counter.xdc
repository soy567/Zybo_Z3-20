set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports reset]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports u_dbar]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports clk]

set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports q[3]]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports q[2]]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports q[1]]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports q[0]]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF] 