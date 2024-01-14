scriptname slsw_upkeep extends quest  
sexlabframework property sexlab  auto
globalvariable property lastcheck  auto  
globalvariable property drugpool_pd  auto
globalvariable property drugpool_md  auto
globalvariable property drugpool_mkd  auto
globalvariable property slsw_install  auto
globalvariable property slsw_addictionindicator  auto
slsw_mcmconfig property mcm auto
slsw_scum property scum auto
spell property slsw_ismremovalspell auto
spell property pd1 auto
spell property pd2 auto
spell property pd3 auto
spell property pd4 auto
spell property pd5 auto
spell property md1 auto
spell property md2 auto
spell property md3 auto
spell property md4 auto
spell property md5 auto
spell property mkd1 auto
spell property mkd2 auto
spell property mkd3 auto
spell property mkd4 auto
spell property mkd5 auto
potion property skooma auto
potion property roseofazura auto
potion property boethiasdeception auto
potion property thiefsdelight auto
potion property thesecondbrain auto
potion property elendrsflask auto
potion property thecontortionist auto
potion property morgulstouch auto
potion property toughflesh auto
potion property ocatospallatine auto
potion property magesfriend auto
potion property thearchmage auto
potion property verminasprice auto
potion property leafskooma auto
potion property sleepingtreesap auto
potion property herbtea auto
potion property purifingsolution auto
potion property ddskooma auto
faction property creaturefaction  auto
race property horserace  auto
keyword property actortypenpc auto
event oninit()
endevent
function ongameload() ;called by onplayerloadgame on slswscum.psc
endfunction
event onupdategametime()
endevent
event forceddrugging(string eventname, string argstring, float argnum, form sender)
endevent
function getclean(float newvalue, spell as1, spell as2, spell as3, spell as4, spell as5)
endfunction
function drugged(float newvalue, spell as1, spell as2, spell as3, spell as4)
endfunction
function suppression_pd(float newvalue)
endfunction
function suppression_md(float newvalue)
endfunction
function suppression_mkd(float newvalue)
endfunction
function withdrawal(float newvalue, spell as1, spell as2, spell as3, spell as4, spell as5)
endfunction
function updateindicator()
endfunction
function sortpool(float[] myarray)
endfunction
function removealldrugs()
endfunction
event onsleepstop(bool abinterrupted)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1