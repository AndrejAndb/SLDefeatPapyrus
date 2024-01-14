scriptname _sdras_master extends referencealias conditional
sexlabframework property sexlab  auto   
_sdqs_functions property funct  auto
_sdqs_fcts_constraints property fctconstraints  auto
_sdqs_fcts_inventory property fctinventory  auto
_sdqs_fcts_factions property fctfactions  auto
_sdqs_fcts_slavery property fctslavery  auto
_sdqs_fcts_outfit property fctoutfit  auto
_sdqs_snp property snp auto
_sdqs_enslavement property enslavement  auto
_sdqs_ennslavement_tasks property tasks  auto
quest property _sdqp_enslavement_tasks  auto
quest property _sdqp_enslavement auto
cell[] property _sdcp_sanguines_realms  auto  
miscobject property gold  auto  
globalvariable property _sdgv_leash_length  auto
globalvariable property _sdgv_free_time  auto
globalvariable property _sdgvp_positions  auto  
globalvariable property _sdgvp_punishments  auto  
globalvariable property _sdgvp_demerits  auto 
globalvariable property _sdgvp_demerits_join  auto  
globalvariable property _sdgvp_join_days  auto  
globalvariable property _sdgvp_can_join  auto  
globalvariable property _sdgvp_buyout  auto  
globalvariable property _sdgvp_buyoutearned  auto  
globalvariable property _sdgvp_escape_radius  auto  
globalvariable property _sdgvp_config_verbosemerits  auto
globalvariable property _sddvp_buyoutearned  auto
globalvariable property _sdgvp_state_caged  auto  
globalvariable property _sdgvp_state_masterfollowslave  auto  
globalvariable property _sdgvp_health_threshold auto
globalvariable property _sdgvp_config_healthmult auto
locationalias property _sdlap_masters_location  auto  
referencealias property _sdrap_slave  auto
referencealias property _sdrap_master  auto
referencealias property _sdrap_bindings  auto
referencealias property _sdrap_crop  auto  
referencealias property _sdrap_playerstorage  auto  
formlist property _sdflp_slavers  auto  
formlist property _sdflp_trade_items  auto
formlist property _sdflp_banned_factions  auto  
formlist property _sdflp_forced_allied  auto  
keyword property _sdkp_spriggan  auto  
keyword property _sdkp_spriggan_infected  auto  
keyword property _sdkp_sex  auto  
keyword property _sdkp_enslave  auto
keyword property _sdkp_master  auto
keyword property _sdkp_food  auto  
keyword property _sdkp_food_raw  auto  
package[] property _sdpp_stall_package  auto  
spell property _sdsp_selfshockeffect  auto  
race property falmerrace  auto  
keyword property _sdkp_actortypenpc  auto
function updatemasterslave()
endfunction
event ondeath(actor akkiller)
endevent
event onenterbleedout()
endevent
event onpackagechange(package akoldpackage)
endevent
event oncombatstatechanged(actor aktarget, int aecombatstate)
endevent
event onlostlos(actor akviewer, objectreference aktarget)
endevent
event ongainlos(actor akviewer, objectreference aktarget)
endevent
event onitemadded(form akbaseitem, int aiitemcount, objectreference akitemreference, objectreference aksourcecontainer)
endevent
event oninit()
endevent
state waiting
event onupdate()
endevent
endstate
state monitor
event onbeginstate()
endevent
event onendstate()
endevent
event onupdate()
endevent
event onhit(objectreference akaggressor, form aksource, projectile akprojectile, bool abpowerattack, bool absneakattack, bool abbashattack, bool abhitblocked)
endevent
endstate
state search
event onbeginstate()
endevent
event onendstate()
endevent
event ongainlos(actor akviewer, objectreference aktarget)
endevent
event ondeath(actor akkiller)
endevent
event onupdate()
endevent 
endstate
state combat
event onbeginstate()
endevent
event onendstate()
endevent
event onupdate()
endevent
endstate
state caged
event onbeginstate()
endevent
event onendstate()
endevent
event onupdate()
endevent
endstate
state donothing
event onbeginstate()
endevent
event onendstate()
endevent
event onupdate() 
endevent
endstate
function debugtrace(string tracemsg)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1