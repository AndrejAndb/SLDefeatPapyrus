Scriptname dcur_clocktickRefScript extends ReferenceAlias  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
dcur_clocktickScript Property QuestScript Auto
dcur_KeyholderQuestScript Property khqs Auto 
dcur_thewhipandchainQuestScript Property twacqs Auto 
 
Float property LastSurrender = 0.0 Auto
Float property cooldown = 0.0 Auto
Float property onhitcooldown = 0.0 Auto

Bool Lockout = False

Package property dcur_pk_surrender Auto

Keyword Property dcur_kw_stripteasecollar Auto

Potion Property dcur_stinkybase Auto
Potion Property dcur_stinkypaste Auto
Potion Property dcur_smellysalve Auto

Keyword Property VendorItemPotion Auto
Keyword Property VendorItemPoison Auto

Message Property dcur_surrender_attemptresist Auto

Faction Property WEBountyHunter Auto
Faction Property PlayerWerewolfFaction Auto

Location Property SkuldafnLocation Auto
Location Property dcur_TheWhipandChainInnLoc Auto

GlobalVariable Property dcur_prison_usevanilla Auto

bool failedresist = false				
bool PlayUpdateMessage = false				

Event OnPlayerLoadGame()
	onhitcooldown = 0.0
	cooldown = 0.0
	QuestScript.initDCL()
	; delay the first update to give other stuff a chance to run.
	QuestScript.RegisterForSingleUpdate(20)		
EndEvent

Function RegisterKeys()
	UnregisterForAllKeys()	
	RegisterForKey(dcumenu.SurrenderKey) ; Surrender key	
EndFunction

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
	if akNewLoc != None && twacqs.IsRunning() && akNewLoc == dcur_TheWhipandChainInnLoc
		twacqs.Bard()
	EndIf
	dclibs.CheckFastTravel()
EndEvent

Event OnKeyDown(Int KeyCode)	
	; proceeed only if sex attacks are active
	if !dcumenu.sexEnableCombatAttacks || !dcumenu.sexGloballyEnabled 
		return
	endif
	If (KeyCode == dcumenu.SurrenderKey) ; Surrender key
		If !Lockout
			Lockout = True
			;If !UI.IsInMenuMode() 
				If libs.playerref.IsInCombat()
					Surrender()
				Endif
			;Endif
		Endif
		Utility.Wait(2.0)
		Lockout = False
	Endif	
EndEvent	

bool Function isDeviousDevice(Form device)
	if device.HasKeyword(libs.zad_InventoryDevice)
		return true
	endif
	return false
