Scriptname dcur_library extends Quest

zadlibs Property libs  Auto  
zadxLibs Property xlibs  Auto  
zadxLibs2 Property xlibs2  Auto  
zadcLibs Property zadc  Auto  
SexLabFramework Property SexLab  Auto  
slaFrameworkScr Property Aroused  Auto  
dcur_mcmconfig Property dcumenu  Auto  
dcur_genericlib Property dglib Auto
dcur_itemlib Property dci  Auto  
dcur_cursedcollarquestScript Property ccqs  Auto  
dcur_slavecollarquestscript  Property scqs  Auto  
dcur_mastercontrollerscript Property mcs Auto
dcur_bondageadventurequestScript Property baqs Auto
dcur_yokeerrandquestscript Property yeqs  Auto  
dcur_leon_enslavescript Property leqs Auto
dcur_royalchastityQuestScript Property rcqs Auto
dcur_robbed_QuestScript Property roqs Auto
dcur_aliasQuestScript Property alqs Auto
dcur_SupplyQuestScript Property sadqs Auto
dcur_sexfunctionslibrary Property sfl Auto
dcur_eventtriggerlibrary Property etl Auto

Quest Property dcur_boundinskyrimQuest Auto

Armor Property dcur_steelshackles Auto
Armor Property dcur_darepack Auto
Armor Property dcur_universalkey Auto

GlobalVariable Property dcur_princessityshatmode Auto
GlobalVariable Property dcur_prison_usevanilla Auto

Faction Property dcur_PacifiedEvilPeopleFaction  Auto  
GlobalVariable Property dcur_iswearinglockedgear  Auto  
FormList Property dcur_pacifycloakhitlist  Auto  
FormList Property dcur_detectioncloakhitlist Auto
FormList Property dcur_childrenlist Auto
FormList Property dcur_prison_unsafeDDitems Auto
GlobalVariable Property dcur_scquest_isdancing Auto
GlobalVariable Property dcur_hasfollowers Auto
GlobalVariable Property dcur_bis_active Auto

Bool Property PollutedSaveGame = False Auto

LeveledItem Property LItemGems Auto
LeveledItem Property LItemPotionRestoreHealthBest Auto
LeveledItem Property LItemSoulGemFullSpecial Auto
LeveledItem Property LItemSpellTomesSpecial Auto
LeveledItem Property LItemEnchWeaponAnySpecial Auto
LeveledItem Property LItemPotionAllBest Auto
LeveledItem Property LItemEnchArmorAllSpecial Auto
LeveledItem Property LItemStaffsAll Auto
LeveledItem Property LootFalmerOre100 Auto
LeveledItem Property dcur_LLrubberloot Auto ; deprecated

LeveledItem Property dcur_LL_rope_all Auto
LeveledItem Property dcur_LL_rope_harness_all Auto
LeveledItem Property dcur_LL_rope_harness_belt_all Auto
LeveledItem Property dcur_LL_rope_harness Auto
LeveledItem Property dcur_LL_rope_harness_black Auto
LeveledItem Property dcur_LL_rope_harness_red Auto
LeveledItem Property dcur_LL_rope_harness_white Auto
LeveledItem Property dcur_LL_rope_harness_belt Auto
LeveledItem Property dcur_LL_rope_harness_belt_black Auto
LeveledItem Property dcur_LL_rope_harness_belt_red Auto
LeveledItem Property dcur_LL_rope_harness_belt_white Auto

LeveledItem Property dcur_LL_plugs_anal Auto
LeveledItem Property dcur_LL_plugs_vaginal Auto
LeveledItem Property dcur_LL_hobbledress Auto
LeveledItem Property dcur_LL_straitjacket Auto
LeveledItem Property dcur_LL_catsuit Auto
LeveledItem Property dcur_LL_formaldress Auto
LeveledItem Property dcur_LL_suits_all Auto
LeveledItem Property dcur_LL_suits_nosj Auto


FormList Property dcur_boundgirl_outfits Auto


LeveledItem Property dcl_LL_All Auto
LeveledItem Property dcl_LL_EpicLoot_All Auto

Keyword Property dcur_kw_QuestItem  Auto  
Keyword Property dcur_highsecurityrestraint  Auto  
Keyword Property SexLabNoStrip Auto
Static Property COCMarkerHeading Auto

Faction Property dunPrisonerFaction  Auto  
FormList Property dcur_friendfactions Auto

ReferenceAlias Property dcur_storeplayerpos Auto

FormList Property dcur_DDSimpleItems  Auto  
ReferenceAlias[] Property Followers  Auto  
FormList Property dcur_followerlistold Auto
FormList Property dcur_norape Auto

string[] property customfollowerlist Auto

ActorBase Property dcur_assaulter_bandit_male_1 Auto
ActorBase Property dcur_assaulter_bandit_male_2 Auto
ActorBase Property dcur_assaulter_bandit_male_3 Auto
ActorBase Property dcur_assaulter_bandit_male_4 Auto
ActorBase Property dcur_assaulter_bandit_female_1 Auto
ActorBase Property dcur_assaulter_bandit_female_2 Auto
ActorBase Property dcur_assaulter_bandit_female_3 Auto
ActorBase Property dcur_assaulter_bandit_female_4 Auto

Potion Property dcur_cumdissolve Auto
Potion Property dcur_frigidwash Auto

Keyword Property dcur_kw_misogynyBelt Auto
Keyword Property dcur_kw_nofasttravel Auto

FormList Property dcur_boundgirls Auto
FormList Property dcur_BoundGirlsActive Auto
FormList Property dcur_BoundGirlsToDelete Auto

Armor Property dcur_dq_damnbox Auto

Armor Property dcur_rd_rubbercollar Auto
Armor Property dcur_rd_rubbercollarRendered Auto

Location Property ShroudHearthBarrowLocation Auto

FormList Property dcur_prison_crimefactionsList Auto

Book Property dcur_twac_lauravoucher Auto

; rape resist 
Message Property dcur_raperesist_dlg Auto
int property dcur_raperesist_mode = 0 Auto Hidden
bool property dcur_raperesist_success = False Auto Hidden

; Declaring some constants to avoid magic numbers in the code
int property maxDDslotsXlib = 15 Auto
int maxDDslots = 10

int property style_random = 0 Auto
int property style_metal = 1 Auto
int property style_leather = 2 Auto
int property style_latex = 3 Auto ; both ebonite and rubber
int property style_aradia = 10 Auto
int property style_restrictive = 10 Auto
int property style_hisec = 99 Auto

int property color_random = 0 Auto
int property color_black = 1 Auto
int property color_bronze = 2 Auto
int property color_silver = 3 Auto
int property color_red = 4 Auto
int property color_white = 5 Auto

int property set_random = 0 Auto
int property set_metal = 1 Auto
int property set_leather = 2 Auto
int property set_ebonite = 3 Auto
int property set_bronze = 4 Auto
int property set_silver = 5 Auto
int property set_wtebonite = 6 Auto
int property set_wtleather = 7 Auto
int property set_rdebonite = 8 Auto
int property set_rdleather = 9 Auto
int property set_aradia = 10 Auto
int property set_restrictive = 11 Auto
int property set_rubber = 12 Auto
int property set_rope = 13 Auto
int property set_hisec = 99 Auto

int is_deadbody = 1
int is_container = 2
int is_trap = 3

int gender_male = 0
int gender_female = 1
int gender_both = 2

int equip_fullset = 1
int equip_randomitems = 2
int equip_nothing = 3
int equip_progressive = 4

float lasttraptriggered = 0.0

int property dcur_origintype = 0 Auto

Keyword[] itemsequipped
int itemsequippedpointer = 0
ObjectReference property oref Auto

int property is_deadbody = 1 Auto
int property is_container = 2 Auto
int property is_trap = 3 Auto
int property is_plant = 4 Auto
int property is_mine = 5 Auto
int property is_door = 6 Auto
int property is_modevent = 7 Auto

GlobalVariable Property dcur_bondagesexoutcome  Auto  

FormList Property dcur_followerlist  Auto  
FormList property dcur_Rapists Auto
Int property RapistCounter = 0 Auto
Actor[] RapistID
Float[] RapistsXPos
Float[] RapistsYPos
Float[] RapistsZPos


Quest property dcur_aliases Auto
Actor[] SceneSexActors
sslBaseAnimation[] SLAnim
int actorcount = 1
int SexStage = 0 
int Maxsexstages = 1
bool randomsexstage = true
bool consensualsex = true
bool allowbeds = false
bool isgangbang = false
bool isplayervictim = true
string preferredanimtag = ""
bool property gangbangmutex = false Auto
Float Property LastSexAttackTime = 0.0 Auto
Actor Property closestRapist = None Auto
bool isGettingTiedUp = false
bool property sexattackterminate = false Auto
int property originflag = 0 Auto
int property origin_cloak = 1 Auto
int property origin_combat = 2 Auto
int property origin_sleep = 3 Auto
int property origin_trap = 4 Auto
int property origin_proxyrape = 5 Auto

Actor[]	sexActors
Actor[]	sexActorsf1
Actor[]	sexActorsf2
Actor[]	sexActorsf3
Actor[]	sexActorsf4
Actor[]	sexActorsf5
sslBaseAnimation[] anims
float AIgreetingdistancesetting = 150.0
float DDIeventInterval = 0.0
Armor beltwasremoved = None
Actor speaker

float lastselfbondage = 0.0
int selfbondagemessagecounter = 0
bool property containermutex = False Auto
bool property clocktickmutex = False Auto

Potion Property MME_MaleCum Auto
Potion Property MME_FemaleCum Auto
Potion Property MME_BreastGrow Auto
Potion Property MME_Lactacid Auto
Potion Property MME_NordMilk Auto
Potion Property MME_AltmerMilk Auto
Potion Property MME_BosmerMilk Auto
Potion Property MME_RedguardMilk Auto
Potion Property MME_ImperialMilk Auto

Armor Property dcur_WhoreCollar_Inventory Auto
Armor Property dcur_WhoreCollar_Rendered Auto

;bool Function hasCD()
;	if dcumenu.installed_cd && dcumenu.useCD
;		return true
;	endif
;	return false	
;EndFunction

bool Function hasAradia()
	if dcumenu.installed_Aradia && dcumenu.useAradia
		return true
	endif
	return false	
EndFunction

bool Function hasEstrus()
	if dcumenu.installed_Estrus && dcumenu.useEstrus
		return true
	else
		return false
	endif
EndFunction

bool Function hasSD()
	if dcumenu.installed_SD && dcumenu.useSD
		return true
	endif
	return false	
EndFunction

bool Function hasSS()
	if dcumenu.installed_SS ;&& dcumenu.useSS
		return true
	endif
	return false	
EndFunction

bool Function hasSkoomaWhore()
	if dcumenu.installed_SkoomaWhore && dcumenu.useSkoomaWhore
		return true
	Endif
	return false	
EndFunction

bool Function hasMME()
	if dcumenu.installed_MME && dcumenu.useMME
		return true
	Endif
	return false	
EndFunction

Bool Function GetIsOutdoors()
	if libs.PlayerRef.GetCurrentLocation() != none && (libs.PlayerRef.GetCurrentLocation().haskeyword(dglib.Loctypecity) || libs.PlayerRef.GetCurrentLocation().haskeyword(dglib.Loctypetown) || libs.PlayerRef.GetCurrentLocation().haskeyword(dglib.Loctypehabitation) || libs.PlayerRef.GetCurrentLocation().haskeyword(dglib.Loctypeplayerhome)) || libs.PlayerRef.GetCurrentLocation().haskeyword(dglib.Loctypedwelling)
        return false
    endif        	
	Return True
EndFunction

bool Function isInDungeon()
	Location loc = libs.PlayerRef.GetCurrentLocation()
    if libs.PlayerRef.GetParentCell().IsInterior() && loc != none && (loc.haskeyword(dglib.Loctypedraugrcrypt) || loc.haskeyword(dglib.Loctypedragonpriestlair) || loc.haskeyword(dglib.Loctypefalmerhive) || loc.haskeyword(dglib.Loctypevampirelair) || loc.haskeyword(dglib.Loctypedwarvenautomatons) || loc.haskeyword(dglib.Loctypedungeon) || loc.haskeyword(dglib.Loctypemine) || loc.haskeyword(dglib.Locsetcave))        
        return true
    endif    
    return false
endfunction

bool Function isInWilderness()   
	Location loc = libs.PlayerRef.GetCurrentLocation()
    if !libs.PlayerRef.GetParentCell().IsInterior() && (loc == none || loc.haskeyword(dglib.Loctypehold) || loc.haskeyword(dglib.Loctypebanditcamp) || loc.haskeyword(dglib.Loctypemilitaryfort))        
        return true
    endif    
    return false
endfunction

bool Function isInHold()  
	Location loc = libs.PlayerRef.GetCurrentLocation() 
    if !libs.PlayerRef.GetParentCell().IsInterior() && (loc == none || loc.haskeyword(dglib.Loctypehold))
        return true
    endif    
    return false
endfunction

bool Function isInCity()
	Location loc = libs.PlayerRef.GetCurrentLocation()
    if loc != none && (loc.haskeyword(dglib.Loctypecity) || loc.haskeyword(dglib.Loctypetown) || loc.haskeyword(dglib.Loctypehabitation) || loc.haskeyword(dglib.Loctypedwelling))        
        return true
    endif    
    return false
endfunction

bool Function isInSafeLocation()
	Location loc = libs.PlayerRef.GetCurrentLocation()
    if loc != none && (loc.haskeyword(dglib.Loctypeplayerhome) || loc.haskeyword(dglib.Loctypejail) || loc.haskeyword(dglib.Loctypeinn) )        
        return true
    endif    
    return false
endfunction

bool Function isInHomeorJail()
	Location loc = libs.PlayerRef.GetCurrentLocation()
    if loc != none && (loc.haskeyword(dglib.Loctypeplayerhome) || loc.haskeyword(dglib.Loctypejail) ) 
        return true
    endif    
    return false
endfunction

bool Function isInInn()
	Location loc = libs.PlayerRef.GetCurrentLocation()
    if loc != none && loc.haskeyword(dglib.LoctypeInn) 
        return true
    endif    
    return false
endfunction

bool function isTradesperson(actor a)
	Faction fac
	int n = dcumenu.dcur_tradesfactions.GetSize() - 1
	while n >= 0
		fac = dcumenu.dcur_tradesfactions.GetAt(n) As Faction
		if a.IsInFaction(fac)
			return true
		endif	
		n -= 1
	endwhile	
	return false
endfunction

bool function isValidFollower(actor a)
	; 5.1. Custom follower detection temporarily disabled.
	;if a && !(a.IsDisabled() || a.IsDead() || ActorIsChild(a) || a.IsGhost() || a == libs.playerRef) && (a.IsInFaction(dcumenu.currentfollowerfaction) || IsCustomFollower(a)) && SexLab.ActorLib.CanAnimate(a)
	if a && !(a.IsDisabled() || a.IsDead() || ActorIsChild(a) || a.IsGhost() || a == libs.playerRef) && (a.IsInFaction(dcumenu.currentfollowerfaction)) && SexLab.ActorLib.CanAnimate(a)
		return true
	endIf
	return false
EndFunction

bool function isWearingVisibleDevices(actor a)
	dcumenu.dcur_isvisiblyrestrained.SetValue(1)
	; these devices can't ever be hidden
	If a.WornHasKeyword(libs.zad_DeviousHeavyBondage) || a.WornHasKeyword(libs.zad_DeviousCollar) || a.WornHasKeyword(libs.zad_DeviousBoots) || a.WornHasKeyword(libs.zad_DeviousSuit) || a.WornHasKeyword(libs.zad_DeviousGloves) || a.WornHasKeyword(libs.zad_DeviousHood) || a.WornHasKeyword(libs.zad_DeviousGag) || a.WornHasKeyword(libs.zad_DeviousBlindfold)
		return true
	endif
	; if the player is not wearing chest armor, it's assumed that NPCs can see her wearing other devices as well
	if libs.playerref.GetWornForm(0x00000004) == None && (a.WornHasKeyword(libs.zad_DeviousCorset) || a.WornHasKeyword(libs.zad_DeviousHarness) || a.WornHasKeyword(libs.zad_DeviousArmCuffs) || a.WornHasKeyword(libs.zad_DeviousLegCuffs) || a.WornHasKeyword(libs.zad_DeviousBelt) || a.WornHasKeyword(libs.zad_DeviousBra)) 
		return true
	endif
	dcumenu.dcur_isvisiblyrestrained.SetValue(0)
	return false
Endfunction

Function GiveRewards(int leverage = 1)
	If dcumenu.tm_nicerewards
		int i = Utility.RandomInt(1,100)
		If i >= 1 && i < 5
			libs.playerref.Additem(dcumenu.dcur_handrestraintskey, 1)
		elseif i >= 5 && i < 10
			libs.playerref.Additem(dcumenu.dcur_headrestraintskey, 1)
		elseif i >= 10 && i < 15
			libs.playerref.Additem(dcumenu.dcur_bodyrestraintskey, 1)
		elseif i >= 15 && i < 20
			libs.playerref.Additem(dcumenu.dcur_legrestraintskey, 1)
		elseif i >= 20 && i < 30
			libs.playerref.Additem(libs.ChastityKey, 1)
		elseif i >= 30 && i < 40
			libs.playerref.Additem(libs.RestraintsKey, 1)
		elseif i >= 40 && i < 50
			libs.playerref.Additem(libs.PiercingKey, 1)
		elseif i >= 50 && i < 60
			libs.playerref.Additem(dcumenu.dcur_luckycharm, 1)
		else
			libs.playerref.addItem(dcumenu.gold001, 50 * leverage)
		Endif
	Else
		libs.playerref.addItem(dcumenu.gold001, 150)
	Endif
EndFunction

Function GiveBondageRewards(int leverage = 1)
	If dcumenu.tm_nicerewards
		int i = 0 		
		If leverage == 1
			; don't drop great stuff for low reward levels
			i = Utility.RandomInt(25,100)
		elseif leverage == 3
			; no boring stuff for high reward levels
			i = Utility.RandomInt(1,44)
		else
			i = Utility.RandomInt(1,100)
		Endif
		If i >= 1 && i < 5
			libs.playerref.Additem(LItemEnchWeaponAnySpecial, 1)					
		elseif i >= 5 && i < 10
			libs.playerref.Additem(LItemEnchArmorAllSpecial, 1)			
		elseif i >= 10 && i < 15
			libs.playerref.Additem(LItemStaffsAll, 1)			
		elseif i >= 15 && i < 20
			libs.playerref.Additem(LItemSpellTomesSpecial, 1)
		elseif i >= 20 && i < 27
			libs.playerref.Additem(dcl_LL_all, 1)					
		elseif i >= 27 && i < 35
			libs.playerref.Additem(dcumenu.dcur_luckycharm, leverage)
		elseif i >= 35 && i < 45
			libs.playerref.Additem(LItemSoulGemFullSpecial, 1)
		elseif i >= 45 && i < 55
			libs.playerref.Additem(LootFalmerOre100, 5)					
		elseif i >= 55 && i < 65
			libs.playerref.Additem(LItemPotionRestoreHealthBest, 10)			
		elseif i >= 65 && i < 70
			libs.playerref.Additem(LItemGems, 5)
		elseif i >= 70 && i < 75
			libs.playerref.Additem(LItemPotionAllBest, 5)
		else
			libs.playerref.addItem(dcumenu.gold001, 250 * leverage)
		Endif
		; and if you're REALLY lucky, you will get a universal key!
		if (leverage > 1) && (Utility.RandomInt(0,99) < 5)
			libs.playerref.Additem(dcur_universalkey, 1)
		endif
	Else
		libs.playerref.addItem(dcumenu.gold001, 250 * leverage)
	Endif
EndFunction	

Int Function RemoveGenericRestraints(Actor akActor, Int NumDevices)
	Armor idevice
	Armor rdevice
	Keyword kw		
	int bailout = 0
	Int DevicesRemoved = 0
	int i = dcumenu.dcur_devicekeywords.GetSize() - 1		
	While bailout < 30 && DevicesRemoved < NumDevices
		kw = dcumenu.dcur_devicekeywords.GetAt(Utility.RandomInt(0, i)) As Keyword			
		if libs.playerref.wornhaskeyword(kw) && kw != libs.zad_DeviousPlugAnal && kw != libs.zad_DeviousPlugVaginal										
			idevice = libs.GetWornDevice(libs.playerref, kw)					
			if idevice && (!idevice.HasKeyword(libs.zad_BlockGeneric) || dcumenu.dcur_DDSimpleItems.HasForm(idevice)) && !idevice.HasKeyword(libs.zad_Questitem)
				rdevice = libs.GetWornRenderedDeviceByKeyword(akActor, kw)
				if rdevice && (!rdevice.HasKeyword(libs.zad_BlockGeneric) || dcumenu.dcur_DDSimpleItems.HasForm(rdevice))
					libs.notify(akActor.GetActorBase().GetName() + " unlocks your " + idevice.GetName())
					libs.removeDevice(libs.playerref, idevice, rDevice, kw, destroyDevice = false, skipevents = false, skipmutex = true)							
					DevicesRemoved += 1
				endif
			endif			
		endif
		bailout += 1
	EndWhile
	Return DevicesRemoved
EndFunction

;Warning: Don't call this with the removeDCURquestitems flag as long as you don't handle proper termination of the quests (see MasterControllerScript) or stuff will break!
Function WipeRestraints(actor a, bool genericonly = false, bool removeDCURquestitems = false, bool destroyDevices = false)	
	Armor idevice
	Armor rdevice
	Keyword kw
	if !a.WornHasKeyword(libs.zad_Lockable) && !a.WornHasKeyword(libs.zad_DeviousPlugAnal) && !a.WornHasKeyword(libs.zad_DeviousPlugVaginal) && !a.WornHasKeyword(libs.zad_DeviousPiercingsNipple) && !a.WornHasKeyword(libs.zad_DeviousPiercingsVaginal)
		; no DD items equipped, can abort here. Some plugs/piercings don't have the Lockable keyword, so need to check for them seperately.
		return
	endif	
	int i = dcumenu.dcur_devicekeywords.GetSize()
	While i > 0		
		i -= 1
		kw = dcumenu.dcur_devicekeywords.GetAt(i) As Keyword		
		if a.wornhaskeyword(kw)
			idevice = libs.GetWornDevice(a, kw)
			if idevice			
				rdevice = libs.GetWornRenderedDeviceByKeyword(a, kw)
			Endif			
			If idevice && rdevice										
				If a == libs.playerRef && genericonly && libs.IsLockJammed(a, kw)
					; we don't remove jammed devices if we're removing generic devices only.
				Elseif rdevice.HasKeyWord(libs.zad_QuestItem)
					; the nested if/then will make sure that foreign quest items aren't touched by the following else clause. It would fail anyway, but it's cleaner this way.
					if rdevice.HasKeyWord(dcur_kw_QuestItem) && removeDCURquestitems
						; That's a quest item. Needs to be taken off with the proper routine
						libs.RemoveQuestDevice(a, idevice, rdevice, kw, dcur_kw_QuestItem, destroyDevice = destroyDevices, skipMutex = true)
					endif
				Else
					libs.UnlockDevice(a, idevice, rdevice, kw, destroyDevice = destroyDevices, genericonly = genericonly)
					;libs.removeDevice(a, idevice, rdevice, kw, destroyDevice = destroyDevices, skipevents = false, skipmutex = true)			
				EndIf				
			Endif
		endif
	EndWhile		
EndFunction

bool function UnsafePrisonQuestsActive()
	; these quests shouldn't be interrupted by the prison
	if (mcs.cqs.IsRunning() && mcs.cqs.GetStage() > 70) || mcs.hqqs.IsRunning() || mcs.dqqs.IsRunning() || libs.playerref.IsEquipped(dcumenu.dcur_royalchastity_beltRendered) || mcs.leqs.leon_questrunning || mcs.lbqs.lbqsquestrunning || mcs.ccqs.cursedcollarquestrunning || mcs.rdqs.rdquestrunning || baqs.dcur_bondageadventurequestactive.GetValueInt() == 1 || StorageUtil.GetIntValue(Game.GetPlayer(), "_SD_iEnslaved") || dcur_scquest_isdancing.GetValueInt() == 1  			
		return true
	endif
	return false
EndFunction

bool function checkDCURQuestRunning()
	if dcumenu.installed_PO && (StorageUtil.GetIntValue(Game.GetPlayer(), "xpoPCinJail") == 1) || (StorageUtil.GetIntValue(Game.GetPlayer(), "xpoPCArrested") == 1)	|| (StorageUtil.GetIntValue(Game.GetPlayer(), "xpoPCArrestStart") == 1)
		mcs.isDCURQuestRunning = False
		return false
	endif	
	if mcs.sadqs.IsRunning() || mcs.ltrqs.IsRunning() || mcs.cicqs.IsRunning() || mcs.wgs.IsRunning() || mcs.wosqs.IsRunning() || (mcs.cqs.IsRunning() && mcs.cqs.GetStage() > 35) || mcs.hqqs.IsRunning() || mcs.dqqs.IsRunning() || mcs.pqs.IsRunning() || libs.playerref.IsEquipped(dcumenu.dcur_royalchastity_beltRendered) || mcs.leqs.leon_questrunning || mcs.lbqs.lbqsquestrunning || yeqs.dcur_yokeerrandquestactive.GetValueInt() == 1 || mcs.ccqs.cursedcollarquestrunning || mcs.rdqs.rdquestrunning || baqs.dcur_bondageadventurequestactive.GetValueInt() == 1 || StorageUtil.GetIntValue(Game.GetPlayer(), "_SD_iEnslaved") || dcur_scquest_isdancing.GetValueInt() == 1  	
		mcs.isDCURQuestRunning = True
		return true
	else
		mcs.isDCURQuestRunning = False
	endif
	return false
EndFunction

int Function dcur_removekeys(actor a, bool standardkeysonly = false, actor thief = None)
	int reskeys = a.GetItemCount(libs.restraintsKey)
	int chaskeys = a.GetItemCount(libs.ChastityKey)
	int ptools = a.GetItemCount(libs.PiercingKey)
	int furnkeys = a.GetItemCount(zadc.zadc_furniturekey)
	if thief
		thief.additem(libs.restraintsKey, reskeys, true)
		thief.additem(libs.ChastityKey, chaskeys, true)
		thief.additem(libs.PiercingKey, ptools, true)
		thief.additem(zadc.zadc_furniturekey, furnkeys, true)
	endif
	a.RemoveItem(libs.restraintsKey, reskeys, true) 
	if dcumenu.debugenabled 
		libs.notify(a.GetDisplayName() + " lost "+reskeys+" restraint keys")
	Endif 
	a.RemoveItem(libs.ChastityKey, chaskeys, true)  
	if dcumenu.debugenabled 
		libs.notify(a.GetDisplayName() + " lost "+chaskeys+" chastity keys")
	Endif
	a.RemoveItem(libs.PiercingKey, ptools, true)  
	if dcumenu.debugenabled 
		libs.notify(a.GetDisplayName() + " lost "+ptools+" piercing tools")
	Endif	
	a.RemoveItem(zadc.zadc_furniturekey, furnkeys, true)  
	if dcumenu.debugenabled 
		libs.notify(a.GetDisplayName() + " lost "+furnkeys+" furniture keys")
	Endif	
	if !standardkeysonly		
		int handreskeys = a.GetItemCount(dcumenu.dcur_handrestraintskey)
		int headreskeys = a.GetItemCount(dcumenu.dcur_headrestraintskey)
		int bodyreskeys = a.GetItemCount(dcumenu.dcur_bodyrestraintskey)
		int legreskeys = a.GetItemCount(dcumenu.dcur_legrestraintskey)		
		a.RemoveItem(dcumenu.dcur_handrestraintskey , handreskeys, true) 
		a.RemoveItem(dcumenu.dcur_headrestraintskey , headreskeys, true) 
		a.RemoveItem(dcumenu.dcur_bodyrestraintskey , bodyreskeys, true) 
		a.RemoveItem(dcumenu.dcur_legrestraintskey , legreskeys, true) 				
		if thief			
			thief.additem(dcumenu.dcur_handrestraintskey, handreskeys, true)
			thief.additem(dcumenu.dcur_headrestraintskey, headreskeys, true)
			thief.additem(dcumenu.dcur_bodyrestraintskey, bodyreskeys, true)
			thief.additem(dcumenu.dcur_legrestraintskey, legreskeys, true)
		endif				
		if a.GetActorBase().GetSex() == 0
			libs.notify(a.GetDisplayName() + " lost all his precious keys!")
		else
			libs.notify(a.GetDisplayName() + " lost all her precious keys!")
		endif		
	else
		if a.GetActorBase().GetSex() == 0
			libs.notify(a.GetDisplayName() + " lost some of his precious keys!")
		else
			libs.notify(a.GetDisplayName() + " lost some of her precious keys!")
		endif	
	endif	
	return reskeys + chaskeys + ptools + furnkeys
EndFunction

function stealfollowerkeys(bool standardkeysonly = false, actor thief = None)
	if !dcumenu.enablefollowersupport
		return
	Endif
	Actor Follower
	ActorBase FBase	
	int i = dcur_followerlist.GetSize() - 1	
	while i >= 0
		Follower = dcur_followerlist.GetAt(i) As Actor		
		FBase = Follower.GetActorBase()
		If (Follower.GetDistance(libs.playerref) < 1000.0) && (isValidFollower(Follower) || Follower.IsPlayersLastRiddenHorse())
			dcur_removekeys(Follower, standardkeysonly, thief)			
		endif
		i -= 1
	EndWhile
endfunction

Function createkeys(ObjectReference addto)						
	float chance = 0.0
	float grandtotalweight = dcumenu.chastitykeyweight + dcumenu.restraintskeyweight + dcumenu.piercingkeyweight	
	chance = Utility.RandomFloat(0.0, grandtotalweight)		
	if chance < dcumenu.chastitykeyweight		
		addto.AddItem(libs.chastityKey, 1) 		
	endIf	
	chance = chance - dcumenu.chastitykeyweight			
	if chance < dcumenu.restraintskeyweight		
		addto.AddItem(libs.restraintsKey, 1) 		
	endIf	
	chance = chance - dcumenu.restraintskeyweight			
	if chance < dcumenu.piercingkeyweight		
		addto.AddItem(libs.piercingKey, 1) 		
	endif		
 endfunction 

bool Function WipeDDSlots()			
	; this function is painfully slow. Best use with a fade to black effect.
	Armor device
	Keyword kw
	if Libs.PlayerRef.WornHasKeyword(libs.zad_BlockGeneric)
		return false
	endif
	; seems no quest item is equipped, go ahead and wipe her items:
	int i = dcumenu.dcur_devicekeywords.GetSize() - 1
	While i >= 0		
		kw = dcumenu.dcur_devicekeywords.GetAt(i) As Keyword
		if libs.playerref.wornhaskeyword(kw) 
			libs.UnlockDeviceByKeyword(libs.PlayerRef, kw, destroyDevice = true)
		endif
		i -= 1
	EndWhile	
	if Libs.PlayerRef.WornHasKeyword(libs.zad_Lockable)
		return false
	endif
	return true
EndFunction

Function addpackage(actor a, package akpackage, bool standstill = false)
	If a == libs.PlayerRef
		Game.ForceThirdPerson()
		Game.SetPlayerAIDriven(True)
	Elseif standstill
		a.SetRestrained(True)
		a.SetDontMove(True)
	EndIf		
	ActorUtil.AddPackageOverride(a, akpackage ,99)
	a.EvaluatePackage()	
endFunction

Function removepackage(actor a, package akpackage)
	ActorUtil.RemovePackageOverride(a, akpackage)	
	a.EvaluatePackage()
	If a == libs.playerRef
		Game.SetPlayerAIDriven(False)
	endif
	a.SetRestrained(False)
	a.SetDontMove(False)	
	Debug.SendAnimationEvent(a, "IdleForceDefaultState")			
endFunction

bool Function dcur_equiprandomplugs(actor a)
	armor x = None
	LeveledItem LL
	Bool DoneAnything = False
	If !a.WornHasKeyword(Libs.zad_DeviousPlugVaginal)
		int pickone = 0
		LL = dcur_LL_plugs_vaginal
		if LL
			int n = LL.GetNumForms()
			if n > 0				
				n -= 1		
				int rnd = Utility.RandomInt(0, n)
				x = LL.GetNthForm(rnd) As Armor								
				if !dcumenu.useitemsfrominventory
					a.addItem(x, 1, true)
				EndIf
				libs.LockDevice(a, x)			
				DoneAnything = True
			EndIf
		EndIf
	EndIf
	If !a.WornHasKeyword(Libs.zad_DeviousPlugAnal)
		int pickone = 0
		LL = dcur_LL_plugs_anal
		if LL
			int n = LL.GetNumForms()
			if n > 0				
				n -= 1		
				int rnd = Utility.RandomInt(0, n)
				x = LL.GetNthForm(rnd) As Armor								
				if !dcumenu.useitemsfrominventory
					a.addItem(x, 1, true)
				EndIf
				libs.LockDevice(a, x)
				DoneAnything = True
			EndIf
		EndIf
	EndIf	
	If DoneAnything
		return true
	EndIf
	return false
EndFunction

bool Function dcur_equiprandombelt(actor a, int theme)
int pickone = 0
	if !a.WornHasKeyword(Libs.zad_DeviousBelt)    
		if theme == set_bronze 
			pickone = 3	
		elseif theme == set_aradia && hasAradia()
			pickone = 9
		elseif theme == set_silver; && hasCD()
			pickone = 4
		elseif theme == set_leather || theme == set_metal
			pickone = 2		
		elseif theme == set_rope
			pickone = Utility.RandomInt(5,8)
		elseif theme == set_hisec
			pickone = 99			
		else
			if hasAradia()
				if Utility.RandomInt(0,99) < 70
					pickone = Utility.RandomInt(1,4)
				else
					pickone = Utility.RandomInt(5,9)			
				endif
			else
				if Utility.RandomInt(0,99) < 70
					pickone = Utility.RandomInt(1,4)
				else
					pickone = Utility.RandomInt(5,8)
				endif
			endif
		endif		
		dcur_equiprandomplugs(a)
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.beltIron, 1, true)
			endif
			libs.equipDevice(a, libs.beltIron, libs.beltIronRendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)				
		ElseIf pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(libs.beltPadded, 1, true)
			endif
			libs.equipDevice(a, libs.beltPadded, libs.beltPaddedRendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)										
		ElseIf pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_chastitybelt_Padded_Gold_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_chastitybelt_Padded_Gold_Inventory, xlibs.zadx_chastitybelt_Padded_Gold_Rendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)	
		ElseIf pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_chastitybelt_Padded_Silver_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_chastitybelt_Padded_Silver_Inventory, xlibs.zadx_chastitybelt_Padded_Silver_Rendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)			
		ElseIf pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_crotch_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_crotch_Inventory, xlibs2.zadx_rope_crotch_Rendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)	
		ElseIf pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_crotch_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_red_crotch_Inventory, xlibs2.zadx_rope_red_crotch_Rendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)	
		ElseIf pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_crotch_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_white_crotch_Inventory, xlibs2.zadx_rope_white_crotch_Rendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)	
		ElseIf pickone == 8
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_crotch_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_black_crotch_Inventory, xlibs2.zadx_rope_black_crotch_Rendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)				
		ElseIf pickone == 9
			if !dcumenu.useitemsfrominventory
				a.additem(dci.aradialib_Belt, 1, true)
			endif
			libs.equipDevice(a, dci.aradialib_Belt, dci.aradialib_BeltRendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)
		ElseIf pickone == 99
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecbelt, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecbelt, dcumenu.dcur_hisecbeltRendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)				
		Endif
		if dcumenu.debugenabled
			libs.notify("Equipped a chastity belt on " + a.GetDisplayName())
		Endif				
		return true
	Endif 
	return false
EndFunction

bool Function dcur_equiprandombra(actor a, int theme)
int pickone = 1	
	if !a.WornHasKeyword(Libs.zad_DeviousBra)
		if theme == set_bronze ;&& hasCD()
			pickone = 3					
		elseif theme == set_silver ; && hasCD()
			pickone = 2
		elseif theme == set_aradia && hasAradia()
			pickone = 4
		elseif theme == set_hisec
			pickone = 99
		else			
			if  hasAradia()
				pickone = Utility.RandomInt(1,4)
			else
				pickone = Utility.RandomInt(1,3)			
			endif
		endif	
		If pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(dci.SilveredPadBra, 1, true)
			endif
			libs.equipDevice(a, dci.SilveredPadBra, dci.SilveredPadBraRend, libs.Zad_DeviousBra, skipevents = false, skipmutex = true)	
		ElseIf pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_chastityBra_Padded_Gold_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_chastityBra_Padded_Gold_Inventory, xlibs.zadx_chastityBra_Padded_Gold_Rendered, libs.Zad_DeviousBra, skipevents = false, skipmutex = true)	
		ElseIf pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_chastityBra_Padded_Silver_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_chastityBra_Padded_Silver_Inventory, xlibs.zadx_chastityBra_Padded_Silver_Rendered, libs.Zad_DeviousBra, skipevents = false, skipmutex = true)	
		elseif pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.braPadded, 1, true)
			endif
			libs.equipDevice(a, libs.braPadded, libs.braPaddedRendered, libs.Zad_DeviousBra, skipevents = false, skipmutex = true)	
		ElseIf pickone == 99
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecbra, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecbra, dcumenu.dcur_hisecbraRendered, libs.Zad_DeviousBra, skipevents = false, skipmutex = true)				
		Endif		
		if dcumenu.debugenabled
			libs.notify("Equipped a chastity bra on " + a.GetDisplayName())
		Endif
		return true
	EndIf
	return false
