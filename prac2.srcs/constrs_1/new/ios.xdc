set_property IOSTANDARD LVCMOS33 [get_ports a]
set_property PACKAGE_PIN A1 [get_ports a]
set_property IOSTANDARD LVCMOS33 [get_ports b]
set_property PACKAGE_PIN A3 [get_ports b]
set_property IOSTANDARD LVCMOS33 [get_ports y]
set_property DRIVE 12 [get_ports y]
set_property SLEW SLOW [get_ports y]
set_property PACKAGE_PIN A4 [get_ports y]
#revert back to original instance
current_instance -quiet
