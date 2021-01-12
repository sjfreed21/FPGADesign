set_global_assignment -entity "i2c_pll" -library "lib_i2c_pll" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "i2c_pll" -library "lib_i2c_pll" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "i2c_pll" -library "lib_i2c_pll" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_i2c_pll" -name SPD_FILE [file join $::quartus(sip_path) "i2c_pll.spd"]

set_global_assignment -library "lib_i2c_pll" -name MISC_FILE [file join $::quartus(sip_path) "i2c_pll_sim/i2c_pll.vo"]
