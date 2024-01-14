Scriptname dcur_mastercontrollerscript extends Quest  

dcur_rubberdollquestscript Property rdqs Auto
dcur_solicitationquestscript Property soqs Auto
dcur_shockbootsquestscript Property sbqs  Auto  
dcur_slavecollarquestscript Property scqs  Auto  
dcur_cursedCollarQuestScript Property ccqs  Auto  
dcur_slavegagquestscript Property sgqs  Auto  
dcur_yokeerrandquestscript Property yeqs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
dcur_lbquestScript Property lbqs Auto
zadlibs Property libs  Auto  
dcur_clocktickScript Property cts Auto
dcur_leon_enslaveScript Property leqs Auto 
dcur_royalchastityQuestScript Property rcqs Auto
dcur_shopping_QuestScript Property sqqs Auto 
dcur_tentacleQuestScript Property tpqs Auto
dcur_KeyholderQuestScript Property khqs Auto
dcur_SashaQuestScript Property saqs  Auto
dcur_publicindecencyQuestScript Property piqs Auto
;dcur_lockedGlovesQuestScript Property lockedglovesscript Auto
dcur_jackthebelterQuestScript Property jbqs Auto
dcur_hq_QuestScript Property hqqs Auto
dcur_dq_QuestScript Property dqqs Auto
dcur_chloeQuestScript Property cqs Auto
dcur_SupplyQuestScript Property sadqs Auto
dcur_df_QuestScript Property dfs Auto
dcur_WalkofShameQuest Property wosqs Auto
dcur_prisonQuestScript Property pqs Auto
dcur_spankQuestScript Property spqs Auto
dcur_WorkingGirlQuestScript Property wgs Auto
dcur_cic_questscript Property cicqs Auto
dcur_learningtheropesQuestScript Property ltrqs Auto
dcur_thewhipandchainQuestScript Property twacqs Auto

Perk Property RestedWellPerk  Auto  

; 0 = device isn't worn, 1 = device is equipped, 2 = device is equipped and player has legal key
int property isworn_cursedcollar = 0 Auto
int property isworn_slutcollar = 0 Auto
bool property isworn_slavebelt = False Auto
bool property isworn_heavyyoke = False Auto
bool property isworn_yoke = False Auto

bool property unlockrubbergloves = False Auto
bool property lockrubbergloves = False Auto

bool property isDCURQuestRunning = False Auto
bool property isSceneRunning = False Auto

bool wassleepattacked = false

int firsttest = 0

function clearfollowers() 	
	Actor Follower
	ActorBase FBase		
	int i = 0
	while i <= (dclibs.dcur_followerlist.GetSize() - 1)
		Follower = dclibs.dcur_followerlist.GetAt(i) As Actor		
		FBase = Follower.GetActorBase()
		If (Follower.GetDistance(libs.playerref) < 1500.0) 
			Debug.Notification("Removing devices from " + Follower.GetDisplayName())		
			dclibs.WipeRestraints(Follower, genericonly = false, removeDCURquestitems = true, destroyDevices = true)								
		endif		
		i += 1
	EndWhile	
endfunction

