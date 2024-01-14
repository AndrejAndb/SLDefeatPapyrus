scriptname uistatsmenu extends uimenubase
string property  root_menu  = "custommenu" autoreadonly
string property  menu_root  = "_root.actorstatspanelfader.actorstatspanel." autoreadonly
string function getmenuname()
endfunction
int function openmenu(form inform = none, form akreceiver = none)
endfunction
event onloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onunloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
function updatestatsform()
endfunction
;This file was cleaned with papyrusSourceHeadliner