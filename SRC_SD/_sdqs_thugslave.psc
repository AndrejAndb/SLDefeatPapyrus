scriptname _sdqs_thugslave extends quest
referencealias property _sdrap_master  auto
referencealias property _sdrap_slave  auto
referencealias property _sdrap_thug_1  auto
referencealias property _sdrap_thug_2  auto
referencealias property _sdrap_boss auto
event onstoryscript(keyword akkeyword, location aklocation, objectreference akref1, objectreference akref2, int aivalue1, int aivalue2)
endevent
auto state monitor
event onupdate()
endevent
endstate
;This file was cleaned with PapyrusSourceHeadliner 1