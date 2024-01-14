scriptname slsw_blackoutupkeep extends quest  
slsw_mcmconfig property mcm  auto
globalvariable property slsw_dosecounter  auto
globalvariable property slsw_dose1  auto
globalvariable property slsw_dose2  auto
globalvariable property slsw_dose3  auto
globalvariable property slsw_dose4  auto
globalvariable property slsw_dose5  auto
globalvariable property slsw_dose6  auto
globalvariable property slsw_dose7  auto
globalvariable property slsw_dose8  auto
globalvariable property slsw_dose9  auto
globalvariable property slsw_dose10  auto
globalvariable property slsw_dose11  auto
globalvariable property slsw_dose12  auto
globalvariable property slsw_dose13  auto
globalvariable property slsw_dose14  auto
globalvariable property slsw_dose15  auto
globalvariable property slsw_dose16  auto
globalvariable property slsw_dose17  auto
globalvariable property slsw_dose18  auto
globalvariable property slsw_dose19  auto
globalvariable property slsw_dose20  auto
globalvariable property gamehour  auto
globalvariable property gameday  auto
globalvariable property gamemonth  auto
globalvariable property gameyear  auto
imagespacemodifier property fadetoblack  auto
imagespacemodifier property fadetoblackhold  auto
imagespacemodifier property woozy  auto
idle property wakeup  auto
slsw_scum property sleepscript auto
worldspace property whiterunworld auto
worldspace property windhelmworld auto
worldspace property solitudeworld auto
worldspace property riftenworld auto
worldspace property markarthworld auto
objectreference property wrmarker auto
objectreference property mkmarker auto
objectreference property whmarker auto
objectreference property somarker auto
objectreference property rfmarker auto
objectreference property dsmarker auto
objectreference property mtmarker auto
objectreference property whomarker auto
objectreference property fkmarker auto
objectreference property dscenterobject auto
objectreference property mtcenterobject auto
objectreference property fkcenterobject auto
objectreference property whocenterobject auto
objectreference property whdoor auto
objectreference property wrdoor auto
objectreference property sodoor auto
objectreference property rfdoor auto
objectreference property mtdoor auto
objectreference property dsdoor auto
objectreference property fkdoor auto
sexlabframework property sexlab auto
referencealias property alias_stranger1 auto
location property solitudelocation auto
location property markarthlocation auto
location property riftenlocation auto
location property whiterunlocation auto
location property windhelmlocation auto
location property dawnstarlocation auto
location property morthallocation auto
location property winterholdlocation auto
location property falkreathlocation auto
spell property slsw_ismremovalspell auto
event oninit()
endevent
event whatanight(string eventname, string argstring, float argnum, form sender)
endevent
function overdose(float drugtime)
endfunction
function updatedosetracking(float[] myarray)
endfunction
function sortdosetracking (float[] myarray)
endfunction
function increasetime(int time)
endfunction
function wakeup()
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1