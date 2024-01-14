scriptname _sdqs_fcts_factions extends quest  
_sdqs_functions property funct  auto
zbfslavecontrol property zazslavecontrol auto
keyword property _sdkp_actortypenpc  auto
formlist property _sdflp_slavery_factions  auto
formlist property _sdflp_banned_factions  auto
formlist property _sdflp_banned_actors  auto
race property falmerrace  auto  
race property sprigganrace  auto  
formlist property _sdflp_falmer_factions  auto
formlist property _sdflp_follower_factions  auto
formlist property _sdflp_spriggan_factions  auto
race property  hagravenrace   auto
race property  wolfrace  auto
race property  sabercatrace  auto
race property  bearrace  auto
race property  dograce  auto
race property  dogcompanionrace  auto
race property  giantrace  auto
race property  chaurusrace   auto
race property  spiderrace   auto
race property  trollrace  auto
race property  frosttrollrace  auto
race property  draugrrace  auto
race property  draugrmagicrace  auto
faction property  hagravenfaction   auto    ; hagravenfaction 
faction property  wolffaction  auto   ; wolffaction
faction property  dogfaction  auto    ; dogfaction
faction property  sabercatfaction  auto  ; dogfaction
faction property  bearfaction  auto   ; dogfaction
faction property  giantfaction  auto  ; giantfaction
faction property  chaurusfaction   auto  ; chaurusfaction
faction property  spiderfaction   auto  ; spiderfaction
faction property  trollfaction  auto   ; trollfaction
faction property  draugrfaction  auto   ; draugrfaction
faction property  falmerfaction  auto   ; falmerfaction
faction property  nordfaction  auto   ; cwsonsally
faction property  bretonfaction  auto   ; forswornfaction
faction property  imperialfaction  auto  ; cwimperialally
faction property  orcfaction  auto    ; orcfriendfaction
faction property  elffaction  auto    ; thalmorfaction
faction property  redguardfaction  auto  ; hunterfaction
faction property  khajiitfaction  auto   ; khajiitcaravanfaction
faction property  argonianfaction  auto  ; hunterfaction
faction property  dremorafaction  auto   ; dremorafaction
faction property banditfaction  auto    ; banditfaction
faction property _sdfp_slavercrimefaction  auto 
formlist property _sdflp_humanoid_masters_races  auto
formlist property _sdflp_beast_master_races  auto
function inithumanoidmasterslist (  )
endfunction
function initbeastmasterslist (  )
endfunction
bool function initgenericmaster ( actor kactor )
endfunction
function initslaveryfactionbyrace (  )
endfunction
function initslaveryfactionforthisrace ( form thisrace )
endfunction
bool function checkifslaver ( actor akactor )
endfunction
bool function checkifslavercreature ( actor akactor )
endfunction
bool function checkifnpc ( actor akactor )
endfunction
bool function checkifspriggan ( actor akactor )
endfunction
bool function checkiffalmer ( actor akactor )
endfunction
bool function checkifslavercreaturerace ( actor akactor )
endfunction
bool function checkifslavercreaturecollar ( actor akactor )
endfunction
bool function checkifslaverwebcollar ( actor akactor )
endfunction
bool function checkifslavercreaturebindings ( actor akactor )
endfunction
bool function checkiffollower ( actor akactor )
endfunction
bool function actorinlist(formlist akactorslist, actor thisactor)
endfunction
bool function actorfactioninlist( actor akactor, formlist akfactionlist, formlist akbannedfactionlist = none )
endfunction
bool function actorinbannedfactions( actor akactor )
endfunction
function cleanslaveryfactions( actor akactor ) 
endfunction
bool function qualifyactor( actor akactor, bool abcheckinscene = true )
endfunction
function syncactorfactions( actor akmaster, actor akslave, formlist alfactionlistout = none )
endfunction
form function findmatchingrace( actor akmaster )
endfunction
function syncactorfactionsbyrace( actor akmaster, actor akslave, formlist alfactionlistout = none )
endfunction
function expireslavefactions( actor akslave )
endfunction
function clearslavefactions( actor akslave )
endfunction
function removeslavefactions( actor akslave )
endfunction
function displayslavefactions( actor akslave )
endfunction
bool function isinslavefactions( actor akactor )
endfunction
function payslaverycrime()
endfunction
bool function allytoactor( actor akmaster, actor akslave, formlist alfactionlistin, formlist alfactionlistout = none )
endfunction
function resetallytoactor( actor akslave, formlist alfactionlistin )
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1