Scriptname dcur_slavecollarquestscript extends Quest  

SPELL Property dcur_shockeffect  Auto  
GlobalVariable Property dcur_slavecollarbuffsactive  Auto  
GlobalVariable Property dcur_scquest_offersuccess  Auto  
GlobalVariable Property dcur_slavecollarlocked Auto

dcur_mcmconfig Property dcumenu  Auto  
SexLabFramework Property SexLab Auto
dcur_library Property dclibs  Auto  
zadlibs Property libs Auto
slaframeworkscr Property Aroused Auto

dcur_mastercontrollerscript Property mcs Auto

int property sexcounteratstart = 0 Auto
int property sexcounter = 0 Auto
int property sexactsneeded = 0 Auto
float property queststartedtime = 0.0 Auto
int property dayswornneeded = 0 Auto
bool property wasexhibitionistatstart = false Auto

int property sexlessdays = 0 Auto
int property sexlessdaysneeded = 0 Auto
float property lastcheckpoint = 0.0 Auto

float property lastminorevent = 0.0 Auto

bool property slavecollarquestactive = false Auto

Function scq_initialize()
	wasexhibitionistatstart = Aroused.IsActorExhibitionist(libs.playerref)
endfunction
