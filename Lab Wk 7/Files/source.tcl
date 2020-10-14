set master_path [lindex [get_service_paths master] 0]
set mpath [claim_service master $master_path “”]

set jpath [lindex [get_service_paths jtag_debug] 0]

jtag_debug_reset_system $jpath

set clk [jtag_debug_sense_clock $jpath]
set rst [jtag_debug_sample_reset $jpath]

master_write_8 $mpath 0x0 0x1
after 1000
master_write_8 $mpath 0x10 0x55
after 1000
master_write_8 $mpath 0x10 0xaa
after 1000
master_write_8 $mpath 0x10 0x55
after 1000
puts "Input switch values (10s)"
after 10000
set read_value [master_read_16 $mpath 0x20 1]
puts "Value read = $read_value"

close_service master $mpath