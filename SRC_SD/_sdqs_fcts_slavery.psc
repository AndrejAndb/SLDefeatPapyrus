scriptname _sdqs_fcts_slavery extends quest  
_sdqs_functions property funct  auto
_sdqs_fcts_constraints property fctconstraints  auto
_sdqs_fcts_outfit property fctoutfit  auto
_sdqs_fcts_factions property fctfactions  auto
zbfslavecontrol property zazslavecontrol auto
_sdqs_enslavement property enslavement  auto
sexlabframework property sexlab auto
globalvariable property _sdgvp_gametime  auto  
globalvariable property _sdgvp_enslaved  auto  
globalvariable property _sdgvp_can_join  auto  
globalvariable property _sdgvp_sanguine_blessings auto  
globalvariable property _sdgvp_enslavedcount  auto  
globalvariable property _sdgvp_falmerenslavedcount  auto  
globalvariable property _sdgvp_currenttaskid  auto  
globalvariable property _sdgvp_currenttaskstatus  auto  
globalvariable property _sdgvp_config_min_slavery_level auto
globalvariable property _sdgvp_config_max_slavery_level auto
globalvariable property _sdgvp_config_slavery_level_mult auto
globalvariable property _sdgvp_config_min_days_before_master_travel auto
globalvariable property _sdgvp_ismastertraveller  auto  
globalvariable property _sdgvp_masterdisposition  auto  
globalvariable property _sdgvp_masterdispositionoverall  auto  
globalvariable property _sdgvp_mastertrust  auto  
globalvariable property _sdgvp_masterpersonalitytype  auto  
globalvariable property _sdgvp_masterneedfood  auto  
globalvariable property _sdgvp_masterneedgold  auto  
globalvariable property _sdgvp_masterneedsex  auto  
globalvariable property _sdgvp_masterneedpunishment  auto  
globalvariable property _sdgvp_slaverylevel  auto  
globalvariable property _sdgvp_state_caged  auto 
keyword property _sdtsk_bring_food  auto  
keyword property _sdtsk_bring_gold  auto  
keyword property _sdtsk_bring_armor  auto  
keyword property _sdtsk_bring_weapon  auto  
keyword property _sdtsk_bring_ingredient  auto  
keyword property _sdtsk_bring_firewood  auto 
keyword property _sdtsk_bring_book  auto  
keyword property _sdtsk_entertain_dance  auto  
keyword property _sdtsk_entertain_solo  auto  
keyword property _sdtsk_entertain_sex auto  
keyword property _sdtsk_inspection  auto  
keyword property _sdtsk_training_anal  auto  
keyword property _sdtsk_training_vaginal  auto  
keyword property _sdtsk_training_oral  auto  
keyword property _sdtsk_training_posture  auto  
keyword property _sdtsk_wash  auto  
keyword property _sdtsk_ignore  auto  
quest property slaveryquest  auto  
keyword property actortypenpc  auto  
function initslaverystate( actor kslave )
endfunction
function startslavery( actor kmaster, actor kslave)
endfunction
function stopslavery( actor kmaster, actor kslave)
endfunction
function updatemastervalue( actor kmaster, string modvariable, int modvalue =0, int setnewvalue =0)
endfunction
function updateslavestatus( actor kslave, string modvariable, int modvalue =0, int setnewvalue =0)
endfunction
function updateslaveryvariable( actor kactor, string modvariable, int modvalue =0, int setnewvalue =0)
endfunction
bool function checkslaveprivilege( actor kslave, string modvariable)
endfunction
function updateslaveprivilege( actor kslave, string modvariable, bool modvalue = true)
endfunction
function slaveryrefreshglobalvalues( actor kmaster, actor kslave)
endfunction
function updateslaverylevel(actor kslave)
endfunction
function updateslaveryrelationshiptype(actor kmaster, actor kslave)
endfunction
function updatestatushourly( actor kmaster, actor kslave)
endfunction
function updatestatusdaily( actor kmaster, actor kslave, bool bdisplaystatus = true)
endfunction
function resetdailycounts( actor kmaster, actor kslave)
endfunction
function displayslaverylevel( actor kmaster, actor kslave )
endfunction
function displayslaverylevelobjective( actor kmaster, actor kslave, quest qslaveryquest )
endfunction
int function modmastertrusttokens(actor kmaster, int imodvalue)
endfunction
int function modmastertrust(actor kmaster, int imodvalue)
endfunction
function initpunishmentidle( )
endfunction
function playpunishmentidle( string spunishmentidle = "" )
endfunction
float function getenslavementduration(actor kslave)
endfunction
function initslaverytasklist()
endfunction
function registerslaverytask(int itaskid, form fkeyword, string staskname, int itaskchance, float ftaskduration, form ftasktargetitem, int itasktargetcount, int itasktargetdifference, int itaskpositivemod, string staskpositivereward, int itasknegativemod, string stasknegativereward, string stasktags)
endfunction
function pickslaverytask(actor kslave, string staskname = "")
endfunction
function startslaverytask(actor kslave, int itaskid)
endfunction
function evaluateslaverytasklist(actor kslave)
endfunction
function displaytasktimer(form fkeyword)
endfunction
function evaluateslaverytask(actor kslave, form fkeyword)
endfunction
function completeslaverytask(actor kslave, form fkeyword)
endfunction
function failslaverytask(actor kslave, form fkeyword)
endfunction
function resetslaverytasklist(actor kslave)
endfunction
function resetslaverytask(form fkeyword)
endfunction
function modslaverytask(actor kslave, string staskname, int imodvalue)
endfunction
form function getslaverytaskfromname(string staskname)
endfunction
form function getslaverytaskfromid(int itaskid)
endfunction
function displayslaverytaskstartmessage(actor kslave, form fkeyword)
endfunction
function debugtrace(string tracemsg)
endfunction 
;This file was cleaned with PapyrusSourceHeadliner 1