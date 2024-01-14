scriptname uimenubase extends quest
bool property isresetting = false auto
function lock()
endfunction
bool function waitlock()
endfunction
function unlock()
endfunction
bool function blockuntilclosed()
endfunction
bool function waitforreset()
endfunction
int function openmenu(form akform = none, form akreceiver = none)
endfunction
string function getmenuname()
endfunction
event ongamereload()
endevent
function resetmenu()
endfunction
float function getresultfloat()
endfunction
int function getresultint()
endfunction
string function getresultstring()
endfunction
form function getresultform()
endfunction
int function getpropertyint(string propertyname)
endfunction
bool function getpropertybool(string propertyname)
endfunction
string function getpropertystring(string propertyname)
endfunction
float function getpropertyfloat(string propertyname)
endfunction
form function getpropertyform(string propertyname)
endfunction
alias function getpropertyalias(string propertyname)
endfunction
function setpropertyint(string propertyname, int value)
endfunction
function setpropertybool(string propertyname, bool value)
endfunction
function setpropertystring(string propertyname, string value)
endfunction
function setpropertyfloat(string propertyname, float value)
endfunction
function setpropertyform(string propertyname, form value)
endfunction
function setpropertyalias(string propertyname, alias value)
endfunction
function setpropertyindexint(string propertyname, int index, int value)
endfunction
function setpropertyindexbool(string propertyname, int index, bool value)
endfunction
function setpropertyindexstring(string propertyname, int index, string value)
endfunction
function setpropertyindexfloat(string propertyname, int index, float value)
endfunction
function setpropertyindexform(string propertyname, int index, form value)
endfunction
function setpropertyindexalias(string propertyname, int index, alias value)
endfunction
function setpropertyinta(string propertyname, int[] value)
endfunction
function setpropertyboola(string propertyname, bool[] value)
endfunction
function setpropertystringa(string propertyname, string[] value)
endfunction
function setpropertyfloata(string propertyname, float[] value)
endfunction
function setpropertyforma(string propertyname, form[] value)
endfunction
function setpropertyaliasa(string propertyname, alias[] value)
endfunction
;This file was cleaned with papyrusSourceHeadliner