Function TerminateQuests()	
	libs.playerref.UnequipItem(lbqs.dcur_lb_leatherbindings)
	libs.playerref.RemoveItem(lbqs.dcur_lb_leatherbindings, 1, true)
	libs.playerref.UnequipItem(lbqs.dcur_lb_shackles)
	libs.playerref.RemoveItem(lbqs.dcur_lb_shackles, 1, true)
	libs.playerref.UnequipItem(lbqs.dcur_lb_ArmCuffsLocked)
	libs.playerref.RemoveItem(lbqs.dcur_lb_ArmCuffsLocked, 1, true)	
	libs.playerref.RemoveItem(lbqs.dcur_lb_harnessblockerhelper, 1, true)	
	; reset Courier in Steel quest:
	if yeqs.dcur_yokeerrandquestactive.GetValueInt() == 1
		debug.trace("[DCUR] - Terminating Courier in Chains quest.")
		yeqs.terminatequest()	
	endif
	if ccqs.cursedcollarquestrunning
		isworn_cursedcollar = 0
		ccqs.terminatequest(suppressendgift = true)
		debug.trace("[DCUR] - Terminating Cursed Collar quest.")
	endif
	if rdqs.rdquestrunning
		rdqs.terminatequest()
		debug.trace("[DCUR] - Terminating Rubber Doll quest.")
	Endif
	; fix broken quest states:
	if libs.IsWearingDevice(libs.PlayerRef, ccqs.dcur_cursedCollarRendered, libs.zad_DeviousCollar) == 1
		isworn_cursedcollar = 0
		ccqs.cursedcollarquestrunning = false
		ccqs.removecursedcollar()
		ccqs.unequipcursedset()
	endif	
	if scqs.slavecollarquestactive		
		scqs.slavecollarquestactive = false
	endif	
	if libs.playerref.isequipped(dcumenu.dcur_slaveGag)			
		sgqs.slavegagquestactive = false
	endif
	if libs.playerref.isequipped(dcumenu.dcur_shockBoots)			
		sbqs.shockbootsquestactive = false		
	endif
	if leqs.leon_questrunning
		debug.trace("[DCUR] - Terminating Leon quest.")
		leqs.leon_questrunning = false
		leqs.Reset()
		leqs.Stop()		
	endif	
	if dfs.IsRunning()
		debug.trace("[DCUR] - Terminating XDFF.")
		dfs.EndQuest()
	Endif
	if rcqs.IsRunning()
		debug.trace("[DCUR] - Terminating The Bound Queen quest.")
		rcqs.Reset()
		rcqs.SetStage(0)
		rcqs.Stop()
	Endif
	if lbqs.lbqsquestrunning
		debug.trace("[DCUR] - Terminating Damsel in Distress quest.")
		lbqs.StopQuest()
	Endif
	if sqqs.IsRunning()
		debug.trace("[DCUR] - Terminating Going Shopping quest.")
		sqqs.dcur_sqqs_effectivestage.SetValueInt(0)
		sqqs.QuestGiver.Clear()
		sqqs.aliases_QuestGiver.Clear()	
		sqqs.Reset()
		sqqs.SetStage(0)
		sqqs.Stop()
	Endif
	if hqqs.IsRunning()
		debug.trace("[DCUR] - Terminating Delivery Refused quest.")
		hqqs.TerminateQuest()
		hqqs.Reset()
		hqqs.SetStage(0)
		hqqs.stop()
	EndIf
	If cqs.IsRunning()
		debug.trace("[DCUR] - Terminating Chloe quest.")
		cqs.TerminateQuest()	
	EndIf
	If wosqs.IsRunning()
		debug.trace("[DCUR] - Terminating Walk of Shame.")
		wosqs.EndQuest()
	EndIf
	if pqs.IsRunning()
		debug.trace("[DCUR] - Terminating Prison.")
		pqs.Stop()
	EndIf
	if wgs.IsRunning()
		debug.trace("[DCUR] - Terminating Working Girl.")
		wgs.TerminateOnly = True
		wgs.Stop()
	EndIf
	if cicqs.IsRunning()
		debug.trace("[DCUR] - Terminating Courier in Chains.")		
		cicqs.Stop()
	EndIf
	if ltrqs.IsRunning()
		debug.trace("[DCUR] - Terminating Learning the Ropes.")		
		ltrqs.Stop()
	EndIf
EndFunction

Function clearpackage(actor a)
	if a == libs.PlayerRef	
		;ActorUtil.RemovePackageOverride(a, dcumenu.dcur_pk_randomrestraint)
	else
		ActorUtil.RemovePackageOverride(a, dcumenu.dcur_pk_hogtie)
		;ActorUtil.ClearPackageOverride(a)		
	endif
	a.EvaluatePackage()
	If a == libs.playerRef
		Game.SetPlayerAIDriven(False)
	endif
	a.SetRestrained(False)
	a.SetDontMove(False)
	a.unequipitem(dclibs.dcur_steelshackles, absilent = true)
	a.removeitem(dclibs.dcur_steelshackles, absilent = true)	
endFunction

