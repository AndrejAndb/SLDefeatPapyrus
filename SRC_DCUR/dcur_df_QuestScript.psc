Scriptname dcur_df_QuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
zadxLibs Property xlibs  Auto  
SexLabFramework Property SexLab  Auto  
slaFrameworkScr Property Aroused  Auto 
dcur_spankQuestScript Property spqs Auto

ReferenceAlias Property Player  Auto  
ReferenceAlias Property Master  Auto  
ReferenceAlias Property MasterParked  Auto  

Actor Property aPlayer Auto
Actor Property aMaster Auto

Faction Property CurrentFollowerFaction  Auto  
Faction Property PotentialFollowerFaction  Auto  
MiscObject Property Gold001 Auto

; Master key that will unlock all restraints and start the collar escape.
Key Property dcur_df_MasterKey Auto

; Other Items
Armor Property dcur_df_rubberdress Auto

; Quest item. Don't mess with it.
Armor Property dcur_df_SlaveCollar_Inventory Auto
Armor Property dcur_df_SlaveCollar_Rendered Auto
Armor Property dcur_df_SlaveCollarStrict_Inventory Auto
Armor Property dcur_df_SlaveCollarStrict_Rendered Auto

; Regular devices - can be escaped from, but are hard. Devices are tagged with BlockGeneric, so escape mods etc should leave them alone.
; They all use the DF master key, which can be obtained ONLY by pickpocketing the master.
; If you use these devices, they should usually come with a way out, either rule or quest etc.
Armor Property dcur_df_ArmCuffs_Inventory Auto
Armor Property dcur_df_ArmCuffs_Rendered Auto
Armor Property dcur_df_ChastityBelt_Inventory Auto
Armor Property dcur_df_ChastityBelt_Rendered Auto
Armor Property dcur_df_ChastityBra_Inventory Auto
Armor Property dcur_df_ChastityBra_Rendered Auto
Armor Property dcur_df_LegCuffs_Inventory Auto
Armor Property dcur_df_LegCuffs_Rendered Auto
Armor Property dcur_df_vibrator_Inventory Auto
Armor Property dcur_df_vibrator_Rendered Auto
Armor Property dcur_df_buttplug_Inventory Auto
Armor Property dcur_df_buttplug_Rendered Auto

Armor Property dcur_df_ElbowBinder_Inventory Auto
Armor Property dcur_df_ElbowBinder_Rendered Auto
Armor Property dcur_df_Blindfold_Inventory Auto
Armor Property dcur_df_Blindfold_Rendered Auto
Armor Property dcur_df_BallGag_Inventory Auto
Armor Property dcur_df_BallGag_Rendered Auto
Armor Property dcur_df_PrisonerChains_Inventory Auto
Armor Property dcur_df_PrisonerChains_Rendered Auto
Armor Property dcur_df_HobbleSkirt_Inventory Auto
Armor Property dcur_df_HobbleSkirt_Rendered Auto
Armor Property dcur_df_Straitjacket_Inventory Auto
Armor Property dcur_df_Straitjacket_Rendered Auto

; timed devices
; These do no use a key, so they can be removed when the lock shield is expired. Note to self: Implement a flag for this in DD, so timed devices can still be keyed!
Armor Property dcur_df_TimedAnkleShackles_Inventory Auto
Armor Property dcur_df_TimedAnkleShackles_Rendered Auto
Armor Property dcur_df_TimedArmCuffs_Inventory Auto
Armor Property dcur_df_TimedArmCuffs_Rendered Auto
Armor Property dcur_df_TimedBelt_Inventory Auto
Armor Property dcur_df_TimedBelt_Rendered Auto
Armor Property dcur_df_TimedBra_Inventory Auto
Armor Property dcur_df_TimedBra_Rendered Auto
Armor Property dcur_df_TimedBoots_Inventory Auto
Armor Property dcur_df_TimedBoots_Rendered Auto
Armor Property dcur_df_TimedCorset_Inventory Auto
Armor Property dcur_df_TimedGag_Inventory Auto
Armor Property dcur_df_TimedGag_Rendered Auto
Armor Property dcur_df_TimedHobbleSkirt_Inventory Auto
Armor Property dcur_df_TimedHobbleSkirt_Rendered Auto
Armor Property dcur_df_TimedLegCuffs_Inventory Auto
Armor Property dcur_df_TimedLegCuffs_Rendered Auto
Armor Property dcur_df_TimedStraitjacket_Inventory Auto
Armor Property dcur_df_TimedStraitjacket_Rendered Auto
Armor Property dcur_df_TimedYoke_Inventory Auto
Armor Property dcur_df_TimedYoke_Rendered Auto

