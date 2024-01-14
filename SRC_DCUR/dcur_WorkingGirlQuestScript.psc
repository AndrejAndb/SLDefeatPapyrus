Scriptname dcur_WorkingGirlQuestScript extends Quest  

zadlibs Property libs Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs Auto

MiscObject Property Gold001 Auto
Armor Property dcur_workinggirl_armbinder_Inventory Auto
Armor Property dcur_workinggirl_armbinder_Rendered Auto
Armor Property dcur_workinggirl_hobbledress_Inventory Auto
Armor Property dcur_workinggirl_hobbledress_Rendered Auto
Armor Property dcur_workinggirlcollar_Inventory Auto
Armor Property dcur_workinggirlcollar_Rendered Auto
Armor Property dcur_workinggirlDress Auto
Armor Property dcur_workinggirl_heels Auto

FormList Property dcur_workinggirl_dresses Auto

ReferenceAlias Property Alias_InnKeep Auto
ReferenceAlias Property Customer Auto

Int Property AmountNeeded Auto
Int Property AmountEarned Auto

Bool Property TerminateOnly Auto	; flag for debug quest termination - will prevent her from getting rewards.
Bool Property isStripping Auto

Int NumKeysTaken
Float LastApproach

Bool IsLockedWrist
Bool IsLockedGag
Bool IsLockedBoots
Bool IsLockedCorset
Bool IsLockedCuffs

Function StartQuest()
	AmountEarned = 0
	NumKeysTaken = 0
	libs.EquipDevice(libs.playerref, dcur_workinggirlcollar_Inventory, dcur_workinggirlcollar_Rendered, libs.zad_DeviousCollar, skipmutex = true)
	If Libs.PlayerRef.GetItemCount(libs.restraintsKey) > 0
		; we don't use chastity, so need to check for restraints keys only.
		NumKeysTaken = Libs.PlayerRef.GetItemCount(libs.restraintsKey)
		libs.Notify("The innkeep takes " + NumKeysTaken + " restraints keys from you and puts them away for safekeeping!", messagebox = true)
		Utility.Wait(0.1)
		Libs.PlayerRef.RemoveItem(libs.restraintsKey, Libs.PlayerRef.GetItemCount(libs.restraintsKey))
	EndIf	
	; we need to remember what restraints got put on by the innkeep, otherwise the player can cheat the bonus with selfbondage.
	IsLockedWrist = False
	IsLockedGag = False
	IsLockedBoots = False
	IsLockedCorset = False
	IsLockedCuffs = False
	TerminateOnly = False
	isStripping = False
	dclibs.Strip(Libs.PlayerRef, False)
	Int flSize = dcur_workinggirl_dresses.GetSize() - 1
	If Utility.RandomInt() < 35
		libs.Notify("The innkeep demands you to wear some extra restraints to boost your business!", messagebox = true)
		Utility.Wait(0.1)
		libs.PlayerRef.AddItem(dcur_workinggirl_dresses.GetAt(Utility.RandomInt(0, flSize)) As Armor)
		libs.PlayerRef.AddItem(dcur_workinggirl_heels)
		EquipSet(libs.PlayerRef, dcumenu.equiptheme)
	Else 				
		libs.PlayerRef.EquipItem(dcur_workinggirl_dresses.GetAt(Utility.RandomInt(0, flSize)) As Armor)
		libs.PlayerRef.EquipItem(dcur_workinggirl_heels)
	EndIf
	SetStage(10)
	SetObjectiveDisplayed(10)
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	;LastApproach = Utility.GetCurrentGameTime()
	RegisterForSingleUpdate(20)
EndFunction

Event OnSexEnd(string eventName, string argString, float argNum, form sender)		
	sslThreadController SLcontroller = libs.SexLab.HookController(argString)	
	Actor[] actors = SLcontroller.Positions
	int numactors = actors.Length
	int i = 0	
	Bool Playerfound = false
	; let's check if one participant is the player
	While i < numactors		
		If actors[i] == libs.PlayerRef
			Playerfound = true
		Endif
		i += 1
	EndWhile
	; don't process scenes not involving the player
	if !Playerfound
		return
	endif
	; lots of code just to do that, but oh well!
	LastApproach = Utility.GetCurrentGameTime()
EndEvent

Function HaveSex(Actor who, String tag = "")	
	ClearCustomer()
	dcumenu.dcur_solicitationoutcome.SetValueInt(1)		
	If tag == "Vaginal"
		dcumenu.dcur_solicitationbonus.SetValueInt(100)
	ElseIf tag == "Oral"
		dcumenu.dcur_solicitationbonus.SetValueInt(10)
	ElseIf tag == "Anal"
		dcumenu.dcur_solicitationbonus.SetValueInt(25)
	EndIf
	dclibs.mcs.soqs.dcur_solicitationcustomer.Clear()
	dclibs.mcs.soqs.dcur_solicitationcustomer.ForceRefTo(who)
	dclibs.mcs.soqs.SexWrapper(consensualsex = true, bondagesex = false, notipsex = false, sextag = tag)
EndFunction

