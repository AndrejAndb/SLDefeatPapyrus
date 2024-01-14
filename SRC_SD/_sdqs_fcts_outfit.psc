scriptname _sdqs_fcts_outfit extends quest  
zadlibs property libs auto
zadxlibs property xlibs auto
sexlabframework property sexlab auto
_sdqs_fcts_factions property fctfactions  auto
keyword property _sdkp_punish auto
keyword property _sdkp_bound auto
keyword property _sdkp_gagged auto
keyword property armorcuirass  auto  
keyword property clothingbody  auto  
keyword property _sdkp_devioussanguine  auto  
keyword property _sdkp_deviousenslaved  auto  
keyword property _sdkp_deviousenslavedcommon  auto  
keyword property _sdkp_deviousenslavedmagic  auto  
keyword property _sdkp_deviousenslavedprimitive  auto  
keyword property _sdkp_deviousenslavedwealthy  auto  
keyword property _sdkp_deviousspriggan  auto  
keyword property _sdkp_deviousparasitean  auto  
keyword property _sdkp_deviousparasitevag  auto  
armor property ddiposturesteelcollarrendered auto         ; internal device
armor property ddiposturesteelcollar auto                ; inventory device
armor property ddicuffleathercollarrendered auto         ; internal device
armor property ddicuffleathercollar auto                ; inventory device
armor property zazleathercollarrendered auto         ; internal device
armor property zazleathercollar auto                ; inventory device
armor property zazironcollarrendered auto         ; internal device
armor property zazironcollar auto                ; inventory device
armor property zazironcuffsrendered auto         ; internal device
armor property zazironcuffs auto                ; inventory device
armor property zazironshacklesrendered auto         ; internal device
armor property zazironshackles auto                ; inventory device
armor property zazwoodenbitrendered auto         ; internal device
armor property zazwoodenbit auto                ; inventory device
armor property zazblindsrendered auto         ; internal device
armor property zazblinds auto                ; inventory device
armor property zazsprigganhandsrendered auto         ; internal device
armor property zazsprigganhands auto                ; inventory device
armor property zazsprigganfeetrendered auto         ; internal device
armor property zazsprigganfeet auto                ; inventory device
armor property zazsprigganmaskrendered auto         ; internal device
armor property zazsprigganmask auto                ; inventory device
armor property zazsprigganbodyrendered auto         ; internal device
armor property zazsprigganbody auto                ; inventory device
armor property zazfalmercollarrendered auto         ; internal device
armor property zazfalmercollar auto                ; inventory device
armor property zazfalmercuffsrendered auto         ; internal device
armor property zazfalmercuffs auto                ; inventory device
armor property zazwebcuffsrendered auto         ; internal device
armor property zazwebcuffs auto                ; inventory device
armor property zazwebcollarrendered auto         ; internal device
armor property zazwebcollar auto                ; inventory device
armor property zazsanguinecollarrendered auto         ; internal device
armor property zazsanguinecollar auto                ; inventory device
armor property zazsanguinecuffsrendered auto         ; internal device
armor property zazsanguinecuffs auto                ; inventory device
armor property zazsanguineshacklesrendered auto         ; internal device
armor property zazsanguineshackles auto                ; inventory device
armor property zazsanguinewoodenbitrendered auto         ; internal device
armor property zazsanguinewoodenbit auto                ; inventory device
armor property zazsanguineblindsrendered auto         ; internal device
armor property zazsanguineblinds auto                ; inventory device
armor property zazsanguineartifactrendered auto         ; internal device
armor property zazsanguineartifact auto                ; inventory device
armor property sdeggvaginalrendered auto         ; internal device
armor property sdeggvaginal auto                ; inventory device
armor property sdegganalrendered auto         ; internal device
armor property sdegganal auto                ; inventory device
globalvariable property _sdgvp_gametime  auto  
armor property sdslaverags  auto
armor property sdslaverags1  auto
armor property sdslaverags2  auto
armor property sdslaverags3  auto
armor property sdslaverags4  auto
armor property sdslaverags5  auto
armor property sdslaverags6  auto 
string function sanitizestringcode(string stext)
endfunction
function registerdeviousoutfits ( )
endfunction
function initslaverygearbyrace (  )
endfunction
function initslaverygearbyactor ( actor kactor )
endfunction
function initslaverygearbeastdefault ( form thisrace )
endfunction
function initslaverygearhumanoiddefault ( form thisrace )
endfunction
function initslaverygearforthisrace ( form thisrace )
endfunction
function registerslaveryoptions ( form frace, bool allowcollar, bool allowarmbinders, bool allowpunishmentdevice, bool allowpunishmentscene, bool allowwhippingscene, string defaultstance, string raceslavetat, int raceslavetatduration = 0 , int raceslavetatcolor = 0, int raceslavetatglow = 0 )
endfunction
function registerslaverygeardevice( form frace, string devicestring, keyword devicekeyword, armor deviceinventory=none, armor devicerendered=none )
endfunction
function setmastergearbyrace ( actor kmaster, actor kslave  )
endfunction
form function getslaverygearracebystring ( string srace )
endfunction
function equipdevicebystring ( string sdevicestring = "", string soutfitstring = "", string sdevicetags = "")
endfunction
function equipdevicenpcbystring ( actor akactor, string sdevicestring = "", string soutfitstring = "",  string sdevicetags = "") 
endfunction
function cleardevicebystring(string sdevicestring = "", string soutfitstring = "" )
endfunction
function cleardevicenpcbystring(actor akactor, string sdevicestring = "", string soutfitstring = "")
endfunction
bool function equipdevice(armor ddarmorinventory)
endfunction
bool function equipdevicenpc(actor akactor, armor ddarmorinventory)
endfunction
bool function cleardevice ( armor ddarmorinventory, armor ddarmorrendered, keyword ddarmorkeyword, bool bdestroy = false)
endfunction
bool function cleardevicenpc ( actor akactor, armor ddarmorinventory, armor ddarmorrendered, keyword ddarmorkeyword, bool bdestroy = false) 
endfunction
function cleardevicesforenslavement()
endfunction
function lockdevicebystring(actor akactor, string sdevicestring = "")
endfunction
function unlockdevicebystring(actor akactor, string sdevicestring = "")
endfunction
bool function hastagbystring ( actor akactor, string sdevicestring = "", string stag="")
endfunction
keyword function getdeviouskeywordbystring(string deviouskeyword = ""  )
endfunction
bool function actorhaskeywordbystring(actor akactor, string deviouskeyword = "")
endfunction
bool function isdeviceequippedstring( actor akactor,  string sdevicestring  )
endfunction
bool function isdeviceequippedkeyword( actor akactor,  string skeyword, string sdevicestring  )
endfunction
bool function isweaponremovable ( weapon kweapon )
endfunction
bool function isspellremovable ( spell kspell )
endfunction
bool function isshoutremovable ( shout kshout )
endfunction
bool function ispunishmentequipped (  actor akactor )
endfunction
bool function isrestraintequipped (  actor akactor )
endfunction
bool function isbindingequipped (  actor akactor )
endfunction
bool function isarmsequipped (  actor akactor )
endfunction
bool function isplugequipped (  actor akactor )
endfunction
bool function isactornaked( actor akactor )
endfunction
bool function iscollarequipped (  actor akactor )
endfunction
bool function islegsequipped (  actor akactor )
endfunction
bool function iswristrestraintequipped (  actor akactor )
endfunction
bool function isarmbinderequipped (  actor akactor )
endfunction
bool function iscuffsequipped (  actor akactor )
endfunction
bool function isyokeequipped (  actor akactor )
endfunction
bool function iscuffsfrontequipped (  actor akactor )
endfunction
bool function isyokebbequipped (  actor akactor )
endfunction
bool function isarmbinderelbowequipped (  actor akactor )
endfunction
bool function isstraitjacketequipped (  actor akactor )
endfunction
bool function isshacklesequipped (  actor akactor )
endfunction
bool function isgagequipped (  actor akactor )
endfunction
bool function isblindfoldequipped (  actor akactor )
endfunction
bool function ispluganalequipped (  actor akactor )
endfunction
bool function isplugvaginalequipped (  actor akactor )
endfunction
bool function ispiercingsvaginalequipped (  actor akactor )
endfunction
bool function isbeltequipped (  actor akactor )
endfunction
bool function isbraequipped (  actor akactor )
endfunction
bool function isbootsequipped (  actor akactor )
endfunction
bool function isharnessequipped (  actor akactor )
endfunction
bool function isarmorcuirassequipped( actor akactor )
endfunction
bool function isclothingbodyequipped( actor akactor )
endfunction
bool function isarmorremovable ( form kform )
endfunction
int function countremovable ( actor akactor )
endfunction
int function countpunishmentequipped (  actor akactor )
endfunction
function toggleactorclothing ( actor akactor, bool bstrip = true, bool bdrop = false )
endfunction
int function countdeviousslotsbykeyword (  actor akactor, string deviouskeyword = "zad_lockable" )
endfunction
function equipslaverags(actor akslave) 
endfunction
function equipnongenericdevicebystring ( string sdevicestring = "", string soutfitstring = "")
endfunction
function clearnongenericdevicebystring ( string sdevicestring = "", string soutfitstring = "")
endfunction
function equipnongenericdevicenpcbystring ( actor kactor, string sdevicestring = "", string soutfitstring = "")
endfunction
function clearnongenericdevicenpcbystring ( actor kactor,  string sdevicestring = "", string soutfitstring = "")
endfunction
function queueslavepunishment(actor kactor , string sdevice, float fpunishmentlength = 1.0)
endfunction
function clearslavepunishment(actor kactor , string sdevice, bool bclearnow = false)
endfunction
function equipsinglepunishmentdevice(actor kactor, string sdevicename )
endfunction
function clearsinglepunishmentdevice(actor kactor, string sdevicename )
endfunction
function addpunishmentdevice(string sdevice)
endfunction
function removepunishmentdevice(string sdevice)
endfunction
function sendslavetatmodevent(actor akactor, string stype = "sd+", string statooname = "slavers hand (back)", int icolor = 0x99000000)
endfunction
function expireslavetats( actor akslave )
endfunction
function ddsetanimating( actor akactor, bool isanimating )
endfunction
bool function ddisbound( actor akactor )
endfunction
function toggleactorclothing_old ( actor akactor, bool strip = true )
endfunction
function debugtrace(string tracemsg)
endfunction
;This file was cleaned with PapyrusSourceHeadliner 1