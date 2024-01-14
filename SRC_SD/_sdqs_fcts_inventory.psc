scriptname _sdqs_fcts_inventory extends quest  
sexlabframework property sexlab auto
_sdqs_fcts_slavery property fctslavery  auto
_sdqs_fcts_outfit property fctoutfit  auto
keyword property _sdkp_food  auto  
keyword property _sdkp_food_raw  auto  
miscobject property gold  auto  
miscobject property firewood  auto  
quest property _sdqp_enslavement auto
globalvariable property _sdgvp_hardcoremode  auto   
globalvariable property _sdgvp_buyout  auto  
globalvariable property _sdgvp_buyoutearned  auto  
objectreference property _sdrap_playerstorageref  auto  
objectreference property _sdrap_playerstoragekeys  auto  
formlist property _sdflp_ignore_items  auto
function transferinventory(actor kmaster, actor kslave, bool blimitedremoval = false)
endfunction
function limitedremoveallitems(objectreference akcontainer, objectreference aktransferto = none, bool absilent = true, formlist akignored = none )
endfunction
function saferemoveallitems(objectreference akcontainer, objectreference aktransferto = none)
endfunction
function filteredremoveallitems(objectreference akcontainer,  actor kmaster, string sfilter, bool bstripplayer )
endfunction
function limitedremoveallkeys(objectreference akcontainer, objectreference aktransferto = none, bool absilent = true, formlist akignored = none )
endfunction
function stashstolengoods( actor akthief, objectreference akcontainer )
endfunction
function stashallstolengoods( actor akthief, objectreference akcontainer )
endfunction
function processgoldearned(actor kmaster, actor kslave, float fgoldamount )
endfunction
function processgoldadded(actor kmaster, actor kslave)
endfunction
function processitemadded(actor kmaster, actor kslave, form akbaseitem)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1