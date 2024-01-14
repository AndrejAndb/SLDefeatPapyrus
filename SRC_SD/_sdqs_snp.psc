scriptname _sdqs_snp extends quest conditional
_sdqs_functions property funct  auto
_sdqs_config property config auto
sexlabframework property sexlab auto
globalvariable property _sdgv_snp_delay  auto
globalvariable property _sdgvp_state_playerragdoll  auto
bool[] property _sdbp_allowdisabledactors  auto
bool[] property _sdbp_scenepositionadj  auto
bool[] property _sdbp_scenepositionsync  auto
bool[] property _sdbp_scenelockposition  auto  
referencealias property _sdrap_male  auto
referencealias property _sdrap_female  auto
referencealias property _sdrap_lockposition  auto
keyword property _sdkp_lustaura  auto
message[] property _sdmp_messages  auto
scene[] property _sdsp_sexscenes  auto
spell[] property _sdsp_sexspells auto
armor[] property _sdap_punish_items  auto
idle[] property _sdiap_4phase_male  auto
idle[] property _sdiap_4phase_female  auto
idle[] property _sdiap_1phase_male  auto
idle[] property _sdiap_1phase_female  auto
idle[] property _sdiap_poses_female  auto
idle[] property _sdiap_poses_male  auto
idle[] property _sdiap_dance_female  auto
int property _sduip_scene = 0 auto
int property _sduip_position = 0 auto
int property _sduip_phase = 0 auto
float property _sdfp_distance = 0.0 auto
int property iquestactive = 0 auto conditional
function updatesexpk( actor akactorm, actor akactorf, bool abwithtarget = true )
endfunction
function updatepos( actor akactorm, actor akactorf, bool abflip = false )
endfunction
event onstoryscript(keyword akkeyword, location aklocation, objectreference akref1, objectreference akref2, int aivalue1, int aivalue2)
endevent
auto state waiting
event onupdate()
endevent
endstate
state monitor
event onbeginstate()
endevent
event onendstate()
endevent
event onupdate()
endevent
endstate
scene[] property _sdsp_sexscenes2  auto  
;This file was cleaned with PapyrusSourceHeadliner 1