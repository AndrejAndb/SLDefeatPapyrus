Scriptname Pahe_LAL_StartQuest extends Quest Conditional

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
; Candlehearth Hall Start

AddStuff()

; Move player to Candlehearth Hall
Player.MoveTo(WindhelmCandlehearthHall)
PAHEIngrid.MoveTo(player)
If PAH.IsStopped()
	Debug.Notification("Starting Paradise Halls")
	Utility.Wait(2.0)
	PAHBoot.Boot()
EndIf
If !PAH.IsRunning()
	Debug.Notification("wait for Paradise Halls Boot process to finish")
	Utility.Wait(5.0)
EndIf
PAHe_LaL_Capture_RespectfulSlave(PAHEIngrid)

;debug.MessageBox("Call ARTHLALRumorsOfWar for a single update")

ARTHLALRumorsOfWarQuest.RegisterForSingleUpdate(0.25)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
; BlackReach Start

AddStuff()

; Move player to BlackReach
Player.MoveTo(BlackReach)
PAHEIngrid.MoveTo(player)
If PAH.IsStopped()
	Debug.Notification("Starting Paradise Halls")
	Utility.Wait(2.0)
	PAHBoot.Boot()
EndIf
If !PAH.IsRunning()
	Debug.Notification("wait for Paradise Halls Boot process to finish")
	Utility.Wait(5.0)
EndIf
PAHe_LaL_Capture_SlutSlave(PAHEIngrid)

;debug.MessageBox("Call ARTHLALRumorsOfWar for a single update")

ARTHLALRumorsOfWarQuest.RegisterForSingleUpdate(0.25)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
; TheFrozenHearth Start

AddStuff()

; Move player to TheFrozenHearth
Player.MoveTo(WinterholdTheFrozenHearth)
PAHEIngrid.MoveTo(player)
If PAH.IsStopped()
	Debug.Notification("Starting Paradise Halls")
	Utility.Wait(2.0)
	PAHBoot.Boot()
EndIf
If !PAH.IsRunning()
	Debug.Notification("wait for Paradise Halls Boot process to finish")
	Utility.Wait(5.0)
EndIf
PAHe_LaL_Capture_CombatSlave(PAHEIngrid)

;debug.MessageBox("Call ARTHLALRumorsOfWar for a single update")

ARTHLALRumorsOfWarQuest.RegisterForSingleUpdate(0.25)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
; Bannered Mare Start

AddStuff()

; Move player to BanneredMare
Player.MoveTo(BanneredMareStart)
PAHEIngrid.MoveTo(player)
If PAH.IsStopped()
	Debug.Notification("Starting Paradise Halls")
	Utility.Wait(2.0)
	PAHBoot.Boot()
EndIf
If !PAH.IsRunning()
	Debug.Notification("wait for Paradise Halls Boot process to finish")
	Utility.Wait(5.0)
EndIf
PAHe_LaL_Capture_SubmissiveSlave(PAHEIngrid)

;debug.MessageBox("Call ARTHLALRumorsOfWar for a single update")

ARTHLALRumorsOfWarQuest.RegisterForSingleUpdate(0.25)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment


Function AddStuff()
;BEGIN CODE
	if !player
		player = Game.GetPlayer()
	EndIf
	; Add armor
	Player.AddItem(ArmorIronCuirass, abSilent = true)
	Player.AddItem(ArmorIronBoots, abSilent = true)
	Player.AddItem(ArmorIronGauntlets, abSilent = true)
	Player.EquipItem(ArmorIronGauntlets, abSilent = true)
	Player.AddItem(ArmorIronHelmet, abSilent = true)

	;debug.MessageBox("Add weapons...")

	; Add weapons
	Player.AddItem(SteelSword, abSilent = true)
	Player.AddItem(ImperialBow, abSilent = true)
	Player.AddItem(SteelDagger, abSilent = true)
	Player.AddItem(SteelArrow, 100, abSilent = true)
	Player.AddItem(WoodcuttersAxe, abSilent = true)
	Player.AddItem(Pickaxe, abSilent = true)

	;debug.MessageBox("Add clothes...")

	; Add clothes
	Player.AddItem(ClothesFarmClothes03, abSilent = true)
	Player.AddItem(ClothesFarmBoots03, abSilent = true)
	Player.EquipItem(ClothesFarmClothes03, abSilent = true)
	Player.EquipItem(ClothesFarmBoots03, abSilent = true)

	; Add restraints
	Player.addItem(PAH.CuffsIron, 2, true)
	Player.addItem(PAH.CuffsIronBrown, 2, true)

	If (PAH.DD_Collar != None) && (PAH.DD_StraitJacket != None) && (PAH.DDx_ChainHarnessBody != None)
		Player.AddItem(PAH.zad_book, abSilent = true)
		Player.addItem(PAH.zad_Key, 2, true)
		Player.addItem(PAH.zadx_EboniteHarnessCollar, 2, true)
		Player.addItem(PAH.zadx_EboniteBlindfold, 2, true)
		Player.AddItem(PAH.zadx_StraitJacketLatexBlack, abSilent = true)
		Player.AddItem(PAH.zadx_StraitJacketLatexDressBlack, abSilent = true)
		Player.AddItem(PAH.zadx_StraitJacketLatexLegsToplessBlack, abSilent = true)
		Player.AddItem(PAH.zadx_StraitJacketLatexRed, abSilent = true)
		Player.AddItem(PAH.zadx_StraitJacketLatexDressRed, abSilent = true)
		Player.AddItem(PAH.zadx_StraitJacketLatexLegsToplessRed, abSilent = true)
		If (PAH.zadx_StraitJacketCatsuitEboniteBlack != None)
			Player.AddItem(PAH.zadx_StraitJacketCatsuitEboniteBlack, abSilent = true)
			Player.AddItem(PAH.zadx_StraitJacketCatsuitEboniteRed, abSilent = true)
			Debug.trace("DD5 StraitJacketCatsuits found")
		EndIf
	ElseIf (PAH.DD_Collar != None) && (PAH.DD_inventory != None)
		Player.AddItem(PAH.zad_book, abSilent = true)
		Player.addItem(PAH.zad_Key, 2, true)
		Player.addItem(PAH.zad_harnessCollar, abSilent = true)
		Player.AddItem(PAH.zad_collarPosture, abSilent = true)
	EndIf
	If (Game.GetModByName("OBIS SE.esp") != 255)
		Player.addItem(PAH.Obis_GlowingPearl, 10, true)
		PAHEIngrid.addItem(PAH.Obis_GlowingPearl, 10, true)
	EndIf

	; Add misc stuff
	;Player.AddItem(Lockpick, 10, abSilent = true)
	;Player.AddItem(HealthPotion, 10,  abSilent = true)
	Player.AddItem(Gold001, 202, abSilent = true)

	If (PAH.PAHHouseSlave != None)
		Player.addItem(PAH.PHHSHPortablePermaCamp, 2, true)
	EndIf

;END CODE
EndFunction

Function PAHe_LaL_Capture_CombatSlave(Actor captive)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Enslavement started")
										EndIf
	Actor cleaned_captive

	Debug.SendAnimationEvent(captive, "BleedOutStart")

	int[] captiveData = NpcEval.GetActorData(captive)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] ActorData stored in eval")
	If !PAH.IsRunning()
		Debug.Notification("still waiting for Paradise Halls Boot process to finish")
		Utility.Wait(2.0)
	EndIf
									EndIf

	cleaned_captive = PAH.Clone(captive)
		If cleaned_captive != None
			If Config.debugToggle
				Debug.trace("[PAHe_LaL] EncounterZone Actor cloned")
				If Config.showSlaveCountToggle
					Debug.Notification("[PAHe_LaL] slave cloned")
				EndIf
			EndIf
			captive.EndDeferredKill()
			captive.KillEssential(player)
			captive.Kill()
		Else
			If Config.debugToggle
				Debug.trace("[PAHe_LaL] Cloning failed")
				If Config.showSlaveCountToggle
					Debug.Notification("[PAHe_LaL] Cloning failed")
				EndIf
			EndIf
		EndIf
		
	If cleaned_captive != None
		cleaned_captive.SetRelationshipRank(player, -2)
		cleaned_captive.AllowPCDialogue(false)
		PAH.AddCombatSlave(cleaned_captive)
  
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Slave list updated")
										EndIf
			;If considerFactions
			;	If (issexSlaves || issexSlavesReleased)
			;		randomizeTraining(cleaned_captive)
			;	EndIf
			;	resetFactions()
			;EndIf

		NpcEval.StoreNpcFactionInfo(cleaned_captive, captiveData)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] eval data stored in slave")
										EndIf

		If captive != cleaned_captive
			cleaned_captive.setAlpha(0.0)
			PAH.switchActors(captive, cleaned_captive)
		EndIf

		cleaned_captive.AllowPCDialogue(true)
		cleaned_captive.setAlpha(1)
		cleaned_captive.SetDontMove(False)
		;inform anyone who may be interested that we made a new slave
;
		debug.trace("PAHe_LaL: sending slavers_spellbook New PAHE_Slave")
		int handle = ModEvent.Create("PAHE_NewSlave")
		if (handle)
			ModEvent.PushForm(handle, self)
			ModEvent.PushForm(handle, cleaned_captive)
			ModEvent.Send(handle)
		endIf



										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Enslavement finished")
										EndIf
	EndIf
