scriptname slsw_purifingsolutionmonitor extends activemagiceffect  
globalvariable property slsw_drugpool_pd  auto
globalvariable property slsw_drugpool_md  auto
globalvariable property slsw_drugpool_mkd  auto
slsw_upkeep property upkeep auto
spell property slsw_sp_stage1  auto
spell property slsw_pd_stage1  auto
spell property slsw_pd_stage2  auto
spell property slsw_pd_stage3  auto
spell property slsw_pd_stage4  auto
spell property slsw_pd_stage5  auto
spell property slsw_md_stage1  auto
spell property slsw_md_stage2  auto
spell property slsw_md_stage3  auto
spell property slsw_md_stage4  auto
spell property slsw_md_stage5  auto
spell property slsw_mkd_stage1  auto
spell property slsw_mkd_stage2  auto
spell property slsw_mkd_stage3  auto
spell property slsw_mkd_stage4  auto
spell property slsw_mkd_stage5  auto
event oneffectstart(actor aktarget, actor akcaster)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1