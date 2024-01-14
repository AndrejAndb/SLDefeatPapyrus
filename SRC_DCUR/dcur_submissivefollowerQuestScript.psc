Scriptname dcur_submissivefollowerQuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto
dcur_spankQuestScript Property spqs Auto
dcur_sexfunctionslibrary Property sfl Auto

ReferenceAlias Property Follower Auto
ReferenceAlias Property Player Auto

GlobalVariable Property dcur_sf_isbelted_nokey Auto
GlobalVariable Property dcur_sf_isbelted Auto
GlobalVariable Property dcur_sf_isbelted_player Auto
GlobalVariable Property dcur_sf_isgagged_nokey Auto
GlobalVariable Property dcur_sf_isgagged Auto
GlobalVariable Property dcur_sf_isgagged_player Auto
GlobalVariable Property dcur_sf_isbound_nokey Auto
GlobalVariable Property dcur_sf_isbound Auto
GlobalVariable Property dcur_sf_isbound_player Auto
GlobalVariable Property dcur_sf_candoerrand Auto

Outfit Property dcur_sf_outfit_fgt_catsuit Auto
Outfit Property dcur_sf_outfit_fgt_dress Auto
Outfit Property dcur_sf_outfit_mag_dress Auto
Outfit Property dcur_sf_outfit_mag_bikini Auto
Outfit Property dcur_sf_outfit_rog_corset Auto
Outfit Property dcur_sf_outfit_rog_spandex Auto

Armor Property dcur_sf_AnkleChains_Inventory Auto
Armor Property dcur_sf_AnkleChains_Rendered Auto
Armor Property dcur_sf_Armbinder_Inventory Auto
Armor Property dcur_sf_Armbinder_Rendered Auto
Armor Property dcur_sf_ArmCuffs_Inventory Auto
Armor Property dcur_sf_ArmCuffs_Rendered Auto
Armor Property dcur_sf_BallGag_Inventory Auto
Armor Property dcur_sf_BallGag_Rendered Auto
Armor Property dcur_sf_Blindfold_Inventory Auto
Armor Property dcur_sf_Blindfold_Rendered Auto
Armor Property dcur_sf_Boots_Inventory Auto
Armor Property dcur_sf_Boots_Rendered Auto
Armor Property dcur_sf_buttplug_Inventory Auto
Armor Property dcur_sf_buttplug_Rendered Auto
Armor Property dcur_sf_ChastityBelt_Inventory Auto
Armor Property dcur_sf_ChastityBelt_Rendered Auto
Armor Property dcur_sf_ChastityBra_Inventory Auto
Armor Property dcur_sf_ChastityBra_Rendered Auto
Armor Property dcur_sf_Collar_Inventory Auto
Armor Property dcur_sf_Collar_Rendered Auto
Armor Property dcur_sf_Harness_Inventory Auto
Armor Property dcur_sf_Harness_Rendered Auto
Armor Property dcur_sf_LegCuffs_Inventory Auto
Armor Property dcur_sf_LegCuffs_Rendered Auto
Armor Property dcur_sf_prisonerchains_Inventory Auto
Armor Property dcur_sf_prisonerchains_Rendered Auto
Armor Property dcur_sf_vibrator_Inventory Auto
Armor Property dcur_sf_vibrator_Rendered Auto

Actor Function GetFollower()
	return Follower.GetActorReference()
EndFunction