EndFunction

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	If libs.Playerref.IsInCombat() && libs.Playerref.WornHasKeyword(dcur_kw_stripteasecollar) && akBaseObject.GetType() == 26 && !isDeviousDevice(akBaseObject) && UI.IsMenuOpen("InventoryMenu"); armor
		libs.notify("You can't equip armor in combat while locked in a Striptease Collar!")	
		libs.Playerref.UnEquipItem(akBaseObject)
	Endif
	
	If akBaseObject.GetType() == 41 && dclibs.dcur_detectioncloakhitlist.GetSize() > 0 ; weapon equipped
		; make the baddies bad again
		RegisterForSingleUpdate(1)
	EndIf
	
	if akBaseObject == dcur_smellysalve || akBaseObject == dcur_stinkybase || akBaseObject == dcur_stinkypaste
		libs.notify("You don't want to use this on yourself! Gross!")	
		if akBaseObject == dcur_smellysalve
			libs.playerRef.AddItem(dcur_smellysalve, 1, true)
		elseif akBaseObject == dcur_stinkybase
			libs.playerRef.AddItem(dcur_stinkybase, 1, true)
		elseif akBaseObject == dcur_stinkypaste
			libs.playerRef.AddItem(dcur_stinkypaste, 1, true)
		Endif
	Endif
	
	if QuestScript.suspendedstate || dcumenu.shutdownmod
		return
	endif
	
	If dcumenu.uncontrollablelust && !libs.Playerref.IsInCombat() && akBaseObject.GetType() == 46 ; potion
		If dcumenu.dcur_drinks.HasForm(akBaseObject) ; is alcohol		
			If libs.aroused.GetActorArousal(libs.PlayerRef) > dcumenu.uncontrollablelustThreshold && UI.IsMenuOpen("InventoryMenu") && Utility.RandomFloat(0.0, 99.9) < dcumenu.uncontrollablelustChance
				bool masturbateonly = !dclibs.isInCity() || dclibs.isInHomeOrJail()
				; delay to accomodate RND
				if Game.GetModByName("RealisticNeedsandDiseases.esp") != 255					
					Utility.Wait(5)
				else
					Utility.Wait(0.1)
				endif				
				libs.notify("Drinking alcohol while being horny drove you over the edge...")	
				Int select = Utility.RandomInt(1,3)			
				if select == 1
					If dcumenu.debuglogenabled
						debug.trace("[DCUR] Uncontrollable Lust - Looking for sex.")
					Endif
					dclibs.sfl.HaveSexNow(masturbateonly)	
				elseif select == 2
					if dcumenu.selfbondageenable && !libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage) && (dcumenu.selfbondagewhenrestrained || !libs.playerRef.WornHasKeyword(libs.zad_Lockable)) && !libs.IsAnimating(libs.playerRef) && !libs.playerref.IsOnMount() && !libs.playerref.IsSwimming()
						If dcumenu.debuglogenabled
							debug.trace("[DCUR] Uncontrollable Lust - Attempting selfbondage.")
						Endif
						dclibs.Selfbondage()
					else
						If dcumenu.debuglogenabled
							debug.trace("[DCUR] Uncontrollable Lust - Looking for sex.")
						Endif
						dclibs.sfl.HaveSexNow(masturbateonly)
					Endif
				elseif select == 3
					if dclibs.isInCity() && !dclibs.isInHomeOrJail()
						If dcumenu.debuglogenabled
							debug.trace("[DCUR] Uncontrollable Lust - Attempting to trigger arrest scene.")
						Endif
						Libs.notify("You suddenly feel very dizzy...", messagebox = true)
						Utility.Wait(0.1)
						game.disablePlayerControls()    	
						Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")
						dcumenu.black.ApplyCrossFade(1)
						Utility.Wait(4)
						ImageSpaceModifier.Removecrossfade(1)
						Utility.Wait(2)	
						Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")	
						game.enablePlayerControls()   						
						if !dclibs.libs.playerref.WornHasKeyword(dclibs.libs.zad_DeviousHeavyBondage)
							libs.notify("You have no idea what you did when you were drunk, but apparently you are wanted for a criminal offense...", messagebox = true)												
							dclibs.mcs.wosqs.Start()
							return
						else
							If dcumenu.debuglogenabled
								debug.trace("[DCUR] Uncontrollable Lust - Looking for sex.")
							Endif
							dclibs.sfl.HaveSexNow(masturbateonly)
						EndIf							
					Else
						If dcumenu.debuglogenabled
							debug.trace("[DCUR] Uncontrollable Lust - Looking for sex.")
						Endif
						dclibs.sfl.HaveSexNow(masturbateonly)
					Endif									
				Endif
			Endif
		Elseif akBaseObject.HasKeyWord(VendorItemPotion) 
			; other potions
			If libs.aroused.GetActorArousal(libs.PlayerRef) > dcumenu.uncontrollablelustThreshold && UI.IsMenuOpen("InventoryMenu") && Utility.RandomFloat(0.0, 99.9) < dcumenu.uncontrollablelustChance
				; delay to accomodate RND
				if Game.GetModByName("RealisticNeedsandDiseases.esp") != 255					
					Utility.Wait(5)
				else
					Utility.Wait(0.1)
				endif
				libs.notify("The " + akBaseObject.GetName() + " makes even more horny than you already were...")		
				If dcumenu.debuglogenabled
					debug.trace("[DCUR] Uncontrollable Lust - Looking for sex.")
				Endif
				dclibs.sfl.HaveSexNow()	
			EndIf
		Endif
	Endif
EndEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If !akBaseItem || dcumenu.shutdownmod || dclibs.mcs.lbqs.lbqsquestrunning || dclibs.mcs.saqs.IsSashaDominating()  ; when Sasha is dominating, SHE will be your keyholder, so we just pause that quest.
		return
	Endif	
	If khqs.dcur_dollmaker_keyholderactive.GetValueInt() == 1 && akBaseItem.GetType() == 45 ; key
		if khqs.dcur_DDKeys.HasForm(akBaseItem)
			libs.notify("The Dollmaker takes your " + akBaseItem.GetName())		
			GetReference().RemoveItem(akBaseItem, aiItemCount, true, khqs.GetDollmaker())		
		Endif
	Endif
