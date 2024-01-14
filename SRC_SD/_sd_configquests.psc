scriptname _sd_configquests extends quest
_sdqs_functions property funct  auto
_sdqs_fcts_factions property fctfactions  auto
formlist property _sdflp_uninstall_dispel  auto
formlist property _sdflp_uninstall_items  auto
formlist property _sdflp_forced_joined  auto  
globalvariable property _sdgvp_state_mcm  auto
globalvariable[] property _sdgvp_reset  auto  
float[] property _sdfp_global_defaults  auto  
function removesdspells()
endfunction
function removesditems()
endfunction
function resetglobals()
endfunction
event oninit()
endevent
auto state waiting
event onupdate()
endevent
endstate
state addons
event onupdate()
endevent
endstate
state optional
event onupdate()
endevent
endstate
state install
event onupdate()
endevent
endstate
state starting
event onupdate()
endevent
endstate
state stopping
event onupdate()
endevent
endstate
state resetting
event onupdate()
endevent
endstate
zadlibs property libs auto
;This file was cleaned with PapyrusSourceHeadliner 1