Bool Function RemoveDeviceByKeyword(Keyword kw)
	Armor device = libs.GetWornDevice(GetFollower(), kw)
	Key devicekey
	if device				
		devicekey = libs.GetDeviceKey(device)
		If libs.playerref.GetItemCount(devicekey) < 1
			libs.notify("You don't have a key to unlock " + GetFollower().GetActorBase().GetName() + "'s " + libs.GetDeviceName(device))
			Return False
		EndIf	
		; no need to check for quest/blocked devices. If the player has the key, it MUST be fine to unlock the device.
		libs.removedevice(GetFollower(), device, libs.GetRenderedDevice(device), kw, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(device, 1)	
		;If !saqs.dcur_DDsashaitems.HasForm(device)
		;	saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
		;Endif		
	Endif
	Return True
EndFunction

Function AddBelt(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousBelt) && libs.playerref.GetItemCount(dcur_sf_ChastityBelt_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_ChastityBelt_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_ChastityBelt_Inventory, dcur_sf_ChastityBelt_Rendered, libs.zad_DeviousBelt, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
		If !GetFollower().WornHasKeyword(libs.zad_DeviousPlugVaginal) && libs.playerref.GetItemCount(dcur_sf_vibrator_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_vibrator_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_vibrator_Inventory, dcur_sf_vibrator_Rendered, libs.zad_DeviousPlugVaginal, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
		If !GetFollower().WornHasKeyword(libs.zad_DeviousPlugAnal) && libs.playerref.GetItemCount(dcur_sf_buttplug_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_buttplug_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_buttplug_Inventory, dcur_sf_buttplug_Rendered, libs.zad_DeviousPlugAnal, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		dclibs.dcur_equiprandombelt(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddBra(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousBra) && libs.playerref.GetItemCount(dcur_sf_ChastityBra_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_ChastityBra_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_ChastityBra_Inventory, dcur_sf_ChastityBra_Rendered, libs.zad_DeviousBra, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		dclibs.dcur_equiprandombra(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddArmCuffs(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousArmCuffs) && libs.playerref.GetItemCount(dcur_sf_ArmCuffs_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_ArmCuffs_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_ArmCuffs_Inventory, dcur_sf_ArmCuffs_Rendered, libs.zad_DeviousArmCuffs, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		dclibs.dcur_equiprandomarmcuffs(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddLegCuffs(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousLegCuffs) && libs.playerref.GetItemCount(dcur_sf_LegCuffs_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_LegCuffs_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_LegCuffs_Inventory, dcur_sf_LegCuffs_Rendered, libs.zad_DeviousLegCuffs, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		; call the function that can NOT equip the ankle chains.
		dclibs.dcur_equiplegcuffs(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddCollar(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousCollar) && libs.playerref.GetItemCount(dcur_sf_Collar_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_Collar_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_Collar_Inventory, dcur_sf_Collar_Rendered, libs.zad_DeviousCollar, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		dclibs.dcur_equiprandomcollar(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddAnkleChains(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousLegCuffs) && libs.playerref.GetItemCount(dcur_sf_AnkleChains_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_AnkleChains_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_AnkleChains_Inventory, dcur_sf_AnkleChains_Rendered, libs.zad_DeviousLegCuffs, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		libs.equipDevice(GetFollower(), dcumenu.dcur_anklechains, dcumenu.dcur_anklechainsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddArmbinder(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousHeavyBondage) && libs.playerref.GetItemCount(dcur_sf_Armbinder_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_Armbinder_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_Armbinder_Inventory, dcur_sf_Armbinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		dclibs.dcur_equiprandomarmbinder(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddPrisonerChain(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousHeavyBondage) && !GetFollower().WornHasKeyword(libs.zad_DeviousArmCuffs) && !GetFollower().WornHasKeyword(libs.zad_DeviousLegCuffs) && libs.playerref.GetItemCount(dcur_sf_prisonerchains_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_prisonerchains_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_prisonerchains_Inventory, dcur_sf_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		dclibs.dcur_equiprandomarmbinder(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddBoots(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousBoots) && libs.playerref.GetItemCount(dcur_sf_Boots_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_Boots_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_Boots_Inventory, dcur_sf_Boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		dclibs.dcur_equiprandomboots(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddGag(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousGag) && libs.playerref.GetItemCount(dcur_sf_BallGag_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_BallGag_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_BallGag_Inventory, dcur_sf_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		dclibs.dcur_equiprandomgag(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddBlindfold(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousBlindfold) && libs.playerref.GetItemCount(dcur_sf_Blindfold_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_Blindfold_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_Blindfold_Inventory, dcur_sf_Blindfold_Rendered, libs.zad_DeviousBlindfold, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		dclibs.dcur_equiprandomblindfold(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function AddHarness(Bool random = false)
	if !random
		If !GetFollower().WornHasKeyword(libs.zad_DeviousHarness) && libs.playerref.GetItemCount(dcur_sf_Harness_Inventory) >= 1
			libs.playerref.RemoveItem(dcur_sf_Harness_Inventory, 1, absilent = true)				
			libs.equipdevice(GetFollower(), dcur_sf_Harness_Inventory, dcur_sf_Harness_Rendered, libs.zad_DeviousHarness, skipmutex = true)	
			Utility.Wait(0.5)
		Endif
	Else
		dclibs.dcur_equiprandomharness(GetFollower(), 0)
		Utility.Wait(0.5)
	EndIf
EndFunction

Function RemoveSet_Chastity(Bool IncludeCollar = True)
	If !RemoveDeviceByKeyword(libs.zad_DeviousBelt)
		Return
	EndIf
	Utility.Wait(0.1)
	If !RemoveDeviceByKeyword(libs.zad_DeviousBra)
		Return
	EndIf
	Utility.Wait(0.1)
	If !RemoveDeviceByKeyword(libs.zad_DeviousArmCuffs)
		Return
	EndIf
	Utility.Wait(0.1)
	If !RemoveDeviceByKeyword(libs.zad_DeviousLegCuffs)
		Return
	EndIf
	Utility.Wait(0.1)
	If IncludeCollar
		If !RemoveDeviceByKeyword(libs.zad_DeviousCollar)
			Return
		EndIf
	EndIf
EndFunction

Function RemoveSet_HeavyBondage()
	If !RemoveDeviceByKeyword(libs.zad_DeviousLegCuffs)
		Return
	EndIf
	Utility.Wait(0.1)
	If !RemoveDeviceByKeyword(libs.zad_DeviousHeavyBondage)
		Return
	EndIf
	Utility.Wait(0.1)
	If !RemoveDeviceByKeyword(libs.zad_DeviousGag)
		Return
	EndIf
	Utility.Wait(0.1)
	If !RemoveDeviceByKeyword(libs.zad_DeviousBoots)
		Return
	EndIf	
EndFunction

Function AddSet_Chastity(Bool random = false)
	AddBelt(random)
	Utility.Wait(0.1)
	AddBra(random)
	Utility.Wait(0.1)
	AddArmCuffs(random)
	Utility.Wait(0.1)
	AddLegCuffs(random)
	Utility.Wait(0.1)
	AddCollar(random)
	Utility.Wait(0.1)
EndFunction

Function AddSet_HeavyBondage(Bool random = false)
	AddAnkleChains(random)
	Utility.Wait(0.1)	
	AddArmbinder(random)
	Utility.Wait(0.1)	
	AddBoots(random)
	Utility.Wait(0.1)	
	AddGag(random)
	Utility.Wait(0.1)
EndFunction

Function SetupDialogue()
	If Follower.GetActorReference().WornHasKeyword(libs.zad_DeviousBelt)
		If Player.GetActorReference().GetItemCount(libs.GetDeviceKey(libs.GetWornDevice(Follower.GetActorReference(),libs.zad_DeviousBelt))) == 0
			dcur_sf_isbelted_nokey.SetValueInt(1)
			dcur_sf_isbelted.SetValueInt(1)
		Else
			dcur_sf_isbelted_nokey.SetValueInt(0)
			dcur_sf_isbelted.SetValueInt(1)
		EndIf
	Else
		dcur_sf_isbelted_nokey.SetValueInt(0)
		dcur_sf_isbelted.SetValueInt(0)
	EndIf
	If Follower.GetActorReference().WornHasKeyword(libs.zad_DeviousGag)
		If Player.GetActorReference().GetItemCount(libs.GetDeviceKey(libs.GetWornDevice(Follower.GetActorReference(),libs.zad_DeviousGag))) == 0
			dcur_sf_isgagged_nokey.SetValueInt(1)
			dcur_sf_isgagged.SetValueInt(1)
		Else
			dcur_sf_isgagged_nokey.SetValueInt(0)
			dcur_sf_isgagged.SetValueInt(1)
		EndIf
	Else
		dcur_sf_isgagged_nokey.SetValueInt(0)
		dcur_sf_isgagged.SetValueInt(0)
	EndIf
	If Follower.GetActorReference().WornHasKeyword(libs.zad_DeviousHeavyBondage)
		If Player.GetActorReference().GetItemCount(libs.GetDeviceKey(libs.GetWornDevice(Follower.GetActorReference(),libs.zad_DeviousHeavyBondage))) == 0
			dcur_sf_isbound_nokey.SetValueInt(1)
			dcur_sf_isbound.SetValueInt(1)
		Else
			dcur_sf_isbound_nokey.SetValueInt(0)
			dcur_sf_isbound.SetValueInt(1)
		EndIf
	Else
		dcur_sf_isbound_nokey.SetValueInt(0)
		dcur_sf_isbound.SetValueInt(0)
	EndIf
	If Player.GetActorReference().WornHasKeyword(libs.zad_DeviousBelt)
		dcur_sf_isbelted_player.SetValueInt(1)
	Else
		dcur_sf_isbelted_player.SetValueInt(0)
	EndIf
	If Player.GetActorReference().WornHasKeyword(libs.zad_DeviousGag)
		dcur_sf_isgagged_player.SetValueInt(1)
	Else
		dcur_sf_isgagged_player.SetValueInt(0)
	EndIf
	If Player.GetActorReference().WornHasKeyword(libs.zad_DeviousHeavyBondage)
		dcur_sf_isbound_player.SetValueInt(1)
	Else
		dcur_sf_isbound_player.SetValueInt(0)
	EndIf
EndFunction
