scriptname _sdqs_sprigganslave extends quest conditional
_sdqs_snp property snp auto
_sdqs_functions property funct  auto
_sdqs_fcts_inventory property fctinventory  auto
_sdqs_fcts_outfit property fctoutfit  auto
_sdqs_fcts_factions property fctfactions  auto
globalvariable property _sdgvp_positions  auto  
globalvariable property _sdgvp_poses  auto  
globalvariable property gamedayspassed auto
globalvariable property _sdgvp_spriggan_comment auto
globalvariable property _sdgvp_spriggan_secret  auto  
globalvariable[] property _sdgvp_config  auto 
globalvariable property _sdgvp_config_safeword  auto  
spell property _sdsp_cum  auto
sound property _sdsmp_spriggananger  auto  
referencealias property _sdrap_spriggan  auto  
referencealias property _sdrap_host  auto  
referencealias property _sdrap_marker  auto  
referencealias property _sdrap_sprigganbook  auto  
actorbase property _sdabp_sprigganhost  auto
formlist property _sdflp_allied  auto
formlist property _sdflp_slaver  auto
keyword property _sdkp_sex  auto  
spell property _sdsp_host_flare  auto
spell property _sdsp_heal  auto
cell property _sdlp_dream  auto  
bool property bquestactive = false auto conditional
float property fsprigganpower = 0.0625 auto conditional
visualeffect property sprigganfx  auto  
sexlabframework property sexlab  auto  
function commented()
endfunction
function commenttrigger()
endfunction
event onstoryscript(keyword akkeyword, location aklocation, objectreference akref1, objectreference akref2, int aivalue1, int aivalue2)
endevent
event onupdategametime()
endevent
event onupdate()
endevent
globalvariable property _sdgvp_sprigganenslaved  auto  
globalvariable property _sd_spriggan_punishment  auto  
globalvariable property _sd_sprigganenslavedcount  auto  
objectreference property _sd_sprigganhusk  auto  
formlist property _sdflp_ignore_items  auto
referencealias property _sdrap_grovemarker  auto
faction property giantfaction  auto  
faction property sprigganfaction  auto  
faction property playerfaction  auto  
spell property callspriggan auto
spell property polymorphspriggan auto
;This file was cleaned with PapyrusSourceHeadliner 1