EndEvent

Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
	if QuestScript.suspendedstate || dcumenu.shutdownmod
		return
	endif	
	; lose keys when put into a container
	if (dcumenu.dcur_keys.HasForm(akBaseItem) && akBaseItem != dclibs.rcqs.dcur_royalchastity_key) && akDestContainer && (UI.IsMenuOpen("InventoryMenu") || UI.IsMenuOpen("ContainerMenu"))	
		if Utility.RandomFloat(0.0, 99.9) < dcumenu.shakyhands			
			if aiItemCount > 1
				libs.notify("When you try to put the " + akBaseItem.GetName() + " into the " + akDestContainer.GetBaseObject().GetName() +" the keys slip out of your shaky fingers. You try to retrieve them, but you cannot find them anywhere...", messagebox = true)			
			Else
				libs.notify("When you try to put the " + akBaseItem.GetName() + " into the " + akDestContainer.GetBaseObject().GetName() +" the key slips out of your shaky fingers. You try to retrieve it, but you cannot find it anywhere...", messagebox = true)			
			Endif
			akDestContainer.RemoveItem(akBaseItem, aiItemCount, absilent = true)
		Endif
	Endif	
	
	; Fair warning: This code will trigger even when the item is removed via scripting and sometimes the menu -will- be open when that happens (e.g. Slave Gag). The Block Generic test and checking if the item is on the quest item list should catch hopefull all of them, though.	
	if !dcumenu.selfbondageenable || !dcumenu.selfbondagenoitemdrops || dclibs.isInSafeLocation() || dcumenu.dcur_DDcustomitemlist.hasform(akBaseItem)
		return
	endif
	;If akBaseItem.GetType() == 26 && !akDestContainer && (UI.IsMenuOpen("InventoryMenu") || UI.IsMenuOpen("ContainerMenu"))		
	If akBaseItem.GetType() == 26 && ((!akDestContainer && !UI.IsMenuOpen("ContainerMenu"))  || (akDestContainer && akDestContainer.GetBaseObject().GetType() == 28) || (akDestContainer && akDestContainer.GetBaseObject().GetType() == 43 && (akDestContainer As Actor).IsDead())) && (UI.IsMenuOpen("InventoryMenu") || UI.IsMenuOpen("ContainerMenu"))		
		if isDeviousDevice(akBaseItem) 
			Armor IDevice = akBaseItem As Armor								
			if !akBaseItem.HasKeyword(libs.zad_BlockGeneric)
				libs.playerref.additem(akBaseItem, 1)
				If !akDestContainer
					akItemReference.Delete()
				Else
					akDestContainer.RemoveItem(akBaseItem, aiItemCount, absilent = true)
				Endif
				bool isAroused = (libs.aroused.GetActorArousal(libs.PlayerRef) > dcumenu.uncontrollablelustThreshold)
				if isAroused								
					Keyword kw = libs.GetDeviceKeyword(IDevice)
					libs.LockDevice(libs.playerref, IDevice)
					libs.notify("Holding the restraint in your trembling hands, you decide you don't want to put it away. Breathing heavily, you fantasize about being bound tight and the thought sets the area between your legs on fire. You can't help it but lock the restraint on yourself...", messagebox = true)			
				else
					libs.notify("I don't want to put this away, I might want to play with it!")			
				endif
			Endif
		endif	
	Endif
EndEvent

Event OnEnterBleedout()
	if !dcumenu.sexEnableCombatAttacks || !dcumenu.sexGloballyEnabled || dcumenu.shutdownmod 
		return
	endif
	actor pl = libs.playerref		
	pl.GetActorBase().SetInvulnerable(True)
	if dcumenu.debuglogenabled	
		debug.trace("[DCUR] - Character is bleeding out. Healing up.")
	endif
	pl.ResetHealthAndLimbs()		
	pl.GetActorBase().SetInvulnerable(False)
	QuestScript.WasNearDeath = True	
EndEvent

Event OnUpdate()
	If PlayUpdateMessage
		libs.notify("Your enemies have set eye on you again...")
	EndIf
	int n = dclibs.dcur_detectioncloakhitlist.GetSize() - 1
	Actor t
	while n >= 0
		t = dclibs.dcur_detectioncloakhitlist.GetAt(n) As Actor
		t.RemoveFromFaction(dclibs.dcur_PacifiedEvilPeopleFaction)
		n -= 1
	endwhile
	libs.PlayerRef.RemoveFromFaction(dclibs.dcur_PacifiedEvilPeopleFaction)
	EnrageFollowers()
	dclibs.dcur_detectioncloakhitlist.Revert()
