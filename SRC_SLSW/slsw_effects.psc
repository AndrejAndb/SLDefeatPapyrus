scriptname slsw_effects extends quest  
slsw_mcmconfig property mcm auto
sexlabframework property sexlab auto
magiceffect property withdrawalsuppression auto
idle property idlestop_loose auto
idle property bleedoutstart auto
idle property bleedoutstop auto
idle property idledrinkpotion auto
globalvariable property slsw_addictionindicator auto
imagespacemodifier property slsw_blurryism auto
actor property playerref auto 
formlist property slsw_drugswocure auto
event oninit()
endevent
event onupdategametime()
endevent
bool function isplayercarrying()  
endfunction
bool function isplayerbound()
endfunction
function effectsoff()
endfunction
function effectson()
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1