; These devices may be used for sex scenes with master, and will be removed after the act.
Armor Property dcur_df_ElbowBinder_BoundSex_Inventory Auto
Armor Property dcur_df_ElbowBinder_BoundSex_Rendered Auto
Armor Property dcur_df_Yoke_BoundSex_Inventory Auto
Armor Property dcur_df_Yoke_BoundSex_Rendered Auto

; RuleSystem
Int Property MaxActiveRandomRules = 3 Auto 				; How many random rules can be active at the same time. More rules make the game harsher.
Float Property SlaveryDurationDays = 0.0 Auto			; If this value is set to non-zero, the player will automatically release after this many days. Resting does not count towards this number.

; Escape by picking the collar
Bool Property CollarEscapeAllowed = True Auto					; Flag detemines if it's possible to pick the slave collar.
Int Property Combination = 5555 Auto Hidden						; combination of the slave collar. Will get randomly selected at quest start.
Float Property LastKeyTick = 0.0 Auto Hidden					; Game when the player tried combinations for the last time.
Float Property KeyTickLen = 0.2 Auto 							; Minimum time in hours that needs to pass before combinations can be tried. Has no effect if it's shorter than the update interval./
Int Property CombinationsTried = 0 Auto Hidden					; Combinations the player has already tried.
Int Property MaxCombinations = 9999 Auto						; Maximum number of combinations
Int Property NumbersPerTick = 250 Auto							; Number of combinations the player can try per interval
Int Property SpotChancePerTick = 5 Auto							; Chance in % that the player will get caught trying combinations.
Int Property KeyStealBaseChance = 25 Auto						; Chance in % that the player can successfully steal the master key.
GlobalVariable Property dcur_df_collarescapeallowed Auto Hidden	; Global variable for use in dialogue. Will get set at quest start.

; Useful variables
Float Property LastSexWithMaster Auto
Float Property TimeSpentSleeping Auto

; INTERNAL VARIABLES

String[] Property Registry Auto
dcur_df_baserule[] Property Slots Auto
Int Property Slotted Auto
Float Property EnslavedAt = 0.0 Auto Hidden
ReferenceAlias Property Safe Auto  
Float Property lastsleep = 0.0 Auto Hidden