EndEvent

Bool Function isDDQuestActive()		
	return (dclibs.mcs.isDCURQuestRunning || dclibs.isWearingUnsafeDDItem())
EndFunction

Bool Function PrisonIfBounty()
	If isDDQuestActive() || libs.PlayerRef.WornHasKeyword(libs.zad_QuestItem)
		return False
	EndIf
	Faction f = dclibs.GetHighestBountyFaction(ViolentOnly = True)
	If f == None
		; ok, she's not wanted for violent stuff. Let's see if the enemies bother with petty crime!
		If Utility.RandomInt() < 50
			f = dclibs.GetHighestBountyFaction(ViolentOnly = False)
			If f
				If f.GetCrimeGoldNonViolent() < 50
					; we don't send people to jail for THAT.
					f == None
				EndIf
			EndIf
		EndIf
	EndIf
	if f != None
		String s = f.GetName()
		libs.notify("Your victorious enemies recognize you and that you are worth quite a bounty in " + s + ". Eager to collect the extra money, they tie you up and hand you over to the authorities..." , messagebox = true)
		dclibs.SendToFactionPrison(f)
		return true
	EndIf
	return false
EndFunction

Function PacifyFollowers()
	Actor currenttest
	int i
	while i < dclibs.dcur_followerlist.GetSize()
		currenttest = dclibs.dcur_followerlist.GetAt(i) As Actor		
		currenttest.SheatheWeapon()
		currenttest.StopCombatAlarm()
		currenttest.StopCombat()
		currenttest.AddToFaction(dclibs.dcur_PacifiedEvilPeopleFaction)
		currenttest.SetFactionRank(dclibs.dcur_PacifiedEvilPeopleFaction, 100)
		i += 1
	endwhile	
EndFunction

Function EnrageFollowers()
	Actor currenttest
	int i
	while i < dclibs.dcur_followerlist.GetSize()
		currenttest = dclibs.dcur_followerlist.GetAt(i) As Actor		
		currenttest.RemoveFromFaction(dclibs.dcur_PacifiedEvilPeopleFaction)	
		i += 1
	endwhile	
EndFunction

Bool Function GetCannotPort()
	Location loc = libs.PlayerRef.GetCurrentLocation()
	if loc == SkuldafnLocation
		return true
	EndIf
	return false
EndFunction

bool hasNPCenemy

