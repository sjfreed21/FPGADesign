project_open ../System/ECEN3002_Lab1

set usb [lindex [get_hardware_names] 0]
set device_name [lindex [get_device_names -hardware_name $usb] 1]

start_insystem_source_probe -device_name $device_name -hardware_name $usb

puts "Using sources to override button input."
write_source_data -instance_index 0 -value 11

after 5000

puts "Reading pushbutton inputs." 
read_probe_data -instance_index 0

after 5000

puts "Resetting sources to allow for button input."
write_source_data -instance_index 0 -value 00

end_insystem_source_probe
project_close

exit