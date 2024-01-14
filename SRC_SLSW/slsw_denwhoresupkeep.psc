scriptname slsw_denwhoresupkeep extends quest
cell property denwh auto
cell property denwr auto
cell property denrf auto
cell property denso auto
cell property denmk auto
objectreference property markerwh auto
objectreference property markerwr auto
objectreference property markerso auto
objectreference property markerrf auto
objectreference property markermk auto
objectreference property cocmarker auto
referencealias property client auto
actor property slsw_client1 auto
actor property slsw_client11 auto
actor property slsw_client12 auto
actor property slsw_client14 auto
actor property slsw_client16 auto
actor property slsw_client17 auto
actor property slsw_client18 auto
actor property slsw_client19 auto
actor property slsw_client2 auto
actor property slsw_client20 auto
actor property slsw_client21 auto
actor property slsw_client22 auto
actor property slsw_client23 auto
actor property slsw_client24 auto
actor property slsw_client25 auto
actor property slsw_client26 auto
actor property slsw_client27 auto
actor property slsw_client28 auto
sexlabframework property sexlab auto
int property den auto hidden
actor property whorewr auto
actor property whorewh auto
actor property whoreso auto
actor property whorerf auto
actor property whoremk auto
int property whoreaction auto hidden 
event oninit()
endevent
event onupdate()
endevent
function getclient()
endfunction
function action()
endfunction
event finished (string eventname, string argstring, float argnum, form sender)
endevent
event playerfinished (string eventname, string argstring, float argnum, form sender)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1