EndFunction

Function PAHe_LaL_Capture_SlutSlave(Actor captive)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Enslavement started")
										EndIf
	Actor cleaned_captive

	Debug.SendAnimationEvent(captive, "BleedOutStart")

	int[] captiveData = NpcEval.GetActorData(captive)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] ActorData stored in eval")
	If !PAH.IsRunning()
		Debug.Notification("still waiting for Paradise Halls Boot process to finish")
		Utility.Wait(2.0)
	EndIf
									EndIf

	cleaned_captive = PAH.Clone(captive)
		If cleaned_captive != None
			If Config.debugToggle
				Debug.trace("[PAHe_LaL] EncounterZone Actor cloned")
				If Config.showSlaveCountToggle
					Debug.Notification("[PAHe_LaL] slave cloned")
				EndIf
			EndIf
			captive.EndDeferredKill()
			captive.KillEssential(player)
			captive.Kill()
		Else
			If Config.debugToggle
				Debug.trace("[PAHe_LaL] Cloning failed")
				If Config.showSlaveCountToggle
					Debug.Notification("[PAHe_LaL] Cloning failed")
				EndIf
			EndIf
		EndIf
		
	If cleaned_captive != None
		cleaned_captive.SetRelationshipRank(player, -2)
		cleaned_captive.AllowPCDialogue(false)

		PAH.AddSlutSlave(cleaned_captive)
		;UpdateSlaveCount()
  
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Slave list updated")
										EndIf
			;If considerFactions
			;	If (issexSlaves || issexSlavesReleased)
			;		randomizeTraining(cleaned_captive)
			;	EndIf
			;	resetFactions()
			;EndIf

		NpcEval.StoreNpcFactionInfo(cleaned_captive, captiveData)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] eval data stored in slave")
										EndIf

		If captive != cleaned_captive
			cleaned_captive.setAlpha(0.0)
			PAH.switchActors(captive, cleaned_captive)
		EndIf

		cleaned_captive.AllowPCDialogue(true)
		cleaned_captive.setAlpha(1)
		cleaned_captive.SetDontMove(False)
		;inform anyone who may be interested that we made a new slave
;
		debug.trace("PAHe_LaL: sending slavers_spellbook New PAHE_Slave")
		int handle = ModEvent.Create("PAHE_NewSlave")
		if (handle)
			ModEvent.PushForm(handle, self)
			ModEvent.PushForm(handle, cleaned_captive)
			ModEvent.Send(handle)
		endIf



										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Enslavement finished")
										EndIf
	EndIf
EndFunction

Function PAHe_LaL_Capture_SubmissiveSlave(Actor captive)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Enslavement started")
										EndIf
	Actor cleaned_captive

	Debug.SendAnimationEvent(captive, "BleedOutStart")

	int[] captiveData = NpcEval.GetActorData(captive)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] ActorData stored in eval")
	If !PAH.IsRunning()
		Debug.Notification("still waiting for Paradise Halls Boot process to finish")
		Utility.Wait(2.0)
	EndIf
									EndIf

	cleaned_captive = PAH.Clone(captive)
		If cleaned_captive != None
			If Config.debugToggle
				Debug.trace("[PAHe_LaL] EncounterZone Actor cloned")
				If Config.showSlaveCountToggle
					Debug.Notification("[PAHe_LaL] slave cloned")
				EndIf
			EndIf
			captive.EndDeferredKill()
			captive.KillEssential(player)
			captive.Kill()
		Else
			If Config.debugToggle
				Debug.trace("[PAHe_LaL] Cloning failed")
				If Config.showSlaveCountToggle
					Debug.Notification("[PAHe_LaL] Cloning failed")
				EndIf
			EndIf
		EndIf
		
	If cleaned_captive != None
		cleaned_captive.SetRelationshipRank(player, -2)
		cleaned_captive.AllowPCDialogue(false)
		PAH.AddSubmissiveSlave(cleaned_captive)

  
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Slave list updated")
										EndIf
			;If considerFactions
			;	If (issexSlaves || issexSlavesReleased)
			;		randomizeTraining(cleaned_captive)
			;	EndIf
			;	resetFactions()
			;EndIf

		NpcEval.StoreNpcFactionInfo(cleaned_captive, captiveData)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] eval data stored in slave")
										EndIf

		If captive != cleaned_captive
			cleaned_captive.setAlpha(0.0)
			PAH.switchActors(captive, cleaned_captive)
		EndIf

		cleaned_captive.AllowPCDialogue(true)
		cleaned_captive.setAlpha(1)
		cleaned_captive.SetDontMove(False)
		;inform anyone who may be interested that we made a new slave
