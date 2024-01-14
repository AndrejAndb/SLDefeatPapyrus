Scriptname dcur_clocktickScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
dcur_mastercontrollerscript Property mcs Auto
dcur_slavecollarquestscript Property scqs  Auto  
dcur_bondageadventurequestScript Property baqs Auto
dcur_rubberdollquestscript Property rdqs Auto
dcur_publicindecencyQuestScript Property piqs Auto
dcur_SashaQuestScript Property saqs  Auto  
dcur_KeyholderQuestScript Property khqs Auto
dcur_clocktickRefScript Property refscr Auto
dcur_df_QuestScript Property dfs Auto

GlobalVariable Property dcur_lastdevicecommenttime  Auto  
GlobalVariable Property dcur_devicecommentallowed  Auto  
GlobalVariable Property dcur_devicecommentinconsequential Auto
GlobalVariable Property dcur_devicecommentaction  Auto  
GlobalVariable property dcur_playerisdetectedbycloak Auto
GlobalVariable property dcur_scquest_isdancing Auto
GlobalVariable property dcur_bondageadventurequestcooldown Auto

GlobalVariable property dcur_cuminflation Auto
GlobalVariable property dcur_gagtalkdone Auto
GlobalVariable property dcur_gagtalk_enabled Auto
GlobalVariable property dcur_pi_usenakeddialogue Auto

GlobalVariable Property GameHour Auto

GlobalVariable Property WICommentNextAllowed auto
GlobalVariable Property GameDaysPassed Auto

FormList Property dcur_detectioncloakhitlist Auto
SPELL Property dcur_rubberdollcloakspell  Auto  
SPELL Property dcur_hornybuffs Auto
SPELL Property dcur_DeviceBuffs Auto

Keyword Property dcur_kw_tieme Auto
Keyword Property dcur_kw_proxyrape Auto
Keyword Property dcur_kw_dibellascharm Auto
Keyword Property dcur_kw_tentacles Auto
Keyword Property dcur_kw_royalchastityitem Auto

ReferenceAlias Property EssentialPlayer  Auto  
ReferenceAlias Property TheCatcher  Auto  

bool property hasbeennaked = false Auto
bool property hasbeenrestrained = false Auto
bool property hasbeenunarmed = false Auto
bool property hasbeenaroused = false Auto
bool property hasbeenvisiblyrestrained = false Auto
bool property hasbeenbreastenlarged = false Auto
bool property hasbeennight = false Auto

bool property isVulnerableToRape = false Auto

bool property isInAreaTransition = false Auto
bool property isInSafeArea = false Auto

bool firstload = true

bool property suspendedstate = false Auto
bool modwasshutdown = false

float lasthousekeeping = 0.0
float lasthousekeepingshortinterval = 0.0
float lastclocktickshort = 0.0
float lasttentacleaction = 0.0
float lastcuminflation = 0.0
float lastcuminflationadjustment = 0.0
float lastmasturbation = 0.0
float lasttiedup = 0.0
float Property lastbondageadventuredialogue = 0.0 Auto
Int MaxInflations = 10
Int Property attackflags = 0 Auto

bool property rapemutex = False Auto
float property lastrape = 0.0 Auto
Bool Property WasNearDeath = False Auto
bool hornybuffsactive = false

Int property IndencencyPoints = 0 Auto

Function initDCL()
	firstload = true
	lasthousekeeping = Utility.GetCurrentGameTime()
	lasthousekeepingshortinterval = Utility.GetCurrentGameTime()
	lastclocktickshort = Utility.GetCurrentRealTime()
	dcur_lastdevicecommenttime.SetValue(Utility.GetCurrentGameTime())	
	dcumenu.kimytest = false
	dclibs.gangbangmutex = false
	StorageUtil.SetIntValue(Game.GetPlayer(), "DCUR_SceneRunning", 0)		
	if dcumenu.sexEnableCombatAttacks && dcumenu.sexGloballyEnabled
		EssentialPlayer.ForceRefTo(libs.playerref)		
	elseif EssentialPlayer.GetActorReference() != None
		libs.playerref.ResetHealthAndLimbs()
		EssentialPlayer.Clear()
	endif
	suspendedstate = false	
	rapemutex = False	
	WasNearDeath = False
	dclibs.containermutex = False
	dclibs.clocktickmutex = False
	refscr.RegisterKeys()			
	; testing:
	return
	UnregisterForAllKeys()	
	RegisterForKey(0xc7) ; Home
EndFunction

Bool Property br_resetdone = false Auto

Event OnKeyDown(Int KeyCode)	
	;return 
	If (KeyCode == 0xc7)	; home
		actor a = Game.GetCurrentCrosshairRef() As Actor
		if a
			mcs.testathing(a)
		Endif
	Endif		
EndEvent

;this stuff will get called a few seconds after load, to reduce script lag spike at game load.
function initialize()
	RegisterForModEvent("dhlp-Suspend", "OnSuspend")
	RegisterForModEvent("dhlp-Resume", "OnResume")
	RegisterForModEvent("dcur-triggerevent", "OnTriggerEvent")
	RegisterForModEvent("dcur-triggerrape", "OnTriggerRape")
	RegisterForModEvent("dcur-triggerrubberdoll", "OnTriggerRubberDoll")
	RegisterForModEvent("dcur-triggerRubberSuit", "OnTriggerRubberSuit")
	RegisterForModEvent("dcur-triggerExhibitionistSuit", "OntriggerExhibitionistSuit")
	RegisterForModEvent("dcur-triggerbondageadventure", "OnTriggerBondageAdventure")
	RegisterForModEvent("dcur-triggerdamselindistress", "OnTriggerDiD")
	RegisterForModEvent("dcur-triggercursedcollar", "OnTriggerCursedCollar")
	RegisterForModEvent("dcur-triggerleaveinwilderness", "OnTriggerLeaveInWilderness")
	RegisterForModEvent("dcur-triggerbeltofshame", "OnBeltofShame")
	RegisterForModEvent("dcur-triggerYokeofshame", "OnYokeofShame")
	RegisterForModEvent("dcur-triggerWalkofShame", "OnWalkofShame")
	RegisterForModEvent("dcur-triggerPrison", "OnTriggerPrison")
	RegisterForModEvent("dcur-triggerSpanking", "OnTriggerSpanking")
	;RegisterForModEvent("KeyBreak", "OnKeyBreak")	
	RegisterForModEvent("dcur_triggerLeonSlavery", "OnTriggerLeon")
	RegisterForModEvent("dcur_triggerLeahSlavery", "OnTriggerLeah")	
	RegisterForModEvent("AnimationStart", "SexLabAnimationStart")
	RegisterForModEvent("StageEnd", "SexLabStageEnd")
	RegisterForModEvent("AnimationEnd", "SexLabAnimationEnd")
	RegisterForModEvent("OrgasmStart", "SexLabOrgasmStart")
	RegisterForMenu("Dialogue Menu")	
	If !dclibs.IsRunning()		
		dclibs.Start()		
	EndIf
	dcumenu.checkoptionalmods()		
	breastresize()			
	firstload = false	
	if !dclibs.validate()
		libs.notify("You appear to run mods removing important tags from children characters. Cursed Loot has been automatically disabled.", messagebox = true)
		dcumenu.shutdownmod = True
		dcumenu.dcur_modshutdown.SetValueInt(1)		
	endif
	dclibs.scanfollowers()	
	mcs.RegisterSleep()	
	piqs.init()
	; start several "startup" quests delayed to help with script spike.
	If !dclibs.mcs.twacqs.IsRunning()		
		dclibs.mcs.twacqs.Start()
		libs.notify("Deviously Cursed Loot: Initialized.")
	EndIf
	If !dclibs.mcs.leqs.IsRunning()		
		dclibs.mcs.leqs.Start()
	EndIf
	TheCatcher.Clear()	
	if dclibs.hasAradia()
		dcur_aradialib.aradialib_setDevices()
	endif  
	if dclibs.hasSkoomaWhore()
		dcur_skoomawhorelib.skoomawhorelib_setDevices()
	endif 
	dclibs.processalloweditemlist()	
	dclibs.customfollowerlist = new string[4]
	dclibs.customfollowerlist[0] = "Serana"
	dclibs.customfollowerlist[1] = "Sofia"
	dclibs.customfollowerlist[2] = "Selene Kate"
	dclibs.customfollowerlist[3] = "Vilja"	
EndFunction

Event OnInit()
	initDCL()
	RegisterForSingleUpdate(30)
EndEvent

Event OnSuspend(string eventName, string strArg, float numArg, Form sender)
	suspendedstate = true
EndEvent

Event OnResume(string eventName, string strArg, float numArg, Form sender)
	suspendedstate = false
EndEvent

 Event OnTriggerEvent(string eventName, string strArg, float numArg, Form sender)
	dclibs.dcur_origintype == dclibs.is_container		
	dclibs.oref = libs.playerref
	dclibs.dcur_selectevents()
 EndEvent

 Event OnTriggerLeaveInWilderness(string eventName, string strArg, float numArg, Form sender)
	dclibs.leaveinwilderness()