Function Surrender()
	if (Utility.GetCurrentRealTime() > cooldown)
		Debug.Trace("[DCUR] - Surrender not in cooldown, proceed")
		; add a cooldown to prevent script spam
		cooldown = Utility.GetCurrentRealTime() + 15 
		actor pl = libs.playerref		
		Game.DisablePlayerControls()			
		pl.StopCombat()
		pl.StopCombatAlarm()
		pl.SheatheWeapon()
		pl.AddToFaction(dclibs.dcur_PacifiedEvilPeopleFaction)
		pl.SetFactionRank(dclibs.dcur_PacifiedEvilPeopleFaction, 100)		
		PacifyFollowers()
		bool restrained = pl.WornHasKeyword(libs.zad_DeviousHeavyBondage)		
		bool chastity = dcumenu.sexchastitypreventsrape && (dclibs.dcur_iswearinglockedgear.GetValueInt() == 1)	
		dclibs.dcur_detectioncloakhitlist.Revert()			
		dcumenu.dcur_pacifycloakFFspell.cast(pl)	
		Game.ForceThirdPerson()
		Game.SetPlayerAIDriven(True)
		if !restrained
			pl.SheatheWeapon()
			Utility.Wait(0.5)
			ActorUtil.AddPackageOverride(pl, dcur_pk_surrender ,98)		
		endif
		Utility.Wait(4)				
		QuestScript.WasNearDeath = False
		PlayUpdateMessage = false
		If dclibs.dcur_detectioncloakhitlist.GetSize() >= 1 			
			;if !restrained
				libs.notify("Your enemies overwhelm you...")		
			;else
			;	libs.notify("Bound tight, you can't defend yourself and hope for mercy...")
			;endif
			Utility.Wait(1.5)				
			if !restrained
				ActorUtil.RemovePackageOverride(libs.playerref, dcur_pk_surrender)
			endif
			Game.SetPlayerAIDriven(False)
			pl.SheatheWeapon()
			; ok, let's see how this works without the cooldown...
			If true  ; ((Utility.GetCurrentGameTime() - LastSurrender) * 24) > 1.5
				Debug.Trace("[DCUR] - Processing Surrender.")
				;LastSurrender = Utility.GetCurrentGameTime()					
				hasNPCenemy = false
				bool wasDefeatedByGuard = false
				bool wasDefeatedByBountyHunter = false
				Faction CurrentCrimeFaction = None
				failedresist = false				
				int n = dclibs.dcur_detectioncloakhitlist.GetSize() - 1
				Actor t
				while n >= 0
					t = dclibs.dcur_detectioncloakhitlist.GetAt(n) As Actor
					if t.HasKeyword(dcumenu.ActorTypeNPC)
						hasNPCenemy = true
					EndIf					
					if t.IsInFaction(WEBountyHunter)
						; Bounter Hunters
						wasDefeatedByBountyHunter = true
						CurrentCrimeFaction = t.GetCrimeFaction()						
						if CurrentCrimeFaction.GetCrimeGoldViolent() == 0 && CurrentCrimeFaction.GetCrimeGoldNonViolent() == 0
							CurrentCrimeFaction = dclibs.GetHighestBountyFaction()
						Endif
					EndIf
					if t.IsGuard() && t.HasKeyword(dcumenu.ActorTypeNPC)
						; even if the player ruled out guards as attackers, the cloak detection list does still contain them. They would get ruled out by the sex scene later on.
						wasDefeatedByGuard = true
						CurrentCrimeFaction = t.GetCrimeFaction()						
					EndIf					
					n -= 1
				endwhile				
				If wasDefeatedByBountyHunter && CurrentCrimeFaction
					libs.notify("You were defeated by a bounty hunter, who is now eager to collect their well-earned reward for bringing you to justice!", messagebox = true)											
					If CurrentCrimeFaction.CanPayCrimeGold()
						; make her pay and remove stolen stuff
						CurrentCrimeFaction.PlayerPayCrimeGold(abGoToJail = false)
					Else
						; if she can't afford it, take whatever she's got
						CurrentCrimeFaction.SetCrimeGold(Libs.PlayerRef.GetItemCount(dcumenu.gold001))
						CurrentCrimeFaction.SetCrimeGoldViolent(0)
						CurrentCrimeFaction.PlayerPayCrimeGold(abGoToJail = false)
					EndIf												
				elseif wasDefeatedByGuard && CurrentCrimeFaction && !isDDQuestActive() && !libs.PlayerRef.WornHasKeyword(libs.zad_QuestItem) && !GetCannotPort()										
					; we send her to jail
					Debug.Trace("[DCUR] - Defeated by guards, proceed with jail.")					
					libs.notify("You were defeated by the law. Due to your violent actions, you are now facing a serious prison sentence...", messagebox = true)
					If CurrentCrimeFaction.GetCrimeGoldViolent() < 1000
						; if she didn't have a violent bounty alrady, she will get one now! I am sure doing battle with guards is ok nowhere in Skyrim...
						CurrentCrimeFaction.SetCrimeGoldViolent(1000)
					EndIf										
					Utility.Wait(0.1)					
					if (dcur_prison_usevanilla.GetValueInt() != 1) && (libs.SexLab.GetGender(Libs.PlayerRef) == 1)
						StorageUtil.SetFormValue(libs.playerRef, "dcur_prison_ArrestingFaction", CurrentCrimeFaction)					
						; need to reset the scene, still. We use the delayed update to make sure the player won't get attacked by the mobs before transported to jail.
						pl.ResetHealthAndLimbs()
						Game.EnablePlayerControls()						
						RegisterForSingleUpdate(75)				
						dclibs.mcs.pqs.Start()
					Else
						pl.ResetHealthAndLimbs()
						Game.EnablePlayerControls()
						RegisterForSingleUpdate(75)				
						CurrentCrimeFaction.SendPlayerToJail()
					EndIf
					return
				EndIf
				if hasNPCenemy
					Debug.Trace("[DCUR] - Defeated by NPCs, proceed with rape scene.")
					; she got defeated by NPCs, so let her try to resist if the feature isn't disabled.					
					if dcumenu.sexCombatResistChance > 0.0
						int r = dcur_surrender_attemptresist.Show()
						if r == 0 ; accept fate
							Debug.Trace("[DCUR] - Resist not attempted.")
						elseif r == 1 ; resist
							Debug.Trace("[DCUR] - Resist attempted.")
							if Utility.RandomFloat(0.0, 99.9) <= dcumenu.sexCombatResistChance
								Debug.Trace("[DCUR] - Resist succeeded.")
								; success, so lets set the timer and let her run! We're using a shorter timer to make it a bit more interesting!
								libs.notify("You wait for the right moment, and then kick your attacker where it hurts! Taken completely by surprise, your enemies are confused. They also dropped something, which you manage to snatch as you charge past them. Run! Now!", messagebox = true)
								dclibs.FindAnyUsefulKey(pl)
								If Utility.RandomInt() < 50
									dclibs.FindAnyUsefulKey(pl)
								EndIf
								If Utility.RandomFloat(0.0, 99.9) > dcumenu.sexCombatResistChance
									; lets reward higher difficulty settings
									dclibs.FindAnyUsefulKey(pl)
									pl.additem(dclibs.dcur_dq_damnbox)
								EndIf
								PlayUpdateMessage = true
								RegisterForSingleUpdate(45)
								QuestScript.WasNearDeath = False
								Game.EnablePlayerControls()	
								return
							Else
								; she will get punished harder for trying that!
								Debug.Trace("[DCUR] - Resist failed.")
								libs.notify("You wait for the right moment, and then kick your attacker where it hurts! Unfortunately, your enemies saw that coming. Your one chance to escape gone, you get pushed to the ground...", messagebox = true)
								failedresist = true
							EndIf
						EndIf
					EndIf										
				EndIf
				If !chastity && dclibs.GangBang(fullscene = true, origin = dclibs.origin_combat)
					; successful start of a rape scene means we need to wait for it to end to do other fun stuff!
					RegisterForModEvent("dcur_gangbang_end", "OnGangbangEnd")
					return
				Elseif hasNPCenemy
					; this is probably not getting called all that often, as most NPC attackers would go into the sex scene code path, but there are a few scenarios where it might happen:
					pl.SheatheWeapon()
					If PrisonIfBounty()						
					elseif dcumenu.sexOutcomeHardcore && !dclibs.mcs.lbqs.lbqsquestrunning && dclibs.baqs.dcur_bondageadventurequestactive.GetValueInt() != 1 
						Game.EnablePlayerControls()	
						dclibs.porttostartnoheal(dcumenu.sexOutcomeHardcore)
					else
						PlayUpdateMessage = true
						; tie her up!
						if !failedresist
							dclibs.EquipSet(pl, dcumenu.equiptheme)
						else
							; she tried to resist and will get tied harder! She will also lose between 10 and 20% of her gold.
							Int amount = Utility.RandomInt(Math.Floor(pl.GetItemCount(dcumenu.gold001) / 10), Math.Floor(pl.GetItemCount(dcumenu.gold001) / 5))
							pl.RemoveItem(dcumenu.gold001, amount)
							dclibs.EquipSet(pl, dcumenu.equiptheme, 50, 100)
						EndIf
					EndIf				
					pl.ResetHealthAndLimbs()
					Game.EnablePlayerControls()	
					; we keep the mobs peaceful for 1 min, or until the player draws a weapon
					RegisterForSingleUpdate(60)				
					return			
				else
					; creatures 
					libs.notify("Your attackers seemed to have lost interest in you. Maybe run as long as you still can!", messagebox = true)					
					pl.ResetHealthAndLimbs()
					Game.EnablePlayerControls()	
					; we keep the mobs peaceful for 1 min, or until the player draws a weapon
					RegisterForSingleUpdate(60)				
					return			
				EndIf		
			EndIf
		else
			Debug.Trace("[DCUR] - Surrender didn't find any eliglibe mobs, abort.")
			Game.SetPlayerAIDriven(False)
			Game.EnablePlayerControls()	
			ActorUtil.RemovePackageOverride(libs.playerref, dcur_pk_surrender)
			libs.playerref.RemoveFromFaction(dclibs.dcur_PacifiedEvilPeopleFaction)
			EnrageFollowers()
		endif		
	else
		Debug.Trace("[DCUR] - Surrender in cooldown, abort.")
	endif	
