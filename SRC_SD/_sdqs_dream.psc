scriptname _sdqs_dream extends quest  conditional
_sdqs_functions property funct  auto
_sdqs_fcts_outfit property fctoutfit  auto
referencealias property _sdrap_dreamer  auto  
referencealias property _sdrap_enter  auto  
referencealias property _sdrap_leave  auto  
referencealias property _sdrap_naamah  auto  
referencealias property _sdrap_meridiana  auto  
referencealias property _sdrap_sanguine  auto  
referencealias property _sdrap_sanguine_sam  auto  
referencealias property _sdrap_sanguine_haelga  auto  
referencealias property _sdrap_sanguine_svana  auto  
referencealias property _sdrap_sanguine_m  auto  
referencealias property _sdrap_sanguine_f auto  
referencealias property _sdrap_nord_girl  auto  
referencealias property _sdrap_imperial_man  auto    
referencealias property _sdrap_eisheth  auto  
referencealias property _sdla_safeharbor  auto  
referencealias property _sdrap_succubusplayer  auto  
objectreference property _sd_succubusplayermarker  auto  
quest property _sd_dream_destinations  auto  
quest property samquest  auto  
quest property haelgaquest  auto  
quest property aliciastartquest auto
_sdqs_dream_destinations property dreamdest auto
sexlabframework property sexlab auto
objectreference property _sd_safetydest  auto  
objectreference property _sd_moonshadowdest  auto  
outfit property _sdo_sanguine_chosen  auto  
outfit property _sdo_sanguine_gear  auto  
outfit property _sdo_naked  auto  
armor property _sda_collar_blood  auto  
armor property _sda_bindings  auto  
armor property _sda_gag  auto  
armor property _sda_sanguine_chosen  auto  
slautilscr property slautil  auto  
formlist property _sd_sanguine_outfits  auto  
faction property _sdp_bunkhousefaction  auto  
globalvariable property _sdgvp_enslaved auto
globalvariable property _sdgvp_enslavedspriggan auto
globalvariable property _sdgvp_gender_restrictions auto
objectreference property _sd_dremorachallenger  auto  
objectreference property _sd_dremorainvader  auto  
referencealias property _sdrap_redguard_girl  auto  
spell property _sdsp_sanguinebound  auto  
globalvariable property _sdgvp_sanguine_blessing auto
objectreference[] property moonshadowroselist  auto  
cell property _sd_sanguinedreamworld  auto  
string                   property sd_key               = "sanguinesdebauchery.esp" autoreadonly
string                   property ninode_schlong   = "npc genitalsbase [genbase]" autoreadonly
string                   property ninode_left_breast    = "npc l breast" autoreadonly
string                   property ninode_left_breast01  = "npc l breast01" autoreadonly
string                   property ninode_left_butt      = "npc l butt" autoreadonly
string                   property ninode_right_breast   = "npc r breast" autoreadonly
string                   property ninode_right_breast01 = "npc r breast01" autoreadonly
string                   property ninode_right_butt     = "npc r butt" autoreadonly
string                   property ninode_skirt02        = "skirtbbone02" autoreadonly
string                   property ninode_skirt03        = "skirtbbone03" autoreadonly
string                   property ninode_belly          = "npc belly" autoreadonly
float                    property ninode_max_scale      = 4.0 autoreadonly
float                    property ninode_min_scale      = 0.1 autoreadonly
int                      property skee_version  = 1 autoreadonly
int                      property nioverride_version    = 4 autoreadonly
int                      property nioverride_script_version = 4 autoreadonly
float                    property xpmse_version         = 3.0 autoreadonly
float                    property xpmselib_version      = 3.0 autoreadonly
function senddreamerback( int aistage )
endfunction
event oninit()
endevent
function positionvictims( int aistage )
endfunction
bool function checkxpmserequirements(actor akactor, bool isfemale)
endfunction
function initmoonshadow()
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1