EndEvent
 
 Event OnTriggerRape(string eventName, string strArg, float numArg, Form sender)
	FireSexAttack()
 EndEvent

 Event OnBeltofShame(string eventName, string strArg, float numArg, Form sender)
	dclibs.etl.equipbeltofshame(true)
 EndEvent
 
  Event OnWalkofShame(string eventName, string strArg, float numArg, Form sender)
	If !dclibs.mcs.wosqs.IsRunning()
		dclibs.mcs.wosqs.Start()
	EndIf
 EndEvent
 
 Event OnYokeofShame(string eventName, string strArg, float numArg, Form sender)
	dclibs.etl.equipyokeofshame(true)
 EndEvent
 
 Event OnTriggerRubberDoll(string eventName, string strArg, float numArg, Form sender)
	dclibs.etl.dcur_startslavegagquest(suppressfeedback = true)
 EndEvent

 Event OnTriggerRubberSuit(string eventName, string strArg, float numArg, Form sender)
	dclibs.etl.dcur_startrubbersuitquest(suppressfeedback = true)
 EndEvent
 
 Event OnTriggerSpanking(string eventName, string strArg, float numArg, Form sender)
	; if you use this, might want to set
	; StorageUtil.SetFormValue(libs.playerRef, "dcur_uss_whipper", spankingactor)
	; to determine which NPC should perform the spanking.
	; StorageUtil.SetIntValue(libs.playerRef, "dcur_uss_nosubmit", 1) will prevent the player from using the "I accept willingly" pose.
	dclibs.mcs.spqs.Start()
 EndEvent
 
 Event OnTriggerExhibitionistSuit(string eventName, string strArg, float numArg, Form sender)
	dclibs.etl.dcur_startexhibitionistsuitquest(suppressfeedback = true)
 EndEvent
 
 Event OnTriggerBondageAdventure(string eventName, string strArg, float numArg, Form sender)	
	dclibs.strip(libs.playerref, false)
	dcumenu.questgiver = None
	dclibs.baqs.tieherup()
	Utility.Wait(5)
	dclibs.baqs.Reset()					
	dclibs.baqs.Start()	
 EndEvent
 
 Event OnTriggerDiD(string eventName, string strArg, float numArg, Form sender)	
	mcs.lbqs.DIDStartWrapper()
 EndEvent
 
Event OnTriggerCursedCollar(string eventName, string strArg, float numArg, Form sender)	
	dclibs.etl.dcur_startcursedcollarquest()
EndEvent
 
Event OnKeyBreak(string eventName, string strArg, float numArg, Form sender)
	; libs.notify("Ooops, your key has broken")
EndEvent 

Event OnTriggerLeon(string eventName, string strArg, float numArg, Form sender)
	dclibs.alqs.alias_leon.GetReference().moveto(Game.GetPlayer())
	mcs.dfs.StartQuest(dclibs.alqs.alias_leon.GetActorReference())	
EndEvent

Event OnTriggerLeah(string eventName, string strArg, float numArg, Form sender)
	dclibs.alqs.alias_leah.GetReference().moveto(Game.GetPlayer())
	mcs.dfs.StartQuest(dclibs.alqs.alias_leah.GetActorReference())	
EndEvent

Event OnTriggerPrison(string eventName, string strArg, float numArg, Form sender)
	; if you use this, might want to set one of
	; StorageUtil.SetFormValue(libs.playerRef, "dcur_prison_ArrestingActor", guard)
	; StorageUtil.SetFormValue(libs.playerRef, "dcur_prison_ArrestingFaction", crimefaction)
	; so the prison quest can calculate the proper sentence and/or clean the bounty of the crimefaction given
	mcs.pqs.Start()
EndEvent

event SexLabAnimationStart(string eventname, string argString, float argNum, form sender)				
endevent

event SexLabStageEnd(string eventname, string argString, float argNum, form sender)	
EndEvent

Event SexLabAnimationEnd(string eventname, string argString, float argNum, form sender)		
	sslThreadController SLcontroller = dclibs.SexLab.HookController(argString)		
	Actor[] actors = SLcontroller.Positions		
	bool playerInScene = SLcontroller.HasPlayer	
	bool SashaInScene = false
	If !playerInScene
		return
	Endif	
	; check if the player had bondage sex with Sasha and remove her restraints if that's the case	
	int numactors = actors.Length		
	int i
	While i < numactors		
		if actors[i] == saqs.GetSasha()
			SashaInScene = true
		Endif
		i += 1
	EndWhile		
	Armor a
	Keyword kw
	If saqs.hadBondageSexSasha && SashaInScene
		i = saqs.dcur_sasha_BondageSexList.GetSize()
		While i > 0
			i -= 1
			kw = saqs.dcur_sasha_BondageSexList.GetAt(i) As Keyword
			a = libs.GetWornDevice(saqs.GetSasha(), kw)
			libs.UnlockDevice(saqs.GetSasha(), a, zad_DeviousDevice = kw, destroyDevice = true)
		EndWhile
		saqs.hadBondageSexSasha = false
	Endif
	
EndEvent 

Event SexLabOrgasmStart(string eventname, string argString, float argNum, form sender)
	If !dcumenu.cuminflationenable
		return
	EndIf
	sslThreadController SLcontroller = dclibs.SexLab.HookController(argString)		
	sslBaseAnimation SLAnim = dclibs.SexLab.HookAnimation(argString)	
	bool playerInScene = SLcontroller.HasPlayer	
	If !playerInScene
		return
	Endif
	;sslThreadController Property SLcontroller Auto
	;sslBaseAnimation Property SLAnim Auto
	actor[] actors = dclibs.SexLab.HookActors(argString)
	int numactors = actors.Length
	If numactors == 1
		; she masturbated
		return
	Endif
	int i = 0
	bool hasmale = false
	bool superaroused = false
	String name = ""
	; let's check if one participant is a male NPC
	While i < numactors
		If dclibs.SexLab.GetGender(actors[i]) == 0 && actors[i].HasKeyword(dcumenu.ActorTypeNPC)
			hasmale = true
			if dclibs.Aroused.GetActorArousal(actors[i]) > 30
				superaroused = true
			Endif
			name = actors[i].GetLeveledActorBase().GetName()
		Endif
		i += 1
	EndWhile		
	; no males, no cum!
	If !hasmale	
		return
	Endif
	; inflate her
	If SLAnim.IsVaginal
		if superaroused && Utility.RandomInt(1,2) == 1
			libs.notify(name + " fills your pussy with a massive load of cum!" )
			dcur_cuminflation.SetValueInt(dcur_cuminflation.GetValueInt() + 3)
		elseif superaroused
			libs.notify(name + " pumps a large load of cum into your pussy!" )
			dcur_cuminflation.SetValueInt(dcur_cuminflation.GetValueInt() + 2)
		else
			libs.notify(name + " pumps his load of cum into your pussy!" )
			dcur_cuminflation.SetValueInt(dcur_cuminflation.GetValueInt() + 1)
		Endif
		if dcur_cuminflation.GetValueInt() > MaxInflations 
			dcur_cuminflation.SetValueInt(MaxInflations)
		EndIf
		lastcuminflationadjustment = Utility.GetCurrentGameTime()
		lastcuminflation = Utility.GetCurrentGameTime()
		cuminflation()
		return
	EndIf
	If SLAnim.IsOral
		if superaroused
			libs.notify("You swallow all of " + name + "'s massive load!")
			dcur_cuminflation.SetValueInt(dcur_cuminflation.GetValueInt() + 3)
		Else
			libs.notify("You swallow all of " + name + "'s load!")
			dcur_cuminflation.SetValueInt(dcur_cuminflation.GetValueInt() + 1)			
		Endif
		if dcur_cuminflation.GetValueInt() > MaxInflations 
			dcur_cuminflation.SetValueInt(MaxInflations)
		EndIf
		lastcuminflationadjustment = Utility.GetCurrentGameTime()
		lastcuminflation = Utility.GetCurrentGameTime()
		cuminflation()
		return
	EndIf
EndEvent
 
int Function picknextdevicecommentevent()	
	if (dcumenu.dcur_isvisiblyrestrained.GetValue() == 0 && dcumenu.deviceactionsvisibleonly) || mcs.isDCURQuestRunning || dclibs.dcur_iswearinglockedgear.GetValueInt() == 1
		return 0
	endif
	float chance = 0.0
	chance = dcumenu.devicecommentsactionchance		
	if dcumenu.deviceactionsarousalmod 
		int ar = libs.aroused.GetActorArousal(libs.PlayerRef)
		If ar > 90
			chance *= 2
		elseif ar > 75
			chance *= 1.5
		elseif ar > 50
			chance *= 1.25
		endif
	endif
	If Utility.RandomFloat(0.0, 99.9) < chance
		float grandtotalweight = dcumenu.devicecommentsactionadditemsweight + dcumenu.devicecommentsactionrape + dcumenu.devicecommentsactiongivekeys
		; apparently the player doesn't want any events to happen
		if grandtotalweight == 0.0
			return 0
		endif
		chance = Utility.RandomFloat(0.0, grandtotalweight)	
		if chance < dcumenu.devicecommentsactionadditemsweight			
			return 1
		else
			chance = chance - dcumenu.devicecommentsactionadditemsweight			
		endIf			
		if chance < dcumenu.devicecommentsactionrape
			return 2		
		else
			chance = chance - dcumenu.devicecommentsactionrape		
		endIf	
		if chance < dcumenu.devicecommentsactiongivekeys
			return 3
		endif			
	endif
	return 0
EndFunction

function addgraceperiod()
	; add a grace period of one in-game hour if the cooldown is already expired
	if (Utility.GetCurrentGameTime() - dclibs.LastSexAttackTime) * 24 > dcumenu.sexAttackCooldown
		float s = 2
		if (dcumenu.sexAttackCooldown As Float) > 2.0
			s = dcumenu.sexAttackCooldown As Float
		endif
		dclibs.LastSexAttackTime = Utility.GetCurrentGameTime() - ((s - 1) / 24)						
	endif
EndFunction

