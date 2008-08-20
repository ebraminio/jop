# TCL File Generated by Component Editor 7.2 on:
# Wed Aug 20 18:10:43 CEST 2008
# DO NOT MODIFY

set_source_file "jop_avalon.vhd"
set_module "jop_avalon"
set_module_description ""
set_module_property "className" "jop_avalon"
set_module_property "group" ""
set_module_property "libraries" [ list "ieee.std_logic_1164.all" "ieee.numeric_std.all" "std.standard.all" ]
set_module_property "synthesisFiles" [ list "jop_avalon.vhd" "jop_avalon_architecture.vhd" ]

# Module parameters
add_parameter "addr_bits" "integer" "24" ""
add_parameter "jpc_width" "integer" "12" ""
add_parameter "block_bits" "integer" "4" ""

# Interface clk
add_interface "clk" "clock" "sink" "asynchronous"
# Ports in interface clk

# Interface export_0
add_interface "export_0" "conduit" "start" "clk"
# Ports in interface export_0

# Interface avalon_master
add_interface "avalon_master" "avalon" "master" "clk"
set_interface_property "avalon_master" "burstOnBurstBoundariesOnly" "false"
set_interface_property "avalon_master" "doStreamReads" "false"
set_interface_property "avalon_master" "linewrapBursts" "false"
set_interface_property "avalon_master" "doStreamWrites" "false"
# Ports in interface avalon_master
add_port_to_interface "avalon_master" "clk" "export"
add_port_to_interface "avalon_master" "reset" "export"
add_port_to_interface "avalon_master" "ser_txd" "export"
add_port_to_interface "avalon_master" "ser_rxd" "export"
add_port_to_interface "avalon_master" "wd" "export"
add_port_to_interface "avalon_master" "address" "address"
add_port_to_interface "avalon_master" "writedata" "writedata"
add_port_to_interface "avalon_master" "byteenable" "byteenable"
add_port_to_interface "avalon_master" "readdata" "readdata"
add_port_to_interface "avalon_master" "read" "read"
add_port_to_interface "avalon_master" "write" "write"
add_port_to_interface "avalon_master" "waitrequest" "waitrequest"
