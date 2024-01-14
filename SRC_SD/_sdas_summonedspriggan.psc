scriptname _sdas_summonedspriggan extends actor
referencealias property _sdrap_player  auto  
keyword property _sdkp_spriggan  auto 
keyword property _sdkp_sex  auto 
globalvariable property _sdgvp_positions  auto  
float function getactorstrengthpercentage(actor aksubject, float percentage = -1.0)
endfunction
event oninit()
endevent
event ondying(actor akkiller)
endevent
event onupdate()
endevent
globalvariable property _sd_spriggan_punishment  auto  
sexlabframework property sexlab  auto  
message property _sd_rapemenu auto
;This file was cleaned with PapyrusSourceHeadliner 1