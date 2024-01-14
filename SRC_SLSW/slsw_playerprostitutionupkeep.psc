scriptname slsw_playerprostitutionupkeep extends quest conditional 
sexlabframework property sexlab auto
float property cut auto hidden
int property gold auto hidden
int property allgold auto hidden
int property clientcount auto hidden
int property clientaction auto conditional hidden
cell property wrden auto
cell property whden auto
cell property soden auto
cell property rfden auto
cell property mkden auto
objectreference property wrmarker auto
objectreference property whmarker auto
objectreference property somarker auto
objectreference property rfmarker auto
objectreference property mkmarker auto
referencealias property alias_client auto
actor property client29 auto
actor property client3 auto
actor property client30 auto
actor property client31 auto
actor property client32 auto
actor property client33 auto
actor property client34 auto
actor property client35 auto
actor property client36 auto
actor property client37 auto
actor property client38 auto
actor property client4 auto
actor property client40 auto
actor property client5 auto
actor property client6 auto
actor property client7 auto
actor property client9 auto
actor property client39 auto
event oninit()
endevent
event onupdate()
endevent
function getclient()
endfunction
function action()
endfunction
event youcanleavenow(string eventname, string argstring, float argnum, form sender)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1