bool Function SexAttacks()
	bool playerisaroused = (libs.aroused.GetActorArousal(libs.PlayerRef) > dcumenu.sexEnableNakedAttacksArousalMin)	
	bool isnaked = (libs.playerref.GetWornForm(0x00000004) == None)
	bool isNotWearingAnyClothing = dclibs.checknaked()
	bool isunarmed = dclibs.checkunarmed()	
	bool isRestrained = dclibs.isRestrained(libs.playerref) 
	bool isAroused = (libs.aroused.GetActorArousal(libs.PlayerRef) > dcumenu.sexArousedAttacksThreshold)
	bool iscollared = libs.playerref.WornHasKeyword(dcumenu.dcur_kw_cursedcollar) || libs.playerref.WornHasKeyword(dcumenu.dcur_kw_slavecollar) || libs.playerref.WornHasKeyword(dcumenu.dcur_kw_slutcollar) || libs.playerref.WornHasKeyword(dcumenu.dcur_kw_rdcollar)	|| libs.playerRef.WornHasKeyword(dcur_kw_dibellascharm) || libs.playerRef.WornHasKeyword(dcur_kw_dibellascharm) || libs.playerRef.WornHasKeyword(dcur_kw_royalchastityitem)
	bool chastity = dcumenu.sexchastitypreventsrape && (dclibs.dcur_iswearinglockedgear.GetValueInt() == 1)		
	bool isNight = ((Math.Floor(GameHour.GetValue()) < 7) || (Math.Floor(GameHour.GetValue()) > 21)) && !libs.playerref.GetParentCell().IsInterior()
	attackflags = 0	
	if iscollared && !isNotWearingAnyClothing && !libs.isAnimating(libs.playerref)
		dclibs.collar_punish()
		return false
	endif	
	;shame animation
	if !dclibs.zadc.GetDevice(libs.playerref)
		if dcumenu.shameidle && isnaked && !libs.Aroused.IsActorExhibitionist(libs.playerref) && libs.playerref.GetCombatState() == 0 && !libs.playerref.IsOnMount() && !libs.playerref.IsSwimming() && !libs.IsAnimating(libs.playerref) && libs.playerref.GetSitState() != 3 && libs.playerref.GetSleepState() != 3 && !libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage) && !libs.playerRef.WornHasKeyword(dcur_kw_dibellascharm) && !(libs.playerRef.WornHasKeyword(libs.zad_DeviousBelt)) && !dclibs.mcs.spqs.IsRunning() && !dclibs.mcs.wgs.IsRunning()
			Debug.SendAnimationEvent(libs.playerref, "DCLFTNudeCoverOff")		
			If libs.playerref.Is3DLoaded() && !libs.playerRef.WornHasKeyword(libs.zad_DeviousGag)
				libs.playerref.SetExpressionOverride(11, 80)
			EndIf
		elseif dcumenu.shameidle && !libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			If libs.playerref.Is3DLoaded() && !libs.playerRef.WornHasKeyword(libs.zad_DeviousGag)
				libs.playerref.ClearExpressionOverride()
			EndIf
			Debug.SendAnimationEvent(libs.playerRef, "OffsetStop")
		endif
	EndIf
	; check if rape is enabled or if conflicting quests are running.
	if !dcumenu.sexGloballyEnabled || suspendedstate || mcs.isDCURQuestRunning || libs.playerRef.IsSwimming() || dclibs.isInHomeorJail() || dclibs.isInInn() || rapemutex
		if dcumenu.debuglogenabled
			if mcs.isDCURQuestRunning
				debug.trace("[DCUR] Sex attacks are disabled due to conflicting quests!")	
			else
				debug.trace("[DCUR] Sex attacks are disabled!")	
			Endif
		endif
		return false
	endif
	if chastity
		return false
	EndIf
	; check conditions
	; has cooldown expired, and is the player able to enter a SL scene at all:
	If !chastity && ((Utility.GetCurrentGameTime() - dclibs.LastSexAttackTime) * 24 > dcumenu.sexAttackCooldown) && !libs.playerref.IsInCombat() && !libs.IsAnimating(libs.playerref) && !UI.IsMenuOpen("Dialogue Menu")				
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Sex attacks are out of cooldown. Checking conditions!")	
		endif
		if isnaked && hasbeennaked && dcumenu.sexEnableNakedAttacks && playerisaroused 			
			attackflags += 1
		EndIf
		if isRestrained && hasbeenrestrained && dcumenu.sexEnableBoundAttacks 			
			attackflags += 1
		endif		
		if isunarmed && hasbeenunarmed && dcumenu.sexEnableUnarmedAttacks 			
			attackflags += 1
		endif
		if isAroused && hasbeenaroused && dcumenu.sexEnableArousedAttacks
			attackflags += 1
		endif
		if iscollared && isNotWearingAnyClothing 
			attackflags += 1
		endif
		if isNight && hasbeennight && dcumenu.sexEnableNightAttacks
			attackflags += 1
		endif		
	endif
	; if enough conditions are met, fire cloak
	if attackflags >= dcumenu.sexAttackThreshold
		If (Utility.RandomFloat(0.0,99.9) < dcumenu.sexNakedAttackChancePerTick)
			If !libs.playerref.IsWeaponDrawn() && !libs.playerref.IsSneaking()
				If !FireSexAttack()		
					Return False
				Else	
					Return True
				Endif
			else
				if dcumenu.debuglogenabled
					if libs.playerref.IsWeaponDrawn()
						debug.trace("[DCUR] Sex attacks warded away by drawn weapon!")	
					Endif
					if libs.playerref.IsSneaking()
						debug.trace("[DCUR] Player is protected from sex attacks because she is sneaking!")	
					Endif
				endif
			Endif
		endif
	endif
	if isnaked && !hasbeennaked && !libs.IsAnimating(libs.playerref)
		if dcumenu.sexEnableNakedAttacks
			libs.notify("Your gorgeous naked body might draw a lot of attention...")
		endif		
		if !isVulnerableToRape
			addgraceperiod()
		EndIf
		hasbeennaked = true
	elseif !isnaked && hasbeennaked
		if dcumenu.sexEnableNakedAttacks
			libs.notify("Properly dressed once more, you feel less watched already!")
		endif
		hasbeennaked = false
	elseif !isnaked
		hasbeennaked = false
	endif
	if isunarmed && !hasbeenunarmed && !libs.IsAnimating(libs.playerref)
		if dcumenu.sexEnableUnarmedAttacks
			libs.notify("Some people might take advantage of an unarmed lady...")
		endif
		if !isVulnerableToRape
			addgraceperiod()
		EndIf
		hasbeenunarmed = true
	elseif !isunarmed && hasbeenunarmed
		if dcumenu.sexEnableUnarmedAttacks
			libs.notify("You are now armed and ready to defend yourself!")
		endif
		hasbeenunarmed = false
	elseif !isunarmed
		hasbeenunarmed = false
	endif
	if isRestrained && !hasbeenrestrained && !libs.IsAnimating(libs.playerref)
		if dcumenu.sexEnableBoundAttacks
			libs.notify("You are bound and helpless...")
		endif
		if !isVulnerableToRape
			addgraceperiod()
		EndIf
		hasbeenrestrained = true
	elseif !isRestrained && hasbeenrestrained
		if dcumenu.sexEnableBoundAttacks
			libs.notify("Free from your bonds, you are no longer easy prey!")
		endif
		hasbeenrestrained = false
	elseif !isRestrained
		hasbeenrestrained = false
	endif
	if isAroused && !hasbeenaroused && !libs.IsAnimating(libs.playerref)
		if dcumenu.sexEnableArousedAttacks
			libs.notify("You're extremely horny and people might notice...")
		endif
		if !isVulnerableToRape
			addgraceperiod()
		EndIf
		hasbeenaroused = true
	elseif !isAroused && hasbeenaroused
		if dcumenu.sexEnableArousedAttacks
			libs.notify("You are no longer horny enough to draw attention.")
		endif
		hasbeenaroused = false
	elseif !isAroused
		hasbeenaroused = false
	endif	
	if isNight && !hasbeennight
		if dcumenu.sexEnableNightAttacks
			libs.notify("The dark night is a bad time for a lady to wander around...")
		endif
		if !isVulnerableToRape
			addgraceperiod()
		EndIf
		hasbeennight = true
	elseif !isNight && hasbeennight
		if dcumenu.sexEnableNightAttacks
			libs.notify("You are safe from dangers lurking in the darkness.")
		endif
		hasbeennight = false
	elseif !isNight
		hasbeennight = false
	endif		
	if (attackflags >= dcumenu.sexAttackThreshold) && !isVulnerableToRape
		isVulnerableToRape = true
		libs.notify("You are a potential rape victim...")
	Elseif (attackflags < dcumenu.sexAttackThreshold) && isVulnerableToRape
		libs.notify("You are no longer a potential rape victim...")
		isVulnerableToRape = false
	Elseif (attackflags < dcumenu.sexAttackThreshold) 
		isVulnerableToRape = false
	Endif
	return false
EndFunction

Bool Function FireSexAttack()
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Rape scene triggered. Checking for detection!")	
	endif
	rapemutex = True
	dclibs.clearlist()
	dcur_detectioncloakhitlist.Revert()
	dcumenu.dcur_detectioncloakFFspell.cast(libs.playerref)
	Utility.Wait(2)
	int n = dcur_detectioncloakhitlist.GetSize()
	if n > 0 										
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Found some mobs! Trying to initialize rape scene.")	
		endif				
		lastrape = Utility.GetCurrentGameTime()
		if dclibs.GangBang(fullscene = true, origin = dclibs.origin_cloak)				
			return true				
		else
			if dcumenu.debuglogenabled
				debug.trace("[DCUR] No allowed mobs present. Aborting.")	
			endif
			rapemutex = False
			return false
		endif
	else
		rapemutex = False
	endif
