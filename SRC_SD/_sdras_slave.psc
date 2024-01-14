scriptname _sdras_slave extends referencealias
_sdqs_snp property snp auto
_sdqs_enslavement property enslavement  auto
_sdqs_functions property funct  auto
_sdqs_fcts_outfit property fctoutfit  auto
_sdqs_fcts_slavery property fctslavery  auto
_sdqs_fcts_constraints property fctconstraints  auto
_sdqs_fcts_factions property fctfactions  auto
miscobject property _sdmop_lockpick  auto  
quest property _sdqp_enslavement_tasks  auto
quest property _sdqp_thug_slave  auto
quest property _sd_dreamquest  auto
_sdqs_dream property dreamquest auto
referencealias property alias__sdra_lust_m  auto
referencealias property alias__sdra_lust_f  auto
cell[] property _sdcp_sanguines_realms  auto  
globalvariable property _sdgvp_gender_restrictions auto
globalvariable property _sdgvp_config_lust auto
globalvariable property _sdgv_leash_length  auto
globalvariable property _sdgv_free_time  auto
globalvariable property _sdgvp_positions  auto  
globalvariable property _sdgvp_demerits  auto  
globalvariable property _sdgvp_demerits_join  auto  
globalvariable property _sdgvp_config_verbosemerits  auto
globalvariable property _sdgvp_escape_radius  auto  
globalvariable property _sdgvp_escape_timer  auto  
globalvariable property _sdgvp_state_caged  auto  
globalvariable property _sdgvp_config_safeword  auto  
globalvariable property _sdkp_trust_hands  auto  
globalvariable property _sdkp_trust_feet   auto  
globalvariable property _sdkp_snp_busy   auto  
globalvariable property _sdgvp_punishments  auto  
globalvariable property _sdgvp_join_days  auto  
globalvariable property _sdgvp_can_join  auto  
globalvariable property _sdgvp_work_start  auto
globalvariable property _sdgvp_buyout  auto
globalvariable property _sdgvp_isleashon  auto
globalvariable property _sdgvp_state_masterfollowslave  auto  
globalvariable property _sdgvp_config_limited_removal  auto  
globalvariable property _sdgvp_config_min_days_before_master_travel auto
globalvariable property _sdgvp_ismastertraveller  auto  
globalvariable property _sdgvp_ismasterintransit  auto  
referencealias property _sdrap_cage  auto
referencealias property _sdrap_cage_marker  auto
referencealias property _sdrap_masters_key  auto
referencealias property _sdrap_slave  auto
referencealias property _sdrap_master  auto
referencealias property _sdrap_slaver  auto
referencealias property _sdrap_slaver2_m  auto
referencealias property _sdrap_slaver2_f  auto
referencealias property _sdrap_bindings  auto
referencealias property _sdrap_shackles  auto
float property _sdfp_bindings_health = 10.0 auto
formlist property _sdflp_master_items  auto
formlist property _sdflp_sex_items  auto
formlist property _sdflp_punish_items  auto  
formlist property _sdflp_trade_items  auto
formlist property _sdflp_slave_clothing  auto
formlist property _sdflp_banned_locations  auto  
formlist property _sdflp_banned_worldspaces  auto  
keyword property _sdkp_enslave  auto
keyword property _sdkp_sex  auto
keyword property _sdkp_arrest  auto
keyword property _sdkp_gagged  auto
keyword property _sdkp_bound  auto 
keyword property _sdkp_wrists  auto
keyword property _sdkp_ankles  auto
keyword property _sdkp_noenchant  auto  
keyword property _sdkp_nosale  auto  
keyword property _sdkp_food  auto  
keyword property _sdkp_food_raw  auto  
keyword property _sdkp_food_vendor  auto  
faction property _sdfp_slaversfaction  auto  
spell property _sdsp_selfshockshield  auto  
spell property _sdsp_selfshockeffect  auto  
spell property _sdsp_selfvibratingeffect  auto  
spell property _sdsp_selftinglingeffect  auto  
spell property _sdsp_weak  auto  
globalvariable property _sdgvp_config_cage_enable  auto 
globalvariable property _sdgvp_state_slavedominance  auto  
globalvariable property _sdgvp_state_joined  auto  
globalvariable property _sdgvp_state_housekeeping  auto   
globalvariable property _sdgvp_config_disposition_threshold auto
sexlabframework property sexlab  auto  
keyword property _sdkp_collar  auto  
keyword property _sdkp_gag  auto  
referencealias property _sdrap_collar  auto  
armor property _sda_gag  auto  
armor property _sda_collar  auto  
armor property _sda_bindings  auto  
armor property _sda_shackles  auto  
keyword property _sdkp_hunt  auto  
sound property _sdsmp_choke  auto  
imagespacemodifier property _sd_collarstrangleimod  auto  
sound property _sdsmp_choke_m  auto  
slautilscr property slautil  auto  
float property hourlytickerperiod = 0.05 autoreadonly ; ingame time (days) for hourly ticker, about 0.04 is enough
float property dailytickerperiod = 1.0 autoreadonly ; 1.0 autoreadonly ; ingame time (days) for daily ticker, normally 1.0
function updatemasterslave()
endfunction
function freedomtimer( float aftime )
endfunction
event oninit()
endevent
event onlocationchange(location akoldloc, location aknewloc)
endevent
event oncombatstatechanged(actor aktarget, int aecombatstate)
endevent
event onitemadded(form akbaseitem, int aiitemcount, objectreference akitemreference, objectreference aksourcecontainer)
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
state escape_shock
event onbeginstate()
endevent
event onendstate()
endevent
event onupdate()
endevent
endstate
state escape_choke
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
function _slavestatusinit()
endfunction
function _slavestatusticker()
endfunction
function _slaveendgame()
endfunction
function updateslavearousal()
endfunction
function debugtrace(string tracemsg)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1