Function RemoveSet()
	If IsLockedCuffs
		libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousArmCuffs)
		libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousLegCuffs)
		Utility.Wait(1.5)
	EndIf
	If IsLockedCorset
		libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousCorset)
		Utility.Wait(1.5)
	EndIf
	If IsLockedBoots
		libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousBoots)
		If Libs.PlayerRef.WornHasKeyword(libs.zad_DeviousGloves)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousGloves)
		EndIf
		Utility.Wait(1.5)
	EndIf
	If IsLockedGag
		libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousGag)
		Utility.Wait(1.5)
	EndIf
	If IsLockedWrist
		libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousHeavyBondage)
		Utility.Wait(1.5)
	EndIf
Endfunction

Function EquipSet(Actor akActor, Int Theme, Int MinDifficulty = 0, Int MaxDifficulty = 100)
	Int i = Utility.RandomInt(MinDifficulty, MaxDifficulty)
	If i < 10
		EquipSetCuffs(akActor, Theme)			
		IsLockedCuffs = True
	ElseIf i <20
		EquipSetBootsGloves(akActor, Theme)			
		IsLockedBoots = True
	ElseIf i <35
		EquipSetCorset(akActor, Theme)		
		IsLockedCorset = True
		IsLockedCuffs = True
	ElseIf i <45
		EquipSetRestrictive(akActor)
		IsLockedCorset = True
		IsLockedBoots = True
	;ElseIf i <60
	;	EquipSetGag(akActor, Theme)		
	;	IsLockedGag = True
	elseIf i <70
		EquipSetWristBoots(akActor, Theme)	
		IsLockedWrist = True
		IsLockedBoots = True		
	;ElseIf i <85
	;	EquipSetBindAndGag(akActor, Theme)
	;	IsLockedWrist = True
		;IsLockedGag = True
	;	IsLockedBoots = True
	Else
		EquipSetWrist(akActor, Theme)		
		EquipSetRestrictive(akActor)
		; EquipSetGag(akActor, Theme)
		IsLockedBoots = True
		IsLockedCorset = True
		;IsLockedGag = True
		IsLockedWrist = True
	EndIf
Endfunction

Function EquipSetCuffs(Actor akActor, Int Theme)	
	dclibs.dcur_equiprandomarmcuffs(akActor, theme)
	Utility.Wait(0.1)
	dclibs.dcur_equiprandomlegcuffs(akActor, theme)	
EndFunction

Function EquipSetBootsGloves(Actor akActor, Int Theme)	
	dclibs.dcur_equiprandomgloves(akActor, 11)
	Utility.Wait(0.1)
	dclibs.dcur_equiprandomboots(akActor, 11)	
EndFunction

Function EquipSetCorset(Actor akActor, Int Theme)		
	dclibs.dcur_equiprandomcorset(akActor, theme)	
	Utility.Wait(0.1)
	dclibs.dcur_equiprandomarmcuffs(akActor, theme)
	Utility.Wait(0.1)
	dclibs.dcur_equiprandomlegcuffs(akActor, theme)	
EndFunction
	
Function EquipSetRestrictive(Actor akActor)		
	dclibs.dcur_equiprandomcorset(akActor, 11)	
	Utility.Wait(0.1)
	dclibs.dcur_equiprandomgloves(akActor, 11)
	Utility.Wait(0.1)
	dclibs.dcur_equiprandomboots(akActor, 11)	
EndFunction
	
Function EquipSetBindAndGag(Actor akActor, Int Theme)	
	dclibs.dcur_equiprandomballgag(akActor, theme)
	Utility.Wait(0.1)
	dclibs.dcur_equiprandomarmbinder(akActor, theme)
	Utility.Wait(0.1)
	dclibs.dcur_equiprandomboots(akActor, theme)	
EndFunction

Function EquipSetGag(Actor akActor, Int Theme)	
	dclibs.dcur_equiprandomballgag(akActor, theme)		
EndFunction

Function EquipSetWrist(Actor akActor, Int Theme)	
	dclibs.dcur_equiprandomarmbinder(akActor, theme)
EndFunction

Function EquipSetWristBoots(Actor akActor, Int Theme)		
	dclibs.dcur_equiprandomarmbinder(akActor, theme)
	Utility.Wait(0.1)
	dclibs.dcur_equiprandomboots(akActor, theme)	
EndFunction

Function DoneWorking()
	UnRegisterForUpdate()
	SetStage(100)
	SetObjectiveDisplayed(100)
EndFunction

Function ClearCustomer()	
	Customer.Clear()
EndFunction

Function Innkeep_Punish()
	libs.RemoveDevice(libs.playerref, dcur_workinggirl_hobbledress_Inventory, dcur_workinggirl_hobbledress_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroyDevice = True)	
	; she's not getting rewarded for wrist restraints anymore!
	IsLockedWrist = False
	AmountNeeded *= 2
EndFunction

