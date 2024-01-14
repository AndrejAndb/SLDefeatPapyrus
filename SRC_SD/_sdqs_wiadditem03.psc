scriptname _sdqs_wiadditem03 extends worldinteractionsscript  conditional
book property pcontract  auto  conditional
referencealias property pthug1  auto  
referencealias property pthug2  auto  
referencealias property pthug3  auto  
location property pdebugplayerloc auto
location property pdebugthugloc auto
event oninit()
endevent
state polling ;set in stage 0
event onupdate() ;registered in stage 0
endevent
endstate
state thugwatch
event onupdate()
endevent
endstate
;This file was cleaned with PapyrusSourceHeadliner 1