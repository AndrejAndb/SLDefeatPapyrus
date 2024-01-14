scriptname slsw_redlight extends quest conditional 
referencealias property client auto
referencealias property hooker auto
actor property slsw_client1 auto 
actor property slsw_client2 auto
actor property slsw_client3 auto
actor property slsw_client4 auto
actor property slsw_client5 auto
actor property slsw_client6 auto
actor property slsw_client7 auto
actor property slsw_client8 auto
actor property slsw_client9 auto
actor property slsw_client10 auto
actor property slsw_client11 auto
actor property slsw_client12 auto
actor property slsw_client13 auto
actor property slsw_client14 auto
actor property slsw_client15 auto
actor property slsw_client16 auto
actor property slsw_client17 auto
actor property slsw_client18 auto
actor property slsw_client19 auto
actor property slsw_client20 auto
actor property slsw_client21 auto
actor property slsw_client22 auto
actor property slsw_client23 auto
actor property slsw_client24 auto
actor property slsw_client25 auto
actor property slsw_client26 auto
actor property slsw_client27 auto
actor property slsw_client28 auto
actor property slsw_client29 auto
actor property slsw_client30 auto
actor property slsw_client31 auto
actor property slsw_client32 auto
actor property slsw_client33 auto
actor property slsw_client34 auto
actor property slsw_client35 auto
actor property slsw_client36 auto
actor property slsw_client37 auto
actor property slsw_client38 auto
actor property slsw_client39 auto
actor property slsw_client40 auto
objectreference property wrmarker auto
objectreference property whmarker auto
objectreference property somarker auto
objectreference property rimarker auto
objectreference property mkmarker auto
objectreference property wrposition auto
objectreference property whposition auto
objectreference property soposition auto
objectreference property riposition auto
objectreference property mkposition auto
int property iaction auto conditional
sexlabframework property sexlab auto
float property gold = 0.0 auto
float property pay = 0.0 auto conditional
int property ichoice auto
int property random auto
event onupdate()
endevent
function getclient()
endfunction
function action()
endfunction
event finished(string eventname, string argstring, float argnum, form sender)
endevent
function hookeraction()
endfunction
event finishedhooker(string eventname, string argstring, float argnum, form sender)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1