EndFunction

Function CheckFollowers()
	If !dcumenu.enablefollowersupport
		return
	EndIf
	Actor Follower
	ActorBase FBase		
	int i = dclibs.dcur_followerlist.GetSize() - 1	
	while i >= 0
		Follower = dclibs.dcur_followerlist.GetAt(i) As Actor		
		FBase = Follower.GetActorBase()
		If (Follower.GetDistance(libs.playerref) < 1000.0) && dclibs.isValidFollower(Follower) && FBase.GetSex() == 1 && !libs.IsAnimating(Follower)			
			Float arousal = (libs.aroused.GetActorArousal(Follower) As Float / 100) 
			if arousal > 0.9
				If Follower.GetItemCount(dclibs.dcur_frigidwash) > 0
					Follower.EquipItem(dclibs.dcur_frigidwash)					
				Else
					If Utility.RandomFloat(0.0, 99.9) < 0.5
						dclibs.Masturbate(Follower)
					EndIf
				EndIf
			EndIf
		EndIf
		i -= 1
	EndWhile
EndFunction
	
Function BreastResizeFollowers()
	Actor Follower
	ActorBase FBase	
	Float minsize = dcumenu.breastminsize
	Float maxsize = dcumenu.breastmaxsize	
	Float buttminsize = dcumenu.buttminsize
	Float buttmaxsize = dcumenu.buttmaxsize	
	int i = dclibs.dcur_followerlist.GetSize() - 1	
	while i >= 0
		Follower = dclibs.dcur_followerlist.GetAt(i) As Actor		
		FBase = Follower.GetActorBase()
		If (Follower.GetDistance(libs.playerref) < 1000.0) && dclibs.isValidFollower(Follower) && FBase.GetSex() == 1 && !Follower.WornHasKeyword(libs.zad_DeviousBra) && !libs.IsAnimating(Follower)
			; we got a valid girl follower
			Float arousal = (libs.aroused.GetActorArousal(Follower) As Float / 100) 
			if arousal > 0.25 && dcumenu.enablefollowersupport
				Float size = ((arousal * (maxsize - minsize)) + minsize) / 2
				Float butt = ((arousal * (buttmaxsize - buttminsize)) + buttminsize) / 1.5
				SetMorphValue(Follower, -size, "Breasts")
				SetMorphValue(Follower, size/2, "BreastsSH")				
				SetMorphValue(Follower, size/2, "DoubleMelon")
				SetMorphValue(Follower, size/2, "BreastsFantasy")
				SetMorphValue(Follower, size/2, "BreastWidth")
				SetMorphValue(Follower, size/4, "PushUp")
				SetMorphValue(Follower, size, "BreastGravity")
				SetMorphValue(Follower, size/4, "BreastHeight")
				SetMorphValue(Follower, size, "NippleSize")
				SetMorphValue(Follower, size, "NippleAreola")
				SetMorphValue(Follower, -butt, "Butt")
				SetMorphValue(Follower, butt/2, "BigButt")
				SetMorphValue(Follower, butt, "RoundAss")
				SetMorphValue(Follower, butt/2, "Thighs")
				SetMorphValue(Follower, butt, "Waist")	
			Else
				SetMorphValue(Follower, 0.0, "Breasts")
				SetMorphValue(Follower, 0.0, "BreastsSH")				
				SetMorphValue(Follower, 0.0, "DoubleMelon")
				SetMorphValue(Follower, 0.0, "BreastsFantasy")
				SetMorphValue(Follower, 0.0, "BreastWidth")
				SetMorphValue(Follower, 0.0, "PushUp")
				SetMorphValue(Follower, 0.0, "BreastGravity")
				SetMorphValue(Follower, 0.0, "BreastHeight")
				SetMorphValue(Follower, 0.0, "NippleSize")
				SetMorphValue(Follower, 0.0, "NippleAreola")
				SetMorphValue(Follower, 0.0, "Butt")
				SetMorphValue(Follower, 0.0, "BigButt")
				SetMorphValue(Follower, 0.0, "RoundAss")
				SetMorphValue(Follower, 0.0, "Thighs")
				SetMorphValue(Follower, 0.0, "Waist")	
			EndIf
		endif
		i -= 1
	EndWhile
EndFunction
	
Function breastresize()	
	; 8.4: This function can cause noticable stuttering when people have an outdated skeleton. Probably not worth it... Disabled for now.
	; maybe experiment with calling this function only when the character is idle (not sneaking, not running, not animating etc.)
	; BreastResizeFollowers()	
	if libs.playerRef.WornHasKeyword(libs.zad_DeviousBra) || libs.IsAnimating(libs.playerref) ;|| !br_resetdone
		return
	Endif	
	Float arousal = (libs.aroused.GetActorArousal(libs.PlayerRef) As Float / 100) 
	bool isEligible = false 
	if arousal > 0.25
		isEligible = True		
	Endif	
	Float minsize = dcumenu.breastminsize
	Float maxsize = dcumenu.breastmaxsize	
	Float buttminsize = dcumenu.buttminsize
	Float buttmaxsize = dcumenu.buttmaxsize	
	if isEligible && !hasbeenbreastenlarged && dcumenu.breastresize		
		libs.notify("Your erotic fantasies make your body voluptuous!")
		hasbeenbreastenlarged = true
	Endif	
	If isEligible && hasbeenbreastenlarged 		
		Float size = (arousal * (maxsize - minsize)) + minsize 
		Float butt = (arousal * (buttmaxsize - buttminsize)) + buttminsize
		;Float curve = 1.0 - (arousal * 0.4)
		SetMorphValue(libs.playerref, -size, "Breasts")
		SetMorphValue(libs.playerref, size/2, "BreastsSH")
		;SetMorphValue(libs.playerref, size/4, "BreastsSSH")
		SetMorphValue(libs.playerref, size/2, "DoubleMelon")
		SetMorphValue(libs.playerref, size/2, "BreastsFantasy")
		SetMorphValue(libs.playerref, size/2, "BreastWidth")
		SetMorphValue(libs.playerref, size/4, "PushUp")
		SetMorphValue(libs.playerref, size, "BreastGravity")
		SetMorphValue(libs.playerref, size/4, "BreastHeight")
		SetMorphValue(libs.playerref, size, "NippleSize")
		SetMorphValue(libs.playerref, size, "NippleAreola")
		SetMorphValue(libs.playerref, -butt, "Butt")
		SetMorphValue(libs.playerref, butt/2, "BigButt")
		SetMorphValue(libs.playerref, butt, "RoundAss")
		SetMorphValue(libs.playerref, butt/2, "Thighs")
		SetMorphValue(libs.playerref, butt, "Waist")		
	Endif			
	if (!isEligible || !dcumenu.breastresize) && hasbeenbreastenlarged 
		SetMorphValue(libs.playerref, 0.0, "Breasts")
		SetMorphValue(libs.playerref, 0.0, "BreastsSH")
		;SetMorphValue(libs.playerref, 0.0, "BreastsSSH")
		SetMorphValue(libs.playerref, 0.0, "DoubleMelon")
		SetMorphValue(libs.playerref, 0.0, "BreastsFantasy")
		SetMorphValue(libs.playerref, 0.0, "BreastWidth")
		SetMorphValue(libs.playerref, 0.0, "PushUp")
		SetMorphValue(libs.playerref, 0.0, "BreastGravity")
		SetMorphValue(libs.playerref, 0.0, "BreastHeight")
		SetMorphValue(libs.playerref, 0.0, "NippleSize")
		SetMorphValue(libs.playerref, 0.0, "NippleAreola")
		SetMorphValue(libs.playerref, 0.0, "Butt")
		SetMorphValue(libs.playerref, 0.0, "BigButt")
		SetMorphValue(libs.playerref, 0.0, "RoundAss")
		SetMorphValue(libs.playerref, 0.0, "Thighs")
		SetMorphValue(libs.playerref, 0.0, "Waist")		
		libs.notify("Your body reverts to its normal proportions.")				
		hasbeenbreastenlarged = false
	Endif
	if (!isEligible || !dcumenu.breastresize)		
		hasbeenbreastenlarged = false
	endif	
EndFunction

