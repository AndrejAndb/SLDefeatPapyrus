scriptname uilistmenu extends uimenubase
string property  root_menu  = "custommenu" autoreadonly
string property  menu_root  = "_root.listmenu." autoreadonly
int function getresultint()
endfunction
float function getresultfloat()
endfunction
string function getresultstring()
endfunction
function setpropertyint(string propertyname, int value)
endfunction
function setpropertybool(string propertyname, bool value)
endfunction
function setpropertystringa(string propertyname, string[] value)
endfunction
int function addentryitem(string entryname, int entryparent = -1, int entrycallback = -1, bool entryhaschildren = false)
endfunction
function setpropertyindexint(string propertyname, int index, int value)
endfunction
function setpropertyindexbool(string propertyname, int index, bool value)
endfunction
function setpropertyindexstring(string propertyname, int index, string value)
endfunction
int function getpropertyint(string propertyname)
endfunction
function oninit()
endfunction
function resetmenu()
endfunction
int function openmenu(form aform = none, form areceiver = none)
endfunction
string function getmenuname()
endfunction
event onselect(string eventname, string strarg, float numarg, form formarg)
endevent
event onselecttext(string eventname, string strarg, float numarg, form formarg)
endevent
event onloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onunloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
;This file was cleaned with papyrusSourceHeadliner