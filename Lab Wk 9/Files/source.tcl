set master_path [lindex [get_service_paths master] 0]
set mpath [claim_service master $master_path “”]

set jpath [lindex [get_service_paths jtag_debug] 0]

jtag_debug_reset_system $jpath

set clk [jtag_debug_sense_clock $jpath]
set rst [jtag_debug_sample_reset $jpath]

master_write_32 $mpath 0x0 0xA
after 1000
master_write_32 $mpath 0x0 0xAB
after 1000
master_write_32 $mpath 0x0 0xABC
after 1000
master_write_32 $mpath 0x0 0xABCD
after 1000
master_write_32 $mpath 0x0 0x0

close_service master $mpath