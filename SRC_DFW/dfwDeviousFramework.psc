scriptname dfwdeviousframework extends quest conditional
int property it_none              = 0x00000000 auto
int property it_restraint         = 0x00000001 auto
int property it_clothes_body      = 0x00000002 auto
int property it_clothes_chest     = 0x00000004 auto
int property it_clothes_waist     = 0x00000008 auto
int property it_light_body        = 0x00000010 auto
int property it_light_chest       = 0x00000020 auto
int property it_light_waist       = 0x00000040 auto
int property it_heavy_body        = 0x00000080 auto
int property it_heavy_chest       = 0x00000100 auto
int property it_heavy_waist       = 0x00000200 auto
int property it_partial           = 0x00000400 auto
int property it_clothes_other     = 0x00000800 auto
int property it_light_other       = 0x00001000 auto
int property it_heavy_other       = 0x00002000 auto
int property it_clothes           = 0x0000080e auto
int property it_light             = 0x00001070 auto
int property it_heavy             = 0x00002380 auto
int property it_coverings         = 0x00003bfe auto
int property it_body_coverings    = 0x00000092 auto
int property it_chest_coverings   = 0x000001b6 auto
int property it_waist_coverings   = 0x000002da auto
int property ns_naked           = 0x00000000 auto
int property ns_waist_partial   = 0x00000001 auto
int property ns_waist_covered   = 0x00000002 auto
int property ns_chest_partial   = 0x00000004 auto
int property ns_chest_covered   = 0x00000008 auto
int property ns_both_partial    = 0x00000010 auto
int property ns_both_covered    = 0x00000020 auto
int property ns_waist_protected = 0x00000032 auto
int property ns_chest_protected = 0x00000038 auto
int property ap_none              = 0x00000000 auto
int property ap_sex               = 0x00000001 auto
int property ap_enslave           = 0x00000002 auto
int property ap_restrain          = 0x00000004 auto
int property ap_dressing_alone    = 0x00000010 auto
int property ap_dressing_assisted = 0x00000020 auto
int property ap_dressing          = 0x00000030 auto
int property ap_no_sex            = 0xfffffffe auto
int property ap_no_bdsm           = 0xfffffff9 auto
int property ap_all               = 0xffffffff auto
int property af_none         = 0x00000000 auto
int property af_estimate     = 0x00000001 auto
int property af_important    = 0x00000002 auto
int property af_child        = 0x00000004 auto
int property af_guards       = 0x00000008 auto
int property af_merchants    = 0x00000010 auto
int property af_hostile      = 0x00000020 auto
int property af_animal       = 0x00000040 auto
int property af_dominant     = 0x00000080 auto
int property af_submissive   = 0x00000100 auto
int property af_slave        = 0x00000200 auto
int property af_owner        = 0x00000400 auto
int property af_slave_trader = 0x00000800 auto
int property af_bdsm_aware   = 0x00000f00 auto
int property md_none    = 0x00000000 auto
int property md_any     = 0x00000001 auto
int property md_all     = 0x00000002 auto
int property md_close   = 0x00000004 auto
int property md_distant = 0x00000008 auto
int property ls_auto     = 0 auto
int property ls_drag     = 1 auto
int property ls_teleport = 2 auto
int property ds_off    = 0 auto
int property ds_auto   = 1 auto
int property ds_manual = 2 auto
spell   property _odfwleashspell          auto
spell   property _odfwnearbydetectorspell auto
faction property _ofactionmerchants       auto
idle    property _oidlestop_loose         auto
event oninit()
endevent
function updatescript()
endfunction
function initregions()
endfunction
function initspecialcells()
endfunction
function onplayerloadgame()
endfunction
function reregistermodevents()
endfunction
function updatelocalmcmsettings(string scategory="")
endfunction
event onupdate()
endevent
function performonupdate()
endfunction
function itemequipped(form oitem, objectreference oreference)
endfunction
function itemunequipped(form oitem, objectreference oreference)
endfunction
function enteredbleedout()
endfunction
function onsit(objectreference ofurniture)
endfunction
function ongetup(objectreference ofurniture)
endfunction
function onlocationchange(location ooldlocation, location onewlocation)
endfunction
function nearbyactorseen(actor aactor)
endfunction
event postsexcallback(string szevent, string szarg, float fnumargs, form osender)
endevent
event onslaveactiondone(string sztype, string szmessage, form omaster, int isceneindex)
endevent
event onkeyup(int ikeycode, float fholdtime)
endevent
function playerapproachcomplete()
endfunction
function movetolocationcomplete(bool bforcesuccess)
endfunction
function movetoobjectcomplete()
endfunction
int function imutexcreate(string szname, int itimeoutms=1000)
endfunction
bool function mutexlock(int imutex, int itimeoutms=1000)
endfunction
function mutexrelease(int imutex)
endfunction
function actorsitstatewait(actor aactor, int imaxwaitms=1500)
endfunction
function reportstatus(string szstatustype, bool bstatus, bool boldstatus)
endfunction
keyword function getdeviouskeyword(armor oitem)
endfunction
bool function isactor(form oform)
endfunction
int function getdirection(actor aactor, int ilastx, int ilasty)
endfunction
bool function checkleashinterruptscene()
endfunction
int function getitemtype(form oitem)
endfunction
int function getclothingtype(form oitem)
endfunction
bool function isweapon(weapon oweapon)
endfunction
function checkisnaked(actor aactor=none)
endfunction
bool function movenpccheckforground(actor anpc, float fxadjustment, float fyadjustment)
endfunction
function cleanupnearbylist()
endfunction
function removeknownactor(int iindex)
endfunction
function cleanupknownlist()
endfunction
function log(string szmessage, int ilevel=0, int iclass=0)
endfunction
function debuglog(string szmessage, int ilevel=4)
endfunction
form[] function getknownactors()
endfunction
function updatepollinginterval(float fnewinterval)
endfunction
function updatepollingdistance(int inewdistance)
endfunction
string[] function getdialoguetargetinfo()
endfunction
int function setmasterclose(actor anewmaster, int ipermissions, string szmod, bool boverride)
endfunction
int function setmasterdistant(actor anewmaster, int ipermissions, string szmod, bool boverride)
endfunction
string function getmodversion()
endfunction
bool function isplayercriticallybusy(bool bincludebleedout=true)
endfunction
int function scenestarting(string szscenename, int iscenetimeout, int iwaitms=0)
endfunction
int function scenecontinue(string szscenename, int iscenetimeout)
endfunction
function scenedone(string szscenename)
endfunction
location function getregion(location olocation, cell ocell=none)
endfunction
string function getcurrentscene()
endfunction
function blockhealthregen()
endfunction
function restorehealthregen()
endfunction
function blockmagickaregen()
endfunction
function restoremagickaregen()
endfunction
function disablemagicka(bool bdisable=true)
endfunction
function blockstaminaregen()
endfunction
function restorestaminaregen()
endfunction
function disablestamina(bool bdisable=true)
endfunction
function blockfasttravel()
endfunction
function restorefasttravel()
endfunction
function blockmovement()
endfunction
function restoremovement()
endfunction
function blockfighting()
endfunction
function restorefighting()
endfunction
function blockcameraswitch()
endfunction
function restorecameraswitch()
endfunction
function blocklooking()
endfunction
function restorelooking()
endfunction
function blocksneaking()
endfunction
function restoresneaking()
endfunction
function blockmenu()
endfunction
function restoremenu()
endfunction
function blockactivate()
endfunction
function restoreactivate()
endfunction
function blockjournal()
endfunction
function restorejournal()
endfunction
function forcesave()
endfunction
function quicksave()
endfunction
function autosave()
endfunction
actor function getmaster(int imasterdistance=0x00000001, int iinstance=1)
endfunction
string function getmastermod(int imasterdistance=0x00000001, int iinstance=1)
endfunction
event onmenuopen(string szmenu)
endevent
int function setmaster(actor anewmaster, string szmod, int ipermissions, \
int imasterdistance=0x00000004, bool boverride=false)
endfunction
int function clearmaster(actor amaster, string szmod="", bool bescaped=false)
endfunction
int function changemasterdistance(actor amaster, bool bmovetodistant=true, bool boverride=false)
endfunction
function addpermission(actor amaster, int ipermissionmask)
endfunction
function removepermission(actor amaster, int ipermissionmask)
endfunction
bool function isallowed(int iaction)
endfunction
location function getcurrentlocation()
endfunction
location function getcurrentregion()
endfunction
location function getnearestregion()
endfunction
int function getnakedlevel()
endfunction
bool function isplayerbound(bool bincludehidden=false, bool bonlylocked=false)
endfunction
bool function isplayerarmlocked()
endfunction
bool function isplayerbelted()
endfunction
bool function isplayercollared()
endfunction
bool function isplayergagged()
endfunction
bool function isplayerhobbled()
endfunction
int function getnumotherrestraints()
endfunction
function setstrictgag(bool bisstrict=true)
endfunction
bool function isgagstrict()
endfunction
objectreference function getbdsmfurniture()
endfunction
function setbdsmfurniturelocked(bool blocked=true)
endfunction
bool function isbdsmfurniturelocked()
endfunction
int function getvulnerability(actor aactor=none)
endfunction
int function getweaponlevel()
endfunction
form[] function getnearbyactorlist(float fmaxdistance=0.0, int iincludeflags=0, \
int iexcludeflags=0)
endfunction
int[] function getnearbyactorflags()
endfunction
int function getactorflags(actor anearby)
endfunction
actor function getrandomactor(float fmaxdistance=0.0, int iincludeflags=0, int iexcludeflags=0)
endfunction
actor function getnearestactor(float fmaxdistance=0.0, int iincludeflags=0, int iexcludeflags=0)
endfunction
bool function isactornearby(actor aactor)
endfunction
actor function getplayertalkingto()
endfunction
actor function getplayerincombatwith()
endfunction
function setleashtarget(objectreference oleashtarget)
endfunction
objectreference function getleashtarget()
endfunction
function setleashlength(int ilength)
endfunction
int function yankleash(float fdamagemultiplier=1.0, int ioverrideleashstyle=0, \
bool binterruptscene=true, bool binterruptleashtarget=false)
endfunction
int function yankleashwait(int itimeoutms)
endfunction
int function getactoranger(actor aactor, int iminvalue=50, int imaxvalue=50, \
bool bcreateasneeded=false, int isignificant=0)
endfunction
int function incactoranger(actor aactor, int idelta, int iminvalue=50, int imaxvalue=50, \
bool bcreateasneeded=false, int isignificant=0)
endfunction
int function getactorconfidence(actor aactor, int iminvalue=50, int imaxvalue=50, \
bool bcreateasneeded=false, int isignificant=0)
endfunction
int function incactorconfidence(actor aactor, int idelta, int iminvalue=50, int imaxvalue=50, \
bool bcreateasneeded=false, int isignificant=0)
endfunction
int function getactordominance(actor aactor, int iminvalue=50, int imaxvalue=50, \
bool bcreateasneeded=false, int isignificant=0)
endfunction
int function incactordominance(actor aactor, int idelta, int iminvalue=50, int imaxvalue=50, \
bool bcreateasneeded=false, int isignificant=0)
endfunction
int function getactorinterest(actor aactor, int iminvalue=50, int imaxvalue=50, \
bool bcreateasneeded=false, int isignificant=0)
endfunction
int function incactorinterest(actor aactor, int idelta, int iminvalue=50, int imaxvalue=50, \
bool bcreateasneeded=false, int isignificant=0)
endfunction
int function getactorkindness(actor aactor, int iminvalue=50, int imaxvalue=50, \
bool bcreateasneeded=false, int isignificant=0)
endfunction
int function incactorkindness(actor aactor, int idelta, int iminvalue=50, int imaxvalue=50, \
bool bcreateasneeded=false, int isignificant=0)
endfunction
int function getactorsignificance(actor aactor)
endfunction
int function getactorwillingnesstohelp(actor aactor, bool bcreateasneeded=true)
endfunction
function prepareactordialogue(objectreference oactor)
endfunction
bool function npcmovenearbyhidden(actor aactor)
endfunction
int function approachplayer(actor aactor, int itimeoutseconds, int ispeed, string smodid, \
bool bforce=false)
endfunction
int function movetolocation(actor aactor, location otarget, string smodid, bool bforce=false)
endfunction
int function movetoobject(actor aactor, objectreference otarget, string smodid, \
bool bforce=false)
endfunction
bool function handlecallforhelp()
endfunction
bool function handlecallforattention()
endfunction
function calloutdone()
endfunction
function reevaluatepackage(actor aactor)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1