EndFunction

Event OnGangbangEnd(string eventName, string argString, float argNum, form sender)
	actor pl = libs.playerref		
	pl.SheatheWeapon()
	; we port only on hardcore difficulty
	If PrisonIfBounty()	&& !GetCannotPort()
	elseif dcumenu.sexOutcomeHardcore && !dclibs.mcs.lbqs.lbqsquestrunning && (dclibs.baqs.dcur_bondageadventurequestactive.GetValueInt() != 1) && !GetCannotPort()
		Game.EnablePlayerControls()	
		dclibs.porttostartnoheal(dcumenu.sexOutcomeHardcore)
	else
		PlayUpdateMessage = true
		if hasNPCenemy
			; tie her up!
			if !failedresist
				dclibs.EquipSet(pl, dcumenu.equiptheme)
			else
				; she tried to resist and will get tied harder! She will also lose between 10 and 20% of her gold.
				Int amount = Utility.RandomInt(Math.Floor(pl.GetItemCount(dcumenu.gold001) / 10), Math.Floor(pl.GetItemCount(dcumenu.gold001) / 5))
				pl.RemoveItem(dcumenu.gold001, amount)
				dclibs.EquipSet(pl, dcumenu.equiptheme, 50, 100)
			EndIf
		EndIf
	EndIf				
	pl.ResetHealthAndLimbs()
	Game.EnablePlayerControls()	
	; we keep the mobs peaceful for 1 min, or until the player draws a weapon
	RegisterForSingleUpdate(60)		
	UnRegisterForModEvent("dcur_gangbang_end")
