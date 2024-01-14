;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_UnlockAllRestraints Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Armor device = libs.GetWornDevice(akSpeaker, libs.zad_DeviousGag)
	Key devicekey
	if device				
		devicekey = libs.GetDeviceKey(device)
		If libs.playerref.GetItemCount(devicekey) < 1
			libs.notify("You don't have a key to unlock " + akSpeaker.GetLeveledActorBase().GetName() + "'s gag!")
			Return
		EndIf	
		libs.removedevice(akSpeaker, device, libs.GetRenderedDevice(device), libs.zad_DeviousGag, destroydevice = true, skipmutex = true)
		Utility.Wait(1.0)
		libs.playerref.AddItem(device, 1)	
		If !saqs.dcur_DDsashaitems.HasForm(device)
			saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
		Endif		
	Endif
	device = libs.GetWornDevice(akSpeaker, libs.zad_DeviousBlindfold)
	if device		
		devicekey = libs.GetDeviceKey(device)
		If libs.playerref.GetItemCount(devicekey) < 1
			libs.notify("You don't have a key to unlock " + akSpeaker.GetLeveledActorBase().GetName() + "'s blindfold!")
			Return
		EndIf	
		libs.removedevice(akSpeaker, device, libs.GetRenderedDevice(device), libs.zad_DeviousBlindfold, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(device, 1)	
		If !saqs.dcur_DDsashaitems.HasForm(device)
			saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
		Endif		
	Endif	
	device = libs.GetWornDevice(akSpeaker, libs.zad_DeviousHarness)
	if device		
		devicekey = libs.GetDeviceKey(device)
		If libs.playerref.GetItemCount(devicekey) < 1
			libs.notify("You don't have a key to unlock " + akSpeaker.GetLeveledActorBase().GetName() + "'s harness!")
			Return
		EndIf	
		libs.removedevice(akSpeaker, device, libs.GetRenderedDevice(device), libs.zad_DeviousHarness, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(device, 1)	
		If !saqs.dcur_DDsashaitems.HasForm(device)
			saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
		Endif		
	Endif	
	device = libs.GetWornDevice(akSpeaker, libs.zad_DeviousBoots)
	if device		
		devicekey = libs.GetDeviceKey(device)
		If libs.playerref.GetItemCount(devicekey) < 1
			libs.notify("You don't have a key to unlock " + akSpeaker.GetLeveledActorBase().GetName() + "'s boots!")
			Return
		EndIf	
		libs.removedevice(akSpeaker, device, libs.GetRenderedDevice(device), libs.zad_DeviousBoots, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(device, 1)	
		If !saqs.dcur_DDsashaitems.HasForm(device)
			saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
		Endif		
	Endif	
	device = libs.GetWornDevice(akSpeaker, libs.zad_DeviousHeavyBondage)
	if device		
		devicekey = libs.GetDeviceKey(device)
		If libs.playerref.GetItemCount(devicekey) < 1
			libs.notify("You don't have a key to unlock " + akSpeaker.GetLeveledActorBase().GetName() + "'s wrist restraints!")
			Return
		EndIf	
		libs.removedevice(akSpeaker, device, libs.GetRenderedDevice(device), libs.zad_DeviousHeavyBondage, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(device, 1)	
		If !saqs.dcur_DDsashaitems.HasForm(device)
			saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
		Endif		
	Endif	
	; remove SashaAnkleChains if worn
	if libs.GetWornDevice(akSpeaker, libs.zad_DeviousLegCuffs) == saqs.dcur_sashaAnkleChains
		libs.removedevice(akSpeaker, saqs.dcur_sashaAnkleChains, saqs.dcur_sashaAnkleChainsRendered, libs.zad_DeviousLegCuffs, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(saqs.dcur_sashaAnkleChains, 1)			
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto