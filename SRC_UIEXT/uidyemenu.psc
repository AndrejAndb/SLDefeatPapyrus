scriptname uidyemenu extends uimenubase
string property  root_menu  = "custommenu" autoreadonly
string property  menu_root  = "_root.dyemenu." autoreadonly
string function getmenuname()
endfunction
int function openmenu(form inform = none, form akreceiver = none)
endfunction
function resetmenu()
endfunction
function setpropertybool(string propertyname, bool value)
endfunction
function setpropertyint(string propertyname, int value)
endfunction
event onloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onunloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onconsumeitem(string eventname, string strarg, float numarg, form formarg)
endevent
function updateitemsourceform()
endfunction
function updatedyesourceform()
endfunction
function updateconsumeitems()
endfunction
function updatemaxblending()
endfunction
;This file was cleaned with papyrusSourceHeadliner