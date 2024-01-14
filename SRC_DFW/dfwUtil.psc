scriptname dfwutil extends quest  
function onplayerloadgame()
endfunction
string function converthextostring(int ihexvalue, int iminlength=0)
endfunction
int function convertstringtohex(string szhexstring)
endfunction
int[] function addinttoarray(int[] aiarray, int inewitem, bool bprepend=false)
endfunction
string[] function addstringtoarray(string[] aszarray, string sznewitem, bool bprepend=false)
endfunction
float[] function addfloattoarray(float[] afarray, float fnewitem, bool bprepend=false)
endfunction
form[] function addformtoarray(form[] aoarray, form onewitem, bool bprepend=false)
endfunction
int[] function removeintfromarray(int[] aiarray, int iitem, int ipos=-1)
endfunction
string[] function removestringfromarray(string[] aszarray, string szitem, int ipos=-1)
endfunction
float[] function removefloatfromarray(float[] afarray, float fitem, int ipos=-1)
endfunction
form[] function removeformfromarray(form[] aoarray, form oitem, int ipos=-1)
endfunction
function teleporttoward(actor asource, objectreference otarget, int ipercent, bool brotate=true)
endfunction
bool function ischestslot(int islotmask)
endfunction
bool function iswaistslot(int islotmask)
endfunction
bool function isbodyslot(int islotmask)
endfunction
bool function isfeetslot(int islotmask)
endfunction
bool function isnight()
endfunction
int function imutexcreate(string szname, int itimeoutms=1000)
endfunction
bool function mutexlock(int imutex, int itimeoutms=1000)
endfunction
function mutexrelease(int imutex)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1