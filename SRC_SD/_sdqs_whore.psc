scriptname _sdqs_whore extends quest  
_sdqs_functions property funct  auto
_sdqs_fcts_factions property fctfactions  auto
sexlabframework property sexlab auto
formlist property _sdflp_forced_allied  auto  
globalvariable property _sdgvp_demerits  auto  
globalvariable property _sdgvp_demerits_join  auto  
globalvariable property _sdgvp_positions  auto  
referencealias property _sdrap_whore  auto  
keyword property _sdkp_sex  auto  
quest property _sdqp_enslavement  auto  
objectreference[] property _sdorp_queue  auto  
referencealias[] property _sdorp_queuealiasref  auto  
spell property _sdsp_weak auto
globalvariable property _sdgvp_state_playerragdoll  auto  
globalvariable property _sdgvp_config_verbosemerits  auto
message property _sd_whorequeuemenu auto
globalvariable property gametime  auto  
bool function addtoqueue( objectreference akobject )
endfunction
float function getactorstrengthpercentage(actor aksubject, float percentage = -1.0)
endfunction
bool function removefromqueue( objectreference akwhore )
endfunction
function checkqueue( ) 
endfunction
event oninit()
endevent
state waiting
event onupdate()
endevent
endstate
state monitor
event onupdate()
endevent
endstate
;This file was cleaned with PapyrusSourceHeadliner 1