; This function will pick a set of timed restraints to equip on the player.
Bool Function PunishTimedItems(Int MinSeverity = 0, Int MaxSeverity = 100)	
	Int Severity = Utility.RandomInt(MinSeverity, MaxSeverity)
	Bool done = False
	While !Done
		If Severity <= 10
			; not very harsh stuff
			If !aPlayer.WornHasKeyword(libs.zad_DeviousCorset)
				libs.EquipDevice(aPlayer, dcur_df_TimedCorset_Inventory, xlibs.EbRestrictiveCorsetRendered, libs.zad_DeviousCorset, skipmutex = true)
				done = True
			EndIf
		ElseIf Severity <= 20
			If !aPlayer.WornHasKeyword(libs.zad_DeviousBelt)
				libs.EquipDevice(aPlayer, dcur_df_TimedBelt_Inventory, dcur_df_TimedBelt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousBra)
				libs.EquipDevice(aPlayer, dcur_df_TimedBra_Inventory, dcur_df_TimedBra_Rendered, libs.zad_DeviousBra, skipmutex = true)
				done = True
			EndIf
		ElseIf Severity <= 30
			If !aPlayer.WornHasKeyword(libs.zad_DeviousBelt)
				libs.EquipDevice(aPlayer, dcur_df_TimedBelt_Inventory, dcur_df_TimedBelt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousBra)
				libs.EquipDevice(aPlayer, dcur_df_TimedBra_Inventory, dcur_df_TimedBra_Rendered, libs.zad_DeviousBra, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousArmCuffs)
				libs.EquipDevice(aPlayer, dcur_df_TimedArmCuffs_Inventory, dcur_df_TimedArmCuffs_Rendered, libs.zad_DeviousArmCuffs, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousLegCuffs)
				libs.EquipDevice(aPlayer, dcur_df_TimedLegCuffs_Inventory, dcur_df_TimedLegCuffs_Rendered, libs.zad_DeviousLegCuffs, skipmutex = true)
				done = True
			EndIf
		ElseIf Severity <= 40
			If !aPlayer.WornHasKeyword(libs.zad_DeviousLegCuffs)
				libs.EquipDevice(aPlayer, dcur_df_TimedAnkleShackles_Inventory, dcur_df_TimedAnkleShackles_Rendered, libs.zad_DeviousLegCuffs, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousBoots)
				libs.EquipDevice(aPlayer, dcur_df_TimedBoots_Inventory, dcur_df_TimedBoots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
				done = True
			EndIf
		ElseIf Severity <= 50
			If !aPlayer.WornHasKeyword(libs.zad_DeviousGag)
				libs.EquipDevice(aPlayer, dcur_df_TimedGag_Inventory, dcur_df_TimedGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
				done = True
			EndIf			
		ElseIf Severity <= 60
			If !aPlayer.WornHasKeyword(libs.zad_DeviousBelt)
				libs.EquipDevice(aPlayer, dcur_df_TimedBelt_Inventory, dcur_df_TimedBelt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousBra)
				libs.EquipDevice(aPlayer, dcur_df_TimedBra_Inventory, dcur_df_TimedBra_Rendered, libs.zad_DeviousBra, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousArmCuffs)
				libs.EquipDevice(aPlayer, dcur_df_TimedArmCuffs_Inventory, dcur_df_TimedArmCuffs_Rendered, libs.zad_DeviousArmCuffs, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousLegCuffs)
				libs.EquipDevice(aPlayer, dcur_df_TimedLegCuffs_Inventory, dcur_df_TimedLegCuffs_Rendered, libs.zad_DeviousLegCuffs, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousGag)
				libs.EquipDevice(aPlayer, dcur_df_TimedGag_Inventory, dcur_df_TimedGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
				done = True
			EndIf
		ElseIf Severity <= 70				
			If !aPlayer.WornHasKeyword(libs.zad_DeviousSuit)
				libs.EquipDevice(aPlayer, dcur_df_TimedHobbleSkirt_Inventory, dcur_df_TimedHobbleSkirt_Rendered, libs.zad_DeviousSuit, skipmutex = true)
				done = True
			EndIf	
		ElseIf Severity <= 80				
			If !aPlayer.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				libs.EquipDevice(aPlayer, dcur_df_TimedYoke_Inventory, dcur_df_TimedYoke_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
				done = True
			EndIf	
		ElseIf Severity <= 90
			If !aPlayer.WornHasKeyword(libs.zad_DeviousGag)
				libs.EquipDevice(aPlayer, dcur_df_TimedGag_Inventory, dcur_df_TimedGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousLegCuffs)
				libs.EquipDevice(aPlayer, dcur_df_TimedAnkleShackles_Inventory, dcur_df_TimedAnkleShackles_Rendered, libs.zad_DeviousLegCuffs, skipmutex = true)
				done = True
			EndIf
			If !aPlayer.WornHasKeyword(libs.zad_DeviousBoots)
				libs.EquipDevice(aPlayer, dcur_df_TimedBoots_Inventory, dcur_df_TimedBoots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
				done = True
			EndIf			
			If !aPlayer.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				libs.EquipDevice(aPlayer, dcur_df_TimedYoke_Inventory, dcur_df_TimedYoke_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
				done = True
			EndIf			
		Else
			; really harsh!
			If !aPlayer.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				libs.EquipDevice(aPlayer, dcur_df_TimedStraitjacket_Inventory, dcur_df_TimedStraitjacket_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
				done = True
			EndIf	
			If !aPlayer.WornHasKeyword(libs.zad_DeviousGag)
				libs.EquipDevice(aPlayer, dcur_df_TimedGag_Inventory, dcur_df_TimedGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
				done = True
			EndIf			
		EndIf
		If !Done 
			Severity += 10			
			If Severity > MaxSeverity
				; not done, but no more allowed options - abort!
				Return False
			EndIf
		else
			If !aPlayer.WornHasKeyword(libs.zad_DeviousSuit)
				dclibs.Strip(aPlayer, False)
			EndIf
		EndIf		
	EndWhile
	Return True
EndFunction

String Function GetMasterPronoun()
	bool MasterGender = GetMasterBase().GetSex()
	String MasterPronoun
	If MasterGender == 0
		return "his"
	Else
		return "her"
	EndIf	
EndFunction

String Function GetMasterHerHim()
	bool MasterGender = GetMasterBase().GetSex()
	String MasterPronoun
	If MasterGender == 0
		return "him"
	Else
		return "her"
	EndIf	
EndFunction

String Function GetMasterSheHe()
	bool MasterGender = GetMasterBase().GetSex()
	String MasterPronoun
	If MasterGender == 0
		return "he"
	Else
		return "she"
	EndIf	
EndFunction

ActorBase Function GetMasterBase()
	return aMaster.GetLeveledActorBase()
EndFunction

String Function GetMasterName()
	return GetMasterBase().GetName()
EndFunction

Int Function Register(string Name, dcur_df_baserule rule)
	int id = Registry.Find("")
	int index = Registry.find(Name)
	if index != -1
		return index
	EndIf
	if id != -1
		Registry[id] = Name
		Slots[id] = rule
		Slotted = id + 1
		return id
	EndIf
	return -1
EndFunction

dcur_df_baserule Function GetByName(string Name)
	int index = Registry.Find(name)
	if index == -1
		return None
	EndIf
	return Slots[index]
EndFunction

Function Initialize()
	If (Registry.Find("") <= 0) 		
		Registry = new String[125]
		Slots = new dcur_df_baserule[125]
		Slotted = 0
		SendModEvent("dcur_df_registerrules")
	Endif
EndFunction

Function ResetRules()	
	Registry = new String[125]
	Slots = new dcur_df_baserule[125]
	Slotted = 0
	SendModEvent("dcur_df_registerrules")
EndFunction

Bool Function EnactRandomRule()
	; This function doesn't care about max rule limitation. It's useful for enacting additional rules as punishment etc.
	; Returns true of a new random rule was enacted. False otherwise.
	; Can't use FormLists for RefAliases...meh! So a silly array has to do!
	dcur_df_Baserule[] RulePool = new dcur_df_baserule[125]
	Int ActiveRules = 0
	int i = 0
	int j = -1 ; start at -1, so we'll know if we actually added any random rule to the pool.
	while i < Slotted				
		if !Slots[i].Active && !Slots[i].PermanentRule && !Slots[i].ManualRule
			; add inactive non permanent rules to list to pick new random rules from
			j += 1
			RulePool[j] = Slots[i]			
		EndIf
		i += 1
	EndWhile
	Bool done = false
	If j >= 0				
		dcur_df_baserule rule				
		Int counter = 10
		While !done && counter > 0
			rule = Rulepool[Utility.RandomInt(0, j)]			
			If Utility.RandomInt(0, 99) < rule.Probability 
				int k = rule.ConflictingRules.Length - 1
				Bool canUse = True
				While k >= 0					
					If GetByName(rule.ConflictingRules[k]) && GetByName(rule.ConflictingRules[k]).Active
						canUse = False
					EndIf
					k -= 1					
				EndWhile				
				If canUse
					rule.EnactRule()			
					done = true
				EndIf
			EndIf
			counter -= 1
		EndWhile
	EndIf
	return done
EndFunction

Function ProcessRules()		
	; No processin when fighting or having fun!
	If aPlayer.IsInCombat() || aplayer.IsOnMount() || libs.IsAnimating(aplayer)
		return
	EndIf
	; Can't use FormLists for RefAliases...meh! So a silly array has to do!
	dcur_df_Baserule[] RulePool = new dcur_df_baserule[125]
	Int ActiveRules = 0
	int i = 0
	int j = -1 ; start at -1, so we'll know if we actually added any random rule to the pool.
	while i < Slotted
		if Slots[i].Active && !Slots[i].PermanentRule
			ActiveRules += 1
		EndIf
		if Slots[i].Active
			Slots[i].ProcessRule()						
		elseif !Slots[i].Active && Slots[i].PermanentRule && !Slots[i].ManualRule
			Slots[i].EnactRule()			
		elseif !Slots[i].Active && !Slots[i].PermanentRule && !Slots[i].ManualRule
			; add inactive non permanent rules to list to pick new random rules from
			j += 1
			RulePool[j] = Slots[i]			
		EndIf
		i += 1
	EndWhile
	If ActiveRules < MaxActiveRandomRules && j >= 0		
		; we have room for another random rule, so let's see if we can pick one:
		dcur_df_baserule rule		
		Bool done = false
		Int counter = 10
		While !done && counter > 0
			rule = Rulepool[Utility.RandomInt(0, j)]			
			If Utility.RandomInt(0, 99) < rule.Probability 
				int k = rule.ConflictingRules.Length - 1
				Bool canUse = True
				While k >= 0					
					If GetByName(rule.ConflictingRules[k]) && GetByName(rule.ConflictingRules[k]).Active
						canUse = False
					EndIf
					k -= 1					
				EndWhile				
				If canUse
					rule.EnactRule()			
					done = true
				EndIf
			EndIf
			counter -= 1
		EndWhile
	EndIf
EndFunction

Function StartQuest(Actor akMaster)		
	libs.Notify("Attempting to Start XDFF")
	if !akMaster || self.IsRunning()
		return
	EndIf	
	if !akMaster.HasKeyword(dcumenu.ActorTypeNPC) || !SexLab.ActorLib.CanAnimate(akMaster)
		libs.Notify("DCL: XDFF module can't start with invalid master.")
		return
	EndIf	
	;Initialize()
	If self.Start()
		;libs.Notify("XDFF running")
	Else
		libs.Notify("DCL: XDFF module failed to start.")
		return
	EndIf
	Init()
	Registry = new String[125]
	Slots = new dcur_df_baserule[125]	
	Slotted = 0
	Utility.Wait(2)	
	If Registry.Length < 10 || Slots.Length < 10
		libs.Notify("DCL: Warning: XDFF module failed to initialize arrays.")
	EndIf
	SendModEvent("dcur_df_registerrules")
	;ResetRules()	
	If !akMaster.IsInFaction(currentfollowerfaction)
		akMaster.AddToFaction(currentfollowerfaction)
		akMaster.SetFactionRank(currentfollowerfaction, -1)		
		akMaster.AddToFaction(PotentialFollowerFaction)			
		akMaster.SetFactionRank(PotentialFollowerFaction, 0)	
		akMaster.SetRelationshipRank(libs.PlayerRef, 3)
	EndIf		
	Master.ForceRefTo(akMaster)	
	If Master
		Master.GetActorReference().EvaluatePackage()
		aMaster = akMaster
		aPlayer = Player.GetActorReference()
		self.SetStage(10)
		self.SetObjectiveDisplayed(10)
		libs.EquipDevice(aPlayer, dcur_df_SlaveCollar_Inventory, dcur_df_SlaveCollar_Rendered, libs.zad_DeviousCollar, skipmutex = true)		
		libs.notify("You have been enslaved by " + aMaster.GetLeveledActorBase().GetName())
		EnslavedAt = Utility.GetCurrentGameTime()
		; process the rules right here, so that we don't have to wait a minute for all the stuff to get enacted.
		ProcessRules()	
		Combination = Utility.RandomInt(1, MaxCombinations)
		CombinationsTried = 0	
		If CollarEscapeAllowed 
			dcur_df_collarescapeallowed.SetValueInt(1)
		Else
			dcur_df_collarescapeallowed.SetValueInt(0)
		EndIf
		TimeSpentSleeping = 0.0
	Else
		libs.Notify("DCL: Failed to initialize XDFF module.")
		; something went wrong: Abort
		self.Reset()
		Utility.Wait(0.5)
		self.Stop()
	EndIf
EndFunction

Function EndQuest()
	Safe.GetReference().RemoveAllItems(akTransferTo = aPlayer, abKeepOwnership = false, abRemoveQuestItems = true)
	If aPlayer.IsEquipped(dcur_df_SlaveCollar_Rendered)
		libs.RemoveDevice(aPlayer, dcur_df_SlaveCollar_Inventory, dcur_df_SlaveCollar_Rendered, libs.zad_DeviousCollar, destroydevice = true, skipmutex = true)		
	EndIf
	If aPlayer.IsEquipped(dcur_df_SlaveCollarStrict_Rendered)
		libs.RemoveDevice(aPlayer, dcur_df_SlaveCollarStrict_Inventory, dcur_df_SlaveCollarStrict_Rendered, libs.zad_DeviousCollar, destroydevice = true, skipmutex = true)	
	EndIf
	; TODO: Need to remove other quest-related restraints as well!
	Master.Clear()
	UnregisterEvents()
	Self.Reset()
	Self.Stop()
	libs.Notify("DCL: XDFF module terminated.")
EndFunction

; takes all but Minimum amount of gold from the player and puts it in the safe, 
Function TransferMoney(Int Minimum = 100, Bool Destroy = False)
	int gold = aPlayer.GetItemCount(Gold001)	
	int takeaway = gold 
	takeaway -= Minimum
	If takeaway > 0		
		libs.notify(GetMasterBase().Getname() + " takes " + takeaway + " gold from you.")
		If !Destroy
			Safe.GetReference().AddItem(Gold001, takeaway, absilent = true)
		EndIf
		aPlayer.RemoveItem(Gold001, takeaway, absilent = true)
	EndIf
EndFunction

Function SpankPlayer()
	;RegisterForModEvent("dcur_USS_finished", "OnUSSFinished")
	;Utility.Wait(1)
	StorageUtil.SetFormValue(libs.PlayerRef, "dcur_uss_whipper", aMaster)	
	spqs.Start()	
EndFunction

Function init()		
	;Initialize()	
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	RegisterForModEvent("AnimationStart", "OnSexStart")
	RegisterForSleep()		
	RegisterForSingleUpdate(60)
	SendModEvent("dcur_df_onLo")
EndFunction

Function UnregisterEvents()	
	UnregisterForSleep()
	UnregisterForUpdate()
	UnRegisterForModEvent("AnimationEnd")	
	UnRegisterForModEvent("AnimationStart")
EndFunction

Event OnSleepStart(float afSleepStartTime, float afDesiredSleepEndTime)
	float naplength = afDesiredSleepEndTime - afSleepStartTime	
	TimeSpentSleeping += (naplength / 24)
	SendModEvent("dcur_df_playersleeps", numarg = naplength)
EndEvent

Event OnSleepStop(bool abInterrupted)		
	;if !Player.IsEquipped(dcur_nosleepitem) 
	;	Player.EquipItem(dcur_nosleepitem, absilent = true)
	;Endif
	SendModEvent("dcur_df_playerslept")
	lastsleep = Utility.GetCurrentGameTime()
EndEvent

Event OnSexStart(string eventName, string argString, float argNum, form sender)
EndEvent

Event OnSexEnd(string eventName, string argString, float argNum, form sender)
	sslThreadController SLcontroller = SexLab.HookController(argString)	
	Actor[] actors = SLcontroller.Positions
	int numactors = actors.Length
	int i = 0
	Bool MasterFound = false
	Bool Playerfound = false
	; let's check if one participant is master or the player
	While i < numactors
		If actors[i] == aMaster
			Masterfound = true
		Endif
		If actors[i] == aPlayer
			Playerfound = true
		Endif
		i += 1
	EndWhile
	; don't process scenes not involving the player
	if !Playerfound
		return
	endif
	if Masterfound
		LastSexWithMaster = Utility.GetCurrentGameTime()
	EndIf
	; These devices are meant for use in bondage sex, so we remove them when done.
	If aplayer.IsEquipped(dcur_df_ElbowBinder_BoundSex_Rendered)
		libs.RemoveDevice(aPlayer, dcur_df_ElbowBinder_BoundSex_Inventory, dcur_df_ElbowBinder_BoundSex_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = True)
	EndIf
	If aplayer.IsEquipped(dcur_df_Yoke_BoundSex_Rendered)
		libs.RemoveDevice(aPlayer, dcur_df_Yoke_BoundSex_Inventory, dcur_df_Yoke_BoundSex_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = True)
	EndIf
EndEvent

Event OnUpdate()
	RegisterForSingleUpdate(60)
	; process combination lock if player has the key.
	if libs.PlayerRef.GetItemCount(dcur_df_MasterKey) >= 1 && (Utility.GetCurrentGameTime() - LastKeyTick) * 24.0 > KeyTickLen
		LastKeyTick = Utility.GetCurrentGameTime()
		KeyAction()	
	Endif
	; dont start events if the player is in a scene.
	if libs.IsAnimating(libs.PlayerRef)
		Return
	EndIf
	ProcessRules()
	If SlaveryDurationDays != 0.0 && (EnslavedAt > 0.0) && ((Utility.GetCurrentGameTime() - EnslavedAt) > (SlaveryDurationDays + TimeSpentSleeping))
		libs.notify(GetMasterName() + " releases you from slavery. You are free again!")
		EndQuest()
    EndIf
EndEvent

; escape by collar picking:

Function StealKey()	
	Float chance = KeyStealBaseChance	
	If Utility.RandomFloat(0.0, 99.9) < chance
		; key got stolen
		libs.notify("You try to pickpocket " + GetMasterName() + "'s master key and manage to lift it from " + GetMasterPronoun() + " pocket. Freedom is so close now! You unlock your slave collar's combination lock cover and secretly start to try combinations. You better not get caught doing this...")
		libs.PlayerRef.Additem(dcur_df_MasterKey, 1)
	Else
		; failure
		libs.notify("You try to pickpocket " + GetMasterName() + "'s master key in a moment of inattention, but " + GetMasterSheHe() + " catches you with your fingers in " + GetMasterPronoun() + " pocket. Not good! You hang your head in shame and accept your punishment...")
		PunishTimedItems(50, 100)
	Endif
EndFunction

Function KeyAction()	
	CombinationsTried += NumbersPerTick
	If CombinationsTried > Combination
		;got it!
		libs.notify("Trying the latest combination makes the lock inside the collar click open! You remove the collar and are free again.", messagebox = true)
		libs.PlayerRef.RemoveItem(dcur_df_MasterKey, libs.PlayerRef.GetItemCount(dcur_df_MasterKey))
		EndQuest()
		;she escapes		
		return
	Endif
	If Utility.RandomFloat(0.0, 99.9) < SpotChancePerTick
		libs.notify("You try another combination as you suddenly feel " + GetMasterName() + "'s cold gaze, staring daggers at you. Your master rips the key out of your hands and locks the slave collar again. Then " + GetMasterSheHe() + " reaches into the bag where " + GetMasterSheHe() + " keeps " + GetMasterPronoun() + " restraints...", messagebox = true)
		libs.PlayerRef.RemoveItem(dcur_df_MasterKey, libs.PlayerRef.GetItemCount(dcur_df_MasterKey))
		; let's pick a new combination, but make sure it's at least an above-average hard one:
		Combination = Utility.RandomInt(Math.Floor(MaxCombinations / 2), MaxCombinations)
		CombinationsTried = 0
		PunishTimedItems(100, 100)
		; punish her		
		return		
	Endif
	libs.notify("Slave collar combinations tried: " + CombinationsTried + ". " + (MaxCombinations - CombinationsTried) + " left to go!")
EndFunction
