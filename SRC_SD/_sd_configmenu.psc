scriptname _sd_configmenu extends ski_configbase
_sdqs_config property config  auto
globalvariable property _sdgvp_config_essential  auto
globalvariable property _sdgvp_config_healthmult  auto
globalvariable property _sdgvp_config_healththreshold  auto
globalvariable property _sdgvp_config_buyout  auto
globalvariable property _sdgvp_config_escape_radius  auto
globalvariable property _sdgvp_config_escape_timer  auto
globalvariable property _sdgvp_config_work_start  auto
globalvariable property _sdgvp_config_join_days  auto
globalvariable property _sdgvp_config_safeword  auto
globalvariable property _sdgvp_config_lust  auto
globalvariable property _sdgvp_config_auto_start  auto
globalvariable property _sdgvp_config_cbbe  auto
globalvariable property _sdgvp_config_custom_cloths  auto
globalvariable property _sdgvp_config_itemremovaltype  auto
globalvariable property _sdgvp_config_maleflacid  auto
globalvariable property _sdgvp_uninstall  auto
globalvariable property _sdgvp_enslaved  auto
globalvariable property _sdgvp_sprigganenslaved  auto
globalvariable property _sdgvp_config_genderrestrictions  auto
globalvariable property _sdgvp_config_gendersanguine  auto
globalvariable property _sdgvp_config_verbosemerits  auto
globalvariable property _sdgvp_state_mcm  auto
globalvariable property _sdgvp_config_enabletrainrun  auto
globalvariable property _sdgvp_config_blindnesslevel  auto
globalvariable property _sdgvp_config_hardcore  auto
globalvariable property _sdgvp_config_enable_beast_master  auto
globalvariable property _sdgvp_config_armbinderknee  auto
globalvariable property _sdgvp_config_slaveonknees  auto
globalvariable property _sdgvp_config_removearmbinder  auto
globalvariable property _sdgvp_config_removepunishment  auto  ; mapped to _sdgvp_config_enable_cages
globalvariable property _sdgvp_config_gagtype  auto ; mapped to _sd_state_iscovetedeffecton
globalvariable property _sdgvp_config_min_slavery_level auto
globalvariable property _sdgvp_config_max_slavery_level auto
globalvariable property _sdgvp_config_slavery_level_mult auto
globalvariable property _sdgvp_config_disposition_threshold auto
string[] property _sdsp_config_genderrestrictions  auto
string[] property _sdsp_config_gendersanguine  auto
quest property wiadditem03  auto  
referencealias property pthug1  auto  
referencealias property pthug2  auto  
referencealias property pthug3  auto  
message property _sdmp_wiadditem03  auto  
quest[] property _sdqp_quests_primary  auto
bool[] property _sdbp_quests_primary_running  auto
bool[] property _sdbp_quests_primary_default  auto
quest[] property _sdqp_quests_secondary  auto
bool[] property _sdbp_quests_secondary_running  auto
bool[] property _sdbp_quests_secondary_default  auto
quest[] property _sdqp_quests_support  auto
bool[] property _sdbp_quests_support_running  auto
bool[] property _sdbp_quests_support_default  auto
quest[] property _sdqp_quests_optional  auto
bool[] property _sdbp_quests_optional_running  auto
bool[] property _sdbp_quests_optional_default  auto
quest[] property _sdqp_quests_addon  auto
int[] property _sdbp_quests_addon_refid  auto
string[] property _sdsp_quests_addon_name  auto
int[] property _sdsp_quests_addon_required  auto
bool[] property _sdbp_quests_addon_running  auto
globalvariable[] property _sdgvp_quests_addon_subtoggle  auto
string[] property _sdgvp_quests_addon_subtoggle_name  auto
int[] property _sdip_support_mods_refid  auto
string[] property _sdsp_support_mods_name  auto
bool[] property _sdbp_support_mods_installed  auto
string function decimaldaystostring( float afdays )
endfunction
string function sprintf(string assource, string[] asreplacements )
endfunction
string function unitstorealworld( float afunits, bool abmetric = false )
endfunction
bool function modinstalled( string asmod )
endfunction
bool function requiredparentmodinstalled( int aiidx )
endfunction
int function getversion()
endfunction
function initmod( bool bresetglobals = false )
endfunction
event onconfiginit()
endevent
event onversionupdate(int a_version)
endevent
event onpagereset(string a_page)
endevent
event onoptionhighlight(int a_option)
endevent
event onoptionselect(int a_option)
endevent
event onoptiondefault(int a_option)
endevent
event onoptionslideropen(int a_option)
endevent
event onoptionslideraccept(int a_option, float a_value)
endevent
event onoptionmenuopen(int a_option)
endevent
event onoptionmenuaccept(int a_option, int a_index)
endevent
event onoptioncoloropen(int a_option)
endevent
event onoptioncoloraccept(int a_option, int a_color)
endevent
event onoptionkeymapchange(int a_option, int a_keycode, string a_conflictcontrol, string a_conflictname)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1