EndEvent

Bool Function RemoveOnePieceofClothing()
	Actor a = libs.playerref
	Form frm
	; Amulet
	frm = libs.playerref.GetWornForm(0x00000020)
	if frm && !frm.HasKeyWord(dclibs.SexLabNoStrip)
		a.unequipItem(frm, abSilent = true)
		return true
	endif	
	; Ring
	frm = libs.playerref.GetWornForm(0x00000040)
	if frm && !frm.HasKeyWord(dclibs.SexLabNoStrip)
		a.unequipItem(frm, abSilent = true)
		return true
	endif	
	; Helmet
	frm = libs.playerref.GetWornForm(0x00000001)
	if frm && !frm.HasKeyWord(dclibs.SexLabNoStrip)
		a.unequipItem(frm, abSilent = true)
		return true
	endif	
	; Circlet
	frm = libs.playerref.GetWornForm(0x00001000)
	if frm && !frm.HasKeyWord(dclibs.SexLabNoStrip)
		a.unequipItem(frm, abSilent = true)
		return true
	endif	
	; Gloves
	frm = libs.playerref.GetWornForm(0x00000008)
	if frm && !frm.HasKeyWord(dclibs.SexLabNoStrip)
		a.unequipItem(frm, abSilent = true)
		return true
	endif	
	; Boots
	frm = libs.playerref.GetWornForm(0x00000080)
	if frm && !frm.HasKeyWord(dclibs.SexLabNoStrip)
		a.unequipItem(frm, abSilent = true)
		return true
	endif	
	; Body
	frm = libs.playerref.GetWornForm(0x00000004)
	if frm && !frm.HasKeyWord(dclibs.SexLabNoStrip)
		a.unequipItem(frm, abSilent = true)
		return true
	endif	
	Return False
EndFunction

Bool Function HitFromBehind(ObjectReference akAggressor)	
	If akAggressor.GetDistance(libs.playerref) > 200
		return false
	Endif
	Float Angle = (libs.playerref.GetHeadingAngle(akAggressor))
	If ((Angle < 110) && (Angle > -110)) 
		Return False	
	Endif	
	Return True
