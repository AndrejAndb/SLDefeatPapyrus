scriptname uimagicmenu extends uimenubase  
string property  root_menu  = "custommenu" autoreadonly
string property  menu_root  = "_root." autoreadonly
string property  config_root  = "_global.skyui.util.configmanager" autoreadonly
string function getmenuname()
endfunction
int function openmenu(form akform = none, form akreceiver = none)
endfunction
function setpropertystring(string propertyname, string value)
endfunction
function setpropertybool(string propertyname, bool value)
endfunction
function setpropertyform(string propertyname, form value)
endfunction
event onaddremovespell(string eventname, string strarg, float numarg, form formarg)
endevent
event onloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onunloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
;This file was cleaned with papyrusSourceHeadliner