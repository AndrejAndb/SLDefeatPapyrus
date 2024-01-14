scriptname slsw_suppression extends activemagiceffect  
spell property pabilitytoremove auto
slsw_upkeep property main auto
slsw_mcmconfig property mcm auto
globalvariable property drugpool_pd auto
globalvariable property drugpool_md auto
globalvariable property drugpool_mkd auto
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
event onupdategametime()
endevent
event oneffectstart(actor aktarget, actor akcaster)
endevent
function findhighestpool (float[] myarray)
endfunction
function suppression(float newvalue)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1