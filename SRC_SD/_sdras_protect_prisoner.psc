scriptname _sdras_protect_prisoner extends referencealias  
_sdqs_enslavement property enslavement  auto
referencealias[] property _sdrap_protecters  auto  
referencealias property _sdrap_boss  auto
referencealias property _sdrap_slave  auto
referencealias property _sdrap_master  auto
keyword property _sdkp_sex  auto  
function checkwatchers()
endfunction
event oninit()
endevent
event onhit(objectreference akaggressor, form aksource, projectile akprojectile, bool abpowerattack, bool absneakattack, bool abbashattack, bool abhitblocked)
endevent
event oncellload()
endevent
event ongainlos(actor akviewer, objectreference aktarget)
endevent
event onlostlos(actor akviewer, objectreference aktarget)
endevent
event onupdate()
endevent
;This file was cleaned with PapyrusSourceHeadliner 1