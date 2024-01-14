scriptname uiselectionmenu extends uimenubase
formlist property selectedforms  auto  
string property  root_menu  = "custommenu" autoreadonly
string property  menu_root  = "_root.menuholder.menu_mc." autoreadonly
form function getresultform()
endfunction
function setpropertyint(string propertyname, int value)
endfunction
function resetmenu()
endfunction
int function openmenu(form aform = none, form areceiver = none)
endfunction
string function getmenuname()
endfunction
event onselect(string eventname, string strarg, float numarg, form formarg)
endevent
event onselectform(string eventname, string strarg, float numarg, form formarg)
endevent
event onloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onunloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
;This file was cleaned with papyrusSourceHeadliner