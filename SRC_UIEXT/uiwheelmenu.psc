scriptname uiwheelmenu extends uimenubase
string property  root_menu  = "custommenu" autoreadonly
string property  menu_root  = "_root.wheelphase.wheelbase." autoreadonly
string function getmenuname()
endfunction
function oninit()
endfunction
int function openmenu(form akform = none, form akreceiver = none)
endfunction
event onloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onunloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onchooseoption(string eventname, string strarg, float numarg, form formarg)
endevent
event onselectoption(string eventname, string strarg, float numarg, form formarg)
endevent
function resetmenu()
endfunction
function setpropertyint(string propertyname, int value)
endfunction
function setpropertyindexint(string propertyname, int index, int value)
endfunction
function setpropertyindexbool(string propertyname, int index, bool value)
endfunction
function setpropertyindexstring(string propertyname, int index, string value)
endfunction
function updatewheelselection()
endfunction
function updatewheelform()
endfunction
function updatewheelvisibility()
endfunction
function updatewheelenabledoptions()
endfunction
function updatewheeloptions()
endfunction
function updatewheeloptionlabels()
endfunction
function updatewheelicons()
endfunction
function updatewheeliconcolors()
endfunction
function updatewheeltextcolors()
endfunction
;This file was cleaned with papyrusSourceHeadliner