EndFunction

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)			
	if dclibs.gangbangmutex 
		dclibs.sexattackterminate = true
	endif		
			
	if !akAggressor || QuestScript.suspendedstate || dcumenu.shutdownmod || dclibs.gangbangmutex || dclibs.mcs.IsSceneRunning || dclibs.isInHomeorJail()
		return
	endif		
	if (Utility.GetCurrentRealTime() > onhitcooldown)
		Debug.Trace("[DCUR] - OnHit not in cooldown, proceed")
		onhitcooldown = Utility.GetCurrentRealTime() + 2
	else
		return
	endif		
	actor pl = libs.playerref
	Actor attacker = akAggressor As Actor	
	; this should take care of the whipping scenes some slavery mods implement
	If !attacker.IsHostileToActor(pl)
		return
	endif	
	; if the player is in any scene, kill it.
	If libs.IsAnimating(pl)
		sslThreadController SLController = dclibs.SexLab.GetPlayerController()
		If SLController
			SLController.EndAnimation(quickly = true)
			return
		EndIf		
	EndIf	
	if pl.WornHasKeyword(dcur_kw_stripteasecollar) && (Utility.RandomInt(0, 99) < 25)
		RemoveOnePieceofClothing()
	Endif	
	; proceeed only if sex attacks are active
	if !dcumenu.sexEnableCombatAttacks || !dcumenu.sexGloballyEnabled 
		return
	endif
	Debug.Trace("[DCUR] - OnHit: Processing Conditions.")
	; if the attacker herself is close to death, make HER surrender!
	if attacker.GetActorValuePercentage("Health") < 0.5 && (Utility.RandomFloat(0.0, 99.9) < dcumenu.sexCombatNPCSurrenderChance)
		if !attacker.GetActorBase().IsUnique() && attacker.HasKeyword(dcumenu.ActorTypeNPC) && !dclibs.ActorIsChild(attacker) && !libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)			
			dclibs.SurrenderEvilPerson(attacker)
			return
		EndIf
	EndIf
	if pl.GetActorValuePercentage("Health") < (dcumenu.sexCombatSurrenderHealth As Float / 100.0) || QuestScript.WasNearDeath
		Debug.Trace("[DCUR] - Health low, trying to trigger surrender")		
		Debug.SendAnimationEvent(libs.playerref, "IdleWounded_02")
		Utility.Wait(1)
		Surrender()		
		return
	endif
	If attacker.GetDistance(libs.playerref) > 500
		; the following conditions make little sense if the attacker is far away
		return
	EndIf
	If HitFromBehind(akAggressor) && Utility.RandomFloat(0.0, 99.9) < (dcumenu.sexCombatKnockAwayWeaponChance * 1.5)
		libs.notify("The unexpected hit from behind sends you to the floor...")
		Debug.SendAnimationEvent(libs.playerref, "IdleWounded_02")		
		Utility.Wait(1)
		dclibs.dropweapons(libs.playerref, unequiponly = dcumenu.flashbangnodroppingitems)
		Surrender()
		return
	EndIf
	if abPowerAttack && !abHitBlocked && !pl.WornHasKeyword(libs.zad_DeviousHeavyBondage) && !(libs.playerRef.getEquippedSpell(0) && libs.playerRef.getEquippedSpell(1)) && Utility.RandomFloat(0.0, 99.9) < dcumenu.sexCombatKnockAwayWeaponChance
		libs.notify("The strong attack makes you drop your weapons...")
		dclibs.dropweapons(libs.playerref, unequiponly = dcumenu.flashbangnodroppingitems)
		Surrender()
		return
	endif	
	if pl.WornHasKeyword(libs.zad_DeviousLegCuffs) && Utility.RandomFloat(0.0, 99.9) < dcumenu.sexCombatKnockAwayWeaponChance
		libs.notify("You trip over your leg restraints and drop your weapon...")
		Debug.SendAnimationEvent(libs.playerref, "IdleWounded_02")
		Utility.Wait(1)
		dclibs.dropweapons(libs.playerref, unequiponly = dcumenu.flashbangnodroppingitems)
		Surrender()
		return
	endif		
	; 8.4: Removed this for being criminally unfun:
	;If !dclibs.hasAnyWeaponEquipped(pl) && !pl.WornHasKeyword(libs.zad_DeviousHeavyBondage) && !pl.IsInFaction(PlayerWerewolfFaction)
	;	libs.notify("Unable to defend yourself without a weapon, you surrender.")
	;	Debug.Trace("[DCUR] - Player got hit by a closeby mob without weapon equipped. Surrendering!")
	;	Surrender()
	;	return
	;Endif	
	If pl.WornHasKeyword(libs.zad_DeviousHeavyBondage) && pl.WornHasKeyword(libs.zad_BoundCombatDisableKick)
		libs.notify("Unable to defend yourself in tight bondage, you surrender.")
		Debug.Trace("[DCUR] - Player got hit while restrained and bound combat disabled. Surrendering!")
		Surrender()
		return
	Endif
EndEvent