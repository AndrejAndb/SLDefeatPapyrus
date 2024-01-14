scriptname _sdqs_enslavement extends quest conditional
_sdqs_functions property funct  auto
_sdqs_fcts_constraints property fctconstraints  auto
_sdqs_fcts_inventory property fctinventory  auto
_sdqs_fcts_outfit property fctoutfit  auto
_sdqs_fcts_factions property fctfactions  auto
_sdqs_fcts_slavery property fctslavery  auto
dialoguefollowerscript property companiondialogue  auto
quest property _sdqp_enslavement  auto
quest property _sd_dream_destinations  auto  
_sdqs_dream_destinations property dreamdest auto
globalvariable property _sdgvp_enslaved  auto  
globalvariable property _sdgvp_positions  auto  
globalvariable property _sdgvp_demerits  auto  
globalvariable property _sdgvp_demerits_join  auto  
globalvariable property _sdgvp_gametime  auto  
globalvariable property _sdgvp_buyout  auto conditional
globalvariable property _sdgvp_buyoutearned  auto conditional
globalvariable[] property _sdgvp_config  auto  
globalvariable property _sdgvp_stats_enslaved  auto  
globalvariable property _sdgvp_state_joined  auto  
globalvariable property _sdkp_trust_hands auto
globalvariable property _sdkp_trust_feet auto
globalvariable property _sdgv_leash_length auto
globalvariable property _sdgvp_punishments  auto  
globalvariable property _sdgvp_snp_busy auto
globalvariable property gamehour auto
sexlabframework property sexlab  auto  
referencealias property _sdrap_master  auto
referencealias property _sdrap_slave  auto
referencealias property _sdrap_bindings auto
referencealias property _sdrap_shackles auto
referencealias property _sdrap_collar auto
referencealias property _sdrap_key auto
referencealias property _sdrap_crop auto
referencealias property _sdrap_cage auto
referencealias property _sdrap_cage_door auto
formlist property _sdflp_allied  auto
formlist property _sdflp_slaver  auto
formlist property _sdflp_punish_items  auto
formlist property _sdflp_ignore_items  auto
formlist property _sdflp_sex_items  auto
formlist property _sdflp_master_items  auto
keyword property _sdkp_sex  auto  
keyword property _sdkp_wrists  auto  
keyword property _sdkp_ankles  auto  
keyword property actortypenpc  auto  
keyword property _sdkp_enslave  auto
quest property webountycollectorqst  auto
faction property _sdfp_bountyhunter  auto
faction property _sdfp_spriggan  auto  
spell property _sdsp_spriggan_heal  auto
actorbase property _sdabp_sprigganhost  auto
actor property _sdap_sanguine  auto  
globalvariable property _sdgvp_state_housekeeping  auto  
faction property _sdfp_slavercrimefaction  auto 
globalvariable property _sdgvp_config_verbosemerits  auto
globalvariable property _sdgvp_trust_hands  auto  
globalvariable property _sdgvp_trust_feet  auto  
referencealias[] property _sdrap_companions auto
armor property _sda_bindings  auto  
referencealias property _sdrap_playerstorage  auto  
objectreference property _sdrap_playerstoragekeys  auto  
referencealias property _sdap_clothing  auto  
bool property bescapedslave = false auto conditional
bool property bsearchforslave = false auto conditional
bool property bjoinedfaction = false auto conditional
bool property bquestactive = false auto conditional
bool property boriginallyenemies = false auto conditional
float property ftimeenslaved = 0.0 auto conditional
int property uipunishmentsearned = 0 auto conditional
int property uilastdemerits = 0 auto conditional
int property uihighestdemerits = 0 auto conditional
int property uilowestdemerits = 0 auto conditional
float property ufmediandemerits = 0.0 auto conditional
float property ufbindingshealth = 10.0 auto conditional
event onstoryscript(keyword akkeyword, location aklocation, objectreference akref1, objectreference akref2, int aivalue1, int aivalue2 )
endevent
objectreference function getslave()
endfunction
objectreference function getmaster()
endfunction
function enslaveplayer(actor akmaster, actor akslave, bool blimitedremoval = false)
endfunction
function transferslave(actor akoldmaster, actor aknewmaster, actor akslave)
endfunction
function resetcage( actor akslave)
endfunction
function updateslavestate(actor akmaster, actor akslave)
endfunction
bool function punishslave(actor akmaster, actor akslave, string sdevice)
endfunction
bool function rewardslave(actor akmaster, actor akslave, string sdevice)
endfunction
function updateslavefollowerstate(actor akslave)
endfunction
actor function getnearbyenslavedfollower(actor akslave)
endfunction
function equipslaverags(actor akslave)
endfunction
function debugtrace(string tracemsg)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1