function removefollowerpackages() 
	Actor Follower
	ActorBase FBase		
	int i = 0
	while i <= (dclibs.dcur_followerlist.GetSize() - 1) 
		Follower = dclibs.dcur_followerlist.GetAt(i) As Actor		
		FBase = Follower.GetActorBase()
		If (Follower.GetDistance(libs.playerref) < 1500.0) 
			Debug.Notification("Removing packages from " + Follower.GetDisplayName())		
			clearpackage(Follower)												
		endif
		i += 1
	EndWhile
endfunction

Function wakeywakey()
	Game.DisablePlayerControls(ablooking = True, abCamSwitch = True)
	Game.ForceFirstPerson()
	Actor PlayerRef = Game.GetPlayer()
	Game.GetPlayer().MoveTo(PlayerRef)
	libs.playerref.PlayIdle(dcumenu.WakeUp)
	Utility.Wait(1)
	Game.ForceThirdPerson()
	Game.EnablePlayerControls()
EndFunction

Event OnSleepStart(float afSleepStartTime, float afDesiredSleepEndTime)	
	
	if dcumenu.alwayssleepnaked		
		dclibs.Strip(libs.playerRef, false)
	Endif
	
	wassleepattacked = false
	
	float naplength = afDesiredSleepEndTime - afSleepStartTime
	; disregard sleep for sex attack/rape cooldowns
	cts.lastrape += naplength	
	dclibs.LastSexAttackTime += naplength
	if khqs.dcur_dollmaker_keyholderactive.GetValueInt() == 1
		khqs.keyholderqueststartedat += naplength	
	Endif	
	If saqs.errandtype > 0	
		saqs.lasterrand += naplength	
	Endif
	piqs.BeltLockedAt += naplength
	piqs.YokeLockedAt += naplength	
	piqs.CatsuitLockedAt += naplength	
	saqs.lastdemand += naplength
	if libs.PlayerRef.GetCurrentLocation().haskeyword(dclibs.dglib.loctypejail) || libs.PlayerRef.GetCurrentLocation().haskeyword(dclibs.dglib.loctypeplayerhome) || lbqs.lbqsquestrunning || dcumenu.shutdownmod || !dcumenu.sexGloballyEnabled
		return
	endif
	
	Float chance = Utility.RandomFloat(0.0, 99.9)	
	Float bonus = 1.0
	if dclibs.checknaked()
		bonus *= dcumenu.sleepnakedbonus	
	endif
	if libs.aroused.GetActorArousal(libs.PlayerRef) > 50
		bonus *= dcumenu.sleeparousedbonus
	endif	
	If (dclibs.isInDungeon() && chance < (dcumenu.sleepdungeonchance * bonus)) || (dclibs.isInWilderness() && chance < (dcumenu.sleepwildernesschance * bonus)) || (dclibs.isInCity() && chance < (dcumenu.sleepcitychance * bonus)) && dclibs.dcur_iswearinglockedgear.GetValueInt() != 0
		wassleepattacked = true
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Preparing sleep attack")
		endif
		float naplengthhours = (naplength * 24)	
		float pullouthours = 0.0		
		pullouthours = Utility.RandomFloat(0, (naplengthhours - 1))
		Utility.WaitMenuMode(pullouthours)		
		Game.DisablePlayerControls(ablooking = True, abCamSwitch = True)
		Game.ForceFirstPerson()
		Actor PlayerRef = Game.GetPlayer()
		Game.GetPlayer().MoveTo(PlayerRef)
		libs.playerref.PlayIdle(dcumenu.WakeUp)
		Utility.Wait(1)
		Game.ForceThirdPerson()
		Game.EnablePlayerControls()			
		Libs.Notify("You are getting pulled out of bed by strong hands...")		
		dclibs.GangBang(fullscene = true, origin = dclibs.origin_sleep)
	endif
EndEvent

