scriptname _sdras_dreamer extends referencealias  
pdbentrancequestscript property dbe auto
referencealias property _sdrap_enter  auto  
referencealias property _sdrap_leave  auto  
referencealias property _sdrap_meridiana  auto  
referencealias property _sdrap_naamah  auto  
referencealias property _sdrap_eisheth  auto  
referencealias property _sdrap_sanguine  auto  
referencealias property alias__sdra_lust_m  auto
referencealias property alias__sdra_lust_f  auto
globalvariable property _sdgvp_enslaved  auto  
globalvariable property _sdgvp_stats_enslaved  auto  
globalvariable property _sdgvp_config_lust auto
globalvariable property _sdgvp_config_chance_dreamworld_on_sleep auto
globalvariable property _sdgvp_sanguine_blessing auto
globalvariable property _sdgvp_health_threshold auto
globalvariable property _sdgvp_config_auto_start  auto
quest property _sd_dreamquest  auto  
quest property anightquest  auto  
location property _sdloc_haelgabasement  auto  
location property _sdloc_sanguineshrine  auto  
location property _sdloc_solitudetemple  auto  
location property _sdloc_markarthtemple  auto  
location property _sdloc_redwave  auto  
location property _sdloc_honningbrewmeadery  auto  
location property _sdloc_morvunskar  auto  
location property _sdloc_nightgateinn  auto  
location property _sdloc_markarthsilverbloodinn  auto  
location property _sdloc_riftenbeeandbarbinn  auto  
location property _sdloc_solitudewinkingskeeverinn  auto  
location property _sdloc_sanguinedreamworld  auto  
_sd_configmenu property kconfig  auto  
spell property _sdsp_freedom  auto  
event oninit()
endevent
event onsleepstart(float afsleepstarttime, float afdesiredsleependtime)
endevent
event onsleepstop(bool abinterrupted)
endevent
function startdreamworld()
endfunction
function cleanupslavedevices(actor akactor)
endfunction
potion property honningbrewmead  auto  
;This file was cleaned with PapyrusSourceHeadliner 1