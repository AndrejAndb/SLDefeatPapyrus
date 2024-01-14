scriptname _sdqs_fcts_constraints extends quest  
_sdqs_functions property funct  auto
_sdqs_fcts_slavery property fctslavery  auto
_sdqs_fcts_outfit property fctoutfit  auto
zadlibs property libs auto
idle property _sd_crawlmovebackward auto
idle property _sd_crawlstrafebackleft auto
idle property _sd_crawlstrafebackright auto
idle property _sd_crawlmoveforward auto
idle property _sd_crawlstrafestartright auto
idle property _sd_crawlstrafestartleft auto
idle property _sd_crawlturnleft auto
idle property _sd_crawlturnright auto
int property modid auto 
int property mt_base auto
int property mtx_base auto
int property mtidle_base auto
int property sneakidle_base auto
int property sneakmt_base auto
int property modcrc auto
int property abc_modid auto
int property abc_mtidle auto
referencealias property _sdrap_leash_center  auto
referencealias property _sdrap_master  auto  
globalvariable property _sdgvp_demerits  auto  
globalvariable property _sdgvp_demerits_join  auto  
globalvariable property _sdgvp_armbinderknee  auto  
globalvariable property _sdgvp_defaultstance auto
globalvariable property _sdgvp_autostance  auto  
keyword[] property notkeywords  auto  
idle[] property _sdiap_bound  auto  
idle property _sdiap_reset  auto  
faction property sexlabactivefaction  auto  
sexlabframework property sexlab auto
event oninit()
endevent
function initaa()
endfunction
function setanimating( bool abenable = true )
endfunction
function playerautopilot( bool abenable = true )
endfunction
function actorcombatshutdown( actor akattacker, actor akactor )
endfunction
function toggleplayercontrolsoff( bool aboff = true, bool abmove = false, bool abact = false, bool abfight = false )
endfunction
function toggleplayercontrolson( bool abon = true, bool abmove = false, bool abact = false, bool abfight = false )
endfunction
function setleashcenterref( objectreference kcenterref )
endfunction
function collareffectstart(actor aktarget, actor akcaster)
endfunction
function collareffectfinish(actor aktarget, actor akcaster)
endfunction
function collarupdate()
endfunction
function collarstand()
endfunction
function updatestanceoverrides(bool bforcerefresh=false)
endfunction
function resetstanceoverrides()
endfunction
function playidlewrapper(actor akactor, idle theidle)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1