Function cuminflation()	
	If !dcumenu.cuminflationenable
		return
	EndIf
	Float MinBelly = dcumenu.bellyminsize
	Float MaxBelly = dcumenu.bellymaxsize	
	; lose one unit of cum every 2.5 hours
	If (Utility.GetCurrentGameTime() - lastcuminflationadjustment) * 24.0 > 3.0
		; can't leak for at least 6 hours after having sex.
		If (Utility.GetCurrentGameTime() - lastcuminflation) * 24.0 > 6.0 
			If dcur_cuminflation.GetValueInt() > 0				
				if !libs.playerref.WornHasKeyword(libs.zad_DeviousBelt) && !libs.playerref.WornHasKeyword(libs.zad_DeviousSuit) && !libs.playerref.WornHasKeyword(libs.zad_DeviousHarness) && !libs.playerref.WornHasKeyword(libs.zad_DeviousPlugVaginal)
					libs.notify("Your pussy is leaking cum..." )
					dcur_cuminflation.SetValueInt(dcur_cuminflation.GetValueInt() - 1)
					dclibs.SexLab.AddCum(libs.playerref, Vaginal = true, Oral = false, Anal = false)					
					if Utility.RandomInt(1,2) < 2
						; stack it
						dclibs.SexLab.AddCum(libs.playerref, Vaginal = true, Oral = false, Anal = false)											
					Endif
					; sometimes it's going to be a real mess!
					if Utility.RandomInt(1,2) < 2						
						dclibs.SexLab.AddCum(libs.playerref, Vaginal = false, Oral = false, Anal = true)											
					Endif
					if Utility.RandomInt(1,2) < 2						
						dclibs.SexLab.AddCum(libs.playerref, Vaginal = false, Oral = false, Anal = true)											
					Endif
				Elseif libs.playerref.WornHasKeyword(libs.zad_DeviousBelt)
					libs.notify("Your chastity belt is preventing cum from leaking." )
				Elseif libs.playerref.WornHasKeyword(libs.zad_DeviousHarness)
					libs.notify("Your harness is preventing cum from leaking." )
				Elseif libs.playerref.WornHasKeyword(libs.zad_DeviousSuit)
					libs.notify("Your dress is preventing cum from leaking." )
				Elseif libs.playerref.WornHasKeyword(libs.zad_DeviousPlugVaginal)
					libs.notify("Your vaginal plug is preventing cum from leaking." )
				Endif
			Endif
		EndIf
		lastcuminflationadjustment = Utility.GetCurrentGameTime()
	Endif
	If dcur_cuminflation.GetValueInt() < 0
		dcur_cuminflation.SetValueInt(0)
	Endif	
	Float value = (dcur_cuminflation.GetValueInt() As Float / MaxInflations As Float)
	Float Belly = (value * (MaxBelly - MinBelly)) + MinBelly			
	;XPMSELib.SetNodeScale(libs.playerref, True, "NPC Belly", Belly, "DCL")
	SetMorphValue(libs.playerref, Belly)
EndFunction

Function SetMorphValue(Actor akActor, float value, string MorphName = "PregnancyBelly")	
	If value != 0.0
		NiOverride.SetBodyMorph(akActor, MorphName, "DCL", value)
	Else		
		; ok, don't ask me why clearning the morph isn't working, so we're just setting it to a minimal value and carry on...
		NiOverride.SetBodyMorph(akActor, MorphName, "DCL", 0.01)
	;	NiOverride.ClearBodyMorph(akActor, MorphName, "DCL")
	EndIf	
	NiOverride.UpdateModelWeight(akActor)
EndFunction

Function SashaNeeds()	
	; no need to process this if Sasha isn't a current follower
	Actor Sasha = saqs.GetSasha()
	 If !Sasha.IsInFaction(dcumenu.CurrentFollowerFaction)		
		 return
	 Endif		
	; increase her arousal and store in global value for dialogue
	libs.Aroused.UpdateActorExposure(Sasha, 10)
	saqs.dcur_sasha_arousal.SetValueInt(libs.aroused.GetActorArousal(Sasha))
	saqs.CalculateSashaArousal()
EndFunction
	
Function Sasha()	
	; no need to process this if Sasha isn't a current follower
	Actor Sasha = saqs.GetSasha()
	 If !Sasha.IsInFaction(dcumenu.CurrentFollowerFaction)
		 return
	 Endif		
	; remove dance packages
	If (Utility.GetCurrentGameTime() - saqs.dancetimerstart) * 24 > 0.5 && saqs.activepackage
		libs.notify("Sasha stops dancing.")
		saqs.removepackage(Sasha, saqs.activepackage)
		saqs.activepackage = None
		;saqs.ResetOutfit(saqs.dcur_outfit_sashaNaked)
	EndIf	
	;remove flags
	If (Utility.GetCurrentGameTime() - saqs.lastshock) * 24 > 1 
		saqs.dcur_sasha_hasbeenshockedlasthour.SetValueInt(0)
	EndIf
	; can run errand once a day
	If (Utility.GetCurrentGameTime() - saqs.lasterrand) * 24 > 24
		saqs.dcur_sasha_candoerrand.SetValueInt(1)
	Else
		saqs.dcur_sasha_candoerrand.SetValueInt(0)
	EndIf
	; can get whored out once a day
	If (Utility.GetCurrentGameTime() - saqs.lastwhoredout) * 24 > 24
		saqs.dcur_sasha_canwhore.SetValueInt(1)
	Else
		saqs.dcur_sasha_canwhore.SetValueInt(0)
	EndIf
	; can get gifts once a day
	If (Utility.GetCurrentGameTime() - saqs.lastgiftgiven) * 24 > 24
		saqs.dcur_sasha_cangetgift.SetValueInt(1)
	Else
		saqs.dcur_sasha_cangetgift.SetValueInt(0)
	EndIf
	; can be kissed once in a while
	If (Utility.GetCurrentGameTime() - saqs.lastkissed) * 24 > 6
		saqs.dcur_sasha_canbekissed.SetValueInt(1)
	Else
		saqs.dcur_sasha_canbekissed.SetValueInt(0)
	EndIf
	; check if she's willing to unlock the player's belt
	If saqs.dcur_sasha_isdominating.GetValueInt() == 0 && libs.playerref.WornHasKeyword(saqs.dcur_kw_sashaPlayerBelt) && ((Utility.GetCurrentGameTime() - saqs.lastplayerbelted) * 24 > saqs.playerbeltduration)
		if saqs.dcur_sasha_canunbeltplayer.GetValueInt() != 1
			libs.notify("Sasha would be willing to unbelt you.", messagebox = true)
		EndIf
		saqs.dcur_sasha_canunbeltplayer.SetValueInt(1)		
	Else
		saqs.dcur_sasha_canunbeltplayer.SetValueInt(0)
	EndIf
	; domination
	; chance to use the plugs if she plugged the player:
	if libs.playerRef.isEquipped(saqs.dcur_SashaPlayerChastityBelt) && (Utility.GetCurrentGameTime() - saqs.lasttease) * 24 > 3 && Utility.RandomInt() < 10
		libs.notify("Sasha activates the vibrators inside you...", messagebox = true)
		int rnd = Utility.RandomInt(1,5)
		if rnd == 0 
			saqs.libs.VibrateEffect(libs.playerRef, 1, 10, teaseOnly = true)
		elseif rnd == 1	
			saqs.libs.VibrateEffect(libs.playerRef, 2, 20, teaseOnly = true)
		elseif rnd == 2
			saqs.libs.VibrateEffect(libs.playerRef, 3, 30, teaseOnly = true)
		elseif rnd == 3
			saqs.libs.VibrateEffect(libs.playerRef, 4, 40, teaseOnly = false)
		elseif rnd == 4
			saqs.libs.VibrateEffect(libs.playerRef, 5, 300, teaseOnly = false)
		Endif
		saqs.lasttease = Utility.GetCurrentGameTime()
	EndIf
	; has a demand
	If saqs.dcur_sasha_isdominating.GetValueInt() == 1 && (Utility.GetCurrentGameTime() - saqs.lastdemand) * 24 > 8 && Sasha.GetDistance(libs.playerref) < 1500 && !Sasha.WornHasKeyword(libs.zad_DeviousGag)
		saqs.dcur_sasha_hasdemand.SetValueInt(1)
	Else
		saqs.dcur_sasha_hasdemand.SetValueInt(0)
	EndIf
	if saqs.dcur_sasha_hasdemand.GetValueInt() == 1 && !UI.IsMenuOpen("Dialogue Menu") && !UI.IsMenuOpen("BarterMenu") && !UI.IsMenuOpen("ContainerMenu") && !UI.IsMenuOpen("Sleep/Wait Menu") && !libs.playerRef.IsInCombat() && !libs.IsAnimating(libs.playerRef) && !libs.playerref.IsOnMount() && !libs.playerref.IsSwimming() && !dclibs.isInHomeorJail() ; && (dclibs.isInCity() || dclibs.isInHold()) 
		saqs.notalkcounter += 1		
		If saqs.notalkcounter > 20			
			if dclibs.progressivebondage(libs.playerref, dcumenu.equiptheme, 1)
				libs.notify("Sasha is locking more restraints on you for not talking to her!")
			Else
				libs.notify("Sasha is making your collar shock you. You need to talk to her!")
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
				float maxHealth = libs.playerref.GetBaseActorValue("Health")
				libs.PlayerRef.DamageActorValue("Health", maxHealth * 0.8)	
				float maxStamina = libs.playerref.GetBaseActorValue("Stamina")
				libs.PlayerRef.DamageActorValue("Stamina", maxStamina * 0.8)	
				float maxMagicka = libs.playerref.GetBaseActorValue("Magicka")
				libs.PlayerRef.DamageActorValue("Magicka", maxMagicka * 0.8)	
			Endif
		elseif saqs.notalkcounter > 10
			libs.notify("Sasha is making your collar choke you. You need to talk to her!")
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
			float maxHealth = libs.playerref.GetBaseActorValue("Health")
			libs.PlayerRef.DamageActorValue("Health", maxHealth * 0.5)	
		Elseif saqs.notalkcounter > 5
			libs.notify("Sasha demands you to talk to her NOW!")
		Else
			libs.notify("Sasha wants to talk to you.")
		Endif
	Endif
	; process combination lock if player has the key.
	if libs.PlayerRef.GetItemCount(saqs.dcur_sashaMasterKey) >= 1 && (Utility.GetCurrentGameTime() - saqs.LastKeyTick) * 24.0 > saqs.KeyTickLen
		saqs.LastKeyTick = Utility.GetCurrentGameTime()
		saqs.KeyAction()	
	Endif
	; errands
	If saqs.errandtype > 0	
		If saqs.errandtype == saqs.errand_lookforkeys && ((Utility.GetCurrentGameTime() - saqs.lasterrand) * 24 > 2)
			saqs.ReleaseSasha()						
			libs.notify("Sasha returns with a key.", messagebox = true)
			dclibs.FindAnyUsefulKey(libs.playerref)
			saqs.errandtype = 0
		Endif
		If saqs.errandtype == saqs.errand_lookfortreasure && ((Utility.GetCurrentGameTime() - saqs.lasterrand) * 24 > 4)
			saqs.ReleaseSasha()						
			libs.notify("Sasha returns with a valuable item.", messagebox = true)
			dclibs.GiveBondageRewards(leverage = 2)
			saqs.errandtype = 0
		Endif	
		If saqs.errandtype == saqs.errand_lookforgold && ((Utility.GetCurrentGameTime() - saqs.lasterrand) * 24 > 2)
			saqs.ReleaseSasha()						
			libs.notify("Sasha returns with some gold.", messagebox = true)
			libs.playerref.AddItem(dcumenu.gold001, Utility.RandomInt(200,500))
			saqs.errandtype = 0
		Endif			
		If saqs.errandtype == saqs.errand_lookforsoulgem && ((Utility.GetCurrentGameTime() - saqs.lasterrand) * 24 > 6)
			saqs.ReleaseSasha()						
			libs.notify("Sasha returns with a soulgem.", messagebox = true)
			libs.playerref.Additem(dclibs.LItemSoulGemFullSpecial, 1)
			saqs.errandtype = 0
		Endif					
	Endif
	; ties player when she's not outdoors and domination is active
	if (saqs.dcur_sasha_isdominating.GetValueInt() == 1) && saqs.GetIsOutdoors()
		saqs.UnlockPlayer()
	Elseif (saqs.dcur_sasha_isdominating.GetValueInt() == 1) && !saqs.GetIsOutdoors()
		saqs.TiePlayer()
	Endif
