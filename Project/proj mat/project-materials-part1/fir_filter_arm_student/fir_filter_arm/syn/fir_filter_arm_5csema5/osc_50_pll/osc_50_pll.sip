set_global_assignment -entity "osc_50_pll" -library "lib_osc_50_pll" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "osc_50_pll" -library "lib_osc_50_pll" -name IP_TOOL_VERSION "16.1"
set_global_assignment -entity "osc_50_pll" -library "lib_osc_50_pll" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_osc_50_pll" -name SPD_FILE [file join $::quartus(sip_path) "osc_50_pll.spd"]

set_global_assignment -library "lib_osc_50_pll" -name MISC_FILE [file join $::quartus(sip_path) "osc_50_pll_sim/osc_50_pll.vo"]
