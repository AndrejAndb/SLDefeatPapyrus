scriptname uicosmeticmenu extends uimenubase
string property  root_menu  = "custommenu" autoreadonly
string property  menu_root  = "_root.cosmeticmenu.racemenuinstance." autoreadonly
string property  this_root  = "_root.cosmeticmenu." autoreadonly
string property  cosmetic_category_warpaint = 1 autoreadonly
string property  cosmetic_category_bodypaint = 2 autoreadonly
string property  cosmetic_category_handpaint = 4 autoreadonly
string property  cosmetic_category_feetpaint = 8 autoreadonly
string property  cosmetic_category_facepaint = 16 autoreadonly
int function openmenu(form aform = none, form areceiver = none)
endfunction
string function getmenuname()
endfunction
function setpropertyint(string propertyname, int value)
endfunction
event onloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onfailedloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
event onunloadmenu(string eventname, string strarg, float numarg, form formarg)
endevent
;This file was cleaned with papyrusSourceHeadliner