EndFunction

function checkvisiblerestraints()
	bool isRestrained = dclibs.isWearingVisibleDevices(libs.playerref)
	if !hasbeenvisiblyrestrained && isRestrained && !libs.IsAnimating(libs.playerref)
		libs.notify("You are visibly bound.")
		hasbeenvisiblyrestrained = True
	elseif hasbeenvisiblyrestrained && !isRestrained
		libs.notify("You are no longer visibly bound.")
		hasbeenvisiblyrestrained = False
	elseif !isRestrained
		hasbeenvisiblyrestrained = False
	endif
EndFunction

Bool Function GetIsOutdoors()
	If dclibs.IsInCity()
		Return False
	Endif
	Return True
EndFunction

function checksafearea()
	bool isSafe = !GetIsOutdoors()	
	if (isSafe && !isInSafeArea && !isInAreaTransition) || (!isSafe && isInSafeArea && !isInAreaTransition)
		isInAreaTransition = true
		return
	Endif	
	if isSafe && !isInSafeArea && isInAreaTransition
		libs.notify("You are now in a safe area!")				
		isInSafeArea = true
		isInAreaTransition = false
	elseif !isSafe && isInSafeArea && isInAreaTransition
		libs.notify("You are now in an unsafe area!")				
		isInSafeArea = false
		isInAreaTransition = false	
	endif	
EndFunction
	
function housekeeping()
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Rare periodic events processing")
	endif
	if !dclibs.validate()
		libs.notify("You appear to run mods removing important tags from children characters. Cursed Loot has been automatically disabled.", messagebox = true)
		dcumenu.shutdownmod = True
		dcumenu.dcur_modshutdown.SetValueInt(1)		
	endif
	; Sasha quest disposition
	saqs.CalculateDisposition()
	lasthousekeeping = Utility.GetCurrentGameTime()	
	dclibs.ClearEvilPersons()
EndFunction	

function housekeepingshortinterval()
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Hourly events processing")
	endif
	lasthousekeepingshortinterval = Utility.GetCurrentGameTime()	
	; process rare tasks once every six hours
	if (Utility.GetCurrentGameTime() - lasthousekeeping) * 24.0 > 6.0
		housekeeping()
	endif	
	; reset PI flow control variables in case they were bugged out by a failed sex scene
	piqs.IsDetected = False
    piqs.IsDetectedByGuard = False
	if dcumenu.selfbondagenoitemdrops
		int i = dclibs.getDDitemcount(libs.playerref)
		If i > 0
			;libs.notify("Wearing restraints makes you horny!")
			if libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				i += 5
			Endif
			if libs.playerref.WornHasKeyword(libs.zad_DeviousGag)
				i += 3
			Endif
			if dcumenu.debuglogenabled
				debug.trace("[DCUR] Adding " + i + " exposure to player for wearing restraints.")
			endif
			dclibs.Aroused.UpdateActorExposure(libs.PlayerRef, i)
		Endif
	Endif	
	SashaNeeds()
	; reduce her indecency fame status
	If IndencencyPoints > 0
		If IndencencyPoints > 1
			IndencencyPoints -= 2
		Elseif IndencencyPoints == 1
			IndencencyPoints -= 1
		Endif
	Endif	
	piqs.CheckLockStatus()	
	bool isWearingSlaveCollar = libs.playerRef.WornHasKeyword(dcumenu.dcur_kw_slavecollar)
	bool isWearingSlutCollar = libs.playerRef.WornHasKeyword(dcumenu.dcur_kw_slutcollar)		
	if isWearingSlaveCollar || isWearingSlutCollar
		scqs.Aroused.SetActorExhibitionist(libs.playerref, true)
		scqs.sexcounter = scqs.SexLab.SexCount(libs.playerref)
	endif	
	If khqs.dcur_dollmaker_keyholderactive.GetValueInt() == 1
		debug.trace("[DCUR] Player has keyholder. Checking release.")
		if khqs.keyholder_term == khqs.keyholder_term_hour			
			if ((Utility.GetCurrentGameTime() - khqs.keyholderqueststartedat) * 24.0) > 1.0		
				khqs.SetObjectiveCompleted(10)
				khqs.SetStage(15)
				khqs.SetObjectiveDisplayed(15)
				khqs.dcur_dollmaker_keyholdercanrelease.SetValueInt(1)
			endif	
		Endif
		if khqs.keyholder_term == khqs.keyholder_term_day
			if (Utility.GetCurrentGameTime() - khqs.keyholderqueststartedat) > 1.0
				khqs.SetObjectiveCompleted(10)
				khqs.SetStage(15)
				khqs.SetObjectiveDisplayed(15)
				khqs.dcur_dollmaker_keyholdercanrelease.SetValueInt(1)
			endif	
		Endif
		if khqs.keyholder_term == khqs.keyholder_term_week
			if (Utility.GetCurrentGameTime() - khqs.keyholderqueststartedat) > 7.0
				khqs.SetObjectiveCompleted(10)
				khqs.SetStage(15)
				khqs.SetObjectiveDisplayed(15)
				khqs.dcur_dollmaker_keyholdercanrelease.SetValueInt(1)
			endif	
		Endif
		if khqs.keyholder_term == khqs.keyholder_term_month
			if (Utility.GetCurrentGameTime() - khqs.keyholderqueststartedat) > 30.0
				khqs.SetObjectiveCompleted(10)
				khqs.SetStage(15)
				khqs.SetObjectiveDisplayed(15)
				khqs.dcur_dollmaker_keyholdercanrelease.SetValueInt(1)
			endif	
		Endif
	Endif
	; bondageadventure cooldown
	if ((Utility.GetCurrentGameTime() - lastbondageadventuredialogue) * 24.0) > 5.0					
		dcur_bondageadventurequestcooldown.SetValueInt(1)
	Else	
		dcur_bondageadventurequestcooldown.SetValueInt(0)
	Endif	
	if isWearingSlutCollar
		if scqs.Sexlab.LastSexGameTime(libs.playerref) > scqs.lastcheckpoint
			scqs.lastcheckpoint = Utility.GetCurrentGameTime()
		endif		
		if (Utility.GetCurrentGameTime() - scqs.lastcheckpoint) > 1
			scqs.sexlessdays += 1		
			scqs.lastcheckpoint = Utility.GetCurrentGameTime()
		endif
		if scqs.sexlessdays >= mcs.scqs.sexlessdaysneeded
			scqs.dcur_slavecollarlocked.SetValueInt(0)
			libs.notify("You managed to refrain from whoring around for " + scqs.sexlessdaysneeded + " days. The slut collar unlocks and releases you.", messagebox = true)
			libs.removeDevice(Libs.PlayerRef, dcumenu.dcur_slutCollar, dcumenu.dcur_slutCollarRendered, Libs.zad_DeviousCollar, destroyDevice = true, skipevents = false, skipmutex = true)
			scqs.slavecollarquestactive = False					
		endif
	endif 
	if isWearingSlaveCollar && (scqs.sexcounter - scqs.sexcounteratstart) >= scqs.sexactsneeded && (Utility.GetCurrentGameTime() - scqs.queststartedtime) >= scqs.dayswornneeded 
		if !dcumenu.slavecollarkeyneeded		
			libs.notify("You have been a good slave slut. The collar is satisfied and will release you.", messagebox = true)
			libs.removeDevice(Libs.PlayerRef, dcumenu.dcur_slaveCollar, dcumenu.dcur_slaveCollarRendered, Libs.zad_DeviousCollar, destroyDevice = true, skipevents = false, skipmutex = true)		
			scqs.slavecollarquestactive = False				
		else
			scqs.dcur_slavecollarlocked.SetValueInt(0)
			libs.notify("You have been a good slave slut. The slave collar's timer lock opens. You can now unlock the collar with the proper key.", messagebox = true)
		endif
	endif
	if libs.playerRef.WornHasKeyword(dcumenu.dcur_kw_rdcollar)
		rdqs.rubberdollquestMC()
	endif	
	dclibs.scanfollowers()
	dclibs.ProcessBoundGirls()	
