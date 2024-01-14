scriptname uitextentrymenu extends uimenubase
string property  root_menu  = "custommenu" autoreadonly
string property  menu_root  = "_root.textentry." autoreadonly
string function getmenuname()
endfunction
string function getresultstring()
endfunction
function setpropertystring(string propertyname, string value)
endfunction
function resetmenu()
endfunction
int function openmenu(form inform = none, form akreceiver = none)
endfunction
event onloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onunloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event ontextchanged(string eventname, string strarg, float numarg, form formarg)
endevent
function updatetextentrystring()
endfunction
;This file was cleaned with papyrusSourceHeadliner