Event OnSleepStop(Bool abInterrupted)
	cts.SuspendNakedCommentsIfBound()
	if wassleepattacked || libs.PlayerRef.GetCurrentLocation().haskeyword(dclibs.dglib.loctypejail) || libs.PlayerRef.GetCurrentLocation().haskeyword(dclibs.dglib.loctypeplayerhome) || lbqs.lbqsquestrunning || dcumenu.shutdownmod || !dcumenu.sexGloballyEnabled
		return
	endif		
	Float chance = Utility.RandomFloat(0.0, 99.9)	
	Float bonus = 1.0
	if dclibs.checknaked()
		bonus *= dcumenu.sleepnakedbonus	
	endif
	if libs.aroused.GetActorArousal(libs.PlayerRef) > 50
		bonus *= dcumenu.sleeparousedbonus
	endif
	; Jack the Belter
	If !libs.playerref.WornHasKeyword(libs.zad_DeviousBelt) && (dclibs.isInDungeon() && chance < (dcumenu.sleepbelterweight * bonus)) || (dclibs.isInWilderness() && chance < (dcumenu.sleepbelterweight * 2 * bonus)) || (dclibs.isInCity() && chance < (dcumenu.sleepbelterweight * 4 * bonus)) && !dclibs.isInHomeorJail()
		jbqs.Start()
		return
	EndIf	
	; bindings
	if dcumenu.selfbondageenable && (libs.aroused.GetActorArousal(libs.PlayerRef) > dcumenu.uncontrollablelustThreshold)
		If (dclibs.isInDungeon() && chance < (dcumenu.sleepdungeonchance * bonus)) || (dclibs.isInWilderness() && chance < (dcumenu.sleepwildernesschance * bonus)) || (dclibs.isInCity() && chance < (dcumenu.sleepcitychance * bonus))
			Libs.Notify("You dream of being bound tight...", messagebox = true)
			Utility.Wait(0.1)
			dclibs.dostandardevent()
		Endif
	endif		
EndEvent

Function RegisterSleep()
	RegisterForSleep()
EndFunction

Function HaveSexNow(bool masturbateonly = false)
	Actor currenttest			
	Bool done = false
	While !done
		currenttest = Game.FindRandomActorFromRef(libs.playerRef, 1500.0)			
		if !masturbateonly && currenttest && dclibs.testrapist(currenttest)
			done = true
			libs.notify("You find " + currenttest.GetLeveledActorBase().GetName() + " irresistible!")											
			;libs.SexLab.QuickStart(libs.playerref, currenttest)
			;libs.SexLab.QuickStart(currenttest, libs.playerref)					
			dclibs.sexwithplayer(currenttest, consensual = true)
		Endif
		Utility.Wait(0.3)
	EndWhile
EndFunction

Function SexwithClosestActor()	
	HaveSexNow(false)
EndFunction

Function GetTiedUpNow()
	Actor currenttest		
	Int i = 0
	bool done = false
	while !done && i < 15
		i += 1
		currenttest = Game.FindRandomActorFromRef(libs.playerRef, 1500.0)
		if currenttest && dclibs.testrapist(currenttest)
			done = true
			libs.notify(currenttest.GetLeveledActorBase().GetName() +" is going to tie you up!")				
			cts.TheCatcher.ForceRefTo(currenttest)		
		EndIf
	EndWhile
EndFunction

Function RobbedByClosestActor()
	Actor currenttest		
	Int i = 0
	bool done = false
	while !done && i < 15
		i += 1
		currenttest = Game.FindRandomActorFromRef(libs.playerRef, 1000.0)
		if currenttest && dclibs.testrapist(currenttest)
			done = true
			libs.notify(currenttest.GetLeveledActorBase().GetName() +" is going to rob you!")				
			dclibs.RobHer(currenttest)
		endif		
	EndWhile
EndFunction

Function EquipTest(Actor a)
	libs.LockDevice(a, libs.corset)	
	libs.LockDevice(a, libs.armbinder)	
	libs.LockDevice(a, libs.cuffsLeatherArms)
	libs.LockDevice(a, libs.cuffsLeatherLegs)
	libs.LockDevice(a, libs.blindfold)	
	libs.LockDevice(a, libs.gagpanel)
EndFunction