EndFunction

Function PublicIndencency()
	if !(dclibs.isInCity() || dclibs.isInHold()) || !dcumenu.pienabled || !dcumenu.pienforcenuditylaw || libs.playerref.GetParentCell().IsInterior()
		return
	Endif
	bool isnaked = (libs.playerref.GetWornForm(0x00000004) == None)
	if !isnaked || (Game.GetModByName("Slaverun_Reloaded.esp") != 255 && dclibs.isInCity())
		return
	Endif
	;full chastity	
	; if (dclibs.dcur_iswearinglockedgear.GetValueInt() == 1)			
	; actually, lets accept just the belt and bra and don't care if the player has the keys.
	if libs.playerRef.WornHasKeyword(libs.zad_DeviousBelt) && libs.playerRef.WornHasKeyword(libs.zad_DeviousBra)
		return
	Endif
	Actor currenttest = Game.FindRandomActorFromRef(libs.playerRef, 1000.0)
	if currenttest && dclibs.testrapist(currenttest) && currenttest.HasKeyword(dcumenu.ActorTypeNPC) ; make sure it's an NPC even if humanoid creatures are otherwise allowed.
		If currenttest.IsGuard()
			IndencencyPoints += 3
		Elseif dcumenu.pimisogyny
			IndencencyPoints += 2
		Else
			IndencencyPoints += 1
		Endif
		If IndencencyPoints > 15
			piqs.dcur_pi_witness.Clear()
			piqs.dcur_checkforguardFF.Cast(libs.playerref)
			Utility.Wait(1)			
			IndencencyPoints = 0			
			if piqs.dcur_pi_witness.GetActorReference().IsGuard()
				dcur_pi_usenakeddialogue.SetValueInt(1)
				libs.notify("A guard is going to prosecute you for public indecency!")	
				piqs.dcur_pi_witness.GetActorReference().moveto(libs.playerref)
				Utility.Wait(1)
				piqs.dcur_pi_guard.ForceRefTo(piqs.dcur_pi_witness.GetActorReference())				
			Else
				libs.notify("You have been reported for public indecency!")	
				int bounty
				If dcumenu.pimisogyny
					bounty = dcumenu.pibounty * 2
				Else
					bounty = dcumenu.pibounty
				Endif
				Faction akFaction = piqs.dcur_pi_witness.GetActorReference().GetCrimeFaction()
				akFaction.ModCrimeGold(bounty, false)
			Endif
		Else
			Bool Sex = currenttest.GetLeveledActorBase().GetSex()
			If currenttest.IsGuard()
				libs.notify(currenttest.GetLeveledActorBase().GetName() +" warns you for violeting indecency laws!")	
			ElseIf Sex == 0 ; male
				Int rm = Utility.RandomInt(1, 10)
				if rm == 1
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" is staring at your exposed self!")	
				ElseIf rm == 2
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" is staring at your boobs!")	
				ElseIf rm == 3
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" is staring at your pussy!")	
				ElseIf rm == 4
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" is staring at your curves!")	
				ElseIf rm == 5
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" is staring at your butt!")	
				ElseIf rm == 6
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" thinks you are a cheap whore!")	
				ElseIf rm == 7
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" shakes his fist at your indecent exposure!")	
				ElseIf rm == 8
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" rolls his eyes at your attention whoring!")	
				ElseIf rm == 9
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" rubs his cock while staring at your naked self!")	
				ElseIf rm == 10
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" makes obscene gestures in your direction!")	
				Endif		
			Else
				Int rm = Utility.RandomInt(1, 5)
				if rm == 1
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" thinks you are a cheap whore!")	
				ElseIf rm == 2
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" is shocked by your nudity!")	
				ElseIf rm == 3
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" shakes her head seeing you naked!")	
				ElseIf rm == 4
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" is staring at your curves!")	
				ElseIf rm == 5
					libs.notify(currenttest.GetLeveledActorBase().GetName() +" turns her eyes away from your exposed self!")	
				Endif		
			Endif
		Endif
	EndIf
EndFunction
	
Bool Function clocktickpulse()
	if dcumenu.shutdownmod || dclibs.gangbangmutex || dclibs.pollutedsavegame || suspendedstate
		return false
	endif			
	
	if dcumenu.installed_PO && (StorageUtil.GetIntValue(Game.GetPlayer(), "xpoPCinJail") == 1) || (StorageUtil.GetIntValue(Game.GetPlayer(), "xpoPCArrested") == 1)	|| (StorageUtil.GetIntValue(Game.GetPlayer(), "xpoPCArrestStart") == 1)
		return false
	endif	
	dclibs.CheckFastTravel()
	;if FurnitureProxyTrap()	
	;	return true
	;EndIf
	if !libs.playerRef.IsInCombat() && !libs.IsAnimating(libs.playerRef) && !libs.playerref.IsOnMount() && !libs.playerref.IsSwimming() && !dclibs.isInHomeorJail() && (dclibs.isInCity() || dclibs.isInHold()) && !UI.IsMenuOpen("Dialogue Menu")
		if !rapemutex && !mcs.IsSceneRunning && dcumenu.sexGloballyEnabled && dcumenu.rdrapeallowed && libs.playerRef.WornHasKeyword(dcur_kw_proxyrape)
			Actor currenttest		
			currenttest = Game.FindRandomActorFromRef(libs.playerRef, 350.0)
			if currenttest && dclibs.testrapist(currenttest)
				; only males can rape her when she's wearing the misogyny belt.
				If libs.playerRef.WornHasKeyword(dclibs.dcur_kw_misogynyBelt) && currenttest.GetLeveledActorBase().GetSex() != 0
					return false
				Endif			
				libs.notify(currenttest.GetLeveledActorBase().GetName() +" is going to rape you!")
				lastrape = Utility.GetCurrentGameTime()
				rapemutex = True
				if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt) && (dcumenu.stripbeltsonrape || Libs.PlayerRef.WornHasKeyword(dclibs.dcur_kw_misogynyBelt))
					dclibs.StripBelt(false, currenttest)
				Endif
				; if it's a female, trigger non-agressive animations only to prevent strap-on scenes.
				if Utility.RandomInt(0, 99) < dcumenu.sexUseConsensualScenesChance || (dcumenu.sexForceLesbian && currenttest.GetLeveledActorBase().GetSex() == 1)
					dclibs.sexwithplayer(currenttest, consensual = true, stages = 1, randomanim = true, nostrip = true, beds = false, playerisvictim = true)	
				else	
					dclibs.sexwithplayer(currenttest, consensual = false, stages = 1, randomanim = true, nostrip = true, beds = false, playerisvictim = true)	
				endif			
				return true			
			endif
		EndIf
		if libs.playerRef.WornHasKeyword(dcur_kw_tieme) && ((Utility.GetCurrentGameTime() - lasttiedup) * 24.0 > 12.0)
			Actor currenttest		
			currenttest = Game.FindRandomActorFromRef(libs.playerRef, 1500.0)
			if currenttest && currenttest.HasLOS(Libs.PlayerRef) && dclibs.testrapist(currenttest)
				If Utility.RandomInt() < 33
					TheCatcher.ForceRefTo(currenttest)
				EndIf
				lasttiedup = Utility.GetCurrentGameTime()
				return true
			EndIf
		Endif
	endif	
	return false
EndFunction	

Bool Function FurnitureProxyTrap()			
	Formlist FL = dclibs.zadc.FindFurnitureDevicesInCell()
	If FL.GetSize() > 0	
		int i = FL. GetSize() - 1
		ObjectReference furn = FL.GetAt(Utility.RandomInt(0, i)) As ObjectReference
		;libs.Notify("Furn: " + furn)
		if furn != None && libs.PlayerRef.GetDistance(furn) < 500 && Utility.RandomFloat(0.0, 99.9) < 100
			libs.Notify("Devious magic pulls you into the bondage furniture...")
			dclibs.zadc.LockActor(libs.PlayerRef, furn)
			dclibs.zadc.SetTimedRelease(furn, 3)
			return true
		EndIf
	EndIf
	return false
EndFunction

Function SuspendNakedCommentsIfBound()
	If !libs.playerRef.WornHasKeyword(libs.zad_Lockable)
		return
	EndIf	
	float NextAllowed = GameDaysPassed.GetValue() + 0.12
	WICommentNextAllowed.SetValue(NextAllowed)
EndFunction
	
