scriptname _sdras_stplayer extends referencealias  
referencealias property playeralias  auto  
sexlabframework     property sexlab auto
quest property sls_playeraliciaquest  auto  
referencealias property sanguinealias  auto  
event oninit()
endevent
event onplayerloadgame()
endevent
function _maintenance()
endfunction
event onupdate()
endevent
event onplayeralicia(string _eventname, string _args, float _argc = -1.0, form _sender)
endevent
event onsexlabstart(string _eventname, string _args, float _argc, form _sender)
endevent
event onsexlabend(string _eventname, string _args, float _argc, form _sender)
endevent 
event onsexlaborgasm(string _eventname, string _args, float _argc, form _sender)
endevent
function _initexternalpregancy()
endfunction
bool function ispregnantbysoulgemoven(actor kactor) 
endfunction
bool function ispregnantbysimplepregnancy(actor kactor) 
endfunction
bool function ispregnantbybeeingfemale(actor kactor)
endfunction
bool function ispregnantbyestruschaurus(actor kactor)
endfunction
bool function ispregnant(actor kactor)
endfunction
bool function isfemale(actor kactor)
endfunction
bool function _hasplayer(actor[] _actors)
endfunction
bool function _hasactor(actor[] _actors, actor thisactor)
endfunction
bool function _hasrace(actor[] _actors, race thisrace)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1