Function UnEquipTest(Actor a)	
	libs.UnLockDevice(a, libs.corset, zad_DeviousDevice = libs.zad_DeviousCorset)	
	libs.UnLockDevice(a, libs.armbinder, zad_DeviousDevice = libs.zad_DeviousHeavyBondage)		
	libs.UnLockDevice(a, libs.cuffsLeatherArms, zad_DeviousDevice = libs.zad_DeviousArmCuffs)
	libs.UnLockDevice(a, libs.cuffsLeatherLegs, zad_DeviousDevice = libs.zad_DeviousLegCuffs)
	libs.UnLockDevice(a, libs.blindfold)
	libs.UnLockDevice(a, libs.gagpanel)		
EndFunction

Bool Function CheckDeviceState(Actor pl)
	Int i = pl.GetNumItems()		
	While i > 0 
		i -= 1
		Form kForm = pl.GetNthForm(i)		
		if kForm.HasKeyword(libs.zad_InventoryDevice)
			
		EndIf
		if kForm.HasKeyword(libs.zad_Lockable)
			libs.log("Error: Rendered Device on Character")
		EndIf
	EndWhile	
EndFunction

Function testathing(actor a)
	; use this function to test stuff on a NPC etc. Fired from Clocktick.psc's registering for Home key.
	dclibs.SexLab.QuickStart(libs.playerref, a)
	SendModEvent("DDI_CreateRestraintsKey")
	
	return
	EquipTest(a)
	Utility.Wait(10)	
	Unequiptest(a)
EndFunction

