scriptname _sdras_companion extends referencealias conditional
_sdqs_functions property funct  auto
_sdqs_fcts_followers property fctfollowers  auto
_sdqs_fcts_factions property fctfactions auto
_sdqs_fcts_outfit property fctoutfit auto
_sdqs_fcts_inventory property fctinventory  auto
referencealias property _sdrap_playerstorage  auto  
referencealias property _sdrap_master  auto
faction property _sdfp_slaverresistance  auto
formlist property _sdflp_sex_items  auto
formlist property _sdflp_punish_items  auto
formlist property _sdflp_companion_items  auto
outfit property _sdop_naked  auto  
outfit property _sdop_gagged  auto  
idle property offsetboundstandingstart  auto  
function dontuseweaponswheniremoveallitemsireallymeanit( actor akactor )
endfunction
event oninit()
endevent
state null
endstate
state monitor
event onenterbleedout()
endevent
event onupdate()
endevent
endstate
function enslavecompanion( actor kactor)
endfunction
keyword    property _sdkp_actortypenpc  auto
;This file was cleaned with PapyrusSourceHeadliner 1