;
		debug.trace("PAHe_LaL: sending slavers_spellbook New PAHE_Slave")
		int handle = ModEvent.Create("PAHE_NewSlave")
		if (handle)
			ModEvent.PushForm(handle, self)
			ModEvent.PushForm(handle, cleaned_captive)
			ModEvent.Send(handle)
		endIf



										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Enslavement finished")
										EndIf
	EndIf
EndFunction

Function PAHe_LaL_Capture_RespectfulSlave(Actor captive)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Enslavement started")
										EndIf
	Actor cleaned_captive

	Debug.SendAnimationEvent(captive, "BleedOutStart")

	int[] captiveData = NpcEval.GetActorData(captive)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] ActorData stored in eval")
	If !PAH.IsRunning()
		Debug.Notification("still waiting for Paradise Halls Boot process to finish")
		Utility.Wait(2.0)
	EndIf
									EndIf

	cleaned_captive = PAH.Clone(captive)
		If cleaned_captive != None
			If Config.debugToggle
				Debug.trace("[PAHe_LaL] EncounterZone Actor cloned")
				If Config.showSlaveCountToggle
					Debug.Notification("[PAHe_LaL] slave cloned")
				EndIf
			EndIf
			captive.EndDeferredKill()
			captive.KillEssential(player)
			captive.Kill()
		Else
			If Config.debugToggle
				Debug.trace("[PAHe_LaL] Cloning failed")
				If Config.showSlaveCountToggle
					Debug.Notification("[PAHe_LaL] Cloning failed")
				EndIf
			EndIf
		EndIf
		
	If cleaned_captive != None
		cleaned_captive.SetRelationshipRank(player, -2)
		cleaned_captive.AllowPCDialogue(false)

		PAH.AddRespectfulSlave(cleaned_captive)
		;UpdateSlaveCount()
  
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Slave list updated")
										EndIf
			;If considerFactions
			;	If (issexSlaves || issexSlavesReleased)
			;		randomizeTraining(cleaned_captive)
			;	EndIf
			;	resetFactions()
			;EndIf

		NpcEval.StoreNpcFactionInfo(cleaned_captive, captiveData)
										If Config.debugToggle
											Debug.trace("[PAHe_LaL] eval data stored in slave")
										EndIf

		If captive != cleaned_captive
			cleaned_captive.setAlpha(0.0)
			PAH.switchActors(captive, cleaned_captive)
		EndIf

		cleaned_captive.AllowPCDialogue(true)
		cleaned_captive.setAlpha(1)
		cleaned_captive.SetDontMove(False)
		;inform anyone who may be interested that we made a new slave
;
		debug.trace("PAHe_LaL: sending slavers_spellbook New PAHE_Slave")
		int handle = ModEvent.Create("PAHE_NewSlave")
		if (handle)
			ModEvent.PushForm(handle, self)
			ModEvent.PushForm(handle, cleaned_captive)
			ModEvent.Send(handle)
		endIf



										If Config.debugToggle
											Debug.trace("[PAHe_LaL] Enslavement finished")
										EndIf
	EndIf
EndFunction

;Player property - using Game.GetPlayer() in these cases would slow things down.
Actor Property Player Auto
Actor Property PAHEIngrid Auto

;For callback to update the LAL Quests
ARTH_LAL_StartQuest Property NewStartQuest Auto 
Quest Property ARTHLALRumorsOfWarQuest Auto

ObjectReference Property BanneredMareStart Auto  
ObjectReference Property BlackReach Auto  
ObjectReference Property WindhelmCandlehearthHall Auto  
ObjectReference Property WinterholdTheFrozenHearth Auto  

;Clothes
Armor Property ClothesFarmBoots03 Auto
Armor Property ClothesFarmClothes03 Auto

;Armor
Armor Property ArmorIronCuirass  Auto  
Armor Property ArmorIronBoots  Auto  
Armor Property ArmorIronGauntlets  Auto  
Armor Property ArmorIronHelmet  Auto  

;Weapons
WEAPON Property ImperialBow  Auto  
Ammo Property SteelArrow  Auto  
WEAPON Property SteelDagger  Auto  
WEAPON Property WoodcuttersAxe  Auto  
WEAPON Property Pickaxe  Auto  
WEAPON Property SteelSword  Auto  

; Other
MiscObject Property Lockpick  Auto  
Potion Property HealthPotion  Auto  
MiscObject Property Gold001  Auto  

PAHBootstrapScript Property PAHBoot Auto
PAHCore Property PAH Auto
PAH_MCM Property Config Auto
PAHNpcEval Property NpcEval Auto
