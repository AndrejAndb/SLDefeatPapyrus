scriptname slsw_ddskoomamonitor extends activemagiceffect  
globalvariable property drugpool_pd  auto
globalvariable property drugpool_md  auto
globalvariable property drugpool_mkd  auto
globalvariable property slsw_addictionindicator  auto
globalvariable property slsw_dosecounter  auto
slsw_mcmconfig property mcm  auto  
slsw_upkeep property upkeep auto
slsw_blackoutupkeep property blackout auto
race property khajiitrace auto
spell property slsw_ddsk_stage1  auto
spell property slsw_ddsk_stage2  auto
spell property slsw_ddsk_stage3  auto
spell property slsw_ddsk_stage4  auto
spell property slsw_ddsk_kj_stage1  auto
spell property slsw_ddsk_kj_stage2  auto
spell property slsw_ddsk_kj_stage3  auto
spell property slsw_ddsk_kj_stage4  auto
spell property slsw_sp_stage1  auto
event oneffectstart(actor aktarget, actor akcaster)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1