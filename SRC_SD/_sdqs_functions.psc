scriptname _sdqs_functions extends quest conditional
_sdqs_fcts_constraints property fctconstraints  auto
_sdqs_fcts_outfit property fctoutfit  auto
sexlabframework property sexlab auto
bool property sdbleedout = false auto conditional
message property _sd_rapemenu auto
globalvariable property _sdgvp_naked_rape_chance auto
globalvariable property _sdgvp_naked_rape_delay auto
globalvariable property _sdgvp_gender_restrictions auto
globalvariable property _sdgvp_punishments  auto  
globalvariable property gametime  auto  
keyword property _sdkp_punish auto
keyword property _sdkp_bound auto
keyword property _sdkp_gagged auto
keyword property _sdkp_sex  auto  
objectreference[] property _sd_captivefollowerslocations  auto  
_sdqs_whore property whore  auto  
actor function getplayerdialoguetarget()
endfunction
actor function findclosesthostileactortoactor(actor akactor, float afradius = -1.0, bool ableveled = true )
endfunction
bool function actorinweakenedstate( actor akactor, float afthreshold = 0.05 )
endfunction
bool function actorinkillstate( actor akactor, float afbaseavmult = 1.0, int aiforcedmortality = 0 )
endfunction
bool function setrandomactorexpression( actor akactor = none, int baseintensity = 40, float timepassed = 0.0 )
endfunction
bool function _hasplayer(actor[] _actors)
endfunction
bool function _hasactor(actor[] _actors, actor thisactor)
endfunction
bool function _hasrace(actor[] _actors, race thisrace)
endfunction
int function intmax( int ia, int ib )
endfunction
int function intmin( int ia, int ib )
endfunction
float function floatmax( float ia, float ib )
endfunction
float function floatmin( float ia, float ib )
endfunction
int function intwithinrange( int in, int low, int high )
endfunction
float function floatwithinrange( float in, float low, float high )
endfunction
bool function floatinrange( float in, float low, float high )
endfunction
bool function intinrange( int in, int low, int high )
endfunction
float function floatlinearinterpolation( float ba, float bb, float aa, float a, float ab )
endfunction
function arrayclear(form[] myarray)
endfunction
bool function isarrayclear(form[] myarray)
endfunction
bool function checkgenderrestriction(actor akspeaker, actor aktarget)
endfunction
float function getactorstrengthpercentage(actor aksubject, float percentage = -1.0)
endfunction
function sanguinerapemenu ( actor akspeaker, actor aktarget, string tags = "sex" )
endfunction
function sanguinerapecreaturemenu ( actor akspeaker, actor aktarget, string tags = "sex" )
endfunction
int function sanguinerape(actor akspeaker, actor aktarget, string sexlabintags = "aggressive", string sexlabouttags = "solo") 
endfunction
function sanguinegangrape(actor akspeaker, actor aktarget, bool includespeaker = true, bool includetarget = false)
endfunction
function sanguinewhip( actor akactor )
endfunction
function sanguinepunishment( actor akactor )
endfunction
function sexlabstripactor( actor akactor )
endfunction
bool function sexlabisactive( actor akactor )
endfunction
function removeitemsinlist( actor akactor, formlist akitemlist )
endfunction
function transferformlistcontents( formlist alfactionlistin, formlist alfactionlistout )
endfunction
float function getcurrenthourofday() 
endfunction
function checkgender(actor kactor) 
endfunction
bool function isfemale(actor kactor)
endfunction
bool function ismale(actor kactor)
endfunction
bool function issamesex(actor kactor1, actor kactor2)
endfunction
bool function isfhucumfilledenabled(actor kactor) 
endfunction
bool function ispregnantbysoulgemoven(actor kactor) 
endfunction
bool function ispregnantbysimplepregnancy(actor kactor) 
endfunction
bool function ispregnantbybeeingfemale(actor kactor)
endfunction
bool function ispregnantbyestruschaurus(actor kactor)
endfunction
bool function wolfclubenslave() 
endfunction
bool function simpleslaveryenslave() 
endfunction
bool function mariaedenenslave(actor newmaster) 
endfunction
bool function redwaveenslave( )  
endfunction
function sendplayertosafety( actor kactor)  
endfunction
function debugtrace(string tracemsg)
endfunction 
objectreference property _sd_kynarethtemplesafetymarkerref  auto  
;This file was cleaned with PapyrusSourceHeadliner 1