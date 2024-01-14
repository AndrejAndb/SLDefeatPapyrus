scriptname slsw_toughfleshmonitor extends activemagiceffect
globalvariable property slsw_drugpool_pd  auto
globalvariable property slsw_drugpool_md  auto
globalvariable property slsw_drugpool_mkd  auto
globalvariable property slsw_dosecounter  auto
globalvariable property slsw_addictionindicator  auto
slsw_mcmconfig property mcm  auto  
slsw_upkeep property upkeep auto
slsw_blackoutupkeep property blackout auto
spell property slsw_tf_stage1  auto
spell property slsw_tf_stage2  auto
spell property slsw_tf_stage3  auto
spell property slsw_tf_stage4  auto
spell property slsw_sp_stage1  auto
event oneffectstart(actor aktarget, actor akcaster)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1