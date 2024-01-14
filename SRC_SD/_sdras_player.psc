scriptname _sdras_player extends referencealias
_sdqs_functions property funct  auto
_sdqs_fcts_constraints property fctconstraints  auto
_sdqs_fcts_inventory property fctinventory  auto
_sdqs_fcts_factions property fctfactions  auto
_sdqs_fcts_outfit property fctoutfit  auto
_sdqs_fcts_slavery property fctslavery  auto
_sdqs_config property config auto
_sdqs_snp property snp auto
race property falmerrace  auto  
sexlabframework property sexlab auto
globalvariable[] property _sdgvp_config  auto
globalvariable property _sdgvp_sprigganenslaved  auto
globalvariable property _sdgvp_enslaved  auto
globalvariable property _sdgv_leash_length  auto
globalvariable property _sdgvp_health_threshold auto
globalvariable property _sdgvp_slave_days_max auto
globalvariable property _sdgvp_config_healthmult auto
globalvariable property _sdgvp_state_caged  auto 
globalvariable property _sdgvp_state_playerragdoll  auto
globalvariable property _sdgvp_frostfallmortality  auto  
referencealias property _sdrap_lust_m  auto
referencealias property _sdrap_lust_f  auto
formlist property _sdflp_slavers  auto
formlist property _sdflp_sex_items  auto
formlist property _sdflp_punish_items  auto
formlist property _sdflp_master_items  auto
formlist property _sdfl_daedric_items  auto
formlist property _sdflp_banned_factions  auto
formlist property _sdflp_escape_furn  auto
message property _sdmp_scene_stalled  auto
message property _sdmp_scene_stop  auto
keyword property _sdkp_actortypenpc  auto
message property _sdmp_rape_menu  auto
keyword property _sdkp_spriggan  auto
keyword property _sdkp_spriggan_infected  auto
formlist property _sdflp_spriggan_factions  auto
quest property _sdqp_thugs  auto
keyword property _sdkp_thugs  auto
faction property _sdfp_thugs  auto
faction property _sdfp_bounty  auto
quest property _sd_dreamquest  auto
_sdras_dreamer property _sd_dreamerscript auto
quest property _sdqp_enslavement  auto
_sdqs_enslavement property _sd_enslaved auto
referencealias property _sdrap_master  auto
referencealias property _sdrap_bindings  auto
referencealias property _sdrap_shackles  auto
referencealias property _sdrap_collar  auto
keyword property _sdkp_enslave  auto
keyword property _sdkp_sex  auto  
keyword property _sdkp_bound  auto
keyword property _sdkp_punish  auto
keyword property _sdkp_clothchest  auto
keyword property _sdkp_armorcuirass  auto
keyword property _sdkp_wrists  auto
keyword property _sdkp_ankles  auto
keyword property _sdkp_collar  auto
spell property _sdsp_freedom  auto  
spell property _sdsp_spent auto
quest property _sd_spriggan  auto
faction property _sdfp_humanoidcreatures  auto
globalvariable property _sdgvp_punishments  auto  
globalvariable property _sdgvp_can_join  auto  
armor property _sd_simplebindings auto     
armor property _sd_simplebindingscosmetic auto             
referencealias property _sdrap_player_safe  auto  
formlist property _sdfl_banned_sex  auto  
formlist property _sdfl_allowed_creature_sex  auto  
spell property calm  auto  
spell property _sdsp_sanguineboundclear  auto  
message property _sd_safetymenu  auto  
message property _sd_enslavemenu auto
globalvariable property _sdgvp_sanguine_blessing auto
objectreference property _sd_sprigganswarm auto
globalvariable property _sdgvp_config_slavery_level_mult auto
globalvariable property _sdgvp_isplayerenslaved auto
globalvariable property _sdgvp_isplayerpregnant auto
globalvariable property _sdgvp_isplayersuccubus auto
globalvariable property _sdgvp_isplayerhrt auto
globalvariable property _sdgvp_isplayertg auto
globalvariable property _sdgvp_isplayerbimbo auto
globalvariable property _sdgvp_allowplayerhrt auto
globalvariable property _sdgvp_allowplayertg auto
globalvariable property _sdgvp_allowplayerbimbo auto
globalvariable property _sdgvp_sanguine_blessings auto
globalvariable property _sdgvp_enable_parasites auto
globalvariable property _sdgvp_enable_mastertravel auto
globalvariable property _sdgvp_state_ismastertraveller auto
globalvariable property _sdgvp_state_ismasterintransit auto
globalvariable property _sdgvp_state_ismasterfollower auto
globalvariable property _sdgvp_isleashon auto
miscobject property lockpick  auto  
event oninit()
endevent
function _maintenance()
endfunction
event onsleepstop(bool abinterrupted)
endevent
event onsexlabstart(string _eventname, string _args, float _argc, form _sender)
endevent
event onsexlabend(string _eventname, string _args, float _argc, form _sender)
endevent 
event onsexlaborgasm(string _eventname, string _args, float _argc, form _sender)
endevent
event onsdsprigganenslave(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event sdsprigganpunish(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
float function getactorstrengthpercentage(actor aksubject, float percentage = -1.0)
endfunction
event onsdsprigganfree(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdenslavemenu(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdsurrender(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdsubmit(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
function sdsurrender(actor kactor, string surrendermode)
endfunction
event onsdenslaveradius(string _eventname, string _args = "200.0", float _argc = 1.0, form _sender)
endevent
event onsdenslave(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdtransfer(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdfree(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
function sdfree()
endfunction
event onsdstatusupdate(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdmastergold(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsddreamworldstart(string _eventname, string _args, float _argc = 0.0, form _sender)
endevent
event onsddreamworldpull(string _eventname, string _args, float _argc = 15.0, form _sender)
endevent
event onsddreamworldsuspend(string _eventname, string _args, float _argc = 15.0, form _sender)
endevent
event onsddreamworldresume(string _eventname, string _args, float _argc = 15.0, form _sender)
endevent
event onsddreamworldinventory(string _eventname, string _args, float _argc = 15.0, form _sender)
endevent
event onsdmodsanguineblessing(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdmodmastertrust(string _eventname = "", string _args, float _argc = -1.0, form _sender)
endevent
event onsdpicknexttask(string _eventname = "", string _args ="", float _argc = 1.0, form _sender)
endevent
event onsdmodtaskamount(string _eventname = "", string _args ="", float _argc = 1.0, form _sender)
endevent
event onsdendgame(string _eventname = "", string _args ="", float _argc = 1.0, form _sender)
endevent
event onsdstorysex(string _eventname, string _args, float _argc = 0.0, form _sender)
endevent
event onsdstoryentertain(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdstorywhip(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdstorypunish(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdemancipateslave(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdhandsfreeslave(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdhandsboundslave(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdpunishslave(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdrewardslave(string _eventname, string _args, float _argc = 1.0, form _sender)
endevent
event onsdequipdevice(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdcleardevice(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdequipslaverags(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdstance(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdtrustaction(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdtrustfight(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdclearsanguinedevices(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdunleash(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdleash(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdmasterfollow(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsdmastertravel(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
state waiting
event onupdate()
endevent
endstate
state monitor
event onbeginstate()
endevent
event onplayerloadgame()
endevent
event onendstate()
endevent
event onupdate()
endevent
event onkeydown(int aikeycode)
endevent
event onhit(objectreference akaggressor, form aksource, projectile akprojectile, bool abpowerattack, bool absneakattack, bool abbashattack, bool abhitblocked)
endevent
event ontraphit(objectreference aktarget, float afxvel, float afyvel, float afzvel, float afxpos, float afypos, float afzpos, int aematerial, bool abinitialhit, int aemotiontype)
endevent
endstate
state surrender
event onbeginstate()
endevent
event oncrosshairrefchange(objectreference ref)
endevent
event onupdate()
endevent
event onkeydown(int aikeycode)
endevent
event onhit(objectreference akaggressor, form aksource, projectile akprojectile, bool abpowerattack, bool absneakattack, bool abbashattack, bool abhitblocked)
endevent
endstate
function sethandsfreeslave(actor kactor)
endfunction
function debugtrace(string tracemsg)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1