Function RemoveQuestItems()
	libs.RemoveDevice(libs.playerref, dcur_workinggirlcollar_Inventory, dcur_workinggirlcollar_Rendered, libs.zad_DeviousCollar, skipmutex = true, destroyDevice = True)
	If Libs.PlayerRef.IsEquipped(dcur_workinggirl_hobbledress_Rendered)
		libs.RemoveDevice(libs.playerref, dcur_workinggirl_hobbledress_Inventory, dcur_workinggirl_hobbledress_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroyDevice = True)
		Utility.Wait(1)
	EndIf
	If Libs.PlayerRef.IsEquipped(dcur_workinggirl_armbinder_Rendered)
		libs.RemoveDevice(libs.playerref, dcur_workinggirl_armbinder_Inventory, dcur_workinggirl_armbinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroyDevice = True)
		Utility.Wait(1)
	EndIf
Endfunction

Function EndQuest()	
	UnRegisterForModEvent("AnimationEnd")	
	If TerminateOnly
		RemoveQuestItems()
		Libs.PlayerRef.AddItem(libs.restraintsKey, NumKeysTaken)
		Return
	EndIf
	Int Deducted = (AmountEarned * (dcumenu.solicitationinnkeepershare / 100)) As Int
	Int Bonus = 0
	; let's see what she's wearing!
	If IsLockedWrist
		Bonus += Math.Floor(AmountEarned * 0.3)
	EndIf
	If IsLockedGag
		Bonus += Math.Floor(AmountEarned * 0.25)
	EndIf
	If IsLockedCorset
		Bonus += Math.Floor(AmountEarned * 0.1)
	EndIf
	If IsLockedBoots
		Bonus += Math.Floor(AmountEarned * 0.1)
	EndIf
	If IsLockedCuffs
		Bonus += Math.Floor(AmountEarned * 0.05)
	EndIf
	If Bonus > 0
		libs.Notify("Since you worked in restraints, you have earned a bonus of " + Bonus + " gold!", messagebox = true)
		Utility.Wait(0.1)
	EndIf
	libs.PlayerRef.Additem(Gold001, (AmountEarned + Bonus - Deducted))
	
	If NumKeysTaken > 0
		If Utility.RandomInt() < 66
			Libs.PlayerRef.AddItem(libs.restraintsKey, NumKeysTaken)
			libs.Notify("The innkeep returns " + NumKeysTaken + " restraints keys to you!", messagebox = true)
			Utility.Wait(0.1)
		Else
			libs.Notify("The innkeep neglects to return your " + NumKeysTaken + " restraints keys to you. How rude!", messagebox = true)
			Utility.Wait(0.1)
		EndIf
	EndIf	
	RemoveQuestItems()	
	If IsLockedCuffs || IsLockedCorset || IsLockedBoots || IsLockedGag || IsLockedWrist
		If Utility.RandomInt() < 66			
			libs.Notify("The innkeep unlocks your extra restraints.", messagebox = true)
			Utility.Wait(0.1)
			RemoveSet()
		Else
			libs.Notify("It's your lucky day! The innkeep seems to have forgotten to unlock your extra restraints. That means you get to keep them!!!", messagebox = true)
			Utility.Wait(0.1)
		EndIf
	EndIf		
EndFunction

bool Function TestClient(actor currenttest)
	If !currenttest.HasKeyword(dcumenu.ActorTypeNPC)
		return false
	EndIf
	If currenttest.IsInFaction(libs.Sexlab.AnimatingFaction)
		return false	
	Endif
	If (currenttest == libs.playerref) || currenttest.IsDisabled() || currenttest.IsDead() || dclibs.ActorIsChild(currenttest) || currenttest.IsGhost() || currenttest.GetActorBase().GetRace() == dcumenu.ManakinRace || currenttest.IsInFaction(dcumenu.currentfollowerfaction) || currenttest.IsPlayerTeammate() || currenttest.HasKeyWord(dcumenu.ActorTypeDwarven) || currenttest.IsInFaction(dclibs.dunPrisonerFaction)		
		return false
	endif	
	if currenttest.WornHasKeyWord(libs.zad_DeviousHeavyBondage)		
		return false
	EndiF		
	If currenttest.GetLeveledActorBase().GetRace() == dcumenu.ElderRace
		return false			
	endif			
	if currenttest.GetWorldSpace() != libs.playerRef.GetWorldSpace()		
		Return false
	endif		
	return true
EndFunction

Event OnUpdate()	
	RegisterForSingleUpdate(20)	
	If ((Utility.GetCurrentGameTime() - LastApproach) * 24) > 0.75 && (Utility.RandomInt() < 25) && !libs.PlayerRef.IsInFaction(libs.Sexlab.AnimatingFaction) && !libs.PlayerRef.IsEquipped(dcur_workinggirl_hobbledress_Rendered) && !isStripping && !UI.IsMenuOpen("Dialogue Menu") && libs.PlayerRef.GetCurrentLocation().haskeyword(dclibs.dglib.loctypeinn)		
		Int maxattempts = 5
		Bool Done = False
		Actor currenttest 
		While !done && maxattempts >= 0
			maxattempts -= 1
			currenttest = Game.FindRandomActorFromRef(libs.playerRef, 1000.0)						
			if currenttest && TestClient(currenttest)
				Done = True				
				LastApproach = Utility.GetCurrentGameTime()
				Customer.ForceRefTo(currenttest)			
			EndIf
		EndWhile
	EndIf
EndEvent
