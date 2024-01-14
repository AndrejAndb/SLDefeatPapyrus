scriptname uilib_1 extends form
function textinputmenu_open(form akclient) global
endfunction
function textinputmenu_setdata(string astitle = "", string asinitialtext = "") global
endfunction
function textinputmenu_release(form akclient) global
endfunction
string function showtextinput(string astitle = "", string asinitialtext = "")
endfunction
event ontextinputopen(string aseventname, string asstringarg, float afnumarg, form aksender)
endevent
event ontextinputclose(string aseventname, string asinput, float afcancelled, form aksender)
endevent
function listmenu_open(form akclient) global
endfunction
function listmenu_setdata(string astitle = "", string[] asoptions, int aistartindex, int aidefaultindex) global
endfunction
function listmenu_release(form akclient) global
endfunction
int function showlist(string astitle = "", string[] asoptions, int aistartindex, int aidefaultindex)
endfunction
event onlistmenuopen(string aseventname, string asstringarg, float afnumarg, form aksender)
endevent
event onlistmenuclose(string aseventname, string asstringarg, float afinput, form aksender)
endevent
function shownotification(string asmessage, string ascolor = "#ffffff")
endfunction
function shownotificationicon(string asmessage, string asiconpath, int aiiconframe = 0, string ascolor = "#ffffff")
endfunction
bool function notificationmenu_preparearea() global
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1