Event OnUpdate()
	if unlockrubbergloves
		;if libs.IsWearingDevice(libs.PlayerRef, dcumenu.dcur_RubberGlovesLockedRendered, libs.zad_DeviousHeavyBondage) == 1 
		;	libs.removeDevice(libs.playerref, dcumenu.dcur_RubberGlovesLocked, dcumenu.dcur_RubberGlovesLockedRendered, Libs.zad_DeviousHeavyBondage, destroyDevice = true, skipevents = false, skipmutex = true)
		;	libs.equipDevice(libs.playerref, leqs.dcur_leon_rubbergloves, leqs.dcur_leon_rubberglovesRendered, libs.Zad_DeviousGloves, skipevents = false, skipmutex = true)				
		;endif	
		if !lbqs.lbqsquestrunning
			libs.removeDevice(libs.playerref, dcumenu.dcur_RubberGlovesLocked, dcumenu.dcur_RubberGlovesLockedRendered, Libs.zad_DeviousHeavyBondage, destroyDevice = true, skipevents = false, skipmutex = true)
			libs.equipDevice(libs.playerref, dcumenu.dcur_RubberGlovesSimple, dcumenu.dcur_RubberGlovesSimpleRendered, libs.Zad_DeviousGloves, skipevents = false, skipmutex = true)				
		else
			libs.removeDevice(libs.playerref, dcumenu.dcur_RubberGlovesLocked, dcumenu.dcur_RubberGlovesLockedRendered, Libs.zad_DeviousHeavyBondage, destroyDevice = true, skipevents = false, skipmutex = true)
			libs.equipDevice(libs.playerref, dcumenu.dcur_RubberGloves, dcumenu.dcur_RubberGlovesRendered, libs.Zad_DeviousGloves, skipevents = false, skipmutex = true)
			libs.playerref.removeitem(dcumenu.dcur_handrestraintskey,2)
		endif	
		unlockrubbergloves = False
	endif
	if lockrubbergloves		
		;if libs.IsWearingDevice(libs.PlayerRef, leqs.dcur_leon_rubberglovesRendered, libs.zad_DeviousGloves) == 1 			
		;	libs.removeDevice(libs.playerref, leqs.dcur_leon_rubbergloves, leqs.dcur_leon_rubberglovesRendered, Libs.zad_DeviousGloves, destroyDevice = true, skipevents = false, skipmutex = true)
		;	libs.equipDevice(libs.playerref, dcumenu.dcur_RubberGlovesLocked, dcumenu.dcur_RubberGlovesLockedRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
		;endif
		if libs.IsWearingDevice(libs.PlayerRef, dcumenu.dcur_RubberGlovesRendered, libs.zad_DeviousGloves) == 1 			
			libs.removeDevice(libs.playerref, dcumenu.dcur_RubberGloves, dcumenu.dcur_RubberGlovesRendered, Libs.zad_DeviousGloves, destroyDevice = true, skipevents = false, skipmutex = true)
			libs.equipDevice(libs.playerref, dcumenu.dcur_RubberGlovesLocked, dcumenu.dcur_RubberGlovesLockedRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
		endif
		if libs.IsWearingDevice(libs.PlayerRef, dcumenu.dcur_RubberGlovesSimpleRendered, libs.zad_DeviousGloves) == 1 			
			libs.removeDevice(libs.playerref, dcumenu.dcur_RubberGlovesSimple, dcumenu.dcur_RubberGlovesSimpleRendered, Libs.zad_DeviousGloves, destroyDevice = true, skipevents = false, skipmutex = true)
			libs.equipDevice(libs.playerref, dcumenu.dcur_RubberGlovesLocked, dcumenu.dcur_RubberGlovesLockedRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
		endif
		lockrubbergloves = False
	endif	
	if dcumenu.resetquests
		int x = dcumenu.dcur_freemeMSG.Show()
		If x == 0	; genericonly
			libs.notify("DCUR: FreeMe: Removing generic devices.")
			Debug.Notification("Removing devices from " + libs.playerref.GetDisplayName())
			dclibs.WipeRestraints(libs.playerRef, genericonly = true, removeDCURquestitems = false, destroyDevices = true)					
		Elseif x == 1	; all
			if dcumenu.dcur_freeme_confirmMSG.Show() == 0
				libs.notify("DCUR: FreeMe: Terminating all active quests.")
				Debug.Notification("Removing devices from " + libs.playerref.GetDisplayName())		
				TerminateQuests()	
				dclibs.WipeRestraints(libs.playerRef, genericonly = false, removeDCURquestitems = true, destroyDevices = true)					
				clearfollowers() 
				dclibs.freefollowers(scenefailed = true)				
				NiOverride.RemoveAllReferenceNodeOverrides(libs.playerref)
			EndIf
		EndIf		
		Game.EnablePlayerControls()				
		dcumenu.resetquests = false			
	endif
	if dcumenu.selfbondage
		libs.notify("DCUR: Triggering Cursed Loot event.")
		;dclibs.itemequip(libs.playerref)
		Int PlayerTheme = dcumenu.equiptheme
		if PlayerTheme == 0 && dcumenu.consistenttheme
			playertheme = Utility.RandomInt(1, dcumenu.ThemeList.Length - 1)
		endif
		dclibs.equipfullset(libs.playerref, PlayerTheme)
		dcumenu.selfbondage = false
	endif
	if dcumenu.scanforfollowers
		libs.notify("DCUR: Scanning for followers.")		
		dclibs.scanfollowers()
		dcumenu.scanforfollowers = false
	endif
	if dcumenu.freefollowers
		libs.notify("DCUR: Attempting to fix followers.")		
		dclibs.FreeFollowers(true)		
		dcumenu.freefollowers = false
	endif
	if dcumenu.dropkeys
		libs.notify("You drop all your keys and ensure nobody will ever find them.")
		dclibs.dcur_removekeys(libs.playerref)
		dclibs.stealfollowerkeys()
		dcumenu.dropkeys = false
	endif
	if dcumenu.createkeys
		libs.playerref.additem(libs.restraintskey,1)
		libs.playerref.additem(libs.chastitykey,1)
		libs.playerref.additem(libs.piercingkey,1)		
		dcumenu.createkeys = false
	endif	
	if dcumenu.dothetest
		dcumenu.dothetest = false		
		libs.notify("Test script activated.")		
		Return		
		; SlaveTats.simple_add_tattoo(Game.GetPlayer(), "DCL", "Free Pussy", silent = true)
		; SlaveTats.simple_add_tattoo(Game.GetPlayer(), "DCL", "Tie me Up", silent = true)
		; Utility.Wait(10)
		; SlaveTats.simple_remove_tattoo(Game.GetPlayer(), "DCL", "Free Pussy", silent = true)
		; SlaveTats.simple_remove_tattoo(Game.GetPlayer(), "DCL", "Tie me Up", silent = true)
		return
	endif	
endevent