Function clocktickshort()
	; do this only once per load, but we don't want to have to wait for up to an hour.
	if firstload 
		initialize()
	endif	
	SuspendNakedCommentsIfBound()
	dclibs.checkDCURQuestRunning()	
	WasNearDeath = False
	If dclibs.containermutex
		dclibs.containermutex = False
		Return
	Endif	
	if dcumenu.shutdownmod || dclibs.pollutedsavegame
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Mod functionality has been shut down. Periodic events cancelled.")
		endif
		; If the XDFF quest is active when the mod is shut down, we're setting it to paused state:
		if dfs.IsRunning()
			dfs.EndQuest()
		Endif
		; same for the Rubber Doll quest.
		if rdqs.rdquestrunning 	
			rdqs.terminatequest()
		EndIf
		return
	endif	
	If StorageUtil.GetIntValue(libs.playerRef, "dcur_prison_WasReleased") == 1
		; she was just released from prison, give her some time!
		StorageUtil.UnSetIntValue(libs.playerRef, "dcur_prison_WasReleased") 		
		return
	EndIf
	
	;none of the stuff below needs to be executed in combat or during sex scenes, so we just abort in this case and save some performance:
	if libs.playerRef.IsInCombat() || libs.IsAnimating(libs.playerRef) || suspendedstate
		addgraceperiod()	
		return
	endif				
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Periodical update starts")
	endif		
		
	; Device Buffs	
	if dcumenu.enabledevicebuffs
		dcur_DeviceBuffs.cast(libs.playerref)	
	Else
		libs.playerref.DispelSpell(dcur_DeviceBuffs)
	Endif
	
	;checksafearea()	
	If dcumenu.enablehornybuffs && !libs.playerRef.WornHasKeyword(dcur_kw_tentacles)
		If libs.aroused.GetActorArousal(libs.PlayerRef) > dcumenu.HornyBuffsThreshold
			if !hornybuffsactive
				libs.notify("Your sexual desires make you stronger!")
				hornybuffsactive = True
			Endif
			dcur_hornybuffs.cast(libs.playerref)
		Else
			if hornybuffsactive
				libs.notify("You are no longer horny enough to draw stength from it.")
				hornybuffsactive = False
			Endif
			libs.playerref.DispelSpell(dcur_hornybuffs)		
		Endif
	Else
		libs.playerref.DispelSpell(dcur_hornybuffs)		
	Endif		
	; process some tasks once per game hour
	if (Utility.GetCurrentGameTime() - lasthousekeepingshortinterval) * 24.0 > 1.0 
		housekeepingshortinterval()
	endif				
	breastresize()
	CheckFollowers()			
	cuminflation()
	mcs.IsSceneRunning = False		
	if StorageUtil.GetIntValue(Game.GetPlayer(), "_SD_iEnslaved")  || (dcumenu.installed_PO && (StorageUtil.GetIntValue(Game.GetPlayer(), "xpoPCinJail") == 1) || (StorageUtil.GetIntValue(Game.GetPlayer(), "xpoPCArrested") == 1) || (StorageUtil.GetIntValue(Game.GetPlayer(), "xpoPCArrestStart") == 1))
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] - PO or SD Enslavement active: Periodical update cancelled")
		endif
		mcs.IsSceneRunning = True		
		return
	endif	
	; regular stuff starts here		
	dclibs.checkchastity()
	checkvisiblerestraints()			
	; Belt of Misogyny
	If Libs.PlayerRef.WornHasKeyword(dclibs.dcur_kw_misogynyBelt)
		libs.Aroused.UpdateActorExposure(libs.PlayerRef, 10)		
	EndIf	
	Sasha()
	; Tentacle Parasite:
	if libs.playerRef.WornHasKeyword(dcur_kw_tentacles) && ((Utility.GetCurrentGameTime() - lasttentacleaction) * 24.0 > 0.35) && Utility.RandomInt() < 50 && !UI.IsMenuOpen("Dialogue Menu") && !UI.IsMenuOpen("InventoryMenu") && !UI.IsMenuOpen("BarterMenu") && !UI.IsMenuOpen("Crafting Menu") && !UI.IsMenuOpen("ContainerMenu")
		libs.notify("You are getting fucked by the tentacle inside your pussy..")
		libs.Aroused.UpdateActorExposure(libs.PlayerRef, 10)
		int selection = Utility.RandomInt(1,4)
		bool tease = false
		if selection == 1
			;libs.ShockActor(libs.playerref)
			tease = true
		EndIf
		libs.VibrateEffect(libs.playerref, (selection+1), 0, teaseOnly = tease, silent = true)			
		lasttentacleaction = Utility.GetCurrentGameTime()
	Endif
	; Gag Talk - change only when the player is not in dialogue to prevent switching system mid-dialogue
	If !UI.IsMenuOpen("Dialogue Menu") 
		If Utility.RandomFloat(0.0, 99.9) < dcumenu.gagtalkchance
			; use DCL Gag Talk
			dcur_gagtalk_enabled.SetValueInt(1)
		Else
			; use DDI Gag Talk
			dcur_gagtalk_enabled.SetValueInt(0)
		Endif	
	Endif		
	;Misogyny
	If Utility.RandomInt(0, 99) < dcumenu.pimisogynyrapechance && !mcs.isDCURQuestRunning && !UI.IsMenuOpen("Dialogue Menu") && dclibs.dcur_iswearinglockedgear.GetValueInt() != 1
		;Int Chance = 25
		;If libs.PlayerRef.GetAv("")
		; allow misogyny rape
		;dcumenu.dcur_misogyny_cooldown.SetValueInt(1)
		
		;8.4: Remove this for breaking too much stuff
		dcumenu.dcur_misogyny_cooldown.SetValueInt(0)
	Else
		dcumenu.dcur_misogyny_cooldown.SetValueInt(0)
	Endif
	;Device comments
	if libs.playerRef.WornHasKeyword(libs.zad_Lockable) && !(mcs.isDCURQuestRunning) && dcumenu.devicecommentsenabled && (dcumenu.dcur_isvisiblyrestrained.GetValue() == 1 || !dcumenu.devicecommentsvisibleonly) && (Utility.GetCurrentGameTime() - dcur_lastdevicecommenttime.GetValue()) * 24.0 > dcumenu.devicecommentscooldown
		dcur_devicecommentallowed.SetValue(1)
		dcur_devicecommentinconsequential.SetValue(0)
		dcur_devicecommentaction.SetValue(picknextdevicecommentevent())
	elseif !libs.playerRef.WornHasKeyword(libs.zad_Lockable) && !(mcs.isDCURQuestRunning) && dcumenu.devicecommentsenabled && (Utility.GetCurrentGameTime() - dcur_lastdevicecommenttime.GetValue()) * 24.0 > 24.0
		If Utility.RandomInt() < 20
			dcur_devicecommentallowed.SetValue(2)
		Else
			dcur_lastdevicecommenttime.SetValue(Utility.GetCurrentGameTime())
		EndIf
	else
		dcur_devicecommentallowed.SetValue(0)
	endif	
	if rdqs.rdquestrunning 	
		libs.Aroused.UpdateActorExposure(libs.PlayerRef, 1)
		rdqs.UpdateSexCounter()
	elseIf libs.playerref.WornHasKeyword(dcumenu.dcur_kw_rdcollar)
		rdqs.Reset()
		rdqs.Start()
	endif	
	if dcumenu.selfbondageenable && !mcs.isDCURQuestRunning && !libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage) && (dcumenu.selfbondagewhenrestrained || !libs.playerRef.WornHasKeyword(libs.zad_Lockable)) && !libs.IsAnimating(libs.playerRef) && !libs.playerref.IsOnMount() && !libs.playerref.IsSwimming()
		If dclibs.Selfbondage()
			; abort the function if Selfbondage added an item for performance reasons.
			return
		Endif	
	Endif
	;Sex attacks, shame animation and collar punishment, but make another check for SL animation and combat first.
	if libs.playerRef.IsInCombat() || libs.IsAnimating(libs.playerRef) || libs.playerRef.IsBleedingOut() || libs.playerRef.IsUnconscious()
		return
	endif
	; at this point we survived two checks for sex scenes, so let's just assume that really none is running:
	rapemutex = false
	; Auto Masturbate
	bool isAroused = (libs.aroused.GetActorArousal(libs.PlayerRef) > dcumenu.uncontrollablelustThreshold)
	; if her arousal is high enough, make her go off
	If dcumenu.lossofcontrol && isAroused && !mcs.isDCURQuestRunning && ((Utility.GetCurrentGameTime() - lastmasturbation) * 24.0 > 2.0)
		If Utility.RandomInt(0, 99) < 33 ;&& (dclibs.isInSafeLocation() || libs.Aroused.IsActorExhibitionist(libs.playerRef))
			dclibs.Masturbate(libs.playerRef)
			lastmasturbation = Utility.GetCurrentGameTime()
			Return
		Else
			lastmasturbation = Utility.GetCurrentGameTime()
		EndIf
	Endif
	PublicIndencency()
	if dcur_scquest_isdancing.GetValueInt() != 1
		; we check for proximity rape opportunities only when there were no sex attacks started or running.
		if !SexAttacks()		
			if !dclibs.gangbangmutex && (Utility.GetCurrentGameTime() - lastrape) * 24.0 > dcumenu.rdrapecooldown
				rapemutex = False
			endif
		else	
			rapemutex = True
		endif		
	endif		
EndFunction		
	
Event OnUpdate()		
	if dclibs.gangbangmutex || UI.IsMenuOpen("Sleep/Wait Menu") || UI.IsMenuOpen("Dialogue Menu") || UI.IsMenuOpen("InventoryMenu") || UI.IsMenuOpen("Crafting Menu") || UI.IsMenuOpen("BarterMenu") || UI.IsMenuOpen("ContainerMenu")
		dclibs.clocktickmutex = False
		RegisterForSingleUpdate(dcumenu.updateinterval)
		return
	endif
	dclibs.clocktickmutex = True
	;clocktickpulse will return true if it does anything performance relevant. In which case we bypass the rest of the event and register the longer interval.
	if clocktickpulse()
		RegisterForSingleUpdate(dcumenu.clocktickshortinterval)
		dclibs.clocktickmutex = False
		return
	endif
	if (Utility.GetCurrentRealTime() - lastclocktickshort) > dcumenu.clocktickshortinterval 
		clocktickshort()
		lastclocktickshort = Utility.GetCurrentRealTime()		
	endif	
	RegisterForSingleUpdate(dcumenu.updateinterval)
	dclibs.clocktickmutex = False
EndEvent

event OnMenuClose(String asMenuName)	
	if asMenuName == "Dialogue Menu" && (dcur_gagtalkdone.GetValueInt() == 1)
		dcur_gagtalkdone.SetValueInt(0)
	endIf
endEvent
