scriptname dfwmcm extends ski_configbase
bool property bmodleashvisible        auto
bool property bmodleashinterrupt      auto
bool property bblocknipple auto
bool property bblockvagina auto
bool property bblockhobble auto
bool property bblockshoes  auto
bool property bblockarmour auto
bool property bblockarms   auto
bool property bblockleash  auto
bool property bsavegameconfirm        auto
bool property bmodblockongameload     auto
bool property bsettingsdetectunequip  auto
bool property beasternhouseiswindhelm auto
bool property bshutdownmod            auto
bool property bshutdownsecure         auto
float property fsettingspolltime auto
float property fmodsavemintime   auto
int property isettingssecurity          auto
int property isettingspollnearby        auto
int property isettingsnearbydistance    auto
int property ivulnerabilitynude         auto
int property ivulnerabilitycollar       auto
int property ivulnerabilitybinder       auto
int property ivulnerabilitygagged       auto
int property ivulnerabilityrestraints   auto
int property ivulnerabilityleashed      auto
int property ivulnerabilityfurniture    auto
int property ivulnerabilitynight        auto
int property idispwillingguards         auto
int property idispwillingmerchants      auto
int property idispwillingbdsm           auto
int property imodraperedresstimeout     auto
int property imodnakedredresstimeout    auto
int property imodleashcombatchance      auto
int property imodleashdamage            auto
int property imodleashminlength         auto
int property imodslathreshold           auto
int property imodslaadjustedmin         auto
int property imodslaadjustedmax         auto
int property imoddialoguetargetstyle    auto
int property imoddialoguetargetretries  auto
int property imodhelpkey                auto
int property imodattentionkey           auto
int property imodcalltimeout            auto
int property imodsavegamestyle          auto
int property imodsavekey                auto
int property iconconsolevulnerability   auto
int property iloglevel                  auto
int property iloglevelscreengeneral     auto
int property iloglevelscreendebug       auto
int property iloglevelscreenstatus      auto
int property iloglevelscreenmaster      auto
int property iloglevelscreennearby      auto
int property iloglevelscreenleash       auto
int property iloglevelscreenequip       auto
int property iloglevelscreenarousal     auto
int property iloglevelscreeninteraction auto
int property iloglevelscreenlocation    auto
int property iloglevelscreenredress     auto
int property iloglevelscreensave        auto
int property ivulnerabilitynakedreduce  auto
int property imodleashstyle auto
int[] property aisettingsslotschest auto
int[] property aisettingsslotswaist auto
int[] property aiblockexceptionshobble auto
function updatescript()
endfunction
int function getversion()
endfunction
event onconfiginit()
endevent
event onversionupdate(int inewversion)
endevent
function addlabel(string szlabel)
endfunction
string function leashstyletostring(int istyle)
endfunction
string function dialoguestyletostring(int istyle)
endfunction
string function savegamestyletostring(int istyle)
endfunction
string function getfactionname(faction ofaction)
endfunction
string[] function createwornoptions(string szfirstentry, actor oactor=none, \
bool bclothingonly=true, bool bincluderestraints=false)
endfunction
string function getslotstring(int islot, bool bfancyinfo=false)
endfunction
bool function issecure()
endfunction
function sendsettingchangedevent(string scategory="")
endfunction
function presentinformation(string[] aszinfo, string szheader)
endfunction
function debugbox(string szmessage)
endfunction
event onpagereset(string szrequestedpage)
endevent
function displayframeworkpage(bool bsecure)
endfunction
function displayvulnerabilitypage(bool bsecure)
endfunction
function displaynpcdispositionpage(bool bsecure)
endfunction
function displaymodfeaturespage(bool bsecure)
endfunction
function displaygamecontrolpage(bool bsecure)
endfunction
function displaymodcompatibilitypage(bool bsecure)
endfunction
function displaystatuspage(bool bsecure)
endfunction
function displaydebugpage(bool bsecure)
endfunction
state st_fwk_poll_time
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_fwk_poll_near
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_fwk_poll_distance
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_fwk_add_chest
event onmenuopenst()
endevent
event onmenuacceptst(int ichosenindex)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_fwk_add_waist
event onmenuopenst()
endevent
event onmenuacceptst(int ichosenindex)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_fwk_rem_chest
event onmenuopenst()
endevent
event onmenuacceptst(int ichosenindex)
endevent
event onhighlightst()
endevent
endstate
state st_fwk_rem_waist
event onmenuopenst()
endevent
event onmenuacceptst(int ichosenindex)
endevent
event onhighlightst()
endevent
endstate
state st_vul_nude
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_vul_collar
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_vul_binder
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_vul_gagged
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_vul_restraints
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_vul_leashed
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_vul_furniture
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_vul_night
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_vul_reduce
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_disp_will_guards
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_disp_will_merchants
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_disp_will_bdsm
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_leash_style
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_leash_visible
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_leash_interrupt
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_leash_combat
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_leash_damage
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_leash_length
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_enable_dialogue
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_dialogue_retries
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_call_help
event onkeymapchangest(int ikeycode, string sconflictcontrol, string sconflictname)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_call_attention
event onkeymapchangest(int ikeycode, string sconflictcontrol, string sconflictname)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_call_timeout
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_nipple
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_vagina
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_armour
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_hobble
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_shoes
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_arms
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_block_leash
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_add_exc_hobble
event onmenuopenst()
endevent
event onmenuacceptst(int ichosenindex)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_mod_rem_exc_hobble
event onmenuopenst()
endevent
event onmenuacceptst(int ichosenindex)
endevent
event onhighlightst()
endevent
endstate
state st_con_secure
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_con_hardcore
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_con_save_type
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_con_save_confirm
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_con_save_key
event onkeymapchangest(int ikeycode, string sconflictcontrol, string sconflictname)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_con_save_min_time
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_con_console_access
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_con_rape_redress
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_con_naked_redress
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_con_load_block
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_comp_dd_fix
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_comp_sla_threshold
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_comp_sla_min
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_comp_sla_max
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_comp_reload_cells
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_comp_eastern_house
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_sta_keyword
event onmenuopenst()
endevent
event onmenuacceptst(int ichosenindex)
endevent
event onhighlightst()
endevent
endstate
state st_info_for_player
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_info_factions
event onselectst()
endevent
event onhighlightst()
endevent
endstate
state st_info_reactions
event onselectst()
endevent
event onhighlightst()
endevent
endstate
state st_info_nearby
event onselectst()
endevent
event onhighlightst()
endevent
endstate
state st_info_known
event onselectst()
endevent
event onhighlightst()
endevent
endstate
state st_info_dialogue
event onselectst()
endevent
event onhighlightst()
endevent
endstate
state st_info_naked
event onhighlightst()
endevent
endstate
state st_dbg_level
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_general
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_debug
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_status
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_master
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_nearby
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_leash
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_equip
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_arousal
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_interaction
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_location
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_redress
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_save
event onslideropenst()
endevent
event onslideracceptst(float fvalue)
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_shutdown
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_shutdown_sec
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_yank_leash
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_dbg_teleport
event onmenuopenst()
endevent
event onmenuacceptst(int ichosenindex)
endevent
event onhighlightst()
endevent
endstate
state st_dbg_rem_faction
event onmenuopenst()
endevent
event onmenuacceptst(int ichosenindex)
endevent
event onhighlightst()
endevent
endstate
state st_dbg_mod_events
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_safeword_furniture
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
state st_safeword_leash
event onselectst()
endevent
event ondefaultst()
endevent
event onhighlightst()
endevent
endstate
;This file was cleaned with PapyrusSourceHeadliner 1