EndFunction

function dcur_equiprandompanelgag(actor a, int theme)
	int pickone = 0
	if !a.WornHasKeyword(Libs.zad_DeviousGag)	
		if theme == set_rdleather
			pickone = 6
		elseif theme == set_rdebonite
			pickone = 5
		elseif theme == set_wtleather
			pickone = 4
		elseif theme == set_wtebonite
			pickone = 3
		elseif theme == set_ebonite
			pickone = 2
		elseif theme == set_metal
			pickone = 7		
		elseif theme == set_hisec
			pickone = 99
		else				
			pickone = Utility.RandomInt(1,7)			
		endif
		If pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.gagPanel, 1, true)
			endif
			libs.equipDevice(a, libs.gagPanel, libs.gagPanelRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)	
		ElseIf pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagEbonitePanel, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagEbonitePanel, xlibs.gagEbonitePanelRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																		
		ElseIf pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagWTEbonitePanel, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagWTEbonitePanel, xlibs.gagWTEbonitePanelRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)	
		ElseIf pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagWTLeatherPanel, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagWTLeatherPanel, xlibs.gagWTLeatherPanelRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		ElseIf pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagRDEbonitePanel, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagRDEbonitePanel, xlibs.gagRDEbonitePanelRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		ElseIf pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagRDLeatherPanel, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagRDLeatherPanel, xlibs.gagRDLeatherPanelRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)
		ElseIf pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(dci.dcur_silencerGagSimple, 1, true)
			endif
			libs.equipDevice(a, dci.dcur_silencerGagSimple, dci.dcur_silencerGagSimpleRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)
		ElseIf pickone == 99
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecPanelGag, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecPanelGag, dcumenu.dcur_hisecPanelGagRendered, libs.Zad_DeviousGag, skipevents = false, skipmutex = true)				
		endif
	endif
endfunction

function dcur_equiprandomballgag(actor a, int theme)
	int pickone = 0
	if !a.WornHasKeyword(Libs.zad_DeviousGag)	
		if theme == set_rdleather
			pickone = Utility.RandomInt(11,12)
		elseif theme == set_rdebonite
			pickone = Utility.RandomInt(9,10)
		elseif theme == set_wtleather
			pickone = Utility.RandomInt(7,8)
		elseif theme == set_wtebonite
			pickone = Utility.RandomInt(5,6)
		elseif theme == set_ebonite
			pickone = Utility.RandomInt(3,4)
		elseif theme == set_metal
			pickone = utility.RandomInt(0,2)
		elseif theme == set_aradia && hasAradia()
			pickone = 13
		elseif theme == set_hisec
			pickone = 99
		else	
			if hasAradia()
				; let's assign the extreme versions a bit higher priority here
				if Utility.RandomInt(0,99) < 20
					pickone = Utility.RandomInt(14,16)
				else
					pickone = Utility.RandomInt(0,13)
				endif
			else
				if Utility.RandomInt(0,99) < 20
					pickone = Utility.RandomInt(14,16)
				else
					pickone = Utility.RandomInt(0,12)
				endif
			endif
		endif
		if pickone == 0
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_PearGagInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_PearGagInventory, xlibs.zadx_HR_PearGagRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)
		elseif pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.gagBall, 1, true)
			endif
			libs.equipDevice(a, libs.gagBall, libs.gagBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)
		ElseIf pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(libs.gagStrapBall, 1, true)
			endif
			libs.equipDevice(a, libs.gagStrapBall, libs.gagStrapBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)													
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagEboniteBall, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagEboniteBall, xlibs.gagEboniteBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		ElseIf pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagEboniteStrapBall, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagEboniteStrapBall, xlibs.gagEboniteStrapBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagWTEboniteBall, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagWTEboniteBall, xlibs.gagWTEboniteBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		ElseIf pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagWTEboniteStrapBall, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagWTEboniteStrapBall, xlibs.gagWTEboniteStrapBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)															
		elseif pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagWTLeatherBall, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagWTLeatherBall, xlibs.gagWTLeatherBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																
		ElseIf pickone == 8
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagWTLeatherStrapBall, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagWTLeatherStrapBall, xlibs.gagWTLeatherStrapBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)		
		elseif pickone == 9
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagRDEboniteBall, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagRDEboniteBall, xlibs.gagRDEboniteBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																
		ElseIf pickone == 10
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagRDEboniteStrapBall, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagRDEboniteStrapBall, xlibs.gagRDEboniteStrapBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)		
		elseif pickone == 11
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagRDLeatherBall, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagRDLeatherBall, xlibs.gagRDLeatherBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																
		ElseIf pickone == 12
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagRDLeatherStrapBall, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagRDLeatherStrapBall, xlibs.gagRDLeatherStrapBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)		
		ElseIf pickone == 13
			if !dcumenu.useitemsfrominventory
				a.additem(dci.aradialib_Gag, 1, true)
			endif
			libs.equipDevice(a, dci.aradialib_Gag, dci.aradialib_GagRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)		
		ElseIf pickone == 14
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_Gag_Ball_Extreme_Red_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_Gag_Ball_Extreme_Red_Inventory, xlibs2.zadx_Gag_Ball_Extreme_Red_Rendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)						
		ElseIf pickone == 15
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_Gag_Ball_Extreme_Black_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_Gag_Ball_Extreme_Black_Inventory, xlibs2.zadx_Gag_Ball_Extreme_Black_Rendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)						
		ElseIf pickone == 16
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_Gag_Ball_Extreme_Purple_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_Gag_Ball_Extreme_Purple_Inventory, xlibs2.zadx_Gag_Ball_Extreme_Purple_Rendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)						
		ElseIf pickone == 99
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecBallGag, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecBallGag, dcumenu.dcur_hisecBallGagRendered, libs.Zad_DeviousGag, skipevents = false, skipmutex = true)				
		endif
	endif
endfunction

Function dcur_equiprandomringgag(actor a, int theme)
	int pickone = 0
	if !a.WornHasKeyword(Libs.zad_DeviousGag)	
		if theme == set_rdleather
			pickone = Utility.RandomInt(11,12)
		elseif theme == set_rdebonite
			pickone = Utility.RandomInt(9,10)
		elseif theme == set_wtleather
			pickone = Utility.RandomInt(7,8)
		elseif theme == set_wtebonite
			pickone = Utility.RandomInt(5,6)
		elseif theme == set_ebonite
			pickone = Utility.RandomInt(3,4)
		elseif theme == set_metal
			pickone = utility.RandomInt(1,2)		
		elseif theme == set_hisec
			pickone = 99
		else				
			pickone = Utility.RandomInt(1,12)			
		endif
		If pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.gagRing, 1, true)
			endif
			libs.equipDevice(a, libs.gagRing, libs.gagRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)						
		ElseIf pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(libs.gagStrapRing, 1, true)
			endif
			libs.equipDevice(a, libs.gagStrapRing, libs.gagStrapRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)											
		ElseIf pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagEboniteRing, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagEboniteRing, xlibs.gagEboniteRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		ElseIf pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagEboniteStrapRing, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagEboniteStrapRing, xlibs.gagEboniteStrapRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																				
		ElseIf pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagWTEboniteRing, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagWTEboniteRing, xlibs.gagWTEboniteRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		ElseIf pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagWTEboniteStrapRing, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagWTEboniteStrapRing, xlibs.gagWTEboniteStrapRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)														
		ElseIf pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagWTLeatherRing, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagWTLeatherRing, xlibs.gagWTLeatherRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		ElseIf pickone == 8
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagWTLeatherStrapRing, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagWTLeatherStrapRing, xlibs.gagWTLeatherStrapRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		ElseIf pickone == 9
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagRDEboniteRing, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagRDEboniteRing, xlibs.gagRDEboniteRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		ElseIf pickone == 10
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagRDEboniteStrapRing, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagRDEboniteStrapRing, xlibs.gagRDEboniteStrapRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)															
		ElseIf pickone == 11
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagRDLeatherRing, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagRDLeatherRing, xlibs.gagRDLeatherRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		ElseIf pickone == 12
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.gagRDLeatherStrapRing, 1, true)
			endif
			libs.equipDevice(a, xlibs.gagRDLeatherStrapRing, xlibs.gagRDLeatherStrapRingRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)																	
		Endif
	endif
EndFunction

bool Function dcur_equiprandomgag(actor a, int theme)	
	int grandtotalweight = dcumenu.ringgagweight + dcumenu.ballgagweight + dcumenu.panelgagweight
	bool done = false
	int chance = 0
	int bailout = 0
	if !a.WornHasKeyword(Libs.zad_DeviousGag)	
		if dcumenu.debugenabled
			libs.notify("Equipped a gag on " + a.GetDisplayName())
		Endif		
		if theme == set_aradia
			dcur_equiprandomballgag(a, theme)
			return true
		endif		
		while !done
			chance = Utility.RandomInt(1, grandtotalweight)		
			if chance < dcumenu.panelgagweight
				dcur_equiprandompanelgag(a, theme)
				done = true
				return true
			else
				chance = chance - dcumenu.panelgagweight
				if chance < 1 
					chance = 1
				endif
			endIf
			if !done && chance < dcumenu.ballgagweight
				dcur_equiprandomballgag(a, theme)
				done = true
				return true
			else
				chance = chance - dcumenu.ballgagweight
				if chance < 1 
					chance = 1
				endif
			endIf
			if !done && chance < dcumenu.ringgagweight
				if theme == set_hisec
					dcur_equiprandompanelgag(a, theme)
				else
					dcur_equiprandomringgag(a, theme)
				endif
				done = true
				return true
			endIf
			if !done
				bailout += 1
				if bailout > 10 
					return false
				endif
			endif
		endwhile		
		return true		
	EndIf
	return false
endfunction

bool Function dcur_equiprandomlegcuffs(actor a, int theme)
	if !a.WornHasKeyword(Libs.zad_DeviousLegCuffs)
		If Utility.RandomFloat(0.0, 99.9) < dcumenu.anklechainsweight
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_anklechains, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_anklechains, dcumenu.dcur_anklechainsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
			if dcumenu.debugenabled
				libs.notify("Equipped ankle chains on " + a.GetDisplayName())
			Endif
			return true
		Else
			If dcur_equiplegcuffs(a, theme)
				return true
			Endif
		Endif		
	Endif
	Return False
EndFunction

bool Function dcur_equiplegcuffs(actor a, int theme)
	int pickone = 0
	if !a.WornHasKeyword(Libs.zad_DeviousLegCuffs)
		if theme == set_rdleather
			pickone = 9
		elseif theme == set_rdebonite
			pickone = 8
		elseif theme == set_wtleather
			pickone = 7
		elseif theme == set_wtebonite
			pickone = 6
		elseif theme == set_metal
			pickone = 1			
		elseif theme == set_leather
			pickone = 2
		elseif theme == set_ebonite || theme == set_rubber
			pickone = 3
		elseif theme == set_bronze ;&& hasCD()
			pickone = 4
		elseif theme == set_silver ;&& hasCD()
			pickone = 5
		elseif theme == set_rope
			pickone = Utility.RandomInt(10,13)
		elseif theme == set_aradia && hasAradia()
			pickone = 14
		elseif theme == set_hisec
			pickone = 99
		else
			pickone = Utility.RandomInt(1,14)	
			; Can't be bothered to rearrange the numbers right now...blame me.
			;if !hasCD() && (pickone == 4 || pickone == 5)
			;	pickone = Utility.RandomInt(6,9)
			;endif
			if !hasAradia() && pickone == 14
				pickone = Utility.RandomInt(6,9)
			endif
		endif
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.CuffsPaddedLegs, 1, true)
			endif
			libs.equipDevice(a, libs.CuffsPaddedLegs, libs.CuffsPaddedLegsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
		Elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(libs.CuffsLeatherLegs, 1, true)
			endif
			libs.equipDevice(a, libs.CuffsLeatherLegs, libs.CuffsLeatherLegsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
		Elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsEboniteLegs, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsEboniteLegs, xlibs.cuffsEboniteLegsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)			
		Elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_cuffs_Padded_Legs_Gold_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_cuffs_Padded_Legs_Gold_Inventory, xlibs.zadx_cuffs_Padded_Legs_Gold_Rendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)		
		Elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_cuffs_Padded_Legs_Silver_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_cuffs_Padded_Legs_Silver_Inventory, xlibs.zadx_cuffs_Padded_Legs_Silver_Rendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)		
		Elseif pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsWTEboniteLegs, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsWTEboniteLegs, xlibs.cuffsWTEboniteLegsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.CuffsWTLeatherLegs, 1, true)
			endif
			libs.equipDevice(a, xlibs.CuffsWTLeatherLegs, xlibs.CuffsWTLeatherLegsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)		
		Elseif pickone == 8
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsRDEboniteLegs, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsRDEboniteLegs, xlibs.cuffsRDEboniteLegsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 9
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.CuffsRDLeatherLegs, 1, true)
			endif
			libs.equipDevice(a, xlibs.CuffsRDLeatherLegs, xlibs.CuffsRDLeatherLegsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 10
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_cuffs_legs_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_cuffs_legs_Inventory, xlibs2.zadx_rope_cuffs_legs_Rendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 11
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_red_cuffs_legs_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_red_cuffs_legs_Inventory, xlibs2.zadx_rope_red_cuffs_legs_Rendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 12
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_black_cuffs_legs_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_black_cuffs_legs_Inventory, xlibs2.zadx_rope_black_cuffs_legs_Rendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 13
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_white_cuffs_legs_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_white_cuffs_legs_Inventory, xlibs2.zadx_rope_white_cuffs_legs_Rendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)			
		Elseif pickone == 14
			if !dcumenu.useitemsfrominventory
				a.additem(dci.aradialib_LegCuffs, 1, true)
			endif
			libs.equipDevice(a, dci.aradialib_LegCuffs, dci.aradialib_LegCuffsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)			
		Elseif pickone == 99
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecLegCuffs, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecLegCuffs, dcumenu.dcur_hisecLegCuffsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)	
		Endif
		if dcumenu.debugenabled
			libs.notify("Equipped leg cuffs on " + a.GetDisplayName())
		Endif
		return true		
	EndIf
	return false
EndFunction

bool Function dcur_equiprandomarmcuffs(actor a, int theme)
int pickone = 0
	if !a.WornHasKeyword(Libs.zad_DeviousArmCuffs)
		if theme == set_rdleather
			pickone = 9
		elseif theme == set_rdebonite
			pickone = 8
		elseif theme == set_wtleather
			pickone = 7
		elseif theme == set_wtebonite
			pickone = 6
		elseif theme == set_metal
			If Utility.RandomInt(1,2) == 1
				pickone = 1
			Else
				pickone = 10
			EndIf
		elseif theme == set_leather
			pickone = 2
		elseif theme == set_ebonite || theme == set_rubber
			pickone = 3
		elseif theme == set_bronze ;&& hasCD()
			pickone = 4
		elseif theme == set_silver ;&& hasCD()
			pickone = 5
		elseif theme == set_aradia && hasAradia()
			pickone = 15
		elseif theme == set_rope
			pickone = Utility.RandomInt(11,14)
		elseif theme == set_hisec
			pickone = 99
		else
			pickone = Utility.RandomInt(1,15)	
			; Can't be bothered to rearrange the numbers right now...blame me.
			;if !hasCD() && (pickone == 4 || pickone == 5)
			;	pickone = Utility.RandomInt(6,9)
			;endif
			if !hasAradia() && pickone == 15
				pickone = Utility.RandomInt(6,9)
			endif
		endif
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.CuffsPaddedArms, 1, true)
			endif
			libs.equipDevice(a, libs.CuffsPaddedArms, libs.CuffsPaddedArmsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)			
		elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(libs.CuffsLeatherArms, 1, true)
			endif
			libs.equipDevice(a, libs.CuffsLeatherArms, libs.CuffsLeatherArmsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsEboniteArms, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsEboniteArms, xlibs.cuffsEboniteArmsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)			
		Elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_cuffs_Padded_Arms_Gold_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_cuffs_Padded_Arms_Gold_Inventory, xlibs.zadx_cuffs_Padded_Arms_Gold_Rendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)		
		Elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_cuffs_Padded_Arms_Silver_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_cuffs_Padded_Arms_Silver_Inventory, xlibs.zadx_cuffs_Padded_Arms_Silver_Rendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)		
		Elseif pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsWTEboniteArms, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsWTEboniteArms, xlibs.cuffsWTEboniteArmsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.CuffsWTLeatherArms, 1, true)
			endif
			libs.equipDevice(a, xlibs.CuffsWTLeatherArms, xlibs.CuffsWTLeatherArmsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)		
		Elseif pickone == 8
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsRDEboniteArms, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsRDEboniteArms, xlibs.cuffsRDEboniteArmsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 9
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.CuffsRDLeatherArms, 1, true)
			endif
			libs.equipDevice(a, xlibs.CuffsRDLeatherArms, xlibs.CuffsRDLeatherArmsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 10
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_WristShacklesInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_WristShacklesInventory, xlibs.zadx_HR_WristShacklesRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)			
		Elseif pickone == 11
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_cuffs_arms_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_cuffs_arms_Inventory, xlibs2.zadx_rope_cuffs_arms_Rendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 12
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_red_cuffs_arms_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_red_cuffs_arms_Inventory, xlibs2.zadx_rope_red_cuffs_arms_Rendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 13
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_black_cuffs_arms_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_black_cuffs_arms_Inventory, xlibs2.zadx_rope_black_cuffs_arms_Rendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)	
		Elseif pickone == 14
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs2.zadx_rope_white_cuffs_arms_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs2.zadx_rope_white_cuffs_arms_Inventory, xlibs2.zadx_rope_white_cuffs_arms_Rendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)					
		Elseif pickone == 15
			if !dcumenu.useitemsfrominventory
				a.additem(dci.aradialib_ArmCuffs, 1, true)
			endif
			libs.equipDevice(a, dci.aradialib_ArmCuffs, dci.aradialib_ArmCuffsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)			
		Elseif pickone == 99
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecArmCuffs, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecArmCuffs, dcumenu.dcur_hisecArmCuffsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)	
		Endif
		if dcumenu.debugenabled
			libs.notify("Equipped arm cuffs on " + a.GetDisplayName())
		Endif
		return true		
	EndIf
	return false
EndFunction

bool Function dcur_equiprandomcollar(actor a, int theme)
	int pickone = 0
	if !a.WornHasKeyword(Libs.zad_DeviousCollar) && !a.WornHasKeyword(Libs.zad_DeviousHarness)
		if theme == set_leather
			pickone = Utility.RandomInt(1,3)
		elseif theme == set_metal
			; might as well equip the nipple chain collar
			if !a.WornHasKeyword(Libs.zad_DeviousPiercingsNipple) && !a.WornHasKeyword(Libs.zad_DeviousBra) && (Utility.RandomInt(1,2) == 1)
				pickone = 33
			Else
				int rnd = Utility.RandomInt(1,3)
				If rnd == 1
					pickone = Utility.RandomInt(4,5)
				ElseIf rnd == 2
					pickone = Utility.RandomInt(31,32)
				Else
					pickone = 30
				Endif
			Endif
		elseif theme == set_ebonite
			pickone = Utility.RandomInt(6,9)		
		elseif theme == set_wtebonite
			pickone = Utility.RandomInt(10,13)				
		elseif theme == set_rdebonite
			pickone = Utility.RandomInt(14,17)			
		elseif theme == set_rdleather
			pickone = Utility.RandomInt(18,21)			
		elseif theme == set_wtleather
			pickone = Utility.RandomInt(22,25)		
		elseif theme == set_rubber
			pickone = 27
		elseif theme == set_restrictive
			pickone = 26
		elseif theme == set_bronze ;&& hasCD()
			pickone = 29
		elseif theme == set_silver ;&& hasCD()
			pickone = 30
		elseif theme == set_hisec
			pickone = 99
		else			
			pickone = Utility.RandomInt(1,34)			
		endif	
		; sanity check for the nipple chain collar:
		If pickone == 33 && (a.WornHasKeyword(Libs.zad_DeviousPiercingsNipple) || a.WornHasKeyword(Libs.zad_DeviousBra))
			pickone = 31
		EndIf
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.cuffsLeatherCollar, 1, true)
			endif
			libs.equipDevice(a, libs.cuffsLeatherCollar, libs.cuffsLeatherCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)			
		elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(libs.harnessCollar, 1, true)
			endif
			libs.equipDevice(a, libs.harnessCollar, libs.harnessCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)			
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(libs.collarPostureLeather, 1, true)
			endif
			libs.equipDevice(a, libs.collarPostureLeather, libs.collarPostureLeatherRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)			
		elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(libs.collarposture, 1, true)
			endif
			libs.equipDevice(a, libs.collarposture, libs.collarpostureRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)			
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(libs.cuffsPaddedCollar, 1, true)
			endif
			libs.equipDevice(a, libs.cuffsPaddedCollar, libs.cuffsPaddedCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)						
		elseif pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsEboniteCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsEboniteCollar, xlibs.cuffsEboniteCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)			
		elseif pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.collarPostureEbonite, 1, true)
			endif
			libs.equipDevice(a, xlibs.collarPostureEbonite, xlibs.collarPostureEboniteRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)			
		elseif pickone == 8
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.eboniteHarnessCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.eboniteHarnessCollar, xlibs.eboniteHarnessCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)							
		elseif pickone == 9
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.EbRestrictiveCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.EbRestrictiveCollar, xlibs.EbRestrictiveCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)							
		elseif pickone == 10
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsWTEboniteCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsWTEboniteCollar, xlibs.cuffsWTEboniteCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)			
		elseif pickone == 11
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.collarPostureWTEbonite, 1, true)
			endif
			libs.equipDevice(a, xlibs.collarpostureWTEbonite, xlibs.collarpostureWTEboniteRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)						
		elseif pickone == 12
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.wtEboniteHarnessCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.wtEboniteHarnessCollar, xlibs.wtEboniteHarnessCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)								
		elseif pickone == 13
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTErestrictiveCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTErestrictiveCollar, xlibs.wtEboniteHarnessCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)										
		elseif pickone == 14
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsRDEboniteCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsRDEboniteCollar, xlibs.cuffsRDEboniteCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)			
		elseif pickone == 15
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.collarPostureRDEbonite, 1, true)
			endif
			libs.equipDevice(a, xlibs.collarpostureRDEbonite, xlibs.collarpostureRDEboniteRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)					
		elseif pickone == 16
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.rdEboniteHarnessCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.rdEboniteHarnessCollar, xlibs.rdEboniteHarnessCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)						
		elseif pickone == 17
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDErestrictiveCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDErestrictiveCollar, xlibs.RDErestrictiveCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)						
		elseif pickone == 18
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsRDLeatherCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsRDLeatherCollar, xlibs.cuffsRDLeatherCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)
		elseif pickone == 19
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.collarPostureRDLeather, 1, true)
			endif
			libs.equipDevice(a, xlibs.collarpostureRDLeather, xlibs.collarpostureRDLeatherRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)						
		elseif pickone == 20
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.rdLeatherHarnessCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.rdLeatherHarnessCollar, xlibs.rdLeatherHarnessCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)						
		elseif pickone == 21
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDLrestrictiveCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDLrestrictiveCollar, xlibs.RDLrestrictiveCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)						
		elseif pickone == 22
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.cuffsWTLeatherCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.cuffsWTLeatherCollar, xlibs.cuffsWTLeatherCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)	
		elseif pickone == 23
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.collarPostureWTLeather, 1, true)
			endif
			libs.equipDevice(a, xlibs.collarpostureWTLeather, xlibs.collarpostureWTLeatherRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)						
		elseif pickone == 24
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.wtLeatherHarnessCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.wtLeatherHarnessCollar, xlibs.wtLeatherHarnessCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)								
		elseif pickone == 25
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTLrestrictiveCollar, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTLrestrictiveCollar, xlibs.WTLrestrictiveCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)								
		Elseif pickone == 26
			if !dcumenu.useitemsfrominventory
				a.additem(libs.collarRestrictive, 1, true)
			endif
			libs.equipDevice(a, libs.collarRestrictive, libs.collarRestrictiveRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)			
		Elseif pickone == 27
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_rubberCollarSimple, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_rubberCollarSimple, dcumenu.dcur_rubberCollarSimpleRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)					
		Elseif pickone == 28
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_cuffs_Padded_Collar_Silver_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_cuffs_Padded_Collar_Silver_Inventory, xlibs.zadx_cuffs_Padded_Collar_Silver_Rendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)					
		Elseif pickone == 29
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_Collar_Posture_Gold_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_Collar_Posture_Gold_Inventory, xlibs.zadx_Collar_Posture_Gold_Rendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)			
		Elseif pickone == 30
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_Collar_Posture_Silver_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_Collar_Posture_Silver_Inventory, xlibs.zadx_Collar_Posture_Silver_Rendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)							
		Elseif pickone == 31
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_IronCollarInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_IronCollarInventory, xlibs.zadx_HR_IronCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)	
		Elseif pickone == 32
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_RustyIronCollarInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_RustyIronCollarInventory, xlibs.zadx_HR_RustyIronCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)	
		Elseif pickone == 33
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_NippleChainCollarInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_NippleChainCollarInventory, xlibs.zadx_HR_NippleChainCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)	
		Elseif pickone == 34
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_cuffs_Padded_Collar_Gold_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_cuffs_Padded_Collar_Gold_Inventory, xlibs.zadx_cuffs_Padded_Collar_Gold_Rendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)		
		Elseif pickone == 99
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecCollar, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecCollar, dcumenu.dcur_hisecCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)	
		Endif
		if dcumenu.debugenabled
			libs.notify("Equipped a collar on " + a.GetDisplayName())
		Endif
		return true		
	EndIf
	return false
EndFunction

bool Function dcur_equiprandomblindfold(actor a, int theme)
int pickone = 0
	if !a.WornHasKeyword(Libs.zad_DeviousBlindfold)
		if theme == set_leather
			pickone = Utility.RandomInt(1,2)
		elseif theme == set_rdleather
			pickone = Utility.RandomInt(11,12)
		elseif theme == set_rdebonite
			pickone = Utility.RandomInt(7,8)
		elseif theme == set_wtleather
			pickone = Utility.RandomInt(9,10)
		elseif theme == set_wtebonite
			pickone = Utility.RandomInt(5,6)
		elseif theme == set_ebonite
			pickone = Utility.RandomInt(3,4)
		elseif theme == set_aradia && hasAradia()
			pickone = 13
		else			
			if hasAradia()
				pickone = Utility.RandomInt(1,13)
			else
				pickone = Utility.RandomInt(1,12)
			endif
		endif				
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.blindfoldblocking, 1, true)
			endif
			libs.equipDevice(a, xlibs.blindfoldblocking, xlibs.blindfoldblockingRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)						
		elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(libs.blindfold, 1, true)
			endif
			libs.equipDevice(a, libs.blindfold, libs.blindfoldRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)		
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.eboniteBlindfold, 1, true)
			endif
			libs.equipDevice(a, xlibs.eboniteBlindfold, xlibs.eboniteBlindfoldRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)			
		elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.EbblindfoldBlocking, 1, true)
			endif
			libs.equipDevice(a, xlibs.EbblindfoldBlocking, xlibs.EbblindfoldBlockingRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)					
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.wteboniteBlindfold, 1, true)
			endif
			libs.equipDevice(a, xlibs.wteboniteBlindfold, xlibs.wteboniteBlindfoldRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)			
		elseif pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTEblindfoldBlocking, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTEblindfoldBlocking, xlibs.WTEblindfoldBlockingRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)					
		elseif pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.rdeboniteBlindfold, 1, true)
			endif
			libs.equipDevice(a, xlibs.rdeboniteBlindfold, xlibs.rdeboniteBlindfoldRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)			
		elseif pickone == 8
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDEblindfoldBlocking, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDEblindfoldBlocking, xlibs.RDEblindfoldBlockingRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)				
		elseif pickone == 9
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.wtleatherBlindfold, 1, true)
			endif
			libs.equipDevice(a, xlibs.wtleatherBlindfold, xlibs.wtleatherBlindfoldRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)			
		elseif pickone == 10
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTLblindfoldBlocking, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTLblindfoldBlocking, xlibs.WTLblindfoldBlockingRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)					
		elseif pickone == 11
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.rdleatherBlindfold, 1, true)
			endif
			libs.equipDevice(a, xlibs.rdleatherBlindfold, xlibs.rdleatherBlindfoldRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)			
		elseif pickone == 12
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDLblindfoldBlocking, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDLblindfoldBlocking, xlibs.RDLblindfoldBlockingRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)					
		elseif pickone == 13
			if !dcumenu.useitemsfrominventory
				a.additem(dci.aradialib_Blindfold, 1, true)
			endif
			libs.equipDevice(a, dci.aradialib_Blindfold, dci.aradialib_BlindfoldRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)
		endIf
		if dcumenu.debugenabled
			libs.notify("Equipped a blindfold on " + a.GetDisplayName())
		Endif
		return true
	EndIf
	return false
EndFunction

Function dcur_equiprandomleatherarmbinder(actor a, int theme)
	; Yes I know the function name is misleading, since this function now also equips rope...
	int pickone = 0
	if !a.WornHasKeyword(Libs.zad_DeviousHeavyBondage)
		if theme == set_rdleather
			pickone = 5
		elseif theme == set_rdebonite
			pickone = 4
		elseif theme == set_wtleather
			pickone = 6
		elseif theme == set_wtebonite
			pickone = 3
		elseif theme == set_ebonite || theme == set_rubber
			pickone = 2
		elseif theme == set_rope
			pickone = Utility.RandomInt(8,9)
		elseif theme == set_hisec
			pickone = 99
		else
			pickone = Utility.RandomInt(1,9)
		endif
		if pickone == 2
			If Utility.RandomInt() < 50
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.eboniteArmbinder, 1, true)
				endif
				libs.equipDevice(a, xlibs.eboniteArmbinder, xlibs.eboniteArmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			Else
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.zadx_ElbowbinderEboniteInventory, 1, true)
				endif
				libs.equipDevice(a, xlibs.zadx_ElbowbinderEboniteInventory, xlibs.zadx_ElbowbinderEboniteRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			EndIf
		elseif pickone == 3
			If Utility.RandomInt() < 50
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.wteboniteArmbinder, 1, true)
				endif
				libs.equipDevice(a, xlibs.wteboniteArmbinder, xlibs.wteboniteArmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			Else
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.zadx_ElbowbinderEboniteWhiteInventory, 1, true)
				endif
				libs.equipDevice(a, xlibs.zadx_ElbowbinderEboniteWhiteInventory, xlibs.zadx_ElbowbinderEboniteWhiteRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			EndIf			
		elseif pickone == 4
			If Utility.RandomInt() < 50
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.rdeboniteArmbinder, 1, true)
				endif
				libs.equipDevice(a, xlibs.rdeboniteArmbinder, xlibs.rdeboniteArmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			Else
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.zadx_ElbowbinderEboniteRedInventory, 1, true)
				endif
				libs.equipDevice(a, xlibs.zadx_ElbowbinderEboniteRedInventory, xlibs.zadx_ElbowbinderEboniteRedRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			EndIf			
		elseif pickone == 5
			If Utility.RandomInt() < 50
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.rdleatherArmbinder, 1, true)
				endif
				libs.equipDevice(a, xlibs.rdleatherArmbinder, xlibs.rdleatherArmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			Else
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.zadx_ElbowbinderRedInventory, 1, true)
				endif
				libs.equipDevice(a, xlibs.zadx_ElbowbinderRedInventory, xlibs.zadx_ElbowbinderRedRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			EndIf						
		elseif pickone == 6
			If Utility.RandomInt() < 50
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.wtleatherArmbinder, 1, true)
				endif
				libs.equipDevice(a, xlibs.wtleatherArmbinder, xlibs.wtleatherArmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			Else
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.zadx_ElbowbinderWhiteInventory, 1, true)
				endif
				libs.equipDevice(a, xlibs.zadx_ElbowbinderWhiteInventory, xlibs.zadx_ElbowbinderWhiteRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			EndIf									
		elseif pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_pinkarmbinder, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_pinkarmbinder, dcumenu.dcur_pinkarmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
		elseif pickone == 8			
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_Armbinder_Rope_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_Armbinder_Rope_Inventory, xlibs.zadx_Armbinder_Rope_Rendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
		elseif pickone == 9
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_Armbinder_Rope_Strict_Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_Armbinder_Rope_Strict_Inventory, xlibs.zadx_Armbinder_Rope_Strict_Rendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
		elseif pickone == 1
			If Utility.RandomInt() < 50
				if !dcumenu.useitemsfrominventory
					a.additem(libs.Armbinder, 1, true)
				endif
				libs.equipDevice(a, libs.Armbinder, libs.ArmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			Else
				if !dcumenu.useitemsfrominventory
					a.additem(xlibs.zadx_ElbowbinderInventory, 1, true)
				endif
				libs.equipDevice(a, xlibs.zadx_ElbowbinderInventory, xlibs.zadx_ElbowbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
			EndIf	
		Elseif pickone == 99
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecArmbinder, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecArmbinder, dcumenu.dcur_hisecArmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
		endIf	
	endif
EndFunction


Function dcur_equiprandomshackles(actor a, int theme)
	int pickone = 0
	if !a.WornHasKeyword(libs.zad_DeviousHeavyBondage)		
		pickone = Utility.RandomInt(1,5)		
		if pickone < 3 && (a.WornHasKeyword(libs.zad_DeviousArmCuffs) || a.WornHasKeyword(libs.zad_DeviousCollar) || a.WornHasKeyword(libs.zad_DeviousLegCuffs))
			pickone = Utility.RandomInt(3,5)		
		EndIf
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_PrisonerChains01Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_PrisonerChains01Inventory, xlibs.zadx_HR_PrisonerChains01Rendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
		elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_RustyPrisonerChains01Inventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_RustyPrisonerChains01Inventory, xlibs.zadx_HR_RustyPrisonerChains01Rendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_shackles, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_shackles, dcumenu.dcur_shacklesRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
		elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_IronCuffsFrontInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_IronCuffsFrontInventory, xlibs.zadx_HR_IronCuffsFrontRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_RustyIronCuffsFrontInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_RustyIronCuffsFrontInventory, xlibs.zadx_HR_RustyIronCuffsFrontRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
		endif
	endif		
endfunction

Function dcur_equiprandomyoke(actor a, int theme)
	int pickone = 0
	if !a.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		if theme == set_hisec
			pickone = 99
		else
			pickone = Utility.RandomInt(1,3)
		endif
		if pickone == 3 && a.WornHasKeyWord(libs.zad_DeviousSuit)
			pickone = Utility.RandomInt(1,2)
		EndIf
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_yoke, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_yoke, dcumenu.dcur_yokeRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
		elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_heavyyoke, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_heavyyoke, dcumenu.dcur_heavyyokeRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_BBYokeInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_BBYokeInventory, xlibs.zadx_HR_BBYokeRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)		
		elseif pickone == 99
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecyoke, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecyoke, dcumenu.dcur_hisecyokeRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
		endif
	endif
endfunction
	
bool Function dcur_equiprandomarmbinder(actor a, int theme)	
	int grandtotalweight = dcumenu.armbinderweight + dcumenu.shacklesweight + dcumenu.yokeweight
	bool done = false
	int chance = 0
	int bailout = 0	
	If !a.WornHasKeyword(Libs.zad_DeviousHeavyBondage) 
		if dcumenu.debugenabled
			libs.notify("Equipped an armbinder on " + a.GetDisplayName())
		Endif		
		if theme == set_hisec && dcumenu.hisecuseyoke
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecyoke, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecyoke, dcumenu.dcur_hisecyokeRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
			return true
		endif		
		while !done
			chance = Utility.RandomInt(1, grandtotalweight)		
			if chance < dcumenu.armbinderweight
				dcur_equiprandomleatherarmbinder(a, theme)
				done = true
				return true
			else
				chance = chance - dcumenu.armbinderweight
				if chance < 1 
					chance = 1
				endif
			endIf
			if !done && chance < dcumenu.shacklesweight && theme != set_hisec && !a.WornHasKeyWord(libs.zad_DeviousArmCuffs)
				dcur_equiprandomshackles(a, theme)
				done = true
				return true
			else				
				chance = chance - dcumenu.shacklesweight
				if chance < 1 
					chance = 1
				endif
			endIf				
			if !done && chance < dcumenu.yokeweight
				dcur_equiprandomyoke(a, theme)
				done = true
				return true							
			endif
			if !done
				bailout += 1
				if bailout > 10 
					return false
				endif
			endif
		endwhile
		return true
    EndIf	
	return false
endfunction

bool Function dcur_equiprandomRopeHarness(actor a, int theme)
	armor x = None
	LeveledItem LL
	If !a.WornHasKeyword(Libs.zad_DeviousHarness) && !a.WornHasKeyword(Libs.zad_DeviousCorset)
		int pickone = 0
		If !a.WornHasKeyword(Libs.zad_DeviousBelt) && Utility.RandomInt() < 50		
			pickone = Utility.RandomInt(1,4)
			dcur_equiprandomplugs(a)
			If pickone == 1
				LL = dcur_LL_rope_harness_belt
			Elseif pickone == 2
				LL = dcur_LL_rope_harness_belt_black
			Elseif pickone == 3
				LL = dcur_LL_rope_harness_belt_red
			Elseif pickone == 4
				LL = dcur_LL_rope_harness_belt_white
			EndIf
		Else
			pickone = Utility.RandomInt(1,4)
			If pickone == 1
				LL = dcur_LL_rope_harness
			Elseif pickone == 2
				LL = dcur_LL_rope_harness_black
			Elseif pickone == 3
				LL = dcur_LL_rope_harness_red
			Elseif pickone == 4
				LL = dcur_LL_rope_harness_white
			EndIf
		EndIf
		if !LL
			return false
		EndIf
		int n = LL.GetNumForms()
		if n <= 0
			return false
		EndIf
		n -= 1		
		int rnd = Utility.RandomInt(0, n)
		x = LL.GetNthForm(rnd) As Armor
		if !x
			return false
		EndIf		
		if !dcumenu.useitemsfrominventory
			a.addItem(x)
		EndIf
		libs.LockDevice(a, x)
		return true
	EndIf	
	return false
EndFunction


bool Function dcur_equiprandomharness(actor a, int theme)	
	int grandtotalweight = dcumenu.collarharnessweight + dcumenu.corsetweight	
	int chance = 0	
	If !a.WornHasKeyword(Libs.zad_DeviousHarness) && !a.WornHasKeyword(Libs.zad_DeviousCorset)
		if dcumenu.debugenabled
			libs.notify("Equipped a harness on " + a.GetDisplayName())
		Endif
		if theme == set_hisec
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecHarness, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecHarness, dcumenu.dcur_hisecHarnessRendered, libs.Zad_DeviousHarness, skipevents = false, skipmutex = true)	
			return true
		endif		
		if theme == set_restrictive
			if !dcumenu.useitemsfrominventory
				a.additem(libs.corset, 1, true)
			endif
			libs.equipDevice(a, libs.corset, libs.corsetRendered, libs.Zad_DeviousCorset, skipevents = false, skipmutex = true)	
			return true
		endif				
		chance = Utility.RandomInt(1, grandtotalweight)		
		if chance < dcumenu.collarharnessweight && !a.WornHasKeyword(Libs.zad_DeviousCollar)
			if Utility.RandomInt(0,99) < 30 || a.WornHasKeyword(Libs.zad_DeviousBelt)
				dcur_equiprandomRopeHarness(a, theme)
			else
				dcur_equiprandomcollarharness(a, theme)			
			Endif
			return true
		else
			chance = chance - dcumenu.collarharnessweight		
		endIf
		if dcur_equiprandomcorset(a, theme)			
			return true		
		endIf					
		return true
    EndIf	
	return false
endfunction

Bool Function dcur_equiprandomcorset(actor a, int theme)
	int pickone = 0	
	if !a.WornHasKeyword(Libs.zad_DeviousHarness) && !a.WornHasKeyword(Libs.zad_DeviousCorset)
		if theme == set_rdleather
			pickone = 6
		elseif theme == set_rdebonite
			pickone = 5
		elseif theme == set_wtleather
			pickone = 4
		elseif theme == set_wtebonite
			pickone = 3
		elseif theme == set_ebonite
			pickone = 2		
		else
			pickone = Utility.RandomInt(1, 6)
		endif			
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.corset, 1, true)
			endif
			libs.equipDevice(a, libs.corset, libs.corsetRendered, libs.Zad_DeviousCorset, skipevents = false, skipmutex = true)	
		elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.EbRestrictiveCorset, 1, true)
			endif
			libs.equipDevice(a, xlibs.EbRestrictiveCorset, xlibs.EbRestrictiveCorsetRendered, libs.Zad_DeviousCorset, skipevents = false, skipmutex = true)	
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTErestrictiveCorset, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTErestrictiveCorset, xlibs.WTErestrictiveCorsetRendered, libs.Zad_DeviousCorset, skipevents = false, skipmutex = true)	
		elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTLrestrictiveCorset, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTLrestrictiveCorset, xlibs.WTLrestrictiveCorsetRendered, libs.Zad_DeviousCorset, skipevents = false, skipmutex = true)	
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDErestrictiveCorset, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDErestrictiveCorset, xlibs.RDErestrictiveCorsetRendered, libs.Zad_DeviousCorset, skipevents = false, skipmutex = true)	
		elseif pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDLrestrictiveCorset, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDLrestrictiveCorset, xlibs.RDLrestrictiveCorsetRendered, libs.Zad_DeviousCorset, skipevents = false, skipmutex = true)	
		endif
		return true
	endif
	return false
endfunction

Function dcur_equiprandomcollarharness(actor a, int theme)
	int pickone = 0
	If !a.WornHasKeyword(Libs.zad_DeviousHarness) && !a.WornHasKeyword(Libs.zad_DeviousCorset)
		if theme == set_rdleather
			pickone = 7
		elseif theme == set_rdebonite
			pickone = 6
		elseif theme == set_wtleather
			pickone = 5
		elseif theme == set_wtebonite
			pickone = 4
		elseif theme == set_ebonite
			pickone = 3
		elseif theme == set_leather
			pickone = 8
		elseif theme == set_metal
			if Utility.RandomInt(1,2) == 1
				pickone = 9
			Else
				pickone = 10
			EndIf
		else
			pickone = Utility.RandomInt(3,10)		
		endif		
		if pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.eboniteHarnessBody, 1, true)
			endif
			libs.equipDevice(a, xlibs.eboniteHarnessBody, xlibs.eboniteHarnessBodyRendered, libs.Zad_DeviousHarness, skipevents = false, skipmutex = true)					
		elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.wtEboniteHarnessBody, 1, true)
			endif
			libs.equipDevice(a, xlibs.wtEboniteHarnessBody, xlibs.wtEboniteHarnessBodyRendered, libs.Zad_DeviousHarness, skipevents = false, skipmutex = true)					
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.wtLeatherHarnessBody, 1, true)
			endif
			libs.equipDevice(a, xlibs.wtLeatherHarnessBody, xlibs.wtLeatherHarnessBodyRendered, libs.Zad_DeviousHarness, skipevents = false, skipmutex = true)					
		elseif pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.rdEboniteHarnessBody, 1, true)
			endif
			libs.equipDevice(a, xlibs.rdEboniteHarnessBody, xlibs.rdEboniteHarnessBodyRendered, libs.Zad_DeviousHarness, skipevents = false, skipmutex = true)					
		elseif pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.rdLeatherHarnessBody, 1, true)
			endif
			libs.equipDevice(a, xlibs.rdLeatherHarnessBody, xlibs.rdLeatherHarnessBodyRendered, libs.Zad_DeviousHarness, skipevents = false, skipmutex = true)			
		elseif pickone == 8
			if !dcumenu.useitemsfrominventory
				a.additem(libs.harnessBody, 1, true)
			endif
			libs.equipDevice(a, libs.harnessBody, libs.harnessBodyRendered, libs.Zad_DeviousHarness, skipevents = false, skipmutex = true)	
		elseif pickone == 9
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_ChainHarnessBodyInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_ChainHarnessBodyInventory, xlibs.zadx_HR_ChainHarnessBodyRendered, libs.Zad_DeviousHarness, skipevents = false, skipmutex = true)	
		elseif pickone == 10
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_RustyChainHarnessBodyInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_RustyChainHarnessBodyInventory, xlibs.zadx_HR_RustyChainHarnessBodyRendered, libs.Zad_DeviousHarness, skipevents = false, skipmutex = true)	
		endif		
	endif	  
EndFunction

function dcur_equiprandomslaveboots (actor a, int theme)
	int pickone = 0
	If !a.WornHasKeyword(Libs.zad_DeviousBoots)				
		pickone = Utility.RandomInt(1,8)			
		if theme == set_rubber
			pickone = Utility.RandomInt(2,3)			
		elseif theme == set_leather || theme == set_ebonite
			pickone = 4
		elseif theme == set_rdleather || theme == set_rdebonite
			pickone = 5
		elseif theme == set_wtleather || theme == set_wtebonite
			pickone = 6
		endif
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.Bootslocking, 1, true)
			endif
			libs.equipDevice(a, xlibs.Bootslocking, xlibs.BootslockingRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_rubberBoots, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_rubberBootsSimple, dcumenu.dcur_rubberBootsSimpleRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_zipsuitbootsInventory, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_zipsuitbootsInventory, dcumenu.dcur_zipsuitbootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_SlaveHighHeelsInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_SlaveHighHeelsInventory, xlibs.zadx_SlaveHighHeelsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_SlaveHighHeelsRedInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_SlaveHighHeelsRedInventory, xlibs.zadx_SlaveHighHeelsRedRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		elseif pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_SlaveHighHeelsWhiteInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_SlaveHighHeelsWhiteInventory, xlibs.zadx_SlaveHighHeelsWhiteRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		elseif pickone > 6
			dcur_equiprandomrestrictiveboots(a, theme)
		endif
	endif
endfunction

Function dcur_equiprandomrestrictiveboots(actor a, int theme)
	int pickone = 0
	If !a.WornHasKeyword(Libs.zad_DeviousBoots)		
		if theme == set_restrictive
			pickone = 1
		elseif theme == set_rdleather
			pickone = 6
		elseif theme == set_wtleather
			pickone = 4
		elseif theme == set_rdebonite
			pickone = 5
		elseif theme == set_wtebonite
			pickone = 3
		elseif theme == set_ebonite
			pickone = 2		
		else
			pickone = Utility.RandomInt(1,6)			
		endif	
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.restrictiveBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.restrictiveBoots, xlibs.restrictiveBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)				
		elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.EbRestrictiveBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.EbRestrictiveBoots, xlibs.EbRestrictiveBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTErestrictiveBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTErestrictiveBoots, xlibs.WTErestrictiveBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTLrestrictiveBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTLrestrictiveBoots, xlibs.WTLrestrictiveBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDErestrictiveBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDErestrictiveBoots, xlibs.RDErestrictiveBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		elseif pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDLrestrictiveBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDLrestrictiveBoots, xlibs.RDLrestrictiveBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
		endif
	endif
EndFunction
		
		
Function dcur_equiprandomponyboots(actor a, int theme)
	int pickone = 0
	If !a.WornHasKeyword(Libs.zad_DeviousBoots)		
		if theme == set_rdleather
			pickone = 2
		elseif theme == set_wtleather
			pickone = 3
		elseif theme == set_rdebonite
			pickone = 4
		elseif theme == set_wtebonite
			pickone = 5
		elseif theme == set_ebonite
			pickone = 6
		elseif theme == set_leather
			pickone = 7		
		else
			pickone = Utility.RandomInt(2,7)			
		endif		
		if pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDLeatherPonyBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDLeatherPonyBoots, xlibs.RDLeatherPonyBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)	
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTLeatherPonyBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTLeatherPonyBoots, xlibs.WTLeatherPonyBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)	
		elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDEbonitePonyBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDEbonitePonyBoots, xlibs.RDEbonitePonyBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)	
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTEbonitePonyBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTEbonitePonyBoots, xlibs.WTEbonitePonyBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)	
		elseif pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.EbonitePonyBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.EbonitePonyBoots, xlibs.EbonitePonyBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)
		elseif pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.PonyBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.PonyBoots, xlibs.PonyBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)						
		endif
	endif
EndFunction

bool Function dcur_equiprandomboots(actor a, int theme)
	int grandtotalweight = dcumenu.slavebootsweight + dcumenu.ponybootsweight
	bool done = false
	int chance = 0
	int bailout = 0
	If !a.WornHasKeyword(Libs.zad_DeviousBoots)		
		if dcumenu.debugenabled
			libs.notify("Equipped boots on " + a.GetDisplayName())
		Endif
		if theme == set_hisec
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_hisecBoots, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_hisecBoots, dcumenu.dcur_hisecBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)	
			return true
		endif		
		if theme == set_restrictive
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.restrictiveBoots, 1, true)
			endif
			libs.equipDevice(a, xlibs.restrictiveBoots, xlibs.restrictiveBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
			return true
		endif		
		while !done
			chance = Utility.RandomInt(1, grandtotalweight)		
			if chance < dcumenu.slavebootsweight
				dcur_equiprandomslaveboots(a, theme)
				done = true
				return true
			else
				chance = chance - dcumenu.slavebootsweight
				if chance < 1 
					chance = 1
				endif
			endIf
			if !done && chance < dcumenu.ponybootsweight
				dcur_equiprandomponyboots(a, theme)
				done = true
				return true			
			endIf			
			if !done
				bailout += 1
				if bailout > 10 
					return false
				endif
			endif
		endwhile		
		return true		
	EndIf
	return false
endfunction

bool Function dcur_equiprandomvpiercing(actor a)
int pickone = 0
	; piercing cannot go in while there is a belt being worn
	if a.WornHasKeyword(Libs.zad_DeviousBelt)
		return false
	endif
	If !a.WornHasKeyword(Libs.zad_DeviousPiercingsVaginal)
		pickone = Utility.RandomInt(1,3)			
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.piercingVSoul, 1, true)
			endif
			libs.equipDevice(a, libs.piercingVSoul, libs.piercingVSoulRendered, libs.zad_DeviousPiercingsVaginal, skipevents = false, skipmutex = true)		
		elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.PiercingsCommonSoulVag, 1, true)
			endif
			libs.equipDevice(a, xlibs.PiercingsCommonSoulVag, xlibs.PiercingsCommonSoulVagRendered, libs.zad_DeviousPiercingsVaginal, skipevents = false, skipmutex = true)		
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.PiercingsShockSoulVag, 1, true)
			endif
			libs.equipDevice(a, xlibs.PiercingsShockSoulVag, xlibs.PiercingsShockSoulVagRendered, libs.zad_DeviousPiercingsVaginal, skipevents = false, skipmutex = true)		
		endif
		if dcumenu.debugenabled
			libs.notify("Equipped Vaginal Piercing on " + a.GetDisplayName())
		Endif
	  return true
    EndIf	
	return false
EndFunction

bool Function dcur_equiprandomnpiercing(actor a)
int pickone = 0	
	; piercing cannot go in while there is a bra being worn
	if a.WornHasKeyword(Libs.zad_DeviousBra)
		return false
	endif
	If !a.WornHasKeyword(Libs.zad_DeviousPiercingsNipple)
		; can as well equip the nipple chain collar
		If !a.WornHasKeyword(Libs.zad_DeviousCollar) && (Utility.RandomInt(1,2) == 1)
			pickone = 80
		Else
			pickone = Utility.RandomInt(1,5)			
		EndIf
		if pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(libs.piercingNSoul, 1, true)
			endif
			libs.equipDevice(a, libs.piercingNSoul, libs.piercingNSoulRendered, libs.zad_DeviousPiercingsNipple, skipevents = false, skipmutex = true)		
		elseif pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.PiercingsCommonSoulNips, 1, true)
			endif
			libs.equipDevice(a, xlibs.PiercingsCommonSoulNips, xlibs.PiercingsCommonSoulNipsRendered, libs.zad_DeviousPiercingsNipple, skipevents = false, skipmutex = true)		
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.PiercingsShockSoulNips, 1, true)
			endif
			libs.equipDevice(a, xlibs.PiercingsShockSoulNips, xlibs.PiercingsShockSoulNipsRendered, libs.zad_DeviousPiercingsNipple, skipevents = false, skipmutex = true)	
		elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_NippleClampsInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_NippleClampsInventory, xlibs.zadx_HR_NippleClampsRendered, libs.zad_DeviousPiercingsNipple, skipevents = false, skipmutex = true)	
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_NipplePiercingsInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_NipplePiercingsInventory, xlibs.zadx_HR_NipplePiercingsRendered, libs.zad_DeviousPiercingsNipple, skipevents = false, skipmutex = true)	
		elseif pickone == 80 ; collar/piercing combo
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_HR_NippleChainCollarInventory, 1, true)
			endif
			libs.equipDevice(a, xlibs.zadx_HR_NippleChainCollarInventory, xlibs.zadx_HR_NippleChainCollarRendered, libs.zad_DeviousCollar, skipevents = false, skipmutex = true)	
		endif
		if dcumenu.debugenabled
			libs.notify("Equipped Nipple Piercing on " + a.GetDisplayName())
		Endif
	  return true
    EndIf	
	return false
EndFunction

bool Function dcur_equiprandomgloves(actor a, int theme)
	int pickone = 0	
	If !a.WornHasKeyword(Libs.zad_DeviousGloves)
		if Utility.RandomFloat(0.0, 99.9) < 25.0
			dcur_equiprandombondagemittens(a, theme)
			return true
		Endif			
		if theme == set_restrictive
			pickone = 2
		elseif theme == set_rdleather
			pickone = 7
		elseif theme == set_wtleather
			pickone = 5
		elseif theme == set_rdebonite
			pickone = 6
		elseif theme == set_wtebonite
			pickone = 4
		elseif theme == set_ebonite
			pickone = 3
		elseif theme == set_rubber
			pickone = 1
		else
			If Utility.RandomInt(1, 2) == 1
				pickone = 1
			else
				pickone = Utility.RandomInt(2,7)		
			endif
		endif
		if pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(libs.glovesRestrictive, 1, true)
			endif
			libs.equipDevice(a, libs.glovesRestrictive, libs.glovesRestrictiveRendered, libs.zad_DeviousGloves, skipevents = false, skipmutex = true)		
		elseif pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_rubberGloves, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_rubberGlovesSimple, dcumenu.dcur_rubberGlovesSimpleRendered, libs.zad_DeviousGloves, skipevents = false, skipmutex = true)		
		elseif pickone == 3
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.EbRestrictiveGloves, 1, true)
			endif
			libs.equipDevice(a, xlibs.EbRestrictiveGloves, xlibs.EbRestrictiveGlovesRendered, libs.zad_DeviousGloves, skipevents = false, skipmutex = true)		
		elseif pickone == 4
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTErestrictiveGloves, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTErestrictiveGloves, xlibs.WTErestrictiveGlovesRendered, libs.zad_DeviousGloves, skipevents = false, skipmutex = true)		
		elseif pickone == 5
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.WTLrestrictiveGloves, 1, true)
			endif
			libs.equipDevice(a, xlibs.WTLrestrictiveGloves, xlibs.WTLrestrictiveGlovesRendered, libs.zad_DeviousGloves, skipevents = false, skipmutex = true)		
		elseif pickone == 6
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDErestrictiveGloves, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDErestrictiveGloves, xlibs.RDErestrictiveGlovesRendered, libs.zad_DeviousGloves, skipevents = false, skipmutex = true)		
		elseif pickone == 7
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.RDLrestrictiveGloves, 1, true)
			endif
			libs.equipDevice(a, xlibs.RDLrestrictiveGloves, xlibs.RDLrestrictiveGlovesRendered, libs.zad_DeviousGloves, skipevents = false, skipmutex = true)		
		endif				
		if dcumenu.debugenabled
			libs.notify("Equipped Gloves on " + a.GetDisplayName())
		Endif
	  return true
    EndIf	
	return false
EndFunction

Function dcur_equiprandombondagemittens(actor a, int theme)	
	int pickone = 0	
	If !a.WornHasKeyword(Libs.zad_DeviousGloves)		
		if theme == set_leather
			pickone = 1
		elseif theme == set_rdleather
			pickone = 2
		elseif theme == set_wtleather
			pickone = 3
		Else
			pickone = Utility.RandomInt(1,3)
		EndIf		
		If pickone == 1
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_PawBondageMittensInventory, 1, true)
			endif			
			libs.equipDevice(a, xlibs.zadx_PawBondageMittensInventory, xlibs.zadx_PawBondageMittensRendered, libs.zad_DeviousGloves, skipevents = false, skipmutex = true)					
		ElseIf pickone == 2
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_PawBondageMittensRedInventory, 1, true)
			endif			
			libs.equipDevice(a, xlibs.zadx_PawBondageMittensRedInventory, xlibs.zadx_PawBondageMittensRedRendered, libs.zad_DeviousGloves, skipevents = false, skipmutex = true)		
		ElseIf pickone == 3			
			if !dcumenu.useitemsfrominventory
				a.additem(xlibs.zadx_PawBondageMittensWhiteInventory, 1, true)
			endif			
			libs.equipDevice(a, xlibs.zadx_PawBondageMittensWhiteInventory, xlibs.zadx_PawBondageMittensWhiteRendered, libs.zad_DeviousGloves, skipevents = false, skipmutex = true)		
		EndIf
		if dcumenu.debugenabled
			libs.notify("Equipped Bondage Mittens on " + a.GetDisplayName())
		Endif
	EndIf
EndFunction		

bool Function dcur_equiprandomsuit_any(actor a)
	armor x = None
	LeveledItem LL
	Bool DoneAnything = False
	If !a.WornHasKeyword(Libs.zad_DeviousSuit)
		If !a.WornHasKeyword(Libs.zad_DeviousHeavyBondage)		
			LL = dcur_LL_suits_all
		Else		
			If Utility.RandomInt(0,99) < 20
				; there is only a handful of formal dresses in the list, and they'd be super rare if not for giving them a higher chance.
				LL = dcur_LL_formaldress
			else
				LL = dcur_LL_suits_nosj
			Endif
		EndIf
		if LL
			int n = LL.GetNumForms()
			if n > 0				
				n -= 1		
				int rnd = Utility.RandomInt(0, n)
				x = LL.GetNthForm(rnd) As Armor								
				if !dcumenu.useitemsfrominventory
					a.addItem(x, 1, true)
				EndIf
				libs.LockDevice(a, x)
				DoneAnything = True
			EndIf
		EndIf	
	EndIf
	If DoneAnything
		return true
	EndIf
	return false
EndFunction

Function dcur_equiprandomhobbledress(actor a, int theme)	
	armor x = None
	LeveledItem LL
	If !a.WornHasKeyword(Libs.zad_DeviousSuit)		
		LL = dcur_LL_hobbledress
		if LL
			int n = LL.GetNumForms()
			if n > 0				
				n -= 1		
				int rnd = Utility.RandomInt(0, n)
				x = LL.GetNthForm(rnd) As Armor								
				if !dcumenu.useitemsfrominventory
					a.addItem(x, 1, true)
				EndIf
				libs.LockDevice(a, x)
			EndIf			
		EndIf
	EndIf	
EndFunction	

Function dcur_equiprandomstraitjacket(actor a, int theme)	
	armor x = None
	LeveledItem LL
	If !a.WornHasKeyword(Libs.zad_DeviousSuit)		
		LL = dcur_LL_straitjacket
		if LL
			int n = LL.GetNumForms()
			if n > 0				
				n -= 1		
				int rnd = Utility.RandomInt(0, n)
				x = LL.GetNthForm(rnd) As Armor				
				if !dcumenu.useitemsfrominventory
					a.addItem(x, 1, true)
				EndIf
				libs.LockDevice(a, x)
			EndIf			
		EndIf
	EndIf	
EndFunction

Function dcur_equiprandomcatsuit(actor a, int theme)	
	armor x = None
	LeveledItem LL
	If !a.WornHasKeyword(Libs.zad_DeviousSuit)		
		LL = dcur_LL_catsuit
		if LL
			int n = LL.GetNumForms()
			if n > 0				
				n -= 1		
				int rnd = Utility.RandomInt(0, n)
				x = LL.GetNthForm(rnd) As Armor								
				if !dcumenu.useitemsfrominventory
					a.addItem(x, 1, true)
				EndIf
				libs.LockDevice(a, x)
			EndIf			
		EndIf
	EndIf	
EndFunction

bool Function dcur_equiprandomSuit(actor a, int theme)
	Float grandtotalweight = dcumenu.catsuitweight + dcumenu.hobbledressweight + dcumenu.straitjacketweight	
	Float chance = 0.0	
	If a.WornHasKeyword(Libs.zad_DeviousHeavyBondage)
		grandtotalweight -= dcumenu.straitjacketweight
	EndIf
	If !a.WornHasKeyword(Libs.zad_DeviousSuit)				
		chance = Utility.RandomFloat(1, grandtotalweight)		
		if chance < dcumenu.catsuitweight
			dcur_equiprandomcatsuit(a, theme)						
			return true
		else
			chance = chance - dcumenu.catsuitweight				
		EndIf
		if chance < dcumenu.hobbledressweight
			dcur_equiprandomhobbledress(a, theme)			
			return true			
		else
			chance = chance - dcumenu.hobbledressweight				
		endIf
		if chance < dcumenu.straitjacketweight
			dcur_equiprandomstraitjacket(a, theme)				
			return true			
		EndIf
		return true		
	EndIf
	return false	
EndFunction

bool Function dcur_equiprandomhood(actor a)
	If !a.WornHasKeyword(Libs.zad_DeviousHood) 
		if !a.WornHasKeyword(Libs.zad_DeviousBlindfold) && dcumenu.useBlindfold && !a.WornHasKeyword(Libs.zad_DeviousGag) && dcumenu.useGag
			int pickone = Utility.RandomInt(1,2)
			If pickone == 1			
				if !dcumenu.useitemsfrominventory
					a.additem(dcumenu.dcur_rubberHoodSimple, 1, true)
				endif
				libs.equipDevice(a, dcumenu.dcur_rubberHoodSimple, dcumenu.dcur_rubberHoodSimpleRendered, libs.zad_DeviousHood, skipevents = false, skipmutex = true)		
			Else
				if !dcumenu.useitemsfrominventory
					a.additem(dcumenu.dcur_balloonhoodblacksimple, 1, true)
				endif
				libs.equipDevice(a, dcumenu.dcur_balloonhoodblacksimple, dcumenu.dcur_balloonhoodblacksimpleRendered, libs.zad_DeviousHood, skipevents = false, skipmutex = true)		
			Endif
			if dcumenu.debugenabled
				libs.notify("Equipped Hood on " + a.GetDisplayName())
			Endif
			return true
		endif
		if !a.WornHasKeyword(Libs.zad_DeviousGag) && dcumenu.useGag
			if !dcumenu.useitemsfrominventory
				a.additem(dcumenu.dcur_rubberHoodOpenEyes, 1, true)
			endif
			libs.equipDevice(a, dcumenu.dcur_rubberHoodOpenEyes, dcumenu.dcur_rubberHoodOpenEyesRendered, libs.zad_DeviousHood, skipevents = false, skipmutex = true)		
			if dcumenu.debugenabled
				libs.notify("Equipped Hood on " + a.GetDisplayName())
			Endif
			return true
		endif
    EndIf	
	return false
EndFunction

Function processalloweditemlist()
	dcumenu.dcur_allowedDDitemlist.Revert()
	If dcumenu.useArmbinder
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousHeavyBondage)		
	Endif
	If dcumenu.useBlindfold
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousBlindfold)
	Endif
	If dcumenu.usehoods
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousHood)
	Endif
	If dcumenu.useGag
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousGag)
	Endif
	If dcumenu.useBra
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousBra)
	Endif
	If dcumenu.useBelt
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousBelt)
	Endif	
	If dcumenu.useBoots
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousBoots)
	Endif
	If dcumenu.useSlaveHarness
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousHarness)
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousCorset)
	Endif
	If dcumenu.usesuits
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousSuit)
	Endif
	If dcumenu.useVPiercing
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousPiercingsVaginal)
	Endif
	If dcumenu.useNPiercing
		dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousPiercingsNipple)
	Endif
	dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousArmCuffs)
	dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousLegCuffs)
	dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousCollar)
	dcumenu.dcur_allowedDDitemlist.addForm(libs.zad_DeviousGloves)
EndFunction

Keyword Function dcur_EquipRandomItem(actor a, int theme)
	int i = 0
	KeyWord kw
	if dcumenu.dcur_allowedDDitemlist.GetSize() == 0
		processalloweditemlist()
	Endif
	i = dcumenu.dcur_devicekeywords.GetSize() - 1
	dcumenu.dcur_freeDDslotslist.Revert()
	While i >= 0
		kw = dcumenu.dcur_devicekeywords.GetAt(i) As KeyWord
		If !a.WornHasKeyword(kw) && dcumenu.dcur_allowedDDitemlist.HasForm(kw) && !(kw == libs.zad_DeviousHeavyBondage && dcumenu.mercyfuldungeons && isInDungeon())
			dcumenu.dcur_freeDDslotslist.AddForm(kw)
		EndIf
		i -= 1
	EndWhile
	if dcumenu.dcur_freeDDslotslist.GetSize() == 0
		return None
	Endif
	i = Utility.RandomInt(0, dcumenu.dcur_freeDDslotslist.GetSize() - 1)
	kw = dcumenu.dcur_freeDDslotslist.GetAt(i) As Keyword
	if kw == libs.zad_DeviousBelt
		dcur_equiprandombelt(a, theme)
	elseif kw == libs.zad_DeviousBra
		dcur_equiprandombra(a, theme)
	elseif kw == libs.zad_DeviousGag
		dcur_equiprandomgag(a, theme)
	elseif kw == libs.zad_DeviousBlindfold
		dcur_equiprandomblindfold(a, theme)
	elseif kw == libs.zad_DeviousHeavyBondage
		dcur_equiprandomarmbinder(a, theme)
	elseif kw == libs.zad_DeviousLegCuffs
		dcur_equiprandomlegcuffs(a, theme)
	elseif kw == libs.zad_DeviousArmCuffs
		dcur_equiprandomarmcuffs(a, theme)
	elseif kw == libs.zad_DeviousCollar
		dcur_equiprandomcollar(a, theme)
	elseif kw == libs.zad_DeviousPiercingsVaginal
		dcur_equiprandomvpiercing(a)
	elseif kw == libs.zad_DeviousPiercingsNipple
		dcur_equiprandomnpiercing(a)
	elseif kw == libs.zad_DeviousHarness
		dcur_equiprandomharness(a, theme)
	elseif kw == libs.zad_DeviousBoots
		dcur_equiprandomboots(a, theme)
	elseif kw == libs.zad_DeviousGloves
		dcur_equiprandomgloves(a, theme)
	elseif kw == libs.zad_DeviousSuit
		dcur_equiprandomsuit(a, theme)
	elseif kw == libs.zad_DeviousHood
		dcur_equiprandomhood(a)
	Endif
	return kw
EndFunction

int Function getDDitemcount(actor a)
int DDcount = 0
  If a.WornHasKeyword(Libs.zad_DeviousBelt)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousBra)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_Deviousgag)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousBoots)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousHarness)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousArmCuffs)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousLegCuffs)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousCollar)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousBlindfold)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousHeavyBondage)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousPiercingsVaginal)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousPiercingsNipple)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousSuit)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousCorset)
    DDcount = DDcount + 1
  EndIf  
  If a.WornHasKeyword(Libs.zad_DeviousHood)
    DDcount = DDcount + 1
  EndIf
  If a.WornHasKeyword(Libs.zad_DeviousGloves)
    DDcount = DDcount + 1
  EndIf
  return DDcount
endfunction

Function MME_setDevices()
	string MilkMod = "MilkModNEW.esp"
	; Harmless, just adds some arousal.
	int maleCumId = 0x0004CA60
	int femaleCumId = 0x0004FAED
	; Risk of breast row
	int breastGrowId = 0x0007372B
	; Lactacid!
	int lactacidId = 0x000343F2
	; Added these two TASTY milks for lactacid effect and reasonable spread of benefits from only two milks.
	; Adding more milks would mean more lactacid dosing. Do we want more milks?
	int nordMilkId = 0x000183FD
	int altmerMilkId = 0x00017911	
	int BosmerMilkId = 0x000183F5
	int RedguardMilkId = 0x00017921
	int ImperialMilkId = 0x0001840F
	
	MME_MaleCum = Game.GetFormFromFile(maleCumId, MilkMod) As Potion
	MME_FemaleCum = Game.GetFormFromFile(femaleCumId, MilkMod) As Potion
	MME_BreastGrow = Game.GetFormFromFile(breastGrowId, MilkMod) As Potion
	MME_Lactacid = Game.GetFormFromFile(lactacidId, MilkMod) As Potion
	MME_NordMilk = Game.GetFormFromFile(nordMilkId, MilkMod) As Potion
	MME_AltmerMilk = Game.GetFormFromFile(altmerMilkId, MilkMod) As Potion
	MME_BosmerMilk = Game.GetFormFromFile(BosmerMilkId, MilkMod) As Potion
	MME_RedguardMilk = Game.GetFormFromFile(RedguardMilkId, MilkMod) As Potion
	MME_ImperialMilk = Game.GetFormFromFile(ImperialMilkId, MilkMod) As Potion
EndFunction

function drugher(actor a, bool fx = false)
	int pickone = 0
	if fx		
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")		
		a.placeatme(dcumenu.dcur_gascloud)
		Utility.Wait(1)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")
	endif
	if !a.IsInCombat() && Utility.RandomInt(0,1) == 1
		sfl.HaveSexNow()
		Return
	Endif
	
	if hasMME()
		; super-rare chance to get force drugged with lactacid.
		If !isInDungeon() && Utility.RandomFloat() < 1.5
			a.equipItem(MME_Lactacid, true, false)
			return
		EndIf
	EndIf

	if !hasSkoomaWhore() && !hasMME()
        pickone = 0
    elseIf hasSkoomaWhore() && !hasMME()
        pickone = Utility.RandomInt(0, 13)
    elseIf !hasSkoomaWhore() && hasMME()
        pickone = Utility.RandomInt(14, 21)
    elseIf hasSkoomaWhore() && hasMME()
        pickone = Utility.RandomInt(0, 21)
    endIf
    if pickone == 0
        a.equipItem(dcumenu.skooma, true, false)
    elseIf pickone == 1 
        a.equipItem(dci.RoseOfAzura, true, false)
    elseIf pickone == 2 
        a.equipItem(dci.BoethiasDeception, true, false)
    elseIf pickone == 3 
        a.equipItem(dci.ThiefsDelight, true, false)
    elseIf pickone == 4 
        a.equipItem(dci.TheSecondBrain, true, false)
    elseIf pickone == 5
        a.equipItem(dci.ElendrsFlask, true, false)
	elseif pickone == 6
		a.equipItem(dci.TheContortionist, true, false)
	elseif pickone == 7
		a.equipItem(dci.MorgulsTouch, true, false)
	elseif pickone == 8
		a.equipItem(dci.ToughFlesh, true, false)
	elseif pickone == 9
		a.equipItem(dci.OcatosPallatine, true, false)
	elseif pickone == 10
		a.equipItem(dci.TheArchMage, true, false)
	elseif pickone == 11
		a.equipItem(dci.LeafSkooma, true, false)
	elseif pickone == 12
		a.equipItem(dci.DDSkooma, true, false)
	elseif pickone == 13
		a.equipItem(dcumenu.skooma, true, false)
	elseif pickone == 14
		a.equipItem(MME_AltmerMilk, true, false)
	elseif pickone == 15
		a.equipItem(MME_NordMilk, true, false)
	elseif pickone == 16
		a.equipItem(MME_MaleCum, true, false)
	elseif pickone == 17
		a.equipItem(MME_FemaleCum, true, false)
	elseif pickone == 18
		a.equipItem(MME_BreastGrow, true, false)
	elseif pickone == 19
		a.equipItem(MME_BosmerMilk, true, false)
	elseif pickone == 20
		a.equipItem(MME_RedguardMilk, true, false)
	elseif pickone == 21
		a.equipItem(MME_ImperialMilk, true, false)
	endif
endFunction

bool function checknaked()
	If dcur_princessityshatmode.GetValueInt() == 1
		if libs.playerref.wornhaskeyword(Keyword.GetKeyword("ClothingBody")) || libs.playerref.wornhaskeyword(Keyword.GetKeyword("ArmorCuirass")) || (libs.playerref.wornhaskeyword(dglib.ArmorJewelry) && !dcumenu.slavecollarjewelleryallowed)
			return false
		endIf
	Else
		if libs.playerref.wornhaskeyword(dglib.ArmorBoots) || libs.playerref.wornhaskeyword(dglib.ArmorClothing) || libs.playerref.wornhaskeyword(dglib.ArmorCuirass) || libs.playerref.wornhaskeyword(dglib.ArmorDarkBrotherhood) || libs.playerref.wornhaskeyword(dglib.ArmorGauntlets) || libs.playerref.wornhaskeyword(dglib.ArmorHeavy) || libs.playerref.wornhaskeyword(dglib.ArmorHelmet) || libs.playerref.wornhaskeyword(dglib.ArmorLight) || (libs.playerref.wornhaskeyword(dglib.ArmorJewelry) && !dcumenu.slavecollarjewelleryallowed) 
			return false
		endIf
	Endif
	return true
endfunction

bool function checkunarmed()
	if libs.playerRef.GetEquippedWeapon(true) || libs.playerRef.GetEquippedWeapon(false) || libs.playerRef.getEquippedSpell(0) || libs.playerRef.getEquippedSpell(1)
		return false
	endif
	return true
EndFunction

Bool Function isRestrained(actor a)
	If a.WornHasKeyword(libs.zad_DeviousHeavyBondage) || a.WornHasKeyword(libs.zad_DeviousBlindfold) || (a.WornHasKeyword(libs.zad_DeviousBoots) && dcumenu.sexBootsMakeHelpless)
		return true
	endif
	return false
EndFunction

bool Function hasFollowers()		
	If dcur_followerlist.GetSize() > 0
		dcur_hasfollowers.SetValue(1)
		return true
	EndIf
	dcur_hasfollowers.SetValue(0)
	Return true
EndFunction

bool function actorhaskeys(Actor a)
	int reskeys = a.GetItemCount(libs.restraintsKey)
	int chaskeys = a.GetItemCount(libs.ChastityKey)
	int ptools = a.GetItemCount(libs.PiercingKey)
	int handreskeys = a.GetItemCount(dcumenu.dcur_handrestraintskey)
	int headreskeys = a.GetItemCount(dcumenu.dcur_headrestraintskey)
	int bodyreskeys = a.GetItemCount(dcumenu.dcur_bodyrestraintskey)
	int legreskeys = a.GetItemCount(dcumenu.dcur_legrestraintskey)		
	If (reskeys + chaskeys + ptools + handreskeys + bodyreskeys + headreskeys + legreskeys) > 0
		return true
	EndIf
	Return false
EndFunction

bool function grouphasspecifickeys(key key1, key key2 = None)
	if libs.playerRef.GetItemCount(key1) > 0 || (key2 != None && libs.playerRef.GetItemCount(key2) > 0)
		return true
	else		
		Actor Follower		
		int i = (dcur_followerlist.GetSize() - 1) 	
		while i >= 0
			Follower = dcur_followerlist.GetAt(i) As Actor		
			If Follower
				if Follower.GetItemCount(key1) > 0 || (key2 != None && Follower.GetItemCount(key2) > 0)
					return true	
				endif
			endif	
			i -= 1
		EndWhile
	endif
	return false
endfunction

bool function grouphaskeys()
	if libs.playerRef.GetItemCount(libs.restraintsKey) > 0 || libs.playerRef.GetItemCount(libs.chastityKey) > 0 || libs.playerRef.GetItemCount(libs.piercingKey) > 0
		if dcumenu.debugenabled
			libs.notify(libs.playerRef.GetDisplayName() + " has keys.")
		Endif
		return true
	else
		Actor Follower		
		int i = (dcur_followerlist.GetSize() - 1) 	
		while i >= 0
			Follower = dcur_followerlist.GetAt(i) As Actor		
			if Follower && Follower.GetItemCount(libs.restraintsKey) > 0 || Follower.GetItemCount(libs.chastityKey) > 0 || Follower.GetItemCount(libs.piercingKey) > 0
				if dcumenu.debugenabled
					libs.notify(Follower.GetDisplayName() + " has keys.")
				Endif
				return true	
			endif
			i -= 1
		EndWhile
	endif
	return false
endfunction

Function checkchastity()
	if isWearingLockedChastity(libs.playerref) && (!dcumenu.chastitygearneedsgag || IsWearingLockedGag(libs.playerref))
		if dcur_iswearinglockedgear.GetValueInt() == 0
			libs.notify("You are locked in full chastity gear!")
		endif
		dcur_iswearinglockedgear.SetValueInt(1)
	else
		if dcur_iswearinglockedgear.GetValueInt() == 1
			libs.notify("You are no longer locked in full chastity gear!")
		endif
		dcur_iswearinglockedgear.SetValueInt(0)
	endif
EndFunction

bool Function isWearingLockedChastity(actor a)
	; returns true only if the player is wearing full chastity and nobody in the party is carrying any fitting keys
	if a.WornHasKeyword(libs.zad_DeviousBra) && a.WornHasKeyword(libs.zad_DeviousBelt) && !grouphasspecifickeys(libs.GetDeviceKey(libs.GetWornDevice(a,libs.zad_DeviousBra)), libs.GetDeviceKey(libs.GetWornDevice(a,libs.zad_DeviousBelt))) || a.IsEquipped(dcumenu.dcur_MaidensShieldRendered)
		return true
	endif
	return false
endfunction

Bool Function IsWearingLockedGag(Actor akActor)
	if akActor.WornHasKeyword(libs.zad_DeviousGagPanel) && akActor.GetFactionRank(dcumenu.zadGagPanelFaction) != 1			
		return false	
	elseif akActor.WornHasKeyword(libs.zad_PermitOral)		
		return false
	elseif libs.IsWearingDevice(akActor, dcumenu.dcur_slavegagRendered, libs.zad_DeviousGag) == 1 && dcumenu.dcur_slavegagplugged.GetValueInt() != 1		
		return false
	elseif !akActor.WornHasKeyword(libs.zad_DeviousGag) 		
		return false
	elseif grouphasspecifickeys(libs.GetDeviceKey(libs.GetWornDevice(akActor,libs.zad_DeviousGag)))
		return false
	endif	
	return true	
EndFunction

bool function validate()	
	if Game.GetModByName("NonEssentialChildren.esp") != 255
		return false
	endif
	if Game.GetModByName("RCOTS-RACES.esm") != 255
		return false
	endif		
	if Game.GetModByName("Children Fight Back.esp") != 255
		return false
	endif	
	; check if the player herself is problematic
	If !SexLab.ActorLib.CanAnimate(libs.playerref)	
		return false
	Endif	
	return true
endfunction

Function scanfollowers()
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Scanning for followers")
	endif
	
	Actor currenttest	
	dcur_followerlistold.revert()
	i = dcur_followerlist.GetSize() - 1
	While i >= 0
		currenttest = (dcur_followerlist.GetAt(i) As Actor)
		If currenttest
			dcur_followerlistold.addform(currenttest)
		EndIf
		i -= 1
	EndWhile 
	
	dcur_followerlist.revert()
	
	Cell c = libs.playerref.GetParentCell()		
	Int NumRefs = c.GetNumRefs(43)
	int i = 0
	While (NumRefs > 0) && i < 5
		NumRefs -= 1
		currenttest = c.GetNthRef(NumRefs, 43) as Actor
		If isValidFollower(currenttest)
			if dcumenu.debuglogenabled
				debug.trace("[DCUR] - Follower found: " + currenttest.GetLeveledActorBase().GetName())
			endif
			dcur_followerlist.addform(currenttest)
			i += 1
		endif		
	EndWhile	
	
	;sanity check for followers the scan didn't find. Area scans are unreliable!!!
	i = dcur_followerlistold.GetSize() - 1
	While i >= 0
		currenttest = (dcur_followerlistold.GetAt(i) As Actor)
		If !dcur_followerlist.Hasform(currenttest) && isValidFollower(currenttest) && (c == currenttest.GetParentCell())
			if dcumenu.debuglogenabled
				debug.trace("[DCUR] - Follower found: " + currenttest.GetLeveledActorBase().GetName())
			endif
			dcur_followerlist.addform(currenttest)
		EndIf
		i -= 1
	EndWhile 	
		
EndFunction

Actor function getnextclosestsexpartner(Actor Akspeaker) 
	Actor currenttest
	Actor Rapist = None
	Cell c = libs.playerref.GetParentCell()
	Int NumRefs = c.GetNumRefs(43)
	While (NumRefs > 0) 
		NumRefs -= 1
		currenttest = c.GetNthRef(NumRefs, 43) as Actor			
		If !currenttest.IsDisabled() && !currenttest.IsDead() && !currenttest.IsHostileToActor(libs.playerref) && ((currenttest.GetActorBase().GetSex() == 0 && dcumenu.RapistGender != gender_female) || (currenttest.GetActorBase().GetSex() == 1 && dcumenu.RapistGender != gender_male)) && currenttest.HasKeyword(dcumenu.ActorTypeNPC) && !ActorIsChild(currenttest) && !currenttest.IsGhost() && currenttest.GetActorBase().GetRace() != dcumenu.ManakinRace && !IsInEvilFaction(currenttest) && currenttest != Akspeaker && currenttest != libs.playerref
			if Rapist == none || currenttest.GetDistance(libs.playerref) < Rapist.GetDistance(libs.playerref)
				Rapist = currenttest
			endIf			
		endif		
	endwhile	
	if Rapist != None
		Return Rapist
	else	
		Return None
	endif
endfunction

Bool Function progressivebondage(actor a, int theme, int itemstoadd = 1)
	; Remove clothing unless disabled via MCM. Devious devices are so much nicer to look at on an undressed character! ;)
	If dcumenu.enableundress
		if !dcumenu.useflashbanganimation
			strip(a, true)			
		else
			strip(a, false)			
		endif
	EndIf
	int i = 1
	while i <= itemstoadd
		;debug.trace("Equipping an item on " + a.GetLeveledActorBase().GetName())
		if !a.WornHasKeyword(libs.zad_DeviousLegCuffs)			
			dcur_equiprandomlegcuffs(a, theme)		
		elseif !a.WornHasKeyword(libs.zad_DeviousArmCuffs)
			dcur_equiprandomarmcuffs(a, theme)						
		elseif !a.WornHasKeyword(libs.zad_DeviousCollar)
			dcur_equiprandomcollar(a, theme)					
		elseif !a.WornHasKeyword(libs.zad_DeviousPiercingsVaginal) && dcumenu.useVPiercing && !a.WornHasKeyword(libs.zad_DeviousBelt)
			dcur_equiprandomvpiercing(a)	
		elseif !a.WornHasKeyword(libs.zad_DeviousPiercingsNipple) &&  dcumenu.useNPiercing && !a.WornHasKeyword(libs.zad_DeviousBra)
			dcur_equiprandomnpiercing(a)	
		elseif !a.WornHasKeyword(libs.zad_DeviousBra) &&  dcumenu.useBra
			dcur_equiprandombra(a, theme)						
		elseif !a.WornHasKeyword(libs.zad_DeviousBelt) &&  dcumenu.useBelt
			dcur_equiprandombelt(a, theme)			
		elseif !a.WornHasKeyword(libs.zad_DeviousCorset) && !a.WornHasKeyword(libs.zad_DeviousHarness) && dcumenu.corsetweight > 0.0
			dcur_equiprandomcorset(a, theme)				
		elseif !a.WornHasKeyword(libs.zad_DeviousGloves)
			dcur_equiprandomgloves(a, theme)					
		elseif !a.WornHasKeyword(libs.zad_DeviousSuit) && dcumenu.usesuits
			dcur_equiprandomsuit(a, theme)						
		elseif !a.WornHasKeyword(libs.zad_DeviousBoots) &&  dcumenu.useBoots
			dcur_equiprandomboots(a, theme) 			
		elseif !a.WornHasKeyword(libs.zad_DeviousGag) && dcumenu.useGag
			dcur_equiprandomgag(a, theme) 			
		elseif !a.WornHasKeyword(libs.zad_DeviousBlindfold) && dcumenu.useBlindfold
			dcur_equiprandomblindfold(a, theme)			
		elseif !a.WornHasKeyword(libs.zad_DeviousHeavyBondage) && dcumenu.useArmbinder && (a == libs.PlayerRef || dcumenu.allowarmbindersfollowers) && !(dcumenu.mercyfuldungeons && isInDungeon())
			dcur_equiprandomarmbinder(a, theme)	
		elseif i == 1
			; didn't do anything!
			return false
		endif
		; DCL9
		;Utility.Wait(1.5)
		i += 1
	endwhile    	
	return true
EndFunction

Function equipfullset(actor a, int theme)
	; harnesses and corsets conflict, so it's max items minus one
	progressivebondage(a, theme, maxDDslotsXlib - 1)
EndFunction


int function canequipitems(actor a)
	return maxDDslotsXlib - getDDitemcount(a)		
endfunction

function itemequip(actor a)
	int i = 0	
	int equipitems = 0
	int freeslots = canequipitems(a)
	; check if the character can even equip more DD items
	if freeslots == 0
		return
	endif
	If dcumenu.enableundress ;&& !dcur_origintype == is_trap
		if !dcumenu.useflashbanganimation ;|| !dcumenu.flashbangnodroppingitems
			strip(a, true)
		else
			strip(a, false)			
		endif
	endIf	
	if dcumenu.minnumEquippedItems > dcumenu.numEquippedItems
		equipitems = dcumenu.numEquippedItems
	else
		equipitems = Utility.RandomInt(dcumenu.minnumEquippedItems, dcumenu.numEquippedItems)
	endif
	;don't try to equip more items than the character can possibly equip. The actual number of available slots might even be lower, because the player might have disabled some devices in MCM, but that's what the bailout safety in equipRandomItem() is there for. Adding a lot of code to accommodate for all possible situations is probably going to waste even more CPU time than sometimes calling equipRandomItem 1-2 times more often than needed...
	if equipitems > freeslots
		equipitems = freeslots
	endif	
	while i < equipitems
		if a == libs.playerref 
			dcur_equipRandomItem(a, dcumenu.equiptheme)		
		else
			dcur_equipRandomItem(a, dcumenu.equipthemefollower)		
		endIf
		i += 1
		; try and fix a duplication issue by adding a short break between adding items.
		; DCL9
		; Utility.Wait(0.5)
	endwhile
endfunction

function strip(actor a, bool animate)
	Spell spl
	Weapon weap
	Armor sh
	Ammo amm
	Form frm		
	while hasAnyWeaponEquipped(a)
		stripweapons(a)
	EndWhile
	frm = a.GetWornForm(0x00001000) ; circlet
	if frm && !frm.HasKeyWord(SexLabNoStrip)
        a.unequipItem(frm, abSilent = true)
    endif
    frm = a.GetWornForm(0x00000020) ; amulet
    if frm && !frm.HasKeyWord(SexLabNoStrip)
        a.unequipItem(frm, abSilent = true)
    endif
	; unequip torches
	if a.GetEquippedItemType(0) == 11		
		a.unequipItem(dcumenu.torch01, abSilent = true)
	endif
	; unequip quivers
	int n = dcumenu.dcur_ammolist.GetSize()
	while n > 0	
		n -= 1
		amm = dcumenu.dcur_ammolist.GetAt(n) As Ammo
		if a.IsEquipped(amm)
			a.unequipItem(amm, abSilent = true)
		endif		
	endwhile		
	; Temporarily don't use SexLab strip as it's borked in 1.60.
	; int i = 31	
	; while i >= 0
		; frm = a.GetWornForm(Armor.GetMaskForSlot(i + 30))
		; if frm && !frm.HasKeyWord(SexLabNoStrip)
			; If a.IsEquipped(frm)
				; a.UnequipItem(frm, false, true)	
			; Endif
		; endIf
		; i -= 1
	; endWhile	
	If a.WornHasKeyWord(libs.zad_DeviousHeavyBondage)
		animate = false
	EndIf
	libs.SexLab.StripActor(a, doanimate = animate, leadIn = false) 	
EndFunction

bool function serialstrip(actor a)
	Int Handle = 0
	if dcumenu.installed_SerialStrip	
		Handle = ModEvent.Create("SerialStripStart")
	endif
	If !Handle
		return false
	Endif
	dropweapons(a)
	ModEvent.PushForm(Handle, a)
    ModEvent.PushForm(Handle, a)
    ; override and exception lists
    ModEvent.PushString(Handle, "")
    ModEvent.PushString(Handle, "")
    ModEvent.PushBool(Handle, True)	
	ModEvent.Send(Handle)		
	return true
EndFunction

bool function hasAnyWeaponEquipped(actor a)
	if !a.GetEquippedWeapon(true) && !a.GetEquippedWeapon(false) && !a.getEquippedSpell(1) && !a.getEquippedSpell(0) 
		return false
	endif
	return true
EndFunction

function dropweapons(actor a, bool unequiponly = true)	
	int[] drops = new int[2]
	drops[0] = 0
	drops[1] = 0
	int i = 2	
	Spell spl
	Weapon weap
	Armor sh
	While i > 0
		i -= 1
		if i == 0
			Utility.Wait(1.0) 
		EndIf	
		spl = a.getEquippedSpell(1)
		if spl
			a.unequipSpell(spl, 1)
			drops[1] = drops[1] + 1
		endIf			
		weap = a.GetEquippedWeapon(true)
		if weap && a.IsWeaponDrawn()
			if unequiponly
				a.unequipItem(weap, false, true)			
			else
				a.dropObject(weap)			
			endif
			drops[0] = drops[0] + 1
		endIf			
		sh = a.GetEquippedShield()
		if sh && a.IsWeaponDrawn()
			if unequiponly
				a.unequipItem(sh, false, true)			
			else
				a.dropObject(sh)			
			endif			
			drops[0] = drops[0] + 1
		endIf				
		spl = a.getEquippedSpell(0)
		if spl 
			a.unequipSpell(spl, 0)
			drops[1] = drops[1] + 1
		endIf
		weap = a.GetEquippedWeapon(false)
		if weap && a.IsWeaponDrawn()
			if unequiponly
				a.unequipItem(weap, false, true)			
			else
				a.dropObject(weap)			
			endif
			drops[0] = drops[0] + 1
		endIf		
	EndWhile
endfunction

function stripweapons(actor a, bool unequiponly = true)		
	int i = 2	
	Spell spl
	Weapon weap
	Armor sh
	While i > 0
		i -= 1
		if i == 0
			;Utility.Wait(1.0) 
		EndIf	
		spl = a.getEquippedSpell(1)
		if spl
			a.unequipSpell(spl, 1)			
		endIf			
		weap = a.GetEquippedWeapon(true)
		if weap 
			a.unequipItem(weap, false, true)									
		endIf			
		sh = a.GetEquippedShield()
		if sh 
			a.unequipItem(sh, false, true)									
		endIf				
		spl = a.getEquippedSpell(0)
		if spl 
			a.unequipSpell(spl, 0)			
		endIf
		weap = a.GetEquippedWeapon(false)
		if weap 			
			a.unequipItem(weap, false, true)									
		endIf		
	EndWhile
endfunction

function collar_punish()
	game.ForceThirdPerson()
	Utility.Wait(0.1)
	float currentHealth = libs.playerref.GetActorValue("Health") ; / libs.playerref.GetActorValuePercentage("Health")
	float maxHealth = libs.playerref.GetBaseActorValue("Health") ; / libs.playerref.GetActorValuePercentage("Health")
	if libs.playerref.WornHasKeyWord(libs.zad_DeviousCollar)
		libs.Notify("You are punished by the collar!")
	Else
		libs.Notify("You are punished by your bondage gear!")
	EndIf
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")		
	dcumenu.dcur_electricblastspell.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
	dropweapons(libs.playerref)	
	libs.PlayerRef.DamageActorValue("Health", maxHealth * 0.6)	
	Utility.Wait(2.0)
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")	
endfunction

bool function IsCustomFollower(actor a)
	int i = customfollowerlist.Length
	While (i > 0)
		i -= 1
		if !ActorIsChild(a) && a.GetDisplayName() == customfollowerlist[i]
			a.AddToFaction(dcumenu.currentfollowerfaction)
			a.ModFactionRank(dcumenu.currentfollowerfaction, 1)
			a.AddToFaction(dcumenu.PotentialMarriageFaction)			
			a.AddToFaction(dcumenu.PotentialFollowerFaction)			
			Return true
		EndIf
	EndWhile	
	return false
endFunction

ActorBase Function pickagirlrapist()
	int rnd	
	rnd = Utility.RandomInt(1,4) 
	if rnd == 1
		return dcur_assaulter_bandit_female_1
	elseif rnd == 2
		return dcur_assaulter_bandit_female_2
	elseif rnd == 3
		return dcur_assaulter_bandit_female_3
	elseif rnd == 4
		return dcur_assaulter_bandit_female_4
	endif
endfunction

ActorBase Function pickaguyrapist()
	int rnd		
	rnd = Utility.RandomInt(1,4) 
	if rnd == 1
		return dcur_assaulter_bandit_male_1
	elseif rnd == 2
		return dcur_assaulter_bandit_male_2
	elseif rnd == 3
		return dcur_assaulter_bandit_male_3
	elseif rnd == 4
		return dcur_assaulter_bandit_male_4
	endif
endfunction

ActorBase Function pickarapist()
	int rnd	
	if dcumenu.RapistGender == gender_male
		return pickaguyrapist()
	elseif dcumenu.RapistGender == gender_female
		return pickagirlrapist()
	else	
		rnd = Utility.RandomInt(1,2) 
		if rnd == 1
			return pickaguyrapist()
		else
			return pickagirlrapist()		
		endif
	endif
endfunction

Event cleanuprape(string eventName, string argString, float argNum, form sender)			
	int i = 1	
	while i < sexActors.Length
		if sexActors[i] != None
			sexActors[i].Disable()
			;sexActors[i].Delete()
			sexActors[i].SetCriticalStage(sexActors[i].CritStage_DisintegrateEnd)
		endif
		i += 1
	endwhile
	if sexActorsf1[1] != None
			sexActorsf1[1].Disable()
			sexActorsf1[1].SetCriticalStage(sexActorsf1[1].CritStage_DisintegrateEnd)
			;sexActorsf1[1].Delete()
	endif
	if sexActorsf2[1] != None
			sexActorsf2[1].Disable()
			sexActorsf2[1].SetCriticalStage(sexActorsf2[1].CritStage_DisintegrateEnd)
			;sexActorsf2[1].Delete()
	endif
	if beltwasremoved != None
		libs.notify("The attackers lock your chastity belt back on you. They kept the key, though...", messagebox = true)		
		libs.LockDevice(libs.playerref, beltwasremoved)		
		libs.playerref.RemoveItem(libs.GetDeviceKey(beltwasremoved), libs.playerref.GetItemCount(libs.GetDeviceKey(beltwasremoved)))		
	elseif dcumenu.pimisogyny && dcumenu.useBelt && !libs.playerRef.WornHasKeyword(libs.zad_DeviousBelt) && !libs.playerRef.WornHasKeyword(libs.zad_DeviousHarness)
		If Utility.RandomInt() < 25
			libs.notify("The attackers laugh while locking a tight steel chastity belt on you!", messagebox = true)		
			etl.equipmisogynybelt(suppressfeedback = true)
		Endif
	Endif
	beltwasremoved = None							
	LastSexAttackTime = Utility.GetCurrentGameTime()
	gangbangmutex = false		
	clearlist()
	Game.SetGameSettingFloat("fAIMinGreetingDistance", AIgreetingdistancesetting) 
	UnRegisterForModEvent("AnimationEnd_DCUR_Rape")
	StorageUtil.SetIntValue(Game.GetPlayer(), "DCUR_SceneRunning", 0)
	SendModEvent("dhlp-Resume")
	resumeDDI()	 
endEvent

Function rape()		
	if libs.IsAnimating(libs.playerref)
		return
	endif
	Float zOffset
	Utility.Wait(0.2)			
	sexActors = new actor[2]	
	Game.DisablePlayerControls()	
	AIgreetingdistancesetting = Game.GetGameSettingFloat("fAIMinGreetingDistance") 
	Game.SetGameSettingFloat("fAIMinGreetingDistance", 0.0) 		
	Actor f1 = (dcur_followerlist.GetAt(0) As Actor)
	if f1 != None && f1.GetActorBase().GetSex() == 1
		sexActorsf1 = new actor[2]
		sexActorsf1[0] = f1
		sexActorsf1[1] = f1.PlaceAtMe(pickaguyrapist())	As Actor
		zOffset = sexActorsf1[1].GetHeadingAngle(f1)
		sexActorsf1[1].SetAngle(sexActorsf1[1].GetAngleX(), sexActorsf1[1].GetAngleY(), sexActorsf1[1].GetAngleZ() + zOffset)		
		ActorUtil.AddPackageOverride(sexActorsf1[1], dcumenu.dcur_pk_standstill ,99)
		sexActorsf1[1].EvaluatePackage()	
	endif		
	Actor f2 = (dcur_followerlist.GetAt(1) As Actor)
	if f2 != None && f2.GetActorBase().GetSex() == 1
		sexActorsf2 = new actor[2]
		sexActorsf2[0] = f2
		sexActorsf2[1] = f2.PlaceAtMe(pickaguyrapist()) As Actor
		zOffset = sexActorsf2[1].GetHeadingAngle(f2)
		sexActorsf2[1].SetAngle(sexActorsf2[1].GetAngleX(), sexActorsf2[1].GetAngleY(), sexActorsf2[1].GetAngleZ() + zOffset)		
		ActorUtil.AddPackageOverride(sexActorsf2[1], dcumenu.dcur_pk_standstill ,99)
		sexActorsf2[1].EvaluatePackage()	
	endif	
	sexActors[0] = libs.PlayerRef
	sexActors[1] = libs.playerRef.PlaceAtMe(pickarapist()) As Actor
	zOffset = sexActors[1].GetHeadingAngle(Libs.PlayerRef)
	sexActors[1].SetAngle(sexActors[1].GetAngleX(), sexActors[1].GetAngleY(), sexActors[1].GetAngleZ() + zOffset)
	ActorUtil.AddPackageOverride(sexActors[1], dcumenu.dcur_pk_standstill ,99)
	sexActors[1].EvaluatePackage()		
	sexActors[1].SetLookAt(libs.PlayerRef)	
	strip(libs.playerref, false)
	strip(sexActors[1], false)
	Utility.Wait(1)			
	
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt) && (dcumenu.stripbeltsonrape || Libs.PlayerRef.WornHasKeyword(dcur_kw_misogynyBelt))
		if StripBelt(akActor = sexActors[1])
			Utility.Wait(5)
		Endif
	endif
	
	RegisterForModEvent("AnimationEnd_DCUR_Rape", "CleanupRape")		
	sslBaseAnimation[] Sanims
	string suppresstag = "Futa,Guro,Necro,Molag,Amputee"
	Sanims = libs.SelectValidDDAnimations(SexActors, 2, true, "Aggressive", suppresstag)	
	If Sanims.Length > 0			
		SexLab.StartSex(Positions = SexActors, anims = Sanims, victim = libs.PlayerRef, allowbed = false, hook="DCUR_Rape") 		
	EndIf
	;SexLab.StartSex(sexActors, victim = libs.PlayerRef, )	
	if f1 != None		
		strip(sexActorsf1[1], false)
		Sanims = libs.SelectValidDDAnimations(SexActorsf1, 2, true, "Aggressive", suppresstag)	
		If Sanims.Length > 0			
			SexLab.StartSex(Positions = SexActorsf1, anims = Sanims, victim = f1, allowbed = false) 		
		EndIf
		;SexLab.QuickStart(f1, sexActorsf1[1], victim = f1)		
	endif
	if f2 != None		
		strip(sexActorsf2[1], false)
		Sanims = libs.SelectValidDDAnimations(SexActorsf1, 2, true, "Aggressive", suppresstag)	
		If Sanims.Length > 0			
			SexLab.StartSex(Positions = SexActorsf2, anims = Sanims, victim = f2, allowbed = false) 		
		EndIf
	endif	
	Game.EnablePlayerControls()
endFunction

Bool Function isBound(Actor akActor)
	Return (akActor != None) && akActor.WornHasKeyword(libs.zad_DeviousHeavyBondage)
EndFunction

Bool Function hasBoundActor(Actor[] akActors)
	int i = akActors.length
	While i > 0
		i -= 1
		if isBound(akActors[i])
			return true
		Endif
	Endwhile
	return false
EndFunction

bool Function AnimhasCreature(Actor[] akActors)
	bool retval = false
	int i = akActors.length
	While i > 0
		i -= 1		
		if akActors[i].HasKeyword(dcumenu.ActorTypeCreature)
			retval = true
		Endif
	Endwhile
	return retval
EndFunction

bool Function AnimhasAnimal(Actor[] akActors)
	bool retval = false
	int i = akActors.length
	While i > 0
		i -= 1		
		if akActors[i].HasKeyword(dcumenu.ActorTypeAnimal)
			retval = true
		Endif
	Endwhile
	return retval
EndFunction

function end_sexwithplayer(string eventName, string argString, float argNum, form sender)
	if isgangbang
		Game.DisablePlayerControls()
	endif
	sexstage += 1
	if sexstage > Maxsexstages
		UnRegisterForModEvent("AnimationEnd_SexWithPlayer")		
		if isgangbang
			if RapistCounter > (dcur_Rapists.GetSize() - 1) || sexattackterminate
				cleanupgangbang()				
				return
			else		
				rapeher()
			endif			
		elseif beltwasremoved
			LockBackBelt()
		endif		
	else		
		if randomsexstage			
			SLanim = libs.SelectValidDDAnimations(SceneSexActors, actorcount, !consensualsex, preferredanimtag)
		elseif sexstage == 2
			SLanim = libs.SelectValidDDAnimations(SceneSexActors, actorcount, !consensualsex, "Vaginal")
		elseif sexstage == 3
			SLanim = libs.SelectValidDDAnimations(SceneSexActors, actorcount, !consensualsex, "Anal")
		Endif		
		
		if SLanim.Length == 0 && isgangbang 
			cleanupgangbang()			
			return
		endif				
		if consensualsex
			int r
			if !isplayervictim
				r = SexLab.StartSex(Positions = SceneSexActors, anims = SLanim, allowbed = allowbeds, Hook="SexWithPlayer") 
			Else
				r = SexLab.StartSex(Positions = SceneSexActors, anims = SLanim, victim = libs.playerref, allowbed = allowbeds, Hook="SexWithPlayer") 
			EndIf
			if r < 0
				if isgangbang				
					cleanupgangbang(scenefailed = true)
					return 
				endif			
			endif						
		else 
			if isplayervictim
				if SexLab.StartSex(SceneSexActors, SLAnim, victim = libs.playerref, allowbed = allowbeds, Hook="SexWithPlayer") < 0
					if isgangbang
						cleanupgangbang(scenefailed = true)
						return
					endif
				endif
			else
				if SexLab.StartSex(SceneSexActors, SLAnim, victim = SceneSexActors[1], allowbed = allowbeds, Hook="SexWithPlayer") < 0
					if isgangbang
						cleanupgangbang(scenefailed = true)
						return
					endif
				endif
			endif
		endif	
	endif	
endfunction

bool function sexwithplayer(actor partner, actor partner2 = None, bool consensual = true, int stages = 1, bool randomanim = true, bool nostrip = false, bool beds = false, bool isgangrape = false, string preferredtag = "", bool playerisvictim = true)	
	if dcumenu.debuglogenabled	
		debug.trace("[DCUR] - Sex with player: " + partner.GetActorBase().GetName())
	endif
	actorcount = 1
	sexstage = 1
	maxsexstages = stages
	randomsexstage = randomanim
	consensualsex = consensual	
	allowbeds = beds	
	isgangbang = isgangrape
	preferredanimtag = preferredtag
	isplayervictim = playerisvictim
	bool chastity = false
	bool playerislocked = false
	If partner.WornHasKeyWord(libs.zad_DeviousBelt) && partner.WornHasKeyWord(libs.zad_DeviousBra) && (partner.WornHasKeyWord(libs.zad_DeviousGag) && !partner.WornHasKeyWord(libs.zad_DeviousGagPanel))
		chastity = true
	EndIf
	If chastity && partner2 != None
		; we check the second partner only if the first one is fully locked up, to see if we can use that character in any way at all:
		If !partner2.WornHasKeyWord(libs.zad_DeviousBelt) || !partner2.WornHasKeyWord(libs.zad_DeviousBra) || (!partner2.WornHasKeyWord(libs.zad_DeviousGag) || partner2.WornHasKeyWord(libs.zad_DeviousGagPanel))
			chastity = false
		EndIf
	EndIf
	; we check the player last, because she'd make this a no-go, no matter what:
	If libs.playerRef.WornHasKeyWord(libs.zad_DeviousBelt) && libs.playerRef.WornHasKeyWord(libs.zad_DeviousBra) && (libs.playerRef.WornHasKeyWord(libs.zad_DeviousGag) && !libs.playerRef.WornHasKeyWord(libs.zad_DeviousGagPanel))
		playerislocked = true
		chastity = true
	EndIf
	If chastity
		; ok, if we're still wearing locked gear here (all belts would have been stripped by now, if possible), it means there is not a lot we can do. So we just abort.
		if playerislocked 
			if !consensual && playerisvictim
				Libs.Notify("Your chastity gear is protecting you from getting raped!")
			else
				Libs.Notify("You are locked in chastity gear, and can't have sex with " + partner.GetActorBase().GetName())
			EndIf
		else
			Libs.Notify("You can't have sex with " + partner.GetActorBase().GetName() + " for their chastity gear!")
		EndIf
		return false
	EndIf
	
	; do threesomes only if the player isn't wearing wrist restraints or a chastity belt
	if partner2 != None && !libs.playerref.WornHasKeyword(Libs.zad_DeviousHeavyBondage) && !libs.playerref.WornHasKeyword(Libs.zad_DeviousBelt)		
		SceneSexActors = new actor[3]
		SceneSexActors[2] = partner2
		actorcount = 3
	else		
		SceneSexActors = new actor[2]
		actorcount = 2
	endif
	; partner is female
	if actorcount == 2 && partner.GetLeveledActorBase().GetSex() == 1
		; if we have a male player character (and that's seriously the only time in this mod I am going to account for them!), put him in the male position, for F/F pick randomly.
		if libs.playerref.GetLeveledActorBase().GetSex() == 0 || Utility.RandomInt(1,2) == 1
			SceneSexActors[1] = libs.playerRef
			SceneSexActors[0] = partner
		else
			SceneSexActors[0] = libs.playerRef
			SceneSexActors[1] = partner
		Endif
	else
		; in all other cases, put the player in the female position.
		SceneSexActors[0] = libs.playerRef
		SceneSexActors[1] = partner
	EndIf
	; no aggressive anims for girl-on-girl if set in MCM
	if (actorcount == 2 && partner.GetLeveledActorBase().GetSex() == 1 && dcumenu.sexForceLesbian)
		consensual = true
		consensualsex = true
	endif		
	if !consensual && !isplayervictim ; && partner.GetLeveledActorBase().GetSex() == 1
		;Player is the rapist - switch around positions	if the partner is also a girl
		; Version 7: Not sure why I shouldn't put the rapist in the male position all the time...
		SceneSexActors[0] = partner
		SceneSexActors[1] = libs.playerref
	Endif	
	if !consensual && isplayervictim 
		;Player is the victim		
		SceneSexActors[1] = partner
		SceneSexActors[0] = libs.playerref
	Endif	
	RegisterForModEvent("AnimationEnd_SexWithPlayer", "end_sexwithplayer")		
	if randomsexstage			
		SLanim = libs.SelectValidDDAnimations(SceneSexActors, actorcount, !consensual, preferredanimtag)
	else			
		SLanim = libs.SelectValidDDAnimations(SceneSexActors, actorcount, !consensual, "Oral")
	Endif	
	if SLanim.Length == 0 && !consensual && (actorcount > 2)
		; This could happen if a player doesn't have a lot of SLAL packs installed. Let's try again, and use consensual threesomes
		consensual = true
		consensualsex = true
		SLanim = libs.SelectValidDDAnimations(SceneSexActors, actorcount, !consensual, preferredanimtag)
	EndIf
	if SLanim.Length == 0 && isgangbang
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Rape event aborted: No fitting animations found.")
		endif	
		cleanupgangbang(scenefailed = true)	
		return false
	elseif SLanim.Length == 0
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Sex Scene aborted. No valid animations found.")
		endif			
		return false
	endif			
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Calling SL Scene with animation array length: " + SLanim.Length)
	endif	
	if consensual
		if !(libs.playerref.WornHasKeyword(Libs.zad_DeviousHeavyBondage) || nostrip)
			strip(libs.playerref, true)
		endif
		int r
		if !playerisvictim
			r = SexLab.StartSex(Positions = SceneSexActors, anims = SLanim, allowbed = allowbeds, Hook="SexWithPlayer") 
		Else
			r = SexLab.StartSex(Positions = SceneSexActors, anims = SLanim, victim = libs.playerref, allowbed = allowbeds, Hook="SexWithPlayer") 
		EndIf
		if r < 0
			if isgangbang				
				cleanupgangbang(scenefailed = true)
				return false
			endif
		else	
			return true
		endif
	else 
		if !(libs.playerref.WornHasKeyword(Libs.zad_DeviousHeavyBondage) || nostrip)
			strip(libs.playerref, false)
		endif
		if isplayervictim						
			if SexLab.StartSex(Positions = SceneSexActors, anims = SLanim, victim = libs.playerref, allowbed = allowbeds, Hook="SexWithPlayer") < 0
				if isgangbang					
					cleanupgangbang(scenefailed = true)				
					return false
				endif
			else
				return true
			endif
		else								
			if SexLab.StartSex(Positions = SceneSexActors, anims = SLanim, victim = partner, allowbed = allowbeds, Hook="SexWithPlayer") < 0
				if isgangbang					
					cleanupgangbang(scenefailed = true)					
					return false
				endif
			else
				return true
			endif
		endif
	endif
	return false
endfunction

Function Synchronize()
	int counter	
	bool partyisbusy = true
	while partyisbusy		
		partyisbusy	= false
		if libs.IsAnimating(SexLab.PlayerRef)
			partyisbusy = true	
		endif
		counter = dcur_followerlist.GetSize() - 1
		while counter >= 0
			if libs.IsAnimating(dcur_followerlist.GetAt(counter) As Actor)
				partyisbusy = true	
			endif
			counter -= 1
		endwhile
		if partyisbusy
			Utility.Wait(1)
		endif
	endwhile
EndFunction

function rapeher(bool fullscene = true)
	bool firststart = false	
	CalmDown()	
	actor[] activeActors
	actor Rapist	
	int i		
	if RapistCounter == 0
		firststart = true
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Rape scene started.")
		endif
	endif	
	if !firststart		
		Game.DisablePlayerControls()
		; make sure all animations are done
		Synchronize()
	endif	
	dcumenu.dcur_busyrapists.Revert()	
	if dcur_Rapists.GetSize() - RapistCounter >= 2 
		if Utility.RandomInt(0,99) < 85
			; strongly favor threesomes if enough partners are available.
			i = 2
		else
			i = 1
		EndIf		
		Rapist = dcur_Rapists.GetAt(RapistCounter) As Actor		
		if !dcumenu.sexAllowThreesomes || libs.playerref.WornHasKeyword(libs.zad_DeviousBelt) || libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage) || Rapist.HasKeyword(dcumenu.ActorTypeCreature) || (Rapist.HasKeyword(dcumenu.ActorTypeNPC) && !(dcur_Rapists.GetAt(RapistCounter + 1) As Actor).HasKeyword(dcumenu.ActorTypeNPC))
			i = 1
		endif
		if i == 2
			activeActors = new actor[3]
		else
			activeActors = new actor[2]
		endif
	else 
		i = 1
		activeActors = new actor[2]
	endif	
	activeActors[0] = SexLab.PlayerRef		
	int z = i 
	; Give the closest mob(s) some time to arrive, but not for traps and sleep attacks
	if firststart && originflag != origin_sleep && originflag != origin_trap && isInCity()
		int counter = 0
		Rapist = dcur_Rapists.GetAt(0) As Actor
		actor Rapist2 = None
		if dcur_Rapists.GetSize() > 1
			Rapist2 = dcur_Rapists.GetAt(1) As Actor
		EndIf
		if !Rapist2
			while Rapist.GetDistance(SexLab.PlayerRef) > 250 && counter < 10
				Utility.Wait(1)
				counter += 1
			endwhile
		else
			while ((Rapist.GetDistance(SexLab.PlayerRef) > 250) || (Rapist2.GetDistance(SexLab.PlayerRef) > 250)) && counter < 10
				Utility.Wait(1)
				counter += 1
			endwhile
		EndIf
	endif	
	Game.DisablePlayerControls()
	while z > 0
		Rapist = dcur_Rapists.GetAt(RapistCounter) As Actor
		activeActors[z] = Rapist	
		dcumenu.dcur_busyrapists.AddForm(Rapist)
		z -= 1
		RapistCounter += 1
	endwhile		
	; port them here if they are too far away
	if activeActors[1].GetDistance(activeActors[0]) > 250 
		activeActors[1].moveto(activeActors[0])
	endif			
	if i > 1 
		if activeActors[2].GetDistance(activeActors[0]) > 250 
			activeActors[2].moveto(activeActors[0])
		endif
	endif		
	Utility.Wait(1)
	if firststart		
		if !PreScene()					
			cleanupgangbang(scenefailed = true)								
			Return
		Endif
		if fullscene
			Utility.Wait(1)
			IntroScene()
		endif
	endif
	if i == 2
		sexwithplayer(activeActors[1], activeActors[2], consensual = false, stages = 1, randomanim = true, nostrip = true, beds = false, isgangrape = true, playerisvictim = true)	
	elseif Utility.RandomInt(0, 99) < dcumenu.sexUseConsensualScenesChance
		sexwithplayer(activeActors[1], consensual = true, stages = 1, randomanim = true, nostrip = true, beds = false, isgangrape = true, playerisvictim = true)	
	else	
		sexwithplayer(activeActors[1], consensual = false, stages = 1, randomanim = true, nostrip = true, beds = false, isgangrape = true, playerisvictim = true)	
	endif
	;chances are that the first batch of rapists needs to port in, so we just don't do followers in the first round to give them more time to arrive
	if !firststart		
		int m = 0		
		while m  < dcur_followerlist.GetSize() && dcumenu.enablefollowersupport
			Actor follower = dcur_followerlist.GetAt(m) As Actor
			Actor attacker1 = PickARandomRapist(follower)
			Actor attacker2 = None
			Actor[] FollowerSex
			if !attacker1
				return
			Endif
			if attacker1.GetDistance(follower) > 250 
				attacker1.moveto(follower)
			endif		
			dcumenu.dcur_busyrapists.AddForm(attacker1)
			if firststart && fullscene && m == 0
				dcumenu.dcur_assaulter_dialogue.SetValueInt(10)
				Rapist.say(dcumenu.dcur_assaulters_dialogue)				
			endif			
			if dcumenu.sexAllowThreesomes && !attacker1.HasKeyWord(dcumenu.ActorTypeAnimal) && !follower.haskeyword(libs.zad_DeviousBelt) && !follower.haskeyword(libs.zad_DeviousHeavyBondage) && Utility.RandomInt(1,2) == 1
				Attacker2 = PickARandomRapist(follower)				
			endif			
			If attacker2 && !attacker2.HasKeyWord(dcumenu.ActorTypeAnimal)
				dcumenu.dcur_busyrapists.AddForm(attacker2)
				if attacker2.GetDistance(follower) > 250 
					attacker2.moveto(follower)
				endif				
				FollowerSex = new Actor[3]
				FollowerSex[0] = Follower
				FollowerSex[1] = attacker1
				FollowerSex[2] = attacker2
				; try rape animations first
				SLanim = libs.SelectValidDDAnimations(FollowerSex, 3, true)
				If SLAnim.Length == 0
					SLanim = libs.SelectValidDDAnimations(FollowerSex, 3, false)
				EndIf
				If SLAnim.Length > 0
					SexLab.StartSex(Positions = FollowerSex, anims = SLanim)
				EndIf				
			else				
				FollowerSex = new Actor[2]
				FollowerSex[0] = Follower
				FollowerSex[1] = attacker1				
				SLanim = libs.SelectValidDDAnimations(FollowerSex, 2, true)
				If SLAnim.Length > 0
					SexLab.StartSex(Positions = FollowerSex, anims = SLanim)
				EndIf				
			endif
			m += 1
		endwhile
	endif
endfunction

Actor Function PickARandomRapist(Actor ForWhom)
	int k = 0
	Actor Rapist
	dcumenu.dcur_notbusyrapists.Revert()
	while k < dcur_Rapists.GetSize()			
		Rapist = dcur_Rapists.GetAt(k) As Actor
		if !dcumenu.dcur_busyrapists.HasForm(Rapist) && ((ForWhom.GetActorBase().GetSex() != Rapist.GetActorBase().GetSex()) || Rapist.HasKeyword(dcumenu.ActorTypeCreature))			
			dcumenu.dcur_notbusyrapists.AddForm(Rapist)			
		endif
		k += 1
	endwhile	
	if dcumenu.dcur_notbusyrapists.GetSize() == 0
		return None
	endif
	Int i = Utility.RandomInt(0, (dcumenu.dcur_notbusyrapists.GetSize() - 1))	
	Return dcumenu.dcur_notbusyrapists.GetAt(i) As Actor	
EndFunction

Function CalmDown()
	Actor current
	libs.playerref.StopCombatAlarm()
	libs.playerref.StopCombat()
	int i = 0
	while i < dcur_followerlist.GetSize()
		current = dcur_followerlist.GetAt(i) As Actor
		current.StopCombatAlarm()
		current.StopCombat()				
		i += 1
	endwhile	
	i = 0
	while i < dcur_Rapists.GetSize()
		current = dcur_Rapists.GetAt(i) As Actor
		current.StopCombatAlarm()
		current.StopCombat()				
		i += 1
	endwhile	
EndFunction

Bool Function IsInEvilFaction(Actor a)	
	Int i = dcumenu.dcur_evilfactions.GetSize()
	While (i > 0)
		i -= 1
		Faction Fac = (dcumenu.dcur_evilfactions.GetAt(i) As Faction)
		If (Fac && a.IsInFaction(Fac))
			Return true
		EndIf
	EndWhile	
	Return False
EndFunction

Bool Function ActorIsChild(Actor a)	
	if a.IsChild() || dcumenu.dcur_childraceslist.HasForm(a.GetActorBase().GetRace())
		return true
	endif
	If dcur_childrenlist.HasForm(a)
		; let's see if some mod changed the tag
		If !a.IsChild()
			PollutedSaveGame = True
		Else
			PollutedSaveGame = False
		Endif
		return true
	EndIf
	return false
EndFunction

bool Function TestRapist(actor currenttest, actor matchingmob = None)			
	If currenttest.HasKeyword(dcumenu.ActorTypeNPC)
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Processing: " + currenttest.GetLeveledActorBase().GetName() + ". Is NPC.")
		endif
	elseIf currenttest.HasKeyword(dcumenu.ActorTypeCreature) && !currenttest.HasKeyword(dcumenu.ActorTypeAnimal)
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Processing: " + currenttest.GetLeveledActorBase().GetName() + ". Is Creature.")
		endif
	elseIf currenttest.HasKeyword(dcumenu.ActorTypeAnimal)
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Processing: " + currenttest.GetLeveledActorBase().GetName() + ". Is Animal.")
		endif
	else
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Processing: " + currenttest.GetLeveledActorBase().GetName() + ". WARNING: Type cannot be determined. Rejected!")
		endif
		return false
	endif
	; only look for matching mob types if one is passed
	if matchingmob && ((currenttest.HasKeyword(dcumenu.ActorTypeCreature) && matchingmob.HasKeyword(dcumenu.ActorTypeNPC)) || (currenttest.HasKeyword(dcumenu.ActorTypeNPC) && matchingmob.HasKeyword(dcumenu.ActorTypeCreature)))
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + ". Reason: Actor is not matching current selection.")
		endif
		return false	
	endif
	if currenttest.IsInFaction(libs.Sexlab.AnimatingFaction)  || (currenttest.GetCurrentScene() != none && !libs.PlayerRef.GetCurrentLocation().haskeyword(dglib.loctypeinn))  ; scenes in inns are usually just sandboxing NPCs...we ignore these.
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + ". Reason: Actor is already having sex or is involved in a scene.")
		endif
		return false	
	Endif
	If (currenttest == libs.playerref) || currenttest.IsDisabled() || currenttest.IsDead() || ActorIsChild(currenttest) || currenttest.IsGhost() || currenttest.GetActorBase().GetRace() == dcumenu.ManakinRace || currenttest.IsInFaction(dcumenu.currentfollowerfaction) || currenttest.IsPlayerTeammate() || currenttest.HasKeyWord(dcumenu.ActorTypeDwarven) || currenttest.IsInFaction(dunPrisonerFaction)
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + ". Reason: Actor is player character, follower, disabled, child, dwarven construct, a prisoner, or dead.")
		endif
		return false
	endif	
	if currenttest.WornHasKeyWord(libs.zad_DeviousHeavyBondage)
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + ". Reason: Actor is bound.")
		endif
		return false
	EndiF
	If dcur_norape.HasForm(currenttest.GetLeveledActorBase())
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + ". Reason: Actor is on exclusion list.")
		endif
		return false
	Endif	
	; if it's an NPC, make sure it's correct gender and not an elder or beast race if they are disallowed
	If currenttest.HasKeyword(dcumenu.ActorTypeNPC) && ((currenttest.GetLeveledActorBase().GetSex() == 0 && dcumenu.RapistGender == gender_female) || (currenttest.GetLeveledActorBase().GetSex() == 1 && dcumenu.RapistGender == gender_male)) 
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + ". Reason: Actor is wrong gender.")
		endif
		return false			
	elseif currenttest.HasKeyword(dcumenu.ActorTypeNPC) && ((dcumenu.sexDisallowElder && currenttest.GetLeveledActorBase().GetRace() == dcumenu.ElderRace) || (dcumenu.sexDisallowBeastRaces && currenttest.HasKeyword(dcumenu.isBeastRace)) || (dcumenu.sexDisallowGuards && currenttest.IsInFaction(dcumenu.isGuardFaction)))
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + ". Reason: Actor is disallowed guard/elder/beast race (MCM settings).")
		endif
		return false			
	endif		
	; if it's a creature, make sure they are allowed	 
    if (currenttest.HasKeyword(dcumenu.ActorTypeCreature) && !currenttest.HasKeyword(dcumenu.ActorTypeAnimal)) && (!dcumenu.dcur_humanoidcreaturessexlist.HasForm(currenttest.GetLeveledActorBase().GetRace()) || !dcumenu.sexAllowHumanoids)
        if dcumenu.debuglogenabled    
            debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + ". Reason: Actor is humanoid creature, disabled in MCM.")
        endif
        Return false
    endif        
    if currenttest.HasKeyword(dcumenu.ActorTypeAnimal) && (!dcumenu.dcur_creaturesexlist.HasForm(currenttest.GetLeveledActorBase().GetRace()) || !dcumenu.sexAllowCreatures)
        if dcumenu.debuglogenabled    
            debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + ". Reason: Actor is animal.")
        endif
        return false
    endif
	if currenttest.GetWorldSpace() != libs.playerRef.GetWorldSpace()
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + ". Reason: Actor is in different world space than player.")
		endif
		Return false
	endif	
	; we also don't want to get raped by friendlies if we surrendered in combat.
	if originflag == origin_combat 
		if currenttest.HasKeyword(dcumenu.ActorTypeNPC) && !IsInEvilFaction(currenttest)
			if dcumenu.debuglogenabled	
				debug.trace("[DCUR] - Rejected: " + currenttest.GetLeveledActorBase().GetName() + " for combat rape. Reason: Actor is friendly.")
			endif
			return false
		endif
	endif	
	return true
EndFunction

bool Function ScanforRapists()
	; the list is already initialized when triggered by a cloak event
	if originflag != origin_cloak && originflag != origin_combat && originflag != origin_proxyrape
		clearlist()
		dcur_detectioncloakhitlist.Revert()
		dcumenu.dcur_detectioncloakFFspell.cast(libs.playerref)
		Utility.Wait(2)
		int n = dcur_detectioncloakhitlist.GetSize()
		if n > 0 										
			if dcumenu.debuglogenabled
				debug.trace("[DCUR] Found some mobs! Trying to initialize rape scene.")	
			endif				
		endif		
	Endif
	if originflag == origin_trap || originflag == origin_sleep		
		Game.DisablePlayerControls()	
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")			
		dcumenu.black.ApplyCrossFade(1)
		Utility.Wait(3)
	endif
	float distance
	float zOffset	
	Actor currenttest		
	Actor matchingcritter = None
	float closestDistance = 0.0
	closestRapist = None
	RapistID = new Actor[50]
	RapistsXPos = new Float[50]
	RapistsYPos = new Float[50]
	RapistsZPos = new Float[50]	
	Int i = dcur_detectioncloakhitlist.GetSize()
	if dcumenu.debuglogenabled	
		debug.trace("[DCUR] - List has: " + (i+1) + " detected actors")
	endif
	int numadded = 0		
	dcur_Rapists.Revert()	
	;dcur_followerlist.Revert()
	Int NumofRapists = Utility.RandomInt(dcumenu.sexMinrapists, dcumenu.sexMaxrapists)
	if dcumenu.debuglogenabled	
		debug.trace("[DCUR] - Trying to select a maximum of: " + NumofRapists + " actors for rape scene.")
	endif
	
	While (i >= 0) 
		i -= 1
		currenttest =  dcur_detectioncloakhitlist.GetAt(i) as Actor	
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Found: " + currenttest.GetLeveledActorBase().GetName())
		endif
		if originflag == origin_combat && currenttest.GetCombatTarget() && (currenttest.GetCombatTarget() == libs.PlayerRef || currenttest.GetCombatTarget().IsInFaction(dcumenu.currentfollowerfaction))
			currenttest.StopCombat()
			currenttest.StopCombatAlarm()
		endif
		if (numadded < NumofRapists) && TestRapist(currenttest, matchingcritter) 
			if dcumenu.debuglogenabled	
				debug.trace("[DCUR] - Added: " + currenttest.GetLeveledActorBase().GetName())
			endif
			dcur_Rapists.AddForm(currenttest)											
			if !matchingcritter && dcumenu.sexMatchingMobs
				matchingcritter = currenttest
			endif
			if closestRapist == none || currenttest.GetDistance(libs.playerref) < closestRapist.GetDistance(libs.playerref)
				closestRapist = currenttest
				closestDistance = currenttest.GetDistance(libs.playerref)
			endIf						
			numadded += 1
		endif		
		if isValidFollower(currenttest)
			;dcur_followerlist.AddForm(currenttest)		
			if originflag == origin_combat
				currenttest.StopCombat()
				currenttest.StopCombatAlarm()
			endif
		endif
	endwhile		
	If dcur_Rapists.GetSize() > 0 
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Found: " + dcur_Rapists.GetSize() + " valid rapists.")
		endif
		; make sure the closest mob is first in the list, this works because AddForm adds at index #0
		dcur_Rapists.RemoveAddedForm(closestRapist)		
		dcur_Rapists.AddForm(closestRapist)				
		return true
	endIf
	;if originflag == origin_cloak && closestRapist
	;	libs.notify("Your vulnerablilty has been noticed by " + closestRapist.GetLeveledActorBase().GetName())
	;endif
	if dcumenu.debuglogenabled			
		debug.trace("[DCUR] - Rape event cancelled. No mobs found.")		
	endif	
	return false
EndFunction

bool function GatherRapists()	
	if originflag == origin_trap || originflag == origin_sleep
		libs.notify("You slowly regain conciousness...")
	elseif originflag == origin_proxyrape		
		libs.notify( (dcur_Rapists.GetAt(0) As Actor).GetLeveledActorBase().GetName() +" is going to rape you!")
	elseif originflag != origin_combat
		If dcur_Rapists.GetSize() == 1
			libs.notify( (dcur_Rapists.GetAt(0) As Actor).GetLeveledActorBase().GetName() +" is going to rape you!")
		ElseIf dcur_Rapists.GetSize() == 2
			libs.notify( (dcur_Rapists.GetAt(0) As Actor).GetLeveledActorBase().GetName() + " and " + (dcur_Rapists.GetAt(1) As Actor).GetLeveledActorBase().GetName() + " are going to rape you!")
		Else
			If (dcur_Rapists.GetAt(0) As Actor).GetLeveledActorBase().GetSex() == 0
				libs.notify( (dcur_Rapists.GetAt(0) As Actor).GetLeveledActorBase().GetName() + " and his friends are going to rape you!")
			Else
				libs.notify( (dcur_Rapists.GetAt(0) As Actor).GetLeveledActorBase().GetName() + " and her friends are going to rape you!")
			Endif
		Endif
	endif
	if dcumenu.debuglogenabled	
		debug.trace("[DCUR] - Rape event triggered.")
	endif	
	Actor currenttest	
	Actor Rapist = None	
	bool bailout = false
	i = 0		
	while i < dcur_followerlist.GetSize()
		currenttest = dcur_followerlist.GetAt(i) As Actor		
		i += 1
	endwhile	
	i = 0		
	while i < dcur_Rapists.GetSize()
		currenttest = dcur_Rapists.GetAt(i) As Actor			
		RapistID[i] = currenttest
		RapistsXPos[i] = currenttest.GetPositionX()
		RapistsYPos[i] = currenttest.GetPositionY()
		RapistsZPos[i] = currenttest.GetPositionZ()
		currenttest.AddToFaction(dcur_PacifiedEvilPeopleFaction)
		currenttest.SetFactionRank(dcur_PacifiedEvilPeopleFaction, 100)
		;if originflag == origin_combat
			currenttest.StopCombatAlarm()
			currenttest.StopCombat()
		;endif
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Pacified: " + currenttest.GetLeveledActorBase().GetName())
		endif
		i += 1
	endwhile	
	if libs.playerref.IsOnMount()	
		libs.playerref.Dismount()
		Utility.Wait(2)
	endif
	libs.playerref.AddToFaction(dcur_PacifiedEvilPeopleFaction)
	libs.playerref.SetFactionRank(dcur_PacifiedEvilPeopleFaction, 100)
	RapistCounter = 0
	int i = 0
	while i <= dcur_Rapists.GetSize() - 1 && i <= dcumenu.sexMaxrapists && i < 25
		(dcur_aliases.GetAlias(i) As ReferenceAlias).ForceRefTo(dcur_Rapists.GetAt(i) As Actor)
		i += 1
	endwhile	
	if originflag == origin_combat
		isGettingTiedUp = ((Utility.RandomFloat(0.0, 99.9) < dcumenu.sexCombatSurrenderRestraintsChance)) && !(dcur_Rapists.GetAt(0) As Actor).HasKeyWord(dcumenu.ActorTypeCreature) && !mcs.isDCURQuestRunning
	Else	
		isGettingTiedUp = ((Utility.RandomFloat(0.0, 99.9) < dcumenu.sexTieUpOnRapeChance)) && !(dcur_Rapists.GetAt(0) As Actor).HasKeyWord(dcumenu.ActorTypeCreature) && !mcs.isDCURQuestRunning
	Endif
	if dcumenu.debuglogenabled	
		debug.trace("[DCUR] - Gathered rapists for scene: Complete.")
	endif
	return true						
endfunction

function leaveinwilderness()
	int k = Utility.RandomInt(25, 43)				
	Actor Follower
	ActorBase FBase
	int i = 0
	while i <= (dcur_followerlist.GetSize() - 1) && i < 5
		Follower = dcur_followerlist.GetAt(i) As Actor		
		FBase = Follower.GetActorBase()	
		if FBase.GetSex() == 1 && Follower.HasKeyword(dcumenu.ActorTypeNPC) && !ActorIsChild(Follower)
			dcur_equiprandomarmbinder(Follower, dcumenu.equipthemefollower)		
		endif
		i += 1
	EndWhile		
	Utility.Wait(1)
	libs.playerref.moveto((dcur_aliases.GetAlias(k) As ReferenceAlias).GetReference())	
	Utility.Wait(1)
	mcs.lbqs.DiDWiggleWrapper()		
EndFunction

function outcomenoheal()
	float grandtotalweight = dcumenu.sexOutcomeInn + dcumenu.sexOutcomeLeftinWilderness + dcumenu.sexOutcomeSS	
	; have to do -something-
	If grandtotalweight == 0
		libs.playerref.restoreav("Health", libs.playerref.GetBaseAV("Health"))
		libs.playerref.restoreav("Stamina", libs.playerref.GetBaseAV("Stamina"))
		libs.playerref.restoreav("Magicka", libs.playerref.GetBaseAV("Magicka"))
		return
	Endif
	if libs.playerref.WornHasKeyWord(libs.zad_Lockable)
		grandtotalweight -= dcumenu.sexOutcomeSS ; don't hand the player to SS when she's wearing DD devices.
	EndIf
	float chance = Utility.RandomFloat(0, grandtotalweight)	
	if chance < dcumenu.sexOutcomeInn
		int k = 2
		while k == 2 ; For some reason there is no inn #2 in CK.
			k = Utility.RandomInt(1, 17)		
		EndWhile
		libs.playerref.moveto((dcumenu.GetAlias(k) As ReferenceAlias).GetReference())	
		return
	endIf	
	chance = chance - dcumenu.sexOutcomeInn		
	if chance < dcumenu.sexOutcomeLeftinWilderness
		leaveinwilderness()		
		return
	endIf	
	chance = chance - dcumenu.sexOutcomeLeftinWilderness
	if chance < dcumenu.sexOutcomeSS
		SendModEvent("SSLV Entry")
		return
	endIf		
endfunction

Function porttostartnoheal(bool hardcore = false)	
	dcumenu.black.ApplyCrossFade(1)
	Utility.Wait(3)
	ImageSpaceModifier.Removecrossfade(1)	
	Cell c = libs.playerref.GetParentCell()
	if c.IsInterior() && !hardcore	&& !libs.PlayerRef.GetCurrentLocation() == ShroudHearthBarrowLocation
		ObjectReference currenttest		
		currenttest = Game.FindClosestReferenceOfTypeFromRef(COCMarkerHeading, libs.playerref, 75000.0)
		if currenttest && currenttest.GetDistance(libs.playerref) > 1500
			libs.playerRef.moveto(currenttest)				
			if dcumenu.debuglogenabled	
				debug.trace("[DCUR] - Porting player to start location.")
			endif
		else
			outcomenoheal()
		endif		
	else
		outcomenoheal()
	endif	
EndFunction

function outcome()
	float grandtotalweight = dcumenu.sexOutcomeHeal + dcumenu.sexOutcomeInn + dcumenu.sexOutcomeBAQ + dcumenu.sexOutcomeLeftinWilderness + dcumenu.sexOutcomeSS
	; have to do -something-
	If grandtotalweight == 0
		libs.playerref.restoreav("Health", libs.playerref.GetBaseAV("Health"))
		libs.playerref.restoreav("Stamina", libs.playerref.GetBaseAV("Stamina"))
		libs.playerref.restoreav("Magicka", libs.playerref.GetBaseAV("Magicka"))
		return
	Endif
	if libs.playerref.WornHasKeyWord(libs.zad_Lockable)
		grandtotalweight -= dcumenu.sexOutcomeSS ; don't hand the player to SS when she's wearing DD devices.
	EndIf
	float chance = Utility.RandomFloat(0, grandtotalweight)			
	if chance < dcumenu.sexOutcomeBAQ
		strip(libs.playerref, false)
		dcumenu.questgiver = None
		baqs.tieherup()
		Utility.Wait(5)
		baqs.Reset()					
		baqs.Start()			
		return
	endIf	
	chance = chance - dcumenu.sexOutcomeBAQ	
	if chance < dcumenu.sexOutcomeInn
		int k = 2
		while k == 2 ; For some reason there is no inn #2 in CK.
			k = Utility.RandomInt(1, 17)		
		EndWhile
		libs.playerref.moveto((dcumenu.GetAlias(k) As ReferenceAlias).GetReference())	
		return
	endIf	
	chance = chance - dcumenu.sexOutcomeInn	
	if chance < dcumenu.sexOutcomeLeftinWilderness
		leaveinwilderness()		
		return
	endIf	
	chance = chance - dcumenu.sexOutcomeLeftinWilderness
	if chance < dcumenu.sexOutcomeHeal
		libs.playerref.restoreav("Health", libs.playerref.GetBaseAV("Health"))
		libs.playerref.restoreav("Stamina", libs.playerref.GetBaseAV("Stamina"))
		libs.playerref.restoreav("Magicka", libs.playerref.GetBaseAV("Magicka"))
		return
	endIf	
	chance = chance - dcumenu.sexOutcomeHeal
	if chance < dcumenu.sexOutcomeSS
		SendModEvent("SSLV Entry")
		return
	endIf		
endfunction

Function porttostart()	
	Cell c = libs.playerref.GetParentCell()
	if c.IsInterior() && !libs.PlayerRef.GetCurrentLocation() == ShroudHearthBarrowLocation
		ObjectReference currenttest		
		currenttest = Game.FindClosestReferenceOfTypeFromRef(COCMarkerHeading, libs.playerref, 75000.0)
		if currenttest && currenttest.GetDistance(libs.playerref) > 1500
			libs.playerRef.moveto(currenttest)				
			if dcumenu.debuglogenabled	
				debug.trace("[DCUR] - Porting player to start location.")
			endif
		else
			outcome()
		endif		
	else
		outcome()
	endif
	dcumenu.black.ApplyCrossFade(1)
	Utility.Wait(3)
	ImageSpaceModifier.Removecrossfade(1)	
EndFunction

Function FreeFollowers(bool scenefailed = false)
	; clear hogtie aliases at their positons in the quest
	; i = 56
	; While i <= 60
		; (dcur_aliases.GetAlias(i) As ReferenceAlias).Clear()	
		; i += 1
	; EndWhile
	; clear factions etc.
	Actor Follower
	int i = dcur_followerlist.GetSize() - 1
	if dcumenu.debuglogenabled && !scenefailed
		debug.trace("[DCUR] - Freeing " + i + " Followers")
	endif
	while i >= 0
		Follower = dcur_followerlist.GetAt(i) As Actor					
		Follower.RemoveFromFaction(dcur_PacifiedEvilPeopleFaction)					
		endhogtie(Follower)					
		Follower.EvaluatePackage()
		;if originflag != origin_combat && !scenefailed && isGettingTiedUp && dcur_Rapists.GetSize() > 1
		if !scenefailed && isGettingTiedUp && dcur_Rapists.GetSize() > 1
			If dcumenu.enablefollowersupport
				itemequip(Follower)
			EndIf
		endif
		Utility.Wait(1)
		if Follower.GetDistance(libs.PlayerRef) > 1000
			Follower.moveto(libs.PlayerRef)
		Endif
		if dcumenu.debuglogenabled && !scenefailed
			debug.trace("[DCUR] - Enraged: " + Follower.GetLeveledActorBase().GetName())
		endif			
		i -= 1
	Endwhile	
EndFunction

Function RobHer(Actor Thief)
	if roqs.GetStage() == 10
		return
	Endif
	roqs.Start()		
	roqs.StealStuff(thief)
EndFunction

Function LockBackBelt(Bool multiple = true)
	If beltwasremoved != None
		if multiple
			libs.notify("The attackers lock your chastity belt back on you. They kept the key, though...", messagebox = true)		
		Else
			libs.notify("Your tormentor locks your chastity belt back on you. They kept the key, though...", messagebox = true)		
		Endif
		libs.LockDevice(libs.playerref, beltwasremoved)		
		libs.playerref.RemoveItem(libs.GetDeviceKey(beltwasremoved), libs.playerref.GetItemCount(libs.GetDeviceKey(beltwasremoved)))		
	EndIf
	beltwasremoved = None
EndFunction

function cleanupgangbang(bool scenefailed = false)
	Synchronize()
	if !libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage) 
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")			
	endif
	if !scenefailed 
		LockBackBelt()
		Utility.Wait(5)
	endif
	; if she tried to escape and failed, or we skipped binding the character before the scene, do it now	
	if !scenefailed && GetIsRapeResistActive() && GetHasAttemptedRapeResist() && !GetHasSucceededRapeResist() && (Utility.RandomInt() < 33)
		libs.notify("Your attackers smirk at you as they pull a set of restraints from their backpacks and lock them on you. They also pat you down for any keys you might still carry.", true)
		EquipSet(libs.playerref, dcumenu.equiptheme, 50, 100)
		dcur_removekeys(libs.playerref, thief = dcur_Rapists.GetAt(0) As Actor)		
		stealfollowerkeys(thief = dcur_Rapists.GetAt(0) As Actor)		
	elseif !scenefailed && isGettingTiedUp && (dcur_Rapists.GetSize() > 1 || Utility.RandomInt() < 50)
		libs.notify("Your attackers smirk at you as they pull a set of restraints from their backpacks and lock them on you. They also pat you down for any keys you might still carry.", true)
		itemequip(libs.playerref)
		dcur_removekeys(libs.playerref, thief = dcur_Rapists.GetAt(0) As Actor)		
		stealfollowerkeys(thief = dcur_Rapists.GetAt(0) As Actor)		
	endif
	
	actor Rapist
	int i = 0
	while i <= dcur_Rapists.GetSize() - 1
		Rapist = dcur_Rapists.GetAt(i) As Actor				
		if i < 25 ; we have only 25 free aliases, so we do a sanity check here
			(dcur_aliases.GetAlias(i) As ReferenceAlias).Clear()
			ActorUtil.AddPackageOverride(Rapist, dcumenu.dcur_pk_fleefromplayer, 100)
			Rapist.EvaluatePackage()		
		endif
		i += 1
	endwhile		
	if !libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")
		Utility.Wait(1)
	endif
	if originflag == origin_combat && !scenefailed
		if Utility.RandomFloat(0.0, 99.9) < dcumenu.sexOutcomeRobberyChance
			Actor a = none
			a = dcur_Rapists.GetAt(Utility.RandomInt(0, (dcur_Rapists.GetSize() - 1))) As Actor
			If !a.HasKeyword(dcumenu.ActorTypeNPC) || !IsInEvilFaction(a)  || a.IsDead()
				; try again
				a = dcur_Rapists.GetAt(Utility.RandomInt(0, (dcur_Rapists.GetSize() - 1))) As Actor
				If !a.HasKeyword(dcumenu.ActorTypeNPC) || !IsInEvilFaction(a) || a.IsDead()
					a = none
				EndIf
			EndIf
			if a 
				RobHer(a)
			EndIf
		Endif		
		Utility.Wait(2)
		porttostart()
	endif	
	;Utility.Wait(5)
	i = dcur_Rapists.GetSize() - 1
	while i >= 0
		Rapist = dcur_Rapists.GetAt(i) As Actor				
		ActorUtil.RemovePackageOverride(Rapist, dcumenu.dcur_pk_fleefromplayer)		
		Rapist.EvaluatePackage()		
		i -= 1
	endwhile	
	i = 0
	while i < RapistID.Length				
		if RapistID[i]
			RapistID[i].SetPosition(RapistsXPos[i], RapistsYPos[i], RapistsZPos[i])			
			RapistID[i].RemoveFromFaction(dcur_PacifiedEvilPeopleFaction)	
			if dcumenu.debuglogenabled	
				debug.trace("[DCUR] - Enraged: " + RapistID[i].GetLeveledActorBase().GetName())
			endif			
		endif
		i += 1
	Endwhile
	clearlist()
	FreeFollowers(scenefailed)
	libs.playerref.RemoveFromFaction(dcur_PacifiedEvilPeopleFaction)					
	CalmDown()
	beltwasremoved = None							
	LastSexAttackTime = Utility.GetCurrentGameTime()	
	Game.EnablePlayerControls()
	StorageUtil.SetIntValue(Game.GetPlayer(), "DCUR_SceneRunning", 0)
	SendModEvent("dhlp-Resume")
	SendModEvent("dcur_gangbang_end")
	resumeDDI()	 
endfunction

Function clearlist()
	int i = dcur_detectioncloakhitlist.GetSize() - 1
	Actor Rapist
	while i >= 0
		Rapist = dcur_detectioncloakhitlist.GetAt(i) As Actor					
		If Rapist
			Rapist.RemoveFromFaction(dcur_PacifiedEvilPeopleFaction)	
			if i < 25
				(dcur_aliases.GetAlias(i) As ReferenceAlias).Clear()		
			endif
			Rapist.EvaluatePackage()		
		Endif
		i -= 1
	EndWhile		
	libs.playerref.RemoveFromFaction(dcur_PacifiedEvilPeopleFaction)						
EndFunction

Function hogtie(actor a)
	If a == libs.PlayerRef
		Game.ForceThirdPerson()
		Game.SetPlayerAIDriven(True)
	Else
		a.SetRestrained(True)
		a.SetDontMove(True)
	EndIf	
	a.additem(dcur_steelshackles, 1, true)
	a.equipitem(dcur_steelshackles, absilent = true)	
	if a == libs.PlayerRef
		;ActorUtil.AddPackageOverride(a, dcumenu.dcur_pk_randomrestraint ,99)
	else
		; Alias Package overrides do not work for followers. Meh!
		; int i = 56
		; bool done = false
		; While i <= 60
			; If (dcur_aliases.GetAlias(i) As ReferenceAlias).GetReference() == None && !done
				; (dcur_aliases.GetAlias(i) As ReferenceAlias).ForceRefTo(a)	
				; libs.notify("Found alias for " + a.GetLeveledActorBase().GetName())				
				; done = true
			; Endif
			; i += 1
		; EndWhile
		ActorUtil.AddPackageOverride(a, dcumenu.dcur_pk_hogtie ,99)
	endif
	a.EvaluatePackage()	
endFunction

Function Endhogtie(actor a)
	if a == libs.PlayerRef	
		;ActorUtil.RemovePackageOverride(a, dcumenu.dcur_pk_randomrestraint)
	else
		ActorUtil.RemovePackageOverride(a, dcumenu.dcur_pk_hogtie)
		ActorUtil.ClearPackageOverride(a)		
	endif
	a.EvaluatePackage()
	;libs.notify("Removed hogtie from " + a.GetLeveledActorBase().GetName())
	If a == libs.playerRef
		Game.SetPlayerAIDriven(False)
	endif
	a.SetRestrained(False)
	a.SetDontMove(False)
	a.unequipitem(dcur_steelshackles, absilent = true)
	a.removeitem(dcur_steelshackles, absilent = true)
	;if isGettingTiedUp && a != libs.playerref	
	;	dcur_removekeys(a)		
	;endif		
	If a != libs.playerRef
		Debug.SendAnimationEvent(a, "IdleForceDefaultState")			
	endif
endFunction

Bool Function ResistAttack()
	; no need to pass a parameter, as the result is stored in the property anyway.
	float chance = dcumenu.sexCombatResistChance  ; basechance, default is 25%
	If dcur_raperesist_mode == 3
		if libs.aroused.GetActorArousal(libs.PlayerRef) < 30	
			chance += 10
		elseif libs.aroused.GetActorArousal(libs.PlayerRef) > 60
			chance -= 10
		EndIf
		if libs.playerRef.WornHasKeyWord(libs.zad_DeviousHeavyBondage)
			chance -= 20
		elseif libs.playerRef.WornHasKeyWord(libs.zad_DeviousArmCuffs)
			chance -= 10
		Endif
		int n = getDDitemcount(libs.PlayerRef)
		if n > 5
			chance -= 10
		elseif n > 3
			chance -= 5
		EndIf
		if libs.PlayerRef.GetWornForm(Armor.GetMaskForSlot(32)).HasKeyWordString("ArmorHeavy")
			chance += 5		
		elseif libs.PlayerRef.GetWornForm(Armor.GetMaskForSlot(32)).HasKeyWordString("ArmorMedium")
			chance += 3
		EndIf
		If Libs.PlayerRef.GetAV("Destruction") > 30 || Libs.PlayerRef.GetAV("Alteration") > 30
			chance += 5
		Endif
		If Libs.PlayerRef.GetAV("OneHanded") > 30 || Libs.PlayerRef.GetAV("TwoHanded") > 30
			chance += 5
		Endif
		if dcur_Rapists.GetSize() > 3
			chance -= 15
		endif
		if Utility.RandomFloat(0.0,99.9) < chance
			if dcumenu.debuglogenabled	
				debug.trace("[DCUR] - Resist succeeded. Chance was: " + chance)
			endif
			dcur_raperesist_success = True
			return true
		EndIf	
	ElseIf dcur_raperesist_mode == 4
		if libs.aroused.GetActorArousal(libs.PlayerRef) < 30	
			chance += 10
		elseif libs.aroused.GetActorArousal(libs.PlayerRef) > 60
			chance -= 10
		EndIf
		if libs.playerRef.WornHasKeyWord(libs.zad_DeviousHeavyBondage)
			chance -= 10
		EndIf
		if libs.playerRef.WornHasKeyWord(libs.zad_DeviousBoots)
			chance -= 20
		EndIf
		if libs.playerRef.WornHasKeyWord(libs.zad_DeviousLegCuffs)
			chance -= 10
		Endif
		int n = getDDitemcount(libs.PlayerRef)
		if n > 5
			chance -= 10
		elseif n > 3
			chance -= 5
		EndIf		
		if libs.PlayerRef.GetWornForm(Armor.GetMaskForSlot(32)).HasKeyWordString("ArmorHeavy")
			chance -= 10		
		elseif libs.PlayerRef.GetWornForm(Armor.GetMaskForSlot(32)).HasKeyWordString("ArmorMedium")
			chance -= 5
		elseif libs.PlayerRef.GetWornForm(Armor.GetMaskForSlot(32)).HasKeyWordString("ArmorClothing")
			chance += 5
		EndIf
		If Libs.PlayerRef.GetAV("Conjuration") > 30 || Libs.PlayerRef.GetAV("Illusion") > 30
			chance += 5
		Endif
		If Libs.PlayerRef.GetAV("Lockpicking") > 30 || Libs.PlayerRef.GetAV("Pickpocket") > 30
			chance += 5
		Endif		
		if dcur_Rapists.GetSize() > 3
			chance -= 15
		endif
		if Utility.RandomFloat(0.0,99.9) < chance
			if dcumenu.debuglogenabled	
				debug.trace("[DCUR] - Run away succeeded. Chance was: " + chance)
			endif
			dcur_raperesist_success = True
			return true
		EndIf
	EndIf
	if dcumenu.debuglogenabled	
		debug.trace("[DCUR] - Resist attempted and failed. Chance was: " + chance)
	endif
	return false
EndFunction

; These functions can help in implementing "aftermath" features.
Bool Function GetIsRapeResistActive()
	return dcumenu.sex_allowresist
EndFunction

Bool Function GetHasSucceededRapeResist()
	return (dcur_raperesist_mode > 2) && (dcur_raperesist_success == True)
EndFunction

Bool Function GetHasAttemptedRapeResist()
	return (dcur_raperesist_mode > 2)
EndFunction

Function ResistFail_Tie()
	bool hasNPCenemy = false
	int n = dcur_Rapists.GetSize() - 1
	Actor t
	while n >= 0
		t = dcur_Rapists.GetAt(n) As Actor
		if t.HasKeyword(dcumenu.ActorTypeNPC)
			hasNPCenemy = true
		EndIf										
		n -= 1
	endwhile
	if hasNPCenemy
		bool didanything = false		
		isGettingTiedUp = false 	; don't do it a second time later on
		if !libs.playerref.WornHasKeyWord(libs.zad_DeviousHeavyBondage) && dcumenu.useArmbinder			
			dcur_equiprandomleatherarmbinder(libs.playerRef, dcumenu.equiptheme)			
			didanything = true
		endif
		if (Utility.RandomInt(0,99) < 40) && !libs.playerref.WornHasKeyWord(libs.zad_DeviousBoots) && dcumenu.useBoots
			dcur_equiprandomboots(libs.playerRef, dcumenu.equiptheme)
			didanything = true		
		elseif (Utility.RandomInt(0,99) < 40) && !libs.playerref.WornHasKeyWord(libs.zad_DeviousCollar)
			dcur_equiprandomcollar(libs.playerRef, dcumenu.equiptheme)
			didanything = true
		endif
		if (Utility.RandomInt(0,99) < 30) && !libs.playerref.WornHasKeyWord(libs.zad_DeviousGag) && dcumenu.useGag
			if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt) || Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHarness)
				dcur_equiprandomringgag(libs.playerRef, dcumenu.equiptheme)
				didanything = true
			Else
				dcur_equiprandomballgag(libs.playerRef, dcumenu.equiptheme)
				didanything = true
			Endif
		endif	
		if didanything
			Utility.Wait(0.1)
			libs.notify("To get you under control and prevent any further resistance, your attacker puts you in restraints.", messagebox = true)
			Utility.Wait(1.0)
		EndIf
	EndIf
EndFunction

Function ResistFail_Rob()
	bool hasNPCenemy = false
	int n = dcur_Rapists.GetSize() - 1
	Actor t
	while n >= 0
		t = dcur_Rapists.GetAt(n) As Actor
		if t.HasKeyword(dcumenu.ActorTypeNPC)
			hasNPCenemy = true
		EndIf										
		n -= 1
	endwhile
	if hasNPCenemy
		libs.playerref.removeItem(dcumenu.gold001, math.floor(libs.playerref.GetItemCount(dcumenu.gold001) / 10), false, dcur_Rapists.GetAt(0) As Actor)
		Utility.Wait(0.1)
		Armor a = Libs.PlayerRef.GetWornForm(Armor.GetMaskForSlot(32)) As Armor
		If a && !a.HasKeyword(SexLabNoStrip)
			libs.playerref.removeItem(a, 1, false, dcur_Rapists.GetAt(0) As Actor)
		EndIf
		if a
			libs.notify("To punish you for your resistance, your attacker takes your armor and some of your gold.", messagebox = true)
		else
			libs.notify("To punish you for your resistance, your attacker takes some of your gold.", messagebox = true)
		EndIf
		Utility.Wait(1.0)
	endif
EndFunction

Function ResistSuccess_Key()	
	FindAnyUsefulKey(libs.PlayerRef)
	int rnd = Utility.RandomInt(0,99)
	if rnd < 25
		; sometimes it's a second one!
		FindAnyUsefulKey(libs.PlayerRef)
	endif
	Utility.Wait(0.1)
	libs.notify("Taken completely by surprise, your enemies are confused. They also dropped something, which you manage to pick up.", messagebox = true)
	Utility.Wait(0.1)
EndFunction

Function ResistSuccess_Box()
	libs.PlayerRef.additem(dcur_dq_damnbox)
	Utility.Wait(0.1)
	libs.notify("Taken completely by surprise, your enemies are confused. They also dropped something, which you manage to pick up.", messagebox = true)
	Utility.Wait(0.1)	
EndFunction

Bool Function RapeResist()	
	dcur_raperesist_success = False
	; zero means that the feature is disabled
	dcur_raperesist_mode = 0
	if !dcumenu.sex_allowresist || dcumenu.sexCombatResistChance == 0.0
		return false
	endif
	if originflag == origin_combat
		; combat surrender already has a resist system. Let's use that instead to keep it interesting, and to avoid changing something that works...
		return false
	EndIf	
	int r = dcur_raperesist_dlg.Show()
	if r == 0 ; accept fate
		dcur_raperesist_mode = 1
		libs.notify("You ponder resisting your attacker, but decide against it and close your eyes, hoping your ordeal won't take too long...", messagebox = true)
	elseif r == 1 ; offer willingly
		dcur_raperesist_mode = 2
		; proceed as normal, but she will undress herself and not get hogtied.
		libs.notify("It's not rape when you say yes! And why would you say no to a chance to get filled? You eagerly slip out of your clothing and open your legs wide...", messagebox = true)
	elseif r == 2 ; resist
		dcur_raperesist_mode = 3
		If ResistAttack()
			libs.notify("If your attacker thought you'd be easy prey, they were mistaken! As you charge them with fury, they back off and run!", messagebox = true)
			int rnd = Utility.RandomInt(0,99)
			if rnd < 10
				ResistSuccess_Box()				
			elseif rnd < 25
				ResistSuccess_Key()
			endif
			return true
		else
			libs.notify("You put all your might in fending off your attacker, but they are simply too strong...", messagebox = true)
			int rnd = Utility.RandomInt(0,99)
			if rnd < 10
				Utility.Wait(0.1)
				libs.notify("...but your attempt seemed to have made your attack lose interest in you anyway and they back off. Phew!", messagebox = true)
				Utility.Wait(0.1)
				return true
			elseif rnd < 30
				ResistFail_Rob()
			elseif rnd < 50
				ResistFail_Tie()
			EndIf
		EndIf
	elseif r == 3 ; run
		dcur_raperesist_mode = 4
		If ResistAttack()
			libs.notify("You don't like the idea of getting used against your will, and that's why Mother Nature gave you legs. You turn and run, and there is really no way anybody could follow you for long!", messagebox = true)
			int rnd = Utility.RandomInt(0,99)
			if rnd < 10
				ResistSuccess_Box()				
			elseif rnd < 25
				ResistSuccess_Key()
			endif
			return true
		else
			libs.notify("You try and run away from your attacker, but as good as you might be a runner, it wasn't fast enough. Soon enough, you feel their breath in your neck and you know that this was the only chance you had to escape your fate...", messagebox = true)			
			int rnd = Utility.RandomInt(0,99)
			if rnd < 10
				Utility.Wait(0.1)
				libs.notify("...but your attempt seemed to have made your attack lose interest in you anyway and they back off. Phew!", messagebox = true)
				Utility.Wait(0.1)
				return true
			elseif rnd < 30
				ResistFail_Rob()
			elseif rnd < 40
				ResistFail_Tie()
			EndIf
		EndIf
	EndIf
	return false
EndFunction

Bool Function PreScene()
	if dcumenu.debuglogenabled	
		debug.trace("[DCUR] - Setting up PreScene.")
	endif
	Game.DisablePlayerControls()	
	if originflag == origin_trap || originflag == origin_sleep
		ImageSpaceModifier.Removecrossfade(1)		
		Utility.Wait(3)
	endif	
	; Last sanity check
	Actor Rapist = dcur_Rapists.GetAt(0) As Actor
	if Rapist.GetDistance(SexLab.PlayerRef) > 350 
		Rapist.moveto(SexLab.PlayerRef)
		Utility.Wait(1)
		if Rapist.GetDistance(SexLab.PlayerRef) > 350 
			Return False
		EndIf
	endif
	if RapeResist()
		return false
	endif
	If dcur_raperesist_mode == 2
		; she is participating willingly, strips herself.
		strip(libs.playerref, true)
	else
		int z = dcur_followerlist.GetSize()	- 1			
		while z >=0
			strip((dcur_followerlist.GetAt(z) As Actor), false)		
			hogtie(dcur_followerlist.GetAt(z) As Actor)			
			z -= 1
		endwhile
		strip(libs.playerref, false)
		if !libs.playerref.WornHasKeyword(Libs.zad_DeviousHeavyBondage)
			hogtie(libs.playerref)				
		endif		
	EndIf	
	return true
EndFunction

Bool Function StripBelt(Bool always = false, Actor akActor = none) 
	beltwasremoved = None
	Armor belt = libs.GetWornDevice(libs.playerref, libs.zad_DeviousBelt)	
	Key k = libs.GetDeviceKey(belt)
	int chance = 50
	if k && k != libs.ChastityKey
		; Belt requires a non-standard key, so rapist has reduced chance to posess it if player doesn't have one.
		chance = 25
	endif	
	If always
		chance = 100			
	elseIf Libs.PlayerRef.WornHasKeyword(dcur_kw_misogynyBelt)
		; males can always unlock this belt, but we need to check if any are here.
		If akActor == none  ; if no actor was passed we assume it's a gangbang.
			Int cr = dcur_Rapists.GetSize() 
			While cr > 0 && chance < 100
				cr -= 1
				If (dcur_Rapists.GetAt(cr) As Actor).GetLeveledActorBase().GetSex() == 0
					chance = 100
				Endif
			Endwhile
		ElseIf akActor.GetLeveledActorBase().GetSex() == 0
			chance = 100			
		Endif
		; if no males were present: females have absolutely no chance to unlock it
		if chance < 100
			chance = 0
		Endif
	Endif
	; we can remove generic or select DCL belts:
	if (!belt.haskeyword(libs.zad_BlockGeneric) || dcumenu.dcur_DDgenericblockitems.HasForm(belt)) && k != None && ((libs.playerref.GetItemCount(k) > 0 && !Libs.PlayerRef.WornHasKeyword(dcur_kw_misogynyBelt)) || Utility.RandomInt(0, 99) < chance)
		beltwasremoved = belt
		; need to brute force Generic Block items, but only if they are allowed.
		if dcumenu.dcur_DDgenericblockitems.HasForm(belt) && belt != dcumenu.dcur_MaidensShield			
			libs.UnlockDevice(libs.playerref, belt, zad_DeviousDevice = libs.zad_DeviousBelt, destroyDevice = false)
		elseif !libs.UnlockDeviceByKeyword(libs.playerref, zad_DeviousDevice = libs.zad_DeviousBelt, destroyDevice = false)
			beltwasremoved = None
		endif
		if beltwasremoved != none 
			if Libs.PlayerRef.GetItemCount(k) > 0
				dcumenu.dcur_assaulter_dialogue.SetValueInt(7)
				if akActor
					akActor.say(dcumenu.dcur_assaulters_dialogue)
				Else
					speaker.say(dcumenu.dcur_assaulters_dialogue)
				Endif
			else
				dcumenu.dcur_assaulter_dialogue.SetValueInt(8)
				if akActor
					akActor.say(dcumenu.dcur_assaulters_dialogue)
				Else
					speaker.say(dcumenu.dcur_assaulters_dialogue)
				EndIf
			endif			
			return true
		Endif
	endif
	return false
EndFunction
			
Function IntroScene()
	if dcumenu.debuglogenabled	
		debug.trace("[DCUR] - Setting up Intro.")
	endif
	libs.notify("You are getting pushed down to the ground!!!")
	Game.DisablePlayerControls()
	libs.SexlabMoan(libs.playerref)
	Speaker = dcur_Rapists.GetAt(0) As Actor
	libs.SexlabMoan(libs.playerref)	
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt) && (dcumenu.stripbeltsonrape || Libs.PlayerRef.WornHasKeyword(dcur_kw_misogynyBelt)) && !(dcur_Rapists.GetAt(0) As Actor).HasKeyWord(dcumenu.ActorTypeCreature)
		if StripBelt()
			Utility.Wait(5)
		Endif
	endif	
	if !libs.playerref.WornHasKeyword(Libs.zad_DeviousHeavyBondage)
		endhogtie(libs.playerref)		
	endif	
	; if we're doing a one on one, we can tie up the character now
	if isGettingTiedUp && dcur_Rapists.GetSize() == 1
		libs.notify("Strong hands pin you down and lock restraints on you...")
		dcumenu.dcur_assaulter_dialogue.SetValueInt(3)
		speaker.say(dcumenu.dcur_assaulters_dialogue)	
		Utility.Wait(5)		
		if dcumenu.useArmbinder			
			dcur_equiprandomleatherarmbinder(libs.playerRef, dcumenu.equiptheme)			
		endif
		if dcumenu.useBoots
			dcur_equiprandomboots(libs.playerRef, dcumenu.equiptheme)
		endif
		if dcumenu.useGag
			if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt) || Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHarness)
				dcur_equiprandomringgag(libs.playerRef, dcumenu.equiptheme)
			Else
				dcur_equiprandomballgag(libs.playerRef, dcumenu.equiptheme)
			Endif
		endif	
	endif	
	return
endFunction

Function suspendDDI()	
	libs.GlobalEventFlag = False
EndFunction

Function resumeDDI()	 
	libs.GlobalEventFlag = True	
EndFunction

bool function gangbang(bool fullscene = true, int origin = 0)
	;mutex	
	if gangbangmutex
		return false
	endif		
	gangbangmutex = true	
	originflag = origin
	sexattackterminate = false
	; don't run this function while the player is having sex already!
	if libs.IsAnimating(libs.playerref)	|| UI.IsMenuOpen("InventoryMenu") || UI.IsMenuOpen("Dialogue Menu")		
		gangbangmutex = false
		return false
	endif	
	suspendDDI()
	StorageUtil.SetIntValue(Game.GetPlayer(), "DCUR_SceneRunning", 1)
	SendModEvent("dhlp-Suspend")
	AIgreetingdistancesetting = Game.GetGameSettingFloat("fAIMinGreetingDistance") 
	Game.SetGameSettingFloat("fAIMinGreetingDistance", 0.0) 		
	; abort if no suitable mobs found, or fallback to spawned bandits 
	If !ScanforRapists()				
		if originflag == origin_combat
			clearlist()
			gangbangmutex = false	
			Game.SetGameSettingFloat("fAIMinGreetingDistance", AIgreetingdistancesetting) 	
			StorageUtil.SetIntValue(Game.GetPlayer(), "DCUR_SceneRunning", 0)
			SendModEvent("dhlp-Resume")			
			resumeDDI()	 
			return false
			;libs.playerref.GetActorBase().SetEssential(False)
		endif
		if originflag == origin_cloak
			clearlist()
			gangbangmutex = false	
			Game.SetGameSettingFloat("fAIMinGreetingDistance", AIgreetingdistancesetting) 	
			StorageUtil.SetIntValue(Game.GetPlayer(), "DCUR_SceneRunning", 0)
			SendModEvent("dhlp-Resume")			
			resumeDDI()	 
			return false
		Endif
		if originflag == origin_trap || originflag == origin_sleep
			ImageSpaceModifier.Removecrossfade(1)
			Utility.Wait(1)
			Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")			
		endif
		; fall back to bandit scene
		if dcumenu.debuglogenabled	
			debug.trace("[DCUR] - Attempting fall back to bandit scene.")
		endif
		if RapeResist()
			Game.EnablePlayerControls()
			return false
		endif
		rape()
		gangbangmutex = false		
		Game.EnablePlayerControls()			
		return true		
	endif		
	if dcumenu.sexAttackCooldown > 1
		LastSexAttackTime = Utility.GetCurrentGameTime() - ((dcumenu.sexAttackCooldown - 1) / 24)
	else
		LastSexAttackTime = Utility.GetCurrentGameTime()
	endif	
	if GatherRapists()					
		rapeher(fullscene)				
		gangbangmutex = false
		Game.SetGameSettingFloat("fAIMinGreetingDistance", AIgreetingdistancesetting) 							
		return true
	endif
	clearlist()
	gangbangmutex = false
	Game.SetGameSettingFloat("fAIMinGreetingDistance", AIgreetingdistancesetting) 	
	StorageUtil.SetIntValue(Game.GetPlayer(), "DCUR_SceneRunning", 0)
	SendModEvent("dhlp-Resume")	
	resumeDDI()	 
	return false
endFunction

Function dcur_selfbondagegastrap()
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")		
	libs.playerRef.placeatme(dcumenu.dcur_gascloud)
	Utility.Wait(2)
	; sanity check for unworn items. The result will not always be correct as the player could carry more than one item of each kind.
	if !(libs.playerRef.GetItemCount(libs.zad_InventoryDevice) > libs.playerRef.GetItemCount(libs.zad_Lockable))
		libs.notify("You want to be bound, but don't have restraints to play with.")
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")	
		return
	endif
	libs.notify("Your desire to be bound tight is overwhelming you...")
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")	
	Utility.Wait(1)
	selfbondageequip(libs.playerref)
EndFunction

Function dcur_SSTrigger(bool trap = false)
	If Trap
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")		
		libs.playerRef.placeatme(dcumenu.dcur_gascloud)
		Utility.Wait(2)
		libs.notify("The gas makes you pass out...")
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")	
		Utility.Wait(1)
	Endif
	SendModEvent("SSLV Entry")
EndFunction

Bool Function isBelted(actor a)
	if a.WornHasKeyword(libs.zad_DeviousBelt) || a.WornHasKeyword(libs.zad_DeviousHarness)
		return true
	Endif
	return false
EndFunction

Bool Function isAllowedItem(actor a, Form kForm, Bool ignoreBelt = false, Bool ignoreBra = false, Bool forceall = false)	
	; that code sure looks horrible, but will also work for NPCs! If the ignore flags are true, the routine will allow putting plugs through already equipped belts etc.
	if kForm.HasKeyword(libs.zad_DeviousHeavyBondage) && ((!dcumenu.useArmbinder && !forceall) || a.WornHasKeyword(libs.zad_DeviousHeavyBondage))
		return false
	elseif kForm.HasKeyword(libs.zad_DeviousBlindfold) && ((!dcumenu.useBlindfold && !forceall)  || a.WornHasKeyword(libs.zad_DeviousBlindfold))
		return false
	elseif kForm.HasKeyword(libs.zad_DeviousBelt) && ((!dcumenu.useBelt && !forceall) || a.WornHasKeyword(libs.zad_DeviousBelt))
		return false
	elseif kForm.HasKeyword(libs.zad_DeviousBra) && ((!dcumenu.useBra && !forceall) || a.WornHasKeyword(libs.zad_DeviousBra))
		return false
	elseif kForm.HasKeyword(libs.zad_DeviousHood) && ((!dcumenu.useHoods && !forceall) || a.WornHasKeyword(libs.zad_DeviousHood))
		return false
	elseif kForm.HasKeyword(libs.zad_DeviousGag) && ((!dcumenu.useGag && !forceall) || a.WornHasKeyword(libs.zad_DeviousGag))
		return false
	elseif kForm.HasKeyword(libs.zad_DeviousBoots) && ((!dcumenu.useBoots && !forceall) || a.WornHasKeyword(libs.zad_DeviousBoots))
		return false
	elseif kForm.HasKeyword(libs.zad_DeviousSuit) && ((!dcumenu.useSuits && !forceall) || a.WornHasKeyword(libs.zad_DeviousSuit))
		return false
	elseif kForm.HasKeyword(libs.zad_DeviousHarness) && ((!dcumenu.useSlaveHarness && !forceall) || (a.WornHasKeyword(libs.zad_DeviousHarness) || a.WornHasKeyword(libs.zad_DeviousCorset)))
		return false			
	elseif kForm.HasKeyword(libs.zad_DeviousCorset) && ((!dcumenu.useSlaveHarness && !forceall) || (a.WornHasKeyword(libs.zad_DeviousHarness) || a.WornHasKeyword(libs.zad_DeviousCorset)))
		return false			
	elseif kForm.HasKeyword(libs.zad_DeviousPiercingsNipple) && ((a.WornHasKeyword(libs.zad_DeviousBra) && !ignoreBra) || a.WornHasKeyword(libs.zad_DeviousPiercingsNipple))
		; can't put in piercings through an already worn bra
		return false
	elseif kForm.HasKeyword(libs.zad_DeviousPiercingsVaginal) && ((isBelted(a) && !ignoreBelt) || a.WornHasKeyword(libs.zad_DeviousPiercingsVaginal))
		; can't put in piercings and plugs through an already worn belt
		return false
	elseif kForm.HasKeyword(libs.zad_DeviousPlug) && ((isBelted(a) && !ignoreBelt) || a.WornHasKeyword(libs.zad_DeviousPlug))
		return false			
	elseif kForm.HasKeyword(libs.zad_DeviousPlugVaginal) && ((isBelted(a) && !ignoreBelt) || a.WornHasKeyword(libs.zad_DeviousPlugVaginal))
		return false	
	elseif kForm.HasKeyword(libs.zad_DeviousPlugAnal) && ((isBelted(a) && !ignoreBelt) || a.WornHasKeyword(libs.zad_DeviousPlugAnal))
		return false		
	Endif
	return true
EndFunction

Function selfbondageequip(actor a, Bool forceall = false)
        Game.DisablePlayerControls()
        int selfbondageitems = Utility.RandomInt(dcumenu.selfbondageminitems, dcumenu.selfbondagemaxitems)        
        If dcumenu.enableundress && !forceall
            strip(a, true)
		elseif forceall
			strip(a, false)
		EndIf
        Int MaxItems = a.GetNumItems()
        Int Nth = Utility.RandomInt(1, MaxItems - 1)        		
		Int ItemsLeft = MaxItems
        Bool DeviceEquipped = False
        Bool BeltNeeded = False
		Bool wasBelted = isBelted(a)
		Bool wasBraed = a.WornHasKeyword(libs.zad_DeviousBra)
        ; Check these at start only so that the later loop doesn't care about the order the devices are applied in, as long as the actor didn't start the process wearing them.        
        While ItemsLeft > 0 && (selfbondageitems > 0 || forceall)
			Form kForm = a.GetNthForm(Nth)
			If kform && kForm.GetType() == 26 && kForm.HasKeyword(libs.zad_InventoryDevice) && !kForm.HasKeyword(libs.zad_BlockGeneric)                       								
				Armor rDevice = libs.GetRenderedDevice(kForm As Armor)
				if rDevice && isAllowedItem(a, rDevice, ignoreBelt = !wasBelted, ignoreBra = !wasBraed, forceall = forceall)    
					if (rDevice.HasKeyword(libs.zad_DeviousPlugVaginal) || rDevice.HasKeyword(libs.zad_DeviousPlugAnal)) && !wasBelted && dcumenu.useBelt
						BeltNeeded = true					
					endif
					libs.LockDevice(a, kForm As Armor)
					DeviceEquipped = True
					selfbondageitems -= 1
					Utility.Wait(1)					
				endif	                        
			EndIf
			ItemsLeft -= 1
			Nth -= 1
			if Nth == 0
				Nth = MaxItems
			Endif
        EndWhile
        If BeltNeeded && !isBelted(a) ; sanity check if the character -still- isn't belted as the routine could have added one in the meantime.
			dcur_equiprandombelt(a, theme = dcumenu.equiptheme)
        Endif
        ; if nothing was equipped so far, put her in an armbinder. That will always work because selfbondage wouldn't trigger with tied hands.
        If !DeviceEquipped && dcumenu.useArmbinder
            dcur_equiprandomarmbinder(a, theme = dcumenu.equiptheme)
        Endif
        if forceall || Utility.RandomInt(0, 99) < dcumenu.losekeychance
            dcur_removekeys(a, standardkeysonly = true)
        endif
        Game.EnablePlayerControls()
EndFunction 

Bool Function Selfbondage()
	; sanity check for unworn items. The result will no always be correct as the player could carry more than one item of each kind.
	if !(libs.playerRef.GetItemCount(libs.zad_InventoryDevice) > libs.playerRef.GetItemCount(libs.zad_Lockable))
		return false
	endif
	If ((Utility.GetCurrentGameTime() - lastselfbondage) * 24 > dcumenu.selfbondagecooldown) && !libs.playerref.IsInCombat() && !libs.IsAnimating(libs.playerref)						
		bool isAroused = (libs.aroused.GetActorArousal(libs.PlayerRef) > dcumenu.uncontrollablelustThreshold)
		if !isAroused
			selfbondagemessagecounter = 0
			return false
		elseif isAroused && !dcumenu.selfbondagewarning
			; Just a small random chance to give in
			If Utility.RandomInt() < 15
				libs.notify("You are extremely horny and the thought of the bondage devices in your backpack makes you wet and hot. You spontaneously decide that you want to be tied up and helpless, so you take some restraints and lock them on yourself...", true)
				lastselfbondage = Utility.GetCurrentGameTime()
				selfbondageequip(libs.playerref)
				selfbondagemessagecounter = 0
				return true
			Else
				lastselfbondage = Utility.GetCurrentGameTime()
				selfbondagemessagecounter = 0
				return false
			EndIf
		endif
		; the character has a chance to change her mind:
		If Utility.RandomInt() < 25 && selfbondagemessagecounter > 4
			libs.notify("Maybe binding yourself is not very smart after all...")
			lastselfbondage = Utility.GetCurrentGameTime()
			selfbondagemessagecounter = 0
			return false			
		EndIf
		if selfbondagemessagecounter == 0
			libs.notify("Images of you wearing chains appear in your head...")
			selfbondagemessagecounter += 1
			return false
		elseif selfbondagemessagecounter == 1
			libs.notify("You fantasize about being tied up and helpless...")
			selfbondagemessagecounter += 1
			return false
		elseif selfbondagemessagecounter == 2
			libs.notify("The thought of being bound and gagged makes you wet...")
			selfbondagemessagecounter += 1
			return false
		elseif selfbondagemessagecounter == 3
			libs.notify("It would be so easy to tie yourself up...")
			selfbondagemessagecounter += 1
			return false
		elseif selfbondagemessagecounter == 4
			libs.notify("Your desire to be bound tight is overwhelming you...")
			selfbondagemessagecounter += 1
			return false
		elseif selfbondagemessagecounter > 4
			If Utility.RandomInt(0, 99) < (10 + selfbondagemessagecounter)
				libs.notify("You are extremely horny and the thought of the bondage devices in your backpack makes you wet and hot. You spontaneously decide that you want to be tied up and helpless, so you take some restraints and lock them on yourself...", true)
				lastselfbondage = Utility.GetCurrentGameTime()
				selfbondageequip(libs.playerref)
				selfbondagemessagecounter = 0
				return true
			Else
				selfbondagemessagecounter += 1
			Endif
		endif
	endif
	return false
EndFunction

bool function hasbeenlooted(int containerID)
int counter = 0
	while counter < dcumenu.lootedlistsize
		if containerID == dcumenu.lastlooted[counter]
			return true
		endif
		counter += 1
	endwhile
	return false
endfunction

function rememberID(int containerID)
	dcumenu.lastlootedcounter += 1
	if dcumenu.lastlootedcounter >= dcumenu.lootedlistsize
		dcumenu.lastlootedcounter = 0
	endIf
	dcumenu.lastlooted[dcumenu.lastlootedcounter] = containerID
endfunction

;; start traps functions (formerly onactivatecontainer)

bool Function dcur_isHeavilyRestrained()
  if !(dcumenu.heavilyrestrainedthreshold == 0) && (getDDitemcount(libs.PlayerRef) > dcumenu.heavilyrestrainedthreshold) 
    return true
  Endif
  return false   
EndFunction

Function QuestItemsToLoot(ObjectReference addto)
	; Supply and Demand quest
	If sadqs.GetStage() == 20 && Libs.playerref.GetItemCount(sadqs.dcur_sadq_LostShipment) == 0 && isInDungeon() && dcumenu.dcur_bigchestlist.HasForm(oref.GetBaseObject()) ;  && Utility.RandomInt(0, 99) < 33
		addto.AddItem(sadqs.dcur_sadq_LostShipment, 1) 		
		return
	EndIf
	; Can add The Bound Queen to a chest as soon as the playerlevel reached the threshold - REMOVED. Bound Queen is now a part of the quest arc.
	;If rcqs.GetStage() == 0 && Libs.playerref.GetItemCount(rcqs.dcur_royalchastity_bookstart) == 0 && Libs.PlayerRef.GetLevel() > dcumenu.rc_minplayerlevel && isInDungeon() && dcumenu.dcur_bigchestlist.HasForm(oref.GetBaseObject()) && Utility.RandomInt(0, 99) < dcumenu.rc_itemdropchance		
	;	addto.AddItem(rcqs.dcur_royalchastity_bookstart, 1) 		
	;	return
	;EndIf
	If rcqs.GetStage() == 20 && Utility.RandomInt(0, 99) < dcumenu.rc_itemdropchance && isInDungeon() && dcumenu.dcur_bigchestlist.HasForm(oref.GetBaseObject())
		If rcqs.ItemsFound == 4
			; make sure that all necessary slots are available, otherwise do not drop the last item
			If libs.playerRef.WornHasKeyword(libs.zad_DeviousBelt) || libs.playerRef.WornHasKeyword(libs.zad_DeviousBra) || libs.playerRef.WornHasKeyword(libs.zad_DeviousCollar) || libs.playerRef.WornHasKeyword(libs.zad_DeviousArmCuffs) || libs.playerRef.WornHasKeyword(libs.zad_DeviousLegCuffs) || libs.playerRef.WornHasKeyword(libs.zad_DeviousHarness) || libs.playerRef.WornHasKeyword(libs.zad_DeviousSuit)
				Return
			EndIf
		EndIf		
		If !rcqs.IsObjectiveCompleted(21)
			addto.AddItem(dcumenu.dcur_royalchastity_belt, 1) 		
		ElseIf !rcqs.IsObjectiveCompleted(22)
			addto.AddItem(dcumenu.dcur_royalchastity_bra, 1) 		
		ElseIf !rcqs.IsObjectiveCompleted(23)
			addto.AddItem(dcumenu.dcur_royalchastity_collar, 1) 		
		ElseIf !rcqs.IsObjectiveCompleted(24)
			addto.AddItem(dcumenu.dcur_royalchastity_armcuffs, 1) 		
		ElseIf !rcqs.IsObjectiveCompleted(25)		
			addto.AddItem(dcumenu.dcur_royalchastity_legcuffs, 1) 		
		Endif
	Endif
	If rcqs.GetStage() == 40 && Utility.RandomInt(0, 99) < dcumenu.rc_diarydropchance && isInDungeon()
		addto.AddItem(rcqs.dcur_royalchastity_diaryfragment, 1) 		
	Endif
EndFunction

function RestraintsToLoot(ObjectReference addto)	
	QuestItemsToLoot(addto)
	if mcs.IsDCURQuestRunning || dcumenu.shutdownmod ; some quests involve finding restraints, so this might be confusing
		return
	EndIf
	Int i = 0
	If Utility.RandomFloat(0.0, 99.9) < dcumenu.restraintsdropchance
		Int r = Utility.RandomInt(1, 3)
		While r > 0
			If Utility.RandomInt(1, 2) == 1
				i = Utility.RandomInt(0, dcumenu.dcur_DDFrameworkItemList.GetSize() - 1)
				addto.AddItem(dcumenu.dcur_DDFrameworkItemList.GetAt(i), 1) 
			Else
				i = Utility.RandomInt(0, dcumenu.dcur_DDSimpleItems.GetSize() - 1)
				addto.AddItem(dcumenu.dcur_DDSimpleItems.GetAt(i), 1) 
			EndIf
			r -= 1
		Endwhile
	Endif
	if dcumenu.dcur_bigchestlist.HasForm(oref.GetBaseObject()) && Utility.RandomInt() < 33
		addto.AddItem(dcur_darepack, 1)
	EndIf	
Endfunction
  
String function checkforcommonkeys(ObjectReference addto)		
	
	if dcumenu.debugenabled
		libs.notify("Checking for common keys.")	
	endif
	
	if (!dcumenu.escape_containersenabled && dcur_origintype == is_container) || (!dcumenu.escape_corpsesenabled && dcur_origintype == is_deadbody)
		if dcumenu.debugenabled
			libs.notify("Keys cannot drop here.")	
		endif
		return ""
	endif

	if Libs.PlayerRef.WornHasKeyword(dcumenu.dcur_kw_lb_leatherbindings) && Utility.RandomInt(0,100) < dcumenu.handrestraintkeychance
		libs.notify("While your bound hands awkwardly browse the contents of the container for anything useful, you suddenly feel the presence of a razor sharp item. You manage to arrange it in a way to allow you to cut into your bonds and after a long while of carefully rubbing your restraint against the sharp object, the leather bindings finally fall off you!", messagebox = true)				
		Utility.Wait(0.1)
		mcs.lbqs.removed_LeatherBindings = True	
		mcs.lbqs.RegisterForSingleUpdate(0.1)			
		return ""
	endif		
	; Player is wearing an armbinder, let's check if there is a sharp item in the box!
	If (Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousArmbinder) || Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousArmbinderElbow))&& !libs.playerref.IsEquipped(mcs.hqqs.dcur_hq_ChastityBeltRendered) && !mcs.lbqs.lbqsquestrunning && dcur_origintype != is_trap && dcur_origintype != is_plant && !Libs.PlayerRef.WornHasKeyword(dcumenu.dcur_kw_wristshackles) && !libs.GetWornDevice(libs.playerref, libs.zad_DeviousHeavyBondage).HasKeyword(libs.zad_BlockGeneric) 
	
		if Utility.RandomInt(0,100) < dcumenu.sharpitemchance
			libs.notify("While your bound hands awkwardly browse the contents of the container for anything useful, you suddenly feel the presence of a razor sharp item. You manage to arrange it in a way to allow you to cut into your bonds and after a long while of carefully rubbing your restraint against the sharp object, you finally manage to slip out of your armbinder!", messagebox = true)	
			Utility.Wait(0.1)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousHeavyBondage)
			return ""
		endif
	endif
	
	float dropchance = dcumenu.keydropchance	
	if dcur_origintype == is_plant || dcur_origintype == is_mine 
		dropchance = dropchance * dcumenu.keydropnodemodifier
	endif
	
	if !(dcumenu.nokeyswithoutrestraints && getDDitemcount(libs.playerref) == 0) && Utility.RandomFloat(0.0, 99.9) < dropchance		
		if dcumenu.dropusefulkeys
			FindAnyUsefulKey(addto)
		Endif
		float chance = 0.0
		float grandtotalweight = dcumenu.chastitykeyweight + dcumenu.restraintskeyweight + dcumenu.piercingkeyweight				
		chance = Utility.RandomFloat(0.0, grandtotalweight)		
		if chance < dcumenu.chastitykeyweight		
			addto.AddItem(libs.chastityKey, 1) 
			return "Chastity Key"
		endIf	
		chance = chance - dcumenu.chastitykeyweight						
		if chance < dcumenu.restraintskeyweight		
			addto.AddItem(libs.restraintsKey, 1) 
			return "Restraints Key"
		endIf	
		chance = chance - dcumenu.restraintskeyweight						
		if chance < dcumenu.piercingkeyweight		
			addto.AddItem(libs.piercingKey, 1) 
			return "Piercing Tool"
		endIf	
		chance = chance - dcumenu.piercingkeyweight						
	endif
	return ""
 endfunction 

Function FindAnyUsefulKey(ObjectReference addto = none)
	FindUsefulKeys(addto, true, true)
endfunction
 
Function FindUsefulKey(ObjectReference addto = none)
	FindUsefulKeys(addto, true, false)
endfunction

Function FindUsefulRareKey(ObjectReference addto = none)
	FindUsefulKeys(addto, false, true)
endfunction

string Function FindUsefulKeys(ObjectReference addto = none, bool includeCommonKeys = true, bool includeRareKeys = false)
	float chastitykeyweight = dcumenu.chastitykeyweight
	float restraintskeyweight = dcumenu.restraintskeyweight
	float piercingkeyweight = dcumenu.piercingkeyweight
	float headrestraintkeychance = dcumenu.headrestraintkeychance
	float handrestraintkeychance = dcumenu.handrestraintkeychance
	float bodyrestraintkeychance = dcumenu.bodyrestraintkeychance
	float legrestraintkeychance = dcumenu.legrestraintkeychance
	If !addto
		addto = libs.playerRef
	Endif
	Actor Player = libs.playerRef
	; Weight keys by worn keywords
	If Player.WornHasKeyword(libs.zad_DeviousHeavyBondage) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(46))))
		If includeRareKeys
			handrestraintkeychance += 250
		Endif
		if includeCommonKeys
			restraintskeyweight += 250
		Endif
	Endif
	If Player.WornHasKeyword(libs.zad_DeviousHood) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(30))))
		If includeRareKeys
			headrestraintkeychance += 150
		Endif
		if includeCommonKeys
			restraintskeyweight += 150
		Endif
	Endif
	If Player.WornHasKeyword(libs.zad_DeviousGag) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(44))))
		If includeRareKeys
			headrestraintkeychance += 150
		Endif
		if includeCommonKeys
			restraintskeyweight += 150
		Endif
	Endif
	If Player.WornHasKeyword(libs.zad_DeviousBlindfold) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(55))))
		If includeRareKeys
			headrestraintkeychance += 150
		Endif
		if includeCommonKeys
			restraintskeyweight += 150
		Endif
	Endif
	If Player.WornHasKeyword(libs.zad_DeviousBoots) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(37))))
		If includeRareKeys
			legrestraintkeychance += 100
		Endif
		if includeCommonKeys
			restraintskeyweight += 100
		Endif
	Endif
	If Player.WornHasKeyword(libs.zad_DeviousCollar) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(45))))
		If includeRareKeys
			headrestraintkeychance += 100
		Endif
		if includeCommonKeys
			restraintskeyweight += 100
		Endif
	Endif
	If Player.WornHasKeyword(libs.zad_DeviousBelt) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(49))))
		If includeRareKeys
			bodyrestraintkeychance += 100
		Endif
		if includeCommonKeys
			chastitykeyweight += 100
		Endif
	Endif
	If Player.WornHasKeyword(libs.zad_DeviousGloves) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(33))))
		If includeRareKeys
			handrestraintkeychance += 100
		Endif
		if includeCommonKeys
			restraintskeyweight += 100
		Endif
	Endif
	If Player.WornHasKeyword(libs.zad_DeviousSuit) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(32))))
		If includeRareKeys
			bodyrestraintkeychance += 50
		Endif
		if includeCommonKeys
			restraintskeyweight += 50
		Endif
	Endif
	If Player.WornHasKeyword(libs.zad_DeviousBra) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(56))))
		If includeRareKeys
			bodyrestraintkeychance += 50
		Endif
		if includeCommonKeys
			chastitykeyweight += 50
		Endif
	Endif
	If Player.WornHasKeyword(libs.zad_DeviousHarness) || Player.WornHasKeyword(libs.zad_DeviousCorset) && (includeCommonKeys || dcumenu.dcur_DDgenericblockitems.HasForm(Player.GetWornForm(Armor.GetMaskForSlot(58))))
		If includeRareKeys
			bodyrestraintkeychance += 50
		Endif
		if includeCommonKeys
			chastitykeyweight += 50
		Endif
	Endif	
	Float chance = 0.0
	Float grandtotalweight = 0.0
	float dropchance = dcumenu.rarekeydropchance + dcumenu.keydropchance
	If (!includeCommonKeys || Utility.RandomFloat(0.0,dropchance) < dcumenu.rarekeydropchance) && includeRareKeys
		grandtotalweight = headrestraintkeychance + handrestraintkeychance + bodyrestraintkeychance + legrestraintkeychance
		chance = Utility.RandomFloat(0.0, grandtotalweight)
		if chance < headrestraintkeychance
			addto.AddItem(dcumenu.dcur_headrestraintskey, 1)
			return "Head Restraints Key"
		else
				chance = chance - headrestraintkeychance
		endIf
		if chance < handrestraintkeychance
			addto.AddItem(dcumenu.dcur_handrestraintskey, 1)
			return "Hand Restraints Key"
		else
				chance = chance - handrestraintkeychance
		endIf
		if chance < bodyrestraintkeychance
			addto.AddItem(dcumenu.dcur_bodyrestraintskey, 1)
			return "Body Restraints Key"
		else
				chance = chance - bodyrestraintkeychance
		endIf
		if chance < legrestraintkeychance
			addto.AddItem(dcumenu.dcur_legrestraintskey, 1)
			return "Leg Restraints Key"
		else
				chance = chance - legrestraintkeychance
		endIf
	elseif includeCommonKeys
		grandtotalweight = chastitykeyweight + restraintskeyweight + piercingkeyweight
		chance = Utility.RandomFloat(0.0, grandtotalweight)
		if chance < chastitykeyweight
			addto.AddItem(libs.chastityKey, 1)
			return "Chastity Key"
		else
				chance = chance - chastitykeyweight
		endIf
		if chance < restraintskeyweight
			addto.AddItem(libs.restraintsKey, 1)
			return "Restraints Key"
		else
				chance = chance - restraintskeyweight
		endIf
		if chance < piercingkeyweight
			addto.AddItem(libs.piercingKey, 1)
			return "Piercing Tool"
		else
			chance = chance - piercingkeyweight
		endIf
	endif
EndFunction 
 
String Function checkforspecialkeys(ObjectReference addto)	
	String name = ""
	float chance = 0.0	
	if dcumenu.debugenabled
		libs.notify("Checking for rare items.")	
	endif	
	Float dropmodifier = 1.0
	if dcur_origintype == is_plant || dcur_origintype == is_mine 
		dropmodifier = dropmodifier * dcumenu.keydropnodemodifier
	endif		
	; Let's check for a living key if the Living Harness is equipped
	if hasAradia() && dci.aradialib_livingharnessRendered != None && dci.aradialib_livingkey != None && libs.IsWearingDevice(libs.PlayerRef, dci.aradialib_livingharnessRendered, libs.zad_DeviousHarness) == 1 && Libs.PlayerRef.GetItemCount(dci.aradialib_livingkey) == 0
		chance = dcumenu.AradiaLivingHarnesskeychance * dropmodifier		
		if Utility.RandomFloat(0.0, 100.0) < chance
			;libs.notify("You have found a living key in the " + oref.GetDisplayName(), messagebox = true)
			addto.AddItem(dci.aradialib_livingkey, 1) 
			return "Living Key"
		endif
	endif
	chance = dcumenu.luckycharmdropchance * dropmodifier
	if Utility.RandomFloat(0.0, 100.0) < chance			
		addto.AddItem(dcumenu.dcur_luckycharm, 1) 
		return "Lucky Charm"
	endif
	chance = (dcumenu.luckycharmdropchance / 2) * dropmodifier
	if dcumenu.dcur_bigchestlist.HasForm(addto.GetBaseObject())
		; we're a boss chest
		chance = dcumenu.traprewards
		if Utility.RandomFloat(0.0, 100.0) < chance			
			addto.AddItem(dcur_dq_damnbox, 1) 
		EndIf
	EndIf	
	if dcumenu.dcur_bigchestlist.HasForm(addto.GetBaseObject())
		; we're a boss chest
		chance = dcumenu.traprewards
		if Utility.RandomFloat(0.0, 100.0) < chance			
			addto.AddItem(dcur_universalkey, 1) 
		EndIf
	EndIf
	If chance < 1.0
		; this stuff shouldn't be THAT rare!
		chance = 1.0
	EndIf
	if dcumenu.cuminflationenable && Utility.RandomFloat(0.0, 100.0) < chance
		addto.AddItem(dcur_cumdissolve, 1) 
		return "Strange Potion"
	endif
	If libs.PlayerRef.WornHasKeyWord(libs.zad_DeviousBelt) && chance < 3.0
		; being belted will probably put her in constant arousal trouble, so we incease the chance to find this.
		chance = 3.0
	EndIf
	if Utility.RandomFloat(0.0, 100.0) < chance
		addto.AddItem(dcur_frigidwash, Utility.RandomInt(1,5)) 
		return "Foul-tasting Potion"
	endif	
	return name	
Endfunction  

String Function checkforrarekeys(ObjectReference addto)		
	String name = ""
	float dropchance = dcumenu.rarekeydropchance	
	if dcur_origintype == is_plant || dcur_origintype == is_mine 
		dropchance *= dcumenu.keydropnodemodifier
	endif
	If mcs.lbqs.lbqsquestrunning
		dropchance *= dcumenu.lbkeydropmodifier	
	Endif
	if !(dcumenu.nokeyswithoutrestraints && getDDitemcount(libs.playerref) == 0) && Utility.RandomFloat(0.0, 99.9) < dropchance				
		if dcumenu.dropusefulkeys
			FindUsefulRareKey(addto)
			return ""
		Endif
		Float chance = 0.0
		Float grandtotalweight = dcumenu.headrestraintkeychance + dcumenu.handrestraintkeychance + dcumenu.bodyrestraintkeychance	+ dcumenu.legrestraintkeychance		
		chance = Utility.RandomFloat(0.0, grandtotalweight)		
		if chance < dcumenu.headrestraintkeychance
			addto.AddItem(dcumenu.dcur_headrestraintskey, 1) 
			return "Head Restraints Key"
		endIf	
		chance = chance - dcumenu.headrestraintkeychance		
		if chance < dcumenu.handrestraintkeychance
			addto.AddItem(dcumenu.dcur_handrestraintskey, 1) 
			return "Hand Restraints Key"
		endIf	
		chance = chance - dcumenu.handrestraintkeychance
		if chance < dcumenu.bodyrestraintkeychance
			addto.AddItem(dcumenu.dcur_bodyrestraintskey, 1) 
			return "Body Restraints Key"
		endIf	
		chance = chance - dcumenu.bodyrestraintkeychance		
		if chance < dcumenu.legrestraintkeychance
			addto.AddItem(dcumenu.dcur_legrestraintskey, 1) 
			return "Leg Restraints Key"
		endIf	
		chance = chance - dcumenu.legrestraintkeychance
	endif
	return name	
endfunction  

Function wipeitemsequipped()
	itemsequipped = new Keyword[15]
	int i = 0
	while i < 10
		itemsequipped[i] = None
		i += 1
	endwhile
	itemsequippedpointer = 0
endfunction
 
String Function MakeStory(bool keysgone, int equipmode)	
	if equipmode == equip_fullset
		return "You have no idea what just happened, but you now now locked into a full set of bondage devices!"
	endif
	
	int count = 0
	String txt = "You have no idea what just happened, but "
	int i = 0	
	; messageboxes only fit so much text, so we need to limit the total length of the text. These devices will get mentioned with high priority
	while i < 10
		if itemsequipped[i] == Libs.zad_DeviousBelt
			txt = txt + "you're now wearing an extremely tight sitting chastity belt holding two large plugs inside you, "
			count += 1
		endif
		if itemsequipped[i] == Libs.zad_DeviousArmbinder
			txt = txt + "the armbinder locking your arms and elbows behind your back is strapped so tight that you can't even separate your wrists inside the glove, "
			count += 1
		endif	
		if itemsequipped[i] == Libs.zad_DeviousYoke
			txt = txt + "a metal yoke is completely immobilizing your arms and weighing heavily on your neck, "
			count += 1
		endif			
		if itemsequipped[i] == Libs.zad_DeviousGag
			txt = txt + "a gag is forcing your lips wide open and making any attempt to speak coherent words a futile endeavour, "
			count += 1
		endif
		i += 1
	endwhile	
	; other devices
	i = 0
	while i < 10 && count < 4
		if itemsequipped[i] == Libs.zad_DeviousCollar
			txt = txt + "a slave collar around your neck now signals everybody that you are no longer your own master, "
			count += 1
		endif
		if itemsequipped[i] == Libs.zad_DeviousBoots
			txt = txt + "both your feet are encased in restraining boots making it impossible to walk in at any meaningful speed, "
			count += 1
		endif		
		if itemsequipped[i] == Libs.zad_DeviousBra
			txt = txt + "your breasts are safely locked away inside a metal bra, "
			count += 1
		endif
		if itemsequipped[i] == Libs.zad_DeviousBlindfold
			txt = txt + "a blindfold is now keeping most light from reaching your eyes and turning your world into a scary darkness, "
			count += 1
		endif
		i += 1
	endwhile
	; fallback if we didn't yet add any text
	if count == 0
		txt = txt + "some bondage devices are now securely locked on you."
	endif
	if keysgone
		txt = txt + "and all your precious keys seem to be gone. You will be unable to unlock any of your bonds anytime soon."
	elseif libs.playerRef.GetItemCount(libs.restraintsKey) == 0 || libs.playerRef.GetItemCount(libs.chastityKey) == 0 
		txt = txt + "and without possessing a fitting key, you will be unable to unlock any of your bonds anytime soon."
	else 
		txt = txt + "making you worry how you supposed to properly defend yourself now."
	endif
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHeavyBondage) && count < 4
		txt = txt + "You realize that you are completely helpless and couldn't stop anyone trying to take advantage of your predicament."
	endif
	return txt
endfunction

function processfollowers(int equipset = 2, int theme = 0, bool destroykeys = true)
	if !dcumenu.enablefollowersupport
		return
	Endif
	Actor Follower
	ActorBase FBase	
	int i = 0	
	while i <= (dcur_followerlist.GetSize() - 1) 
		Follower = dcur_followerlist.GetAt(i) As Actor		
		FBase = Follower.GetActorBase()
		If (Follower.GetDistance(libs.playerref) < 1000.0) && isValidFollower(Follower)
			Debug.Notification("Processing follower: " + Follower.GetDisplayName())
			if FBase.GetSex() == 1 && Follower.HasKeyword(dcumenu.ActorTypeNPC) && !ActorIsChild(Follower)
				processactor(Follower, theme, equipset)			
			endif
			if destroykeys 
				dcur_removekeys(Follower)
			endif			
		elseif destroykeys && (Follower.GetDistance(libs.playerref) < 1000.0) && Follower.IsPlayersLastRiddenHorse()			
			dcur_removekeys(Follower)			
		endif
		i += 1
	EndWhile 
endfunction

function processactor(actor a, int theme, int equipmode)
	int i = 0	
	int equipitems = 0
	int freeslots = canequipitems(a)
	; check if the character can even equip more DD items
	if freeslots == 0
		return
	endif
	If dcumenu.enableundress 
		if !dcumenu.useflashbanganimation 
			strip(a, true)			
		else
			strip(a, false)			
		endif		
	endIf	
	if equipmode == equip_fullset
		equipfullset(a, theme)
		return
	endif	
	if libs.PlayerRef.GetLevel() < 3
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] - Character is low level. Using simple items only.")			
		endif		
		EquipSet(a, theme, 0, 45)
		return
	endif	
		
	if dcumenu.minnumEquippedItems > dcumenu.numEquippedItems
		equipitems = dcumenu.numEquippedItems
	else
		equipitems = Utility.RandomInt(dcumenu.minnumEquippedItems, dcumenu.numEquippedItems)
	endif
	;don't try to equip more items than the character can possibly equip. The actual number of available slots might even be lower, because the player might have disabled some devices in MCM, but that's what the bailout safety in equipRandomItem() is there for. Adding a lot of code to accommodate for all possible situations is probably going to waste even more CPU time than sometimes calling equipRandomItem 1-2 times more often than needed...
	if equipitems > freeslots
		equipitems = freeslots
	endif
	if equipmode == equip_progressive
		progressivebondage(a, theme, equipitems)
		return
	endif
	; all other cases: Random items:
	while i < equipitems
		; We don't want to add follower items to the MakeStory message, so need to add a check
		if a == libs.PlayerRef
			itemsequipped[i] = dcur_equipRandomItem(a, theme)
		else
			dcur_equipRandomItem(a, theme)
		endif
		i += 1
		; try and fix a duplication issue by adding a short break between adding items.
		; DCL9
		; Utility.Wait(0.5)
	endwhile
endfunction

function equipitems(int equipset, int forcetheme = 0, bool suppressfollowers = false)
	;Actor Follower = None	
	bool losekeys 
	; have to calculate the lose key chance before going in, so we can stop the routine before confusing the player with silly messages
	if Utility.RandomInt(0,100) < dcumenu.losekeychance
		losekeys = true
	else
		losekeys = false
	endif
	int playertheme = 0
	int followertheme = 0	
	; if nothing can be done anyway, cancel processing	
	if dcumenu.useflashbanganimation
		if libs.PlayerRef.IsSneaking()		
			libs.playerRef.StartSneaking()		
			Utility.Wait(1.2)
			if libs.PlayerRef.IsWeaponDrawn() 			
				StripWeapons(libs.PlayerRef)
			EndIf
		endif			
		oref.placeatme(dcumenu.TG08BShockwaveExplosion)			
		if !dcumenu.flashbangnodroppingitems
			if libs.PlayerRef.IsWeaponDrawn() 			
				dropweapons(libs.playerRef, unequiponly = false)
			endif
			if !libs.playerref.WornHasKeyword(Libs.zad_DeviousHarness)		
				libs.playerref.dropObject(libs.playerref.GetWornForm(0x00000004))
			endif
			if !libs.playerref.WornHasKeyword(Libs.zad_DeviousHeavyBondage)	
				libs.playerref.dropObject(libs.playerref.GetWornForm(0x00000008))
			endif
			if !libs.playerref.WornHasKeyword(Libs.zad_DeviousBoots)	
				libs.playerref.dropObject(libs.playerref.GetWornForm(0x00000080))			
			endif
		endif				
		Utility.Wait(0.2)		
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")
		;if Follower != None
		;	Debug.SendAnimationEvent(Follower, "BleedOutStart")
		;endif		
		game.disablePlayerControls()    	
	else		
		if libs.PlayerRef.IsSneaking()		
			libs.playerRef.StartSneaking()		
		endif				
		game.disablePlayerControls()    	
		if libs.PlayerRef.IsWeaponDrawn() 			
			libs.PlayerRef.SheatheWeapon()
			Utility.Wait(2)
		EndIf
	endif
	if dcumenu.debugenabled
		libs.notify("Processing items.")
	Endif
	if !dcumenu.useflashbanganimation
		if dcur_origintype == is_trap
			Libs.notify("While trying to manipulate the " + oref.GetDisplayName() + " you trigger a hidden mechanism. It seems it was designed to be tamper proof...", messagebox = true)
		else			
			if Utility.RandomInt(0,100) < 50
				Libs.notify("While searching the " + oref.GetDisplayName() + " you find a restraining device. You feel the restraint reaching out to you with magical energy, projecting images of erotic adventure and pleasure into your mind. Your aroused body longing with desire and anticipation, you can't help but open your mind to the device and submit to its power.", messagebox = true)
			else
				Libs.notify("You find a few restraining devices. You can feel the items radiating with arcane energy. Holding the devices in your hand makes you horny. Breathing heavily and without thinking about the consequences you lock them shut on yourself, one after the other.", messagebox = true)  
			endif			
		endif		
		Utility.Wait(0.1)
		Libs.notify("You suddenly feel very dizzy...", messagebox = true)
		Utility.Wait(0.1)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")
		dcumenu.black.ApplyCrossFade(1)
		Utility.Wait(4)
	else
		
	endif
	wipeitemsequipped()
	playertheme = dcumenu.equiptheme
	if forcetheme > 0
		playertheme = forcetheme
	endif		
	followertheme = dcumenu.equipthemefollower
	; if random theme is enabled, pick one from the available sets and use that for all drops
	if playertheme == 0 && dcumenu.consistenttheme
		playertheme = Utility.RandomInt(1, dcumenu.ThemeList.Length - 1)
	endif
	if followertheme == 0 && dcumenu.consistenttheme 
		followertheme = Utility.RandomInt(1, dcumenu.ThemeList.Length - 1)
	endif	
	processactor(a = libs.playerref, theme = playertheme, equipmode = equipset)		
	if losekeys
		if dcumenu.enablefollowersupport && !suppressfollowers									
			processfollowers(equipset, theme = followertheme, destroykeys = true)			
		endif
		if dcur_removekeys(libs.playerref) > 0 && !dcumenu.useflashbanganimation			
			Libs.notify(MakeStory(keysgone = true, equipmode = equipset), messagebox = true)  					
		elseif !dcumenu.useflashbanganimation						
			Libs.notify(MakeStory(keysgone = false, equipmode = equipset), messagebox = true)  			
		Endif	
	else
		if dcumenu.enablefollowersupport && !suppressfollowers												
			processfollowers(equipset, theme = followertheme, destroykeys = false)			
		endif
		if !dcumenu.useflashbanganimation
			Libs.notify(MakeStory(keysgone = false, equipmode = equipset), messagebox = true)		
		endif
    Endif
	Utility.Wait(1)		
	if dcumenu.useflashbanganimation
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")	
		;if Follower != None
		;	Debug.SendAnimationEvent(Follower, "BleedOutStop")
		;endif
	else
		ImageSpaceModifier.Removecrossfade(1)
		Utility.Wait(2)	
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")	
	endif
	game.enablePlayerControls()   
	if forcetheme == set_hisec
		libs.notify("It seems you got locked in escape-proof high security restraints. Maybe you should find a blacksmith to help you...", messagebox = true)
	endif
endfunction

Actor function getclosestslaver()
	Actor currenttest
	Actor Rapist = None
	Cell c = libs.playerref.GetParentCell()
	Int NumRefs = c.GetNumRefs(43)
	While (NumRefs > 0) 
		NumRefs -= 1
		currenttest = c.GetNthRef(NumRefs, 43) as Actor	
		If !currenttest.IsDisabled() && !currenttest.IsDead() && ((currenttest.GetActorBase().GetSex() == 0 && dcumenu.RapistGender != gender_female) || (currenttest.GetActorBase().GetSex() == 1 && dcumenu.RapistGender != gender_male)) && currenttest.HasKeyword(dcumenu.ActorTypeNPC) && !ActorIsChild(currenttest) && !currenttest.IsGhost() && currenttest.GetActorBase().GetRace() != dcumenu.ManakinRace && currenttest.GetActorValue("Morality") > 2 
			if Rapist == none || currenttest.GetDistance(libs.playerref) < Rapist.GetDistance(libs.playerref)
				Rapist = currenttest
			endIf			
		endif		
	endwhile	
	if Rapist != None
		Return Rapist
	else	
		Return None
	endif
endfunction

Function CheckFastTravel()
	;Disable fast travel for various quests
	if dcumenu.FastTravelControl == 0 || libs.playerRef.WornHasKeyWord(dcur_kw_nofasttravel) || mcs.lbqs.lbqsquestrunning || mcs.cqs.IsRunning() || mcs.cicqs.IsRunning() || (dcumenu.collarquestnofasttravel &&  mcs.ccqs.cursedcollarquestrunning) || baqs.dcur_bondageadventurequestactive.GetValueInt() == 1 || mcs.yeqs.dcur_yokeerrandquestactive.GetValueInt() == 1 || (dcumenu.FastTravelControl == 1 && libs.playerRef.WornHasKeyword(libs.zad_Lockable))
		Game.EnableFastTravel(False)	
	endif	
EndFunction

bool Function enslave()	
	Utility.Wait(0.2)		
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")		
	Game.DisablePlayerControls()
	dcumenu.black.ApplyCrossFade(1)
	Utility.Wait(4)		
	Actor s = getclosestslaver()
	if s != None	
		s.moveto(libs.playerref)
	endif	
	strip(libs.playerRef, false)	
	if s != None	
		; SD prefer to equip its own devices, so we will be nice and remove ours first!
		WipeRestraints(libs.playerref, genericonly = false, removeDCURquestitems = false, destroyDevices = true)	
	EndIf
	ImageSpaceModifier.Removecrossfade(1)				
	Game.EnablePlayerControls()	
	if s != None	
		StorageUtil.SetFormValue(libs.playerRef, "_SD_TempAggressor", s)
		SendModEvent("PCSubTransfer")
		return true
	endif
	libs.notify("You shake the dizziness off and continue on...")
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")
	return false
endfunction

bool Function dcur_selectharvestingevents() 
	float chance = 0.0
	float grandtotalweight = dcumenu.flashbangchestweight + dcumenu.AradiaLivingHarnessWeight + dcumenu.enslaveweight + dcumenu.drugweight + dcumenu.estrusplantattack + dcumenu.sprigganweight + dcumenu.lbquestweight + dcumenu.selfbondagegastrapweight + dcumenu.TentacleParasiteWeight		
	; apparently the player doesn't want any events to happen
	if grandtotalweight == 0.0
		return false
	endif	
	if dcumenu.debugenabled
		debug.notification("DCUR - Selecting Harvesting Event")	
	endif	
	if dcur_origintype == is_mine		
		grandtotalweight -= dcumenu.sprigganweight
	endif	
	int playerarousal = aroused.GetActorArousal(libs.PlayerRef)  
	chance = Utility.RandomFloat(0, grandtotalweight)			
	if chance < dcumenu.drugweight
		drugher(libs.playerref, fx = true)		
		return true			
	endIf	
	chance = chance - dcumenu.drugweight			
	if chance < dcumenu.selfbondagegastrapweight			
		dcur_selfbondagegastrap()		
		return true			
	endIf	
	chance = chance - dcumenu.selfbondagegastrapweight			
	if chance < dcumenu.lbquestweight		
		oref.placeatme(dcumenu.TG08BShockwaveExplosion)		
		mcs.lbqs.DIDStartWrapper()
		return false
	endIf	
	chance = chance - dcumenu.lbquestweight			
	if chance < dcumenu.flashbangchestweight && !(!dcumenu.sexchastitypreventsrape && dcur_iswearinglockedgear.GetValueInt() == 1)
		oref.placeatme(dcumenu.TG08BShockwaveExplosion)				
		gangbang(origin = origin_trap)		
		return true
	elseif chance < dcumenu.flashbangchestweight
		if dcumenu.standardweight > 0.0
			drugher(libs.playerref, fx = true)				
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	Endif
	chance = chance - dcumenu.flashbangchestweight			
	if chance < dcumenu.estrusplantattack && hasEstrus() && (dcumenu.estrusincity || !isInCity())
		etl.dcur_estrusattack(tentaclesonly = true)		
		return true			
	elseif chance < dcumenu.estrusplantattack
		if dcumenu.standardweight > 0.0
			drugher(libs.playerref, fx = true)				
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	Endif
	chance = chance - dcumenu.estrusplantattack			
	if chance < dcumenu.sprigganweight && hasSD() && dcur_origintype != is_mine
		SendModEvent("SDSprigganEnslave")
		return true
	elseif chance < dcumenu.sprigganweight
		if dcumenu.standardweight > 0.0
			drugher(libs.playerref, fx = true)				
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	Endif
	if !dcur_origintype == is_mine
		chance = chance - dcumenu.sprigganweight		
	Endif
	if chance < dcumenu.enslaveweight && hasSD() && !libs.playerRef.IsInCombat() && !libs.playerref.WornHasKeyword(libs.zad_QuestItem) ; SD needs to be able to equip its own devices, so no go when quest items are on!
		oref.placeatme(dcumenu.TG08BShockwaveExplosion)		
		enslave()		
		return true			
	elseif chance < dcumenu.enslaveweight
		if dcumenu.standardweight > 0.0
			drugher(libs.playerref, fx = true)				
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	Endif
	chance = chance - dcumenu.enslaveweight				
	if chance < dcumenu.TentacleParasiteWeight
		If etl.dcur_equipTentacleParasite()
			return true			
		elseif dcumenu.standardweight > 0.0
			drugher(libs.playerref, fx = true)				
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif		
	endIf
	chance = chance - dcumenu.TentacleParasiteWeight	
	if chance < dcumenu.AradiaLivingHarnessWeight && !libs.playerRef.wornhaskeyword(libs.zad_DeviousBelt) && !libs.playerRef.wornhaskeyword(libs.zad_DeviousCollar) && hasAradia() 
		wipeitemsequipped()
		if etl.dcur_equipAradiaLivingHarness()		
			return true
		elseif dcumenu.standardweight > 0.0
			drugher(libs.playerref, fx = true)				
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif		
	elseif chance < dcumenu.AradiaLivingHarnessWeight
		if dcumenu.standardweight > 0.0
			drugher(libs.playerref, fx = true)				
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	Endif
	
	; fallback to drug event if the player allowed them at all
	if dcumenu.drugweight > 0.0
		drugher(libs.playerref, fx = true)				
		return true
	endif
	
	if dcumenu.debugenabled
		debug.notification("[DCUR] Selecting Event failed.")	
	endif	
	return false	
 endfunction

Function dostandardevent()
	int playerarousal = aroused.GetActorArousal(libs.PlayerRef)  
	; if a full set is forced via MCM or if the arousal threshold is met, equip a full set of DD gear and throw keys away:
	if dcumenu.alwaysequipfullset || playerarousal >= dcumenu.maxarousal	
		equipitems(equipset = equip_fullset)				
	elseif dcumenu.progressivebondage
		equipitems(equipset = equip_progressive)
	else
		; if nothing of the above happened, trigger normal event
		equipitems(equipset = equip_RandomItems)
	endif
EndFunction

 
bool Function dcur_selectevents() 
	float chance = 0.0
	float grandtotalweight = dcumenu.cursedcollarquestchance + dcumenu.hisecweight + dcumenu.slavecollarweight + dcumenu.estrusweight + dcumenu.flashbangchestweight + dcumenu.AradiaLivingHarnessWeight + dcumenu.slavegagweight + dcumenu.shockbootsweight + dcumenu.slavebeltweight + dcumenu.standardweight + dcumenu.slaveitemsweight + dcumenu.slutcollarweight + dcumenu.enslaveweight + dcumenu.drugweight + dcumenu.rubbersuitweight + dcumenu.lbquestweight + dcumenu.rubberdollweight + dcumenu.selfbondagegastrapweight + dcumenu.exhibitionistsuitweight + dcumenu.bondageadventuretrapweight + dcumenu.stripteasecollarweight + dcumenu.simpleslaveryweight + dcumenu.AradiaRogueWeight + dcumenu.TentacleParasiteWeight + dcumenu.dashaitemsweight + dcumenu.chainharnessweight + dcumenu.whorecollarweight + dcumenu.FurnitureTrapWeight + dcumenu.UltraTightSJweight
	; apparently the player doesn't want any special events to happen
	if grandtotalweight == 0.0
		return false
	endif		
	if dcumenu.debugenabled
		debug.notification("DCUR - Selecting Event")	
	endif
	Float ccchance = dcumenu.cursedcollarquestchance
	; need to make sure the cursed collar quest does NOT get picked by traps unless the player has disabled the BIS arc OR finished the quest in the arc first.
	; we copy the chance to a temp variable not to overwrite the player's MCM setting.
	if dcur_bis_active.GetValueInt() == 1 && dcur_boundinskyrimQuest.GetStage() < 80
		grandtotalweight -= dcumenu.cursedcollarquestchance
		ccchance = 0.0
	EndIf
	chance = Utility.RandomFloat(0, grandtotalweight)		
	if chance < dcumenu.standardweight || (dcumenu.mercyfuldungeons && isInDungeon())	; no special events if this setting is active
		dostandardevent()
		return true
	endIf
	chance = chance - dcumenu.standardweight
	if chance < dcumenu.FurnitureTrapWeight
		etl.FurnitureTrap()
		return true
	endIf
	chance = chance - dcumenu.FurnitureTrapWeight	
	if chance < dcumenu.rubberdollweight
		if etl.dcur_startslavegagquest()
			processfollowers(destroykeys = false)
			return true			
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf
	chance = chance - dcumenu.rubberdollweight			
	if chance < dcumenu.AradiaRogueWeight
		if etl.dcur_equipAradiaRogueSet()
			return true			
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf	
	chance = chance - dcumenu.AradiaRogueWeight	
	if chance < dcumenu.bondageadventuretrapweight
		oref.placeatme(dcumenu.TG08BShockwaveExplosion)		
		strip(libs.playerref, false)
		dcumenu.questgiver = None
		baqs.tieherup()
		Utility.Wait(5)
		baqs.Reset()					
		baqs.Start()					
		return true			
	endIf			
	chance = chance - dcumenu.bondageadventuretrapweight	
	if chance < dcumenu.selfbondagegastrapweight			
		dcur_selfbondagegastrap()
		processfollowers(destroykeys = false)
		return true			
	Endif
	chance = chance - dcumenu.selfbondagegastrapweight			
	if chance < dcumenu.chainharnessweight		
		etl.equipchainharness()
		return true			
	Endif
	chance = chance - dcumenu.chainharnessweight
	if chance < dcumenu.UltraTightSJweight
		etl.equipultratightstraitjacket()
		return true			
	Endif
	chance = chance - dcumenu.UltraTightSJweight
	if chance < dcumenu.rubbersuitweight
		if etl.dcur_startrubbersuitquest()
			processfollowers(destroykeys = false)
			return true			
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf	
	chance = chance - dcumenu.rubbersuitweight			
	; Damsel in Distress quest
	if chance < dcumenu.lbquestweight		
		 oref.placeatme(dcumenu.TG08BShockwaveExplosion)		
		 mcs.lbqs.DIDStartWrapper()
		return false
	endIf	
	chance = chance - dcumenu.lbquestweight				
	if chance < dcumenu.drugweight
		drugher(libs.playerref, fx = true)
		processfollowers(destroykeys = false)
		return true			
	endif
	chance = chance - dcumenu.drugweight			
	if chance < ccchance
		if etl.dcur_startcursedcollarquest()
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endif
	chance = chance - ccchance
	if chance < dcumenu.hisecweight
		equipitems(equipset = equip_RandomItems, forcetheme = set_hisec, suppressfollowers = true)						
		processfollowers(destroykeys = false)
		return true
	endIf
	chance = chance - dcumenu.hisecweight		
	if chance < dcumenu.slavecollarweight			
		if etl.dcur_startslavecollarquest()
			processfollowers(destroykeys = false)
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf
	chance = chance - dcumenu.slavecollarweight		
	if chance < dcumenu.stripteasecollarweight			
		if etl.dcur_startstripteasecollarquest()				
			processfollowers(destroykeys = false)
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf
	chance = chance - dcumenu.stripteasecollarweight	
	if chance < dcumenu.slutcollarweight			
		Bool done = false		
		if etl.dcur_startslutcollarquest()
			done = true
		EndIf		
		if done
			processfollowers(destroykeys = false)		
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf	
	chance = chance - dcumenu.slutcollarweight							
	if chance < dcumenu.whorecollarweight			
		Bool done = false		
		if etl.dcur_startwhorecollarquest()
			done = true
		EndIf		
		if done
			processfollowers(destroykeys = false)		
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf	
	chance = chance - dcumenu.whorecollarweight	
	if chance < dcumenu.slavebeltweight	
		if etl.dcur_startslavebeltquest()
			processfollowers(destroykeys = false)
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf
	chance = chance - dcumenu.slavebeltweight				
	if chance < dcumenu.slaveitemsweight
		if etl.dcur_startslavequest()				
			processfollowers(destroykeys = false)
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf
	chance = chance - dcumenu.slaveitemsweight			
	if chance < dcumenu.dashaitemsweight
		if etl.dcur_startdashaitems()				
			processfollowers(destroykeys = false)
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf
	chance = chance - dcumenu.dashaitemsweight
	if chance < dcumenu.slavegagweight					
		if etl.dcur_startslavegagquest()		
			processfollowers(destroykeys = false)
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf
	chance = chance - dcumenu.slavegagweight		
	if chance < dcumenu.shockbootsweight
		if etl.dcur_startslavebootsquest()				
			processfollowers(destroykeys = false)
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endif
	chance = chance - dcumenu.shockbootsweight			
	if chance < dcumenu.exhibitionistsuitweight
		if etl.dcur_startexhibitionistsuitquest()				
			processfollowers(destroykeys = false)
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf
	chance = chance - dcumenu.exhibitionistsuitweight	
	if chance < dcumenu.TentacleParasiteWeight
		If etl.dcur_equipTentacleParasite()
			return true			
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf
	chance = chance - dcumenu.TentacleParasiteWeight	
	if chance < dcumenu.enslaveweight && hasSD() && !libs.playerRef.IsInCombat() && (dcur_origintype == is_container || dcur_origintype == is_trap) && !libs.playerref.WornHasKeyword(libs.zad_QuestItem) ; SD needs to be able to equip its own devices, so no go when quest items are on!
		oref.placeatme(dcumenu.TG08BShockwaveExplosion)		
		enslave()			
		return true			
	elseif chance < dcumenu.enslaveweight
		if dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf		
	chance = chance - dcumenu.enslaveweight			
	if chance < dcumenu.simpleslaveryweight && hasSS() && !libs.playerRef.IsInCombat() && (dcur_origintype == is_container || dcur_origintype == is_trap) && !libs.playerref.WornHasKeyword(libs.zad_Lockable) ; SS can't handle DD devices, so use this event only when the character is unbound
		oref.placeatme(dcumenu.TG08BShockwaveExplosion)		
		dcur_SSTrigger(trap = true)
		return true			
	elseif chance < dcumenu.simpleslaveryweight
		if dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	Endif
	chance = chance - dcumenu.simpleslaveryweight	
	if chance < dcumenu.estrusweight && !libs.playerRef.IsInCombat() && (dcur_origintype == is_container || dcur_origintype == is_trap) && !libs.playerRef.WornHasKeyword(libs.zad_DeviousBelt) && (dcumenu.estrusincity || !isInCity()) && hasEstrus()		
		if etl.dcur_estrusattack()
			return true
		endif
	elseif chance < dcumenu.estrusweight
		if dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	Endif
	chance = chance - dcumenu.estrusweight		
	if chance < dcumenu.flashbangchestweight && (dcur_origintype == is_container || dcur_origintype == is_trap) && (dcumenu.flashbangincity || !isInCity()) && !(!dcumenu.sexchastitypreventsrape && dcur_iswearinglockedgear.GetValueInt() == 1)
		oref.placeatme(dcumenu.TG08BShockwaveExplosion)		
		gangbang(origin = origin_trap)
		return true
	elseif chance < dcumenu.flashbangchestweight
		if dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	Endif
	chance = chance - dcumenu.flashbangchestweight				
	if chance < dcumenu.AradiaLivingHarnessWeight && hasAradia() && dcumenu.AradiaLivingHarnessWeight > 0.0
		wipeitemsequipped()
		if etl.dcur_equipAradiaLivingHarness()
			processfollowers(destroykeys = false)
			return true
		elseif dcumenu.standardweight > 0.0
			dostandardevent()
			return true
		else
			if dcumenu.debugenabled
				debug.notification("[DCUR] Selecting Event failed.")	
			endif
			return false
		Endif
	endIf
	
	; fallback to standard event if the player allowed them at all
	if dcumenu.standardweight > 0.0
		dostandardevent()
		return true
	endif
	
	if dcumenu.debugenabled
		debug.notification("[DCUR] Selecting Event failed.")	
	endif	
	return false	
endfunction
 
Float Function getcurrenttrapchance()
	int playerarousal = aroused.GetActorArousal(libs.PlayerRef)  	
	float basechance	
	basechance = dcumenu.basechance
	if dcumenu.useRefinedOptions
       if isInCity()
           basechance = dcumenu.citychance
       elseif isInWilderness()
           basechance = dcumenu.wildernesschance
       elseif isInDungeon()
           basechance = dcumenu.dungeonchance
       elseif !libs.PlayerRef.GetParentCell().IsInterior()
           basechance = dcumenu.wildernesschance
       elseif libs.PlayerRef.GetParentCell().IsInterior()
           basechance = dcumenu.dungeonchance
       endif
	endif	
	basechance = ((1 - dcumenu.arousalweight) * basechance) + (dcumenu.arousalweight * playerarousal * dcumenu.arousalmodifier) As Float			
	Return basechance	
EndFunction
 
Function dcur_calculatecursedloot()	
	int playerarousal = aroused.GetActorArousal(libs.PlayerRef)  

	bool toomanyrestraints = dcur_isHeavilyRestrained()	
	
	float basechance	
	basechance = dcumenu.basechance
	if dcumenu.useRefinedOptions
       if isInCity()
           basechance = dcumenu.citychance
       elseif isInWilderness()
           basechance = dcumenu.wildernesschance
       elseif isInDungeon()
           basechance = dcumenu.dungeonchance
       elseif !libs.PlayerRef.GetParentCell().IsInterior()
           basechance = dcumenu.wildernesschance
       elseif libs.PlayerRef.GetParentCell().IsInterior()
           basechance = dcumenu.dungeonchance
       endif
	endif
		
	basechance = ((1 - dcumenu.arousalweight) * basechance) + (dcumenu.arousalweight * playerarousal * dcumenu.arousalmodifier) As Float
			
	If dcumenu.dcur_commoncontainers.HasForm(oref.GetBaseObject())	
		if dcumenu.debugenabled 
			libs.notify("Container is common. Applying modifier!")		
		endif
		basechance = (basechance * dcumenu.commoncontainerweight) As Float
	endif
	
	; is the chest an ornate one?
	if dcumenu.dcur_bigchestlist.HasForm(oref.GetBaseObject())
		if dcumenu.debugenabled
			libs.notify("Container is ornate chest. Applying modifier!")		
		endif
		basechance = (basechance * dcumenu.ornatecontainerweight) As Float
	endif
	
	; Apply the modifier for tamper proof traps
	if dcur_origintype == is_trap
		if dcumenu.debugenabled
			libs.notify("Object is trap. Applying modifier!")		
		endif
		basechance = (basechance * dcumenu.trapchancemodifier) As Float		
	endif
	
	; Apply the modifier for plants and mines
	if dcur_origintype == is_plant || dcur_origintype == is_mine
		if dcumenu.debugenabled
			libs.notify("Object is plant or mine. Applying modifier!")		
		endif
		basechance = (basechance * dcumenu.plantchancemodifier) As Float		
	endif
	
	; Apply the modifier for dead bodies
	if dcur_origintype == is_deadbody
		if dcumenu.debugenabled
			libs.notify("Object is dead body. Applying modifier!")		
		endif
		basechance = (basechance * dcumenu.deadbodymodifier) As Float		
	endif
	
	; Apply the modifier for dead bodies
	if dcur_origintype == is_door
		if dcumenu.debugenabled
			libs.notify("Object is door. Applying modifier!")		
		endif
		basechance = (basechance * dcumenu.doormodifier) As Float		
	endif
	
	if basechance > 100.0
		basechance = 100.0
	endif
	
	if dcumenu.debugenabled
		libs.notify("Chance to find cursed loot = " + basechance + "%")
	Endif
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Calculated chance for cursed loot = " + basechance + "%")
	endif
 
	if Utility.RandomFloat(0.0,100.0) >= basechance
		if dcumenu.debugenabled
			libs.notify("There are no cursed items here.")		
		endif				
		return	
	endif
	
	 ;if the player isn't aroused enough, she will not find anything
	if playerarousal < dcumenu.minarousal
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Aborting event (insufficent arousal).")	
		endif	
		if dcumenu.debugenabled
			libs.notify("Character is not aroused enough to find DD items.")	
		endif
		return
	endif
	
	if (!dcumenu.trapsenabled && dcur_origintype == is_trap) || (!dcumenu.containersenabled && dcur_origintype == is_container) || (!dcumenu.corpsesenabled && dcur_origintype == is_deadbody) || (!dcumenu.plantsenabled && dcur_origintype == is_plant) || (!dcumenu.minesenabled && dcur_origintype == is_mine) || (!dcumenu.doorsenabled && dcur_origintype == is_door)
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Aborting event (container type not allowed).")	
		endif	
		if dcumenu.debugenabled
			libs.notify("Cursed loot cannot occur here.")
		endif
		return
	endif

	if toomanyrestraints && dcur_origintype != is_plant && dcur_origintype != is_mine
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Aborting event (restraints threshold exceeded).")	
		endif	
		if dcumenu.debugenabled
			libs.notify("Character is wearing too many restraints.")
		endif	
		if Utility.RandomInt(0,100) < dcumenu.losekeychance ; && dcur_origintype != is_plant && dcur_origintype != is_mine
			libs.notify("You triggered a magical trap!")		
			oref.placeatme(dcumenu.TG08BShockwaveExplosion)			
			dcur_removekeys(libs.playerref)
			stealfollowerkeys()
			lasttraptriggered = Utility.GetCurrentGameTime()
		endif
		return
	endif
	
	; don't trigger any actual events while certain quests are running
	if checkDCURQuestRunning()
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Conflicting quest running or player is enslaved - Cursed Loot Event aborted.")	
		endif	
		return
	endif
	
	; check if the player has a lucky charm equipped
	if libs.playerRef.isEquipped(dcumenu.dcur_luckycharm)
		oref.placeatme(dcumenu.TG08BShockwaveExplosion)	
		Utility.Wait(1)
		debug.notification("Your lucky charm has warded away bad things from happening!")	
		libs.playerRef.removeitem(dcumenu.dcur_luckycharm, 1)
		lasttraptriggered = Utility.GetCurrentGameTime()
		return
	endif
	
	; check if the player has Sasha's collar equipped
	if libs.playerRef.HasKeyWord(mcs.saqs.dcur_kw_sashaplayercollar) && Utility.RandomInt() < 50
		oref.placeatme(dcumenu.TG08BShockwaveExplosion)	
		Utility.Wait(1)
		debug.notification("Sasha's collar has warded away bad things from happening!")	
		lasttraptriggered = Utility.GetCurrentGameTime()
		return
	endif
	
	; unequip torches
	if libs.playerref.GetEquippedItemType(0) == 11		
		libs.playerref.unequipItem(dcumenu.torch01, false, true)
	endif

	if (libs.playerref.GetLevel() < dcumenu.punishingitemsminlevel) 
		If dcur_origintype == is_plant	|| dcur_origintype == is_mine
			drugher(libs.playerref, fx = true)				
		Elseif dcumenu.selfbondagegastrapweight > 0 && Utility.RandomInt(0,9) < 7
			dcur_selfbondagegastrap()
		Else
			dostandardevent()
		EndIf
		lasttraptriggered = Utility.GetCurrentGameTime()		
		return
	endif
	
	if dcur_origintype == is_plant	|| dcur_origintype == is_mine
		if dcur_selectharvestingevents() 				
			If Utility.RandomFloat(0.0, 99.9) < dcumenu.traprewards
				GiveBondageRewards(2)
			Endif
			lasttraptriggered = Utility.GetCurrentGameTime()
		endif
		return
	endif
	
	if dcur_selectevents() 
		If Utility.RandomFloat(0.0, 99.9) < dcumenu.traprewards
			GiveBondageRewards(2)
		Endif
		lasttraptriggered = Utility.GetCurrentGameTime()
	endif
	
EndFunction

bool function rememberme()
	if hasbeenlooted(oref.GetFormID())
		if dcumenu.debugenabled
			libs.notify("You already looted this " + oref.GetDisplayName())
		endif
		return false
	else
		rememberID(oref.GetFormID())
	endif
	return true
endfunction

Event OnUpdate()
		
	If !UI.IsMenuOpen("ContainerMenu") && !UI.IsMenuOpen("InventoryMenu")		
	
	if dcumenu.shutdownmod
		; need to remember the box anyway, because players can still find keys.
		rememberme()
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Mod functionality has been shut down. Cursed Loot events are disabled.")
		endif		
		return
	endif
	
	if dcumenu != None && dcumenu.debuglogenabled
		debug.trace("[DCUR] Checking for Cursed Loot event.")	
	endif
	
	if !dcumenu.modenabled
		rememberme()
		if dcumenu.debugenabled
			libs.notify("Cursed loot traps are disabled.")
		endif
		return
	endif		
	
	if dcur_origintype == is_door && !libs.playerref.GetParentCell()
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] - Player is in cell change, aborting event!")
		endif
		return
	endif
	
	if dcur_origintype == is_container		
		; Only process this if the box isn't locked (anymore)
		if oref.IsLocked()
			return
		endif
		if dcumenu.debugenabled
			libs.notify("Looting container (ID " + oref.GetFormID() + ")")
		endif
	elseif dcur_origintype == is_deadbody
		if dcumenu.debugenabled
			libs.notify("Looting dead body (ID " + oref.GetFormID() + ")")
		endif
	elseif dcur_origintype == is_trap
		if dcumenu.debugenabled
			libs.notify("Triggered trap (ID " + oref.GetFormID() + ")")
		endif
	elseif dcur_origintype == is_plant
		if dcumenu.debugenabled
			libs.notify("Triggered plant (ID " + oref.GetFormID() + ")")
		endif
	elseif dcur_origintype == is_mine
		if dcumenu.debugenabled
			libs.notify("Mined (ID " + oref.GetFormID() + ")")
		endif
	elseif dcur_origintype == is_door
		if dcumenu.debugenabled
			libs.notify("Opened (ID " + oref.GetFormID() + ")")
		endif
	endif	
		
	if !rememberme()
		return
	endif
		
	if isInSafeLocation() || libs.playerRef.IsSwimming()
		if dcumenu.debugenabled
			libs.notify("Character is in safe location or swimming. No event will trigger")			
		endif		
		return
	endif	
	
	if (Utility.GetCurrentGameTime() - lasttraptriggered) * 24.0 < dcumenu.trapcooldown 		
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] - Traps are in cooldown, event aborted!")
		endif
		return
	endif
		
	;if libs.PlayerRef.GetLevel() < 3
	;	if dcumenu.debuglogenabled
	;		debug.trace("[DCUR] - Character is too low level. No trap event.")			
	;	endif		
	;	return
	;endif	
	
	dcur_calculatecursedloot()
	
	else
		; if we're still in menu mode for some reason (it shouldn't really happen, but better safe than sorry!), register the event again
		RegisterForSingleUpdate(1)
	EndIf
EndEvent

function Masturbate(actor a, bool feedback = true)	
	If !(SexLab.ValidateActor(a))
		return
	EndIf
	sslBaseAnimation[] Manims 
	If a == libs.PlayerRef && feedback
		libs.NotifyPlayer("You can not resist your urges anymore!")
	Else
		If a.GetLeveledActorBase().GetSex() == 1 && feedback
			libs.NotifyPlayer(a.GetLeveledActorBase().GetName() + " can't resist her urges anymore...")
		ElseIf a.GetLeveledActorBase().GetSex() == 0 && feedback
			libs.NotifyPlayer(a.GetLeveledActorBase().GetName() + " can't resist his urges anymore...")
		Endif
	EndIf	
	If a.WornHasKeyword(libs.zad_DeviousArmbinder) || a.WornHasKeyword(libs.zad_DeviousArmbinderElbow)
		Manims = New sslBaseAnimation[1]
		Manims[0] = SexLab.GetAnimationObject("DDArmbinderSolo")				
	elseIf a.WornHasKeyword(libs.zad_DeviousYoke)
		Manims = New sslBaseAnimation[1]
		Manims[0] = SexLab.GetAnimationObject("DDYokeSolo")			
	Elseif a.WornHasKeyword(libs.zad_DeviousBelt) || a.WornHasKeyword(libs.zad_DeviousHarness) && !a.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		Manims = New sslBaseAnimation[1]
		Manims[0] = SexLab.GetAnimationObject("DDBeltedSolo")		
	Elseif a.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		; play bound animation for other restraints
		libs.PlayHornyAnimation(a)	
		return
	Else
		If a.GetLeveledActorBase().GetSex() == 1
			Manims = SexLab.GetAnimationsByTag(1, "Solo", "F", requireAll=true)
		Else
			Manims = SexLab.GetAnimationsByTag(1, "Solo", "M", requireAll=true)
		Endif
	Endif
	actor[] tmp = new actor[1]
	tmp[0] = a    
	SexLab.StartSex(tmp, Manims)
EndFunction

ActorBase Function pickaboundgirl()
	int size = dcur_boundgirls.GetSize() - 1
	int rnd = Utility.RandomInt(0, size)
	return dcur_boundgirls.GetAt(rnd) As ActorBase
endfunction

Function SpawnBoundGirl()
	Actor girl
	int lint = Utility.RandomInt(1,25)
	If lint == 2
		lint = 18
	EndIf
	debug.trace("[DCUR] - Spawning bound girl at location: " + lint)
	ReferenceAlias Loc = dcumenu.GetAlias(lint) As ReferenceAlias
	If !Loc
		; no valid alias
		return
	EndIf
	girl = Loc.GetReference().PlaceAtMe(pickaboundgirl()) As Actor
	If !girl
		; sanity check
		return
	EndIf
	dcur_BoundGirlsActive.AddForm(girl)
	; they are -always- gagged and tied
	; the waits are a workaround in case the player opens a menu while this is happening.
	Utility.Wait(0.1)
	dcur_equiprandomballgag(girl, theme = dcumenu.equiptheme)
	Utility.Wait(0.1)
	dcur_equiprandomarmbinder(girl, theme = dcumenu.equiptheme)
	Utility.Wait(0.1)
	dcur_equiprandomboots(girl, theme = dcumenu.equiptheme)	
	If Utility.RandomInt(1,2) == 1
		Utility.Wait(0.1)
		dcur_equiprandombelt(girl, theme = dcumenu.equiptheme)
		Utility.Wait(0.1)
		If Utility.RandomInt(1,2) == 1
			dcur_equiprandombra(girl, theme = dcumenu.equiptheme)
		EndIf
	ElseIf Utility.RandomInt(1,2) == 1
		Utility.Wait(0.1)
		dcur_equiprandomsuit(girl, theme = dcumenu.equiptheme)
	Else
		Utility.Wait(0.1)
		dcur_equiprandomcollarharness(girl, theme = dcumenu.equiptheme)		
		If Utility.RandomInt(1,2) == 1
			Utility.Wait(0.1)
			dcur_equiprandomgloves(girl, theme = dcumenu.equiptheme)		
		EndIf
	EndIf
	girl.EvaluatePackage()		
EndFunction

Function MarkBoundGirlDone(Actor BG)
	BG.Additem(dcumenu.gold001, 1) ; if she has that gold piece, the dialogue won't trigger anymore.	
	dcur_BoundGirlsToDelete.AddForm(BG)
	dcur_BoundGirlsActive.RemoveAddedForm(BG)
EndFunction

Function DeleteMarkedBoundGirls()
	Actor current
	int i = dcur_BoundGirlsToDelete.GetSize()
	If i > 0
		debug.trace("[DCUR] Deleting " + i + " bound girls.")
	EndIf
	while i > 0
		i -= 1
		current = dcur_BoundGirlsToDelete.GetAt(i) As Actor
		if current
			current.Delete()	
			current.Kill()	
			current.SetCriticalStage(current.CritStage_DisintegrateEnd)		
		EndIf
	endwhile	
	dcur_BoundGirlsToDelete.Revert()
EndFunction

Function ProcessBoundGirls()
	If gangbangmutex || UI.IsMenuOpen("Sleep/Wait Menu") || UI.IsMenuOpen("Dialogue Menu") || UI.IsMenuOpen("InventoryMenu") || UI.IsMenuOpen("Crafting Menu") || UI.IsMenuOpen("BarterMenu") || UI.IsMenuOpen("ContainerMenu")
		debug.trace("[DCUR] Skipping processing bound girls - menus are open.")
		return
	EndIf
	int maxboundgirls = dcumenu.numboundgirls
	; we spawn only one each time this function is called, to avoid engine stress.
	debug.trace("[DCUR] Currently there are " + dcur_BoundGirlsActive.GetSize() + " bound girls active.")
	If dcur_BoundGirlsActive.GetSize() < maxboundgirls		
		SpawnBoundGirl()
	EndIf
	If !UI.IsMenuOpen("Dialogue Menu") && !libs.IsAnimating(libs.PlayerRef)
		DeleteMarkedBoundGirls()
	EndIf
EndFunction

Int Property StartSurrenderAliases = 72 Auto
Int Property EndSurrenderAliases = 81 Auto

Function AddToFriendFactions(Actor a)
	int i = dcur_friendfactions.GetSize()	
	while i > 0
		i -= 1
		a.AddToFaction(dcur_friendfactions.GetAt(i) As Faction)		
	Endwhile
EndFunction

Function SurrenderEvilPerson(Actor akActor)
	debug.trace("[DCUR] Trying to surrender " + akActor.GetLeveledActorBase().GetName())
	int i = StartSurrenderAliases ; start of aliases
	While i <= EndSurrenderAliases ; end of aliases
		If (dcur_aliases.GetAlias(i) As ReferenceAlias).GetReference() == None
			libs.notify(akActor.GetLeveledActorBase().GetName() + " surrenders to you!")
			akActor.RemoveFromAllFactions()
			AddToFriendFactions(akActor)
			debug.trace("[DCUR] Surrendering " + akActor.GetLeveledActorBase().GetName() + " into alias " + i)
			akActor.StopCombat()
			akActor.StopCombatAlarm()
			akActor.SheatheWeapon()
			If akActor.GetActorValuePercentage("Health") < 0.25
				akActor.ResetHealthAndLimbs()
			EndIf
			(dcur_aliases.GetAlias(i) As ReferenceAlias).ForceRefTo(akActor)	
			akActor.EvaluatePackage()
			return
		EndIf
		i += 1
	Endwhile
EndFunction

Function ClearEvilPersons()
	debug.trace("[DCUR] Clearing surrendered NPCs ")
	int i = StartSurrenderAliases ; start of aliases
	While i <= EndSurrenderAliases ; end of aliases
		If (dcur_aliases.GetAlias(i) As ReferenceAlias).GetReference() != None 
			Actor a = (dcur_aliases.GetAlias(i) As ReferenceAlias).GetActorReference()
			; delete only surrendered enemies not close to the player
			if a.GetDistance(Libs.PlayerRef) > 1500	&& ((a.GetParentCell() == None) || (a.GetParentCell() != libs.playerref.GetParentCell()))				
				a.Kill()
				a.SetCriticalStage(a.CritStage_DisintegrateEnd)
				(dcur_aliases.GetAlias(i) As ReferenceAlias).Clear()									
			EndIf
		EndIf
		i += 1
	Endwhile
EndFunction

Function DeleteEvilPerson(Actor akActor)	
	int i = StartSurrenderAliases ; start of aliases	
	While i <= EndSurrenderAliases
		Actor a = (dcur_aliases.GetAlias(i) As ReferenceAlias).GetActorReference()
		If a && a == akActor			
			debug.trace("[DCUR] Deleting " + akActor.GetLeveledActorBase().GetName() + " from alias " + i)			
			a.Kill()
			a.SetCriticalStage(a.CritStage_DisintegrateEnd)
			(dcur_aliases.GetAlias(i) As ReferenceAlias).Clear()		
			return
		EndIf
		i += 1
	Endwhile
EndFunction

MiscObject Property dcur_slavefollowertoken Auto

Function SellEvilPersons()
	debug.trace("[DCUR] Selling surrendered NPCs ")
	int i = StartSurrenderAliases ; start of aliases
	int counter = 0
	While i <= EndSurrenderAliases ; end of aliases
		If (dcur_aliases.GetAlias(i) As ReferenceAlias).GetReference() != None			
			Actor a = (dcur_aliases.GetAlias(i) As ReferenceAlias).GetActorReference()
			If a.GetItemCount(dcur_slavefollowertoken) > 0 && a.GetDistance(libs.PlayerRef) < 1000	
				counter += 1				
				a.Kill()
				a.SetCriticalStage(a.CritStage_DisintegrateEnd)
				(dcur_aliases.GetAlias(i) As ReferenceAlias).Clear()					
			EndIf
		EndIf
		i += 1
	Endwhile
	If counter > 0
		while counter > 0					
			GiveBondageRewards(3)
			If Utility.RandomInt() < 50
				FindAnyUsefulKey()
			Else
				GiveBondageRewards(2)	
			EndIf
			If Utility.RandomInt() < 67
				libs.playerref.Additem(dcl_LL_all, 1)					
			Else
				GiveBondageRewards(1)
			EndIf	
			counter -= 1
		Endwhile
	Else
		libs.notify("You do not have any prisoners to sell.")
	EndIf
EndFunction

Function EquipSet(Actor akActor, Int Theme, Int MinDifficulty = 0, Int MaxDifficulty = 100)
	Int i = Utility.RandomInt(MinDifficulty, MaxDifficulty)
	If i < 10
		EquipSetCorset(akActor, Theme)
	ElseIf i <20
		EquipSetHarness(akActor, Theme)	
	ElseIf i <35
		EquipSetChastityGear(akActor, Theme)
	ElseIf i <45
		EquipSetSuit(akActor, Theme)			
	ElseIf i <60
		EquipSetSuitAndGag(akActor, Theme)	
	ElseIf i <70
		EquipSetHobbleSkirt(akActor, Theme)	
	ElseIf i <85
		EquipSetBindAndGag(akActor, Theme)	
	Else
		EquipSetPunishingBondage(akActor, Theme)	
	EndIf
Endfunction

Function EquipSetChastityGear(Actor akActor, Int Theme)
	dcur_equiprandombelt(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandombra(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandomarmcuffs(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandomlegcuffs(akActor, theme)	
	;Utility.Wait(0.1)
	dcur_equiprandomcollar(akActor, theme)	
EndFunction
	
Function EquipSetBindAndGag(Actor akActor, Int Theme)	
	dcur_equiprandomballgag(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandomarmbinder(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandomboots(akActor, theme)	
EndFunction

Function EquipSetSuitAndGag(Actor akActor, Int Theme)	
	dcur_equiprandomballgag(akActor, theme)
	Utility.Wait(0.1)
	EquipSetSuit(akActor, Theme)	
EndFunction

Function EquipSetSuit(Actor akActor, Int Theme)	
	dcur_equiprandomsuit(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandomgloves(akActor, theme)		
	;Utility.Wait(0.1)
	dcur_equiprandomboots(akActor, theme)	
EndFunction

Function EquipSetHobbleSkirt(Actor akActor, Int Theme)	
	dcur_equiprandomhobbledress(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandomballgag(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandomgloves(akActor, theme)		
	;Utility.Wait(0.1)
	dcur_equiprandomboots(akActor, theme)	
EndFunction
	
Function EquipSetCorset(Actor akActor, Int Theme)
	dcur_equiprandombelt(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandomcorset(akActor, theme)	
	;Utility.Wait(0.1)
	dcur_equiprandomcollar(akActor, theme)	
EndFunction
	
Function EquipSetHarness(Actor akActor, Int Theme)	
	dcur_equiprandomcollarharness(akActor, theme)		
	;Utility.Wait(0.1)
	dcur_equiprandomarmcuffs(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandomlegcuffs(akActor, theme)	
	;Utility.Wait(0.1)
	dcur_equiprandomboots(akActor, theme)	
EndFunction

Function EquipSetPunishingBondage(Actor akActor, Int Theme)	
	EquipSetChastityGear(akActor, theme)
	EquipSetBindAndGag(akActor, theme)	
	;Utility.Wait(0.1)
	dcur_equiprandomsuit(akActor, theme)
	;Utility.Wait(0.1)
	dcur_equiprandomgloves(akActor, theme)		
EndFunction

Faction Function GetHighestBountyFaction(bool violentOnly = false)
    faction _highestBountyFaction = none
    int _i = dcur_prison_crimefactionsList.GetSize()
    while _i
        _i -= 1
        int _highestBounty
        int _highestBountyViolent
        faction _faction = dcur_prison_crimefactionsList.GetAt(_i) as faction
        if !violentOnly && _highestBountyViolent == 0 && _faction.GetCrimeGoldNonViolent() > _highestBounty
            _highestBountyFaction = _faction
            _highestBounty = _faction.GetCrimeGoldNonViolent()
        endIf
        ; the violent ones take priority
        if _faction.GetCrimeGoldViolent() > _highestBountyViolent
            _highestBountyFaction = _faction
            _highestBountyViolent = _faction.GetCrimeGoldViolent()
        endIf
    endWhile
    return _highestBountyFaction
endFunction

Function SendToHighestBountyPrison()
	Faction f = GetHighestBountyFaction()
	If !f
		return
	EndIf
	if (libs.SexLab.GetGender(Libs.PlayerRef) == 1) && (dcur_prison_usevanilla.GetValueInt() != 1) ; girls only, but we use Sexlab's gender so players can send their transwomen there, too.
		; DCL prison - we do NOT clean the bounty here, or the prison quest won't be able to auto-calc the sentence.		
		StorageUtil.SetFormValue(libs.playerRef, "dcur_prison_ArrestingFaction", f)
		mcs.pqs.Start()
	Else
		; not a female, so we're sending them to regular jail
		f.SendPlayerToJail()
	EndIf
EndFunction

Function SendToFactionPrison(Faction f)	
	If !f
		return
	EndIf
	if (libs.SexLab.GetGender(Libs.PlayerRef) == 1) && (dcur_prison_usevanilla.GetValueInt() != 1) ; girls only, but we use Sexlab's gender so players can send their transwomen there, too.
		; DCL prison - we do NOT clean the bounty here, or the prison quest won't be able to auto-calc the sentence.		
		StorageUtil.SetFormValue(libs.playerRef, "dcur_prison_ArrestingFaction", f)
		mcs.pqs.Start()
	Else
		; not a female, so we're sending them to regular jail
		f.SendPlayerToJail()
	EndIf
EndFunction

Bool Function isWearingUnsafeDDItem()
	Int i = dcur_prison_unsafeDDitems.GetSize()
	While i >= 0
		i -= 1
		Armor a = dcur_prison_unsafeDDitems.GetAt(i) As Armor
		if a && libs.PlayerRef.IsEquipped(a)
			return True
		EndIf
	Endwhile
	Return False
EndFunction

Function LevelUp(string skill = "", int levels = 1)
	if skill != ""
		Game.IncrementSkillBy(skill, levels)
	else
		int x = 0
		while x < levels
			x += 1
			int i = Utility.RandomInt(1,18)
			if i == 1
				Game.IncrementSkillBy("OneHanded", 1)
			elseif i == 2
				Game.IncrementSkillBy("TwoHanded", 1)
			elseif i == 3
				Game.IncrementSkillBy("Block", 1)
			elseif i == 4
				Game.IncrementSkillBy("Smithing", 1)
			elseif i == 5
				Game.IncrementSkillBy("HeavyArmor", 1)
			elseif i == 6
				Game.IncrementSkillBy("LightArmor", 1)
			elseif i == 7
				Game.IncrementSkillBy("Pickpocket", 1)
			elseif i == 8
				Game.IncrementSkillBy("Lockpicking", 1)
			elseif i == 9
				Game.IncrementSkillBy("Sneak", 1)
			elseif i == 10
				Game.IncrementSkillBy("Alchemy", 1)
			elseif i == 11
				Game.IncrementSkillBy("Speechcraft", 1)
			elseif i == 12
				Game.IncrementSkillBy("Alteration", 1)
			elseif i == 13
				Game.IncrementSkillBy("Conjuration", 1)
			elseif i == 14
				Game.IncrementSkillBy("Destruction", 1)
			elseif i == 15
				Game.IncrementSkillBy("Illusion", 1)
			elseif i == 16
				Game.IncrementSkillBy("Restoration", 1)
			elseif i == 17
				Game.IncrementSkillBy("Enchanting", 1)		
			elseif i == 18
				Game.IncrementSkillBy("Marksman", 1)		
			endIf
		endwhile
	EndIf
EndFunction

function ParkFollowers(Int ignorefirstx = 0)	
	int n = dcur_followerlist.GetSize()
	if !dcumenu.enablefollowersupport || (n == 0)
		return
	Endif	
	Actor Follower		
	if n > 5 
		; sanity
		n = 5
	EndIf
	If n >= 1 && IgnoreFirstX < 1
		Follower = dcur_followerlist.GetAt(0) As Actor	
		alqs.dcur_followerstandstill1.ForceRefTo(Follower)	
		Follower.moveto(alqs.alias_dcur_storagecell.GetReference())
		Follower.SetRestrained(True)
		Follower.SetDontMove(True)	
	EndIf
	If n >= 2 && IgnoreFirstX < 2
		Follower = dcur_followerlist.GetAt(1) As Actor	
		alqs.dcur_followerstandstill2.ForceRefTo(Follower)	
		Follower.moveto(alqs.alias_dcur_storagecell.GetReference())
		Follower.SetRestrained(True)
		Follower.SetDontMove(True)	
	EndIf
	If n >= 3 && IgnoreFirstX < 3
		Follower = dcur_followerlist.GetAt(2) As Actor	
		alqs.dcur_followerstandstill3.ForceRefTo(Follower)	
		Follower.moveto(alqs.alias_dcur_storagecell.GetReference())
		Follower.SetRestrained(True)
		Follower.SetDontMove(True)	
	EndIf
	If n >= 4 && IgnoreFirstX < 4
		Follower = dcur_followerlist.GetAt(3) As Actor	
		alqs.dcur_followerstandstill4.ForceRefTo(Follower)	
		Follower.moveto(alqs.alias_dcur_storagecell.GetReference())
		Follower.SetRestrained(True)
		Follower.SetDontMove(True)	
	EndIf
	If n >= 5 && IgnoreFirstX < 5
		Follower = dcur_followerlist.GetAt(4) As Actor	
		alqs.dcur_followerstandstill5.ForceRefTo(Follower)	
		Follower.moveto(alqs.alias_dcur_storagecell.GetReference())
		Follower.SetRestrained(True)
		Follower.SetDontMove(True)	
	EndIf
endfunction

Function ReleaseFollowers()	
	Actor a
	if alqs.dcur_followerstandstill1.GetReference()
		a = alqs.dcur_followerstandstill1.GetActorReference()
		a.moveto(libs.playerref)
		a.SetRestrained(False)
		a.SetDontMove(False)		
		alqs.dcur_followerstandstill1.Clear()		
	EndIf
	if alqs.dcur_followerstandstill2.GetReference()
		a = alqs.dcur_followerstandstill2.GetActorReference()
		a.moveto(libs.playerref)
		a.SetRestrained(False)
		a.SetDontMove(False)		
		alqs.dcur_followerstandstill2.Clear()		
	EndIf
	if alqs.dcur_followerstandstill3.GetReference()
		a = alqs.dcur_followerstandstill3.GetActorReference()
		a.moveto(libs.playerref)
		a.SetRestrained(False)
		a.SetDontMove(False)		
		alqs.dcur_followerstandstill3.Clear()		
	EndIf
	if alqs.dcur_followerstandstill4.GetReference()
		a = alqs.dcur_followerstandstill4.GetActorReference()
		a.moveto(libs.playerref)
		a.SetRestrained(False)
		a.SetDontMove(False)		
		alqs.dcur_followerstandstill4.Clear()		
	EndIf
	if alqs.dcur_followerstandstill5.GetReference()
		a = alqs.dcur_followerstandstill5.GetActorReference()
		a.moveto(libs.playerref)
		a.SetRestrained(False)
		a.SetDontMove(False)		
		alqs.dcur_followerstandstill5.Clear()		
	EndIf	
EndFunction

Bool Function IsFemale(Actor act)
	return (act.GetLeveledActorBase().GetSex() == 1)
EndFunction

Function Move_Followers(ReferenceAlias to)	
	Actor Follower	
	int i = dcur_followerlist.GetSize() - 1	
	while i >= 0
		Follower = dcur_followerlist.GetAt(i) As Actor		
		Follower.MoveTo(to.GetReference())
		i -= 1
	EndWhile
EndFunction
