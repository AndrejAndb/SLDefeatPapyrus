scriptname slsw_badpotionmagika_monitor extends activemagiceffect  
globalvariable property slsw_drugpool_pd  auto
globalvariable property slsw_drugpool_md  auto
globalvariable property slsw_drugpool_mkd  auto
globalvariable property slsw_addictionindicator  auto
float property drugstrenght auto
slsw_mcmconfig property mcm  auto  
slsw_upkeep property upkeep auto
event oneffectstart(actor aktarget, actor akcaster)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1