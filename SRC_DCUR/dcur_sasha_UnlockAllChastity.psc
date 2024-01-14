;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_UnlockAllChastity Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Armor device = libs.GetWornDevice(akSpeaker, libs.zad_DeviousArmCuffs)
	Key devicekey
	if device				
		devicekey = libs.GetDeviceKey(device)
		If libs.playerref.GetItemCount(devicekey) < 1
			libs.notify("You don't have a key to unlock " + akSpeaker.GetLeveledActorBase().GetName() + "'s arm cuffs!")
			Return
		EndIf	
		libs.removedevice(akSpeaker, device, libs.GetRenderedDevice(device), libs.zad_DeviousArmCuffs, destroydevice = true, skipmutex = true)
		Utility.Wait(1.0)
		libs.playerref.AddItem(device, 1)	
		If !saqs.dcur_DDsashaitems.HasForm(device)
			saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
		Endif		
	Endif
	device = libs.GetWornDevice(akSpeaker, libs.zad_DeviousLegCuffs)
	if device		
		devicekey = libs.GetDeviceKey(device)
		If libs.playerref.GetItemCount(devicekey) < 1
			libs.notify("You don't have a key to unlock " + akSpeaker.GetLeveledActorBase().GetName() + "'s leg cuffs!")
			Return
		EndIf	
		libs.removedevice(akSpeaker, device, libs.GetRenderedDevice(device), libs.zad_DeviousLegCuffs, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(device, 1)			
		If !saqs.dcur_DDsashaitems.HasForm(device)
			saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
		Endif		
	Endif		
	device = libs.GetWornDevice(akSpeaker, libs.zad_DeviousBra)
	if device		
		devicekey = libs.GetDeviceKey(device)
		If libs.playerref.GetItemCount(devicekey) < 1
			libs.notify("You don't have a key to unlock " + akSpeaker.GetLeveledActorBase().GetName() + "'s chastity bra!")
			Return
		EndIf	
		libs.removedevice(akSpeaker, device, libs.GetRenderedDevice(device), libs.zad_DeviousBra, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(device, 1)			
		If !saqs.dcur_DDsashaitems.HasForm(device)
			saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
		Endif		
	Endif	
	device = libs.GetWornDevice(akSpeaker, libs.zad_DeviousBelt)
	if device		
		devicekey = libs.GetDeviceKey(device)
		If libs.playerref.GetItemCount(devicekey) < 1
			libs.notify("You don't have a key to unlock " + akSpeaker.GetLeveledActorBase().GetName() + "'s chastity belt!")
			Return
		EndIf	
		libs.removedevice(akSpeaker, device, libs.GetRenderedDevice(device), libs.zad_DeviousBelt, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(device, 1)	
		If !saqs.dcur_DDsashaitems.HasForm(device)
			saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
		Endif		
		; remove plugs, if worn
		if akSpeaker.GetItemCount(saqs.dcur_Sasha_vibrator) > 0
			libs.removedevice(akSpeaker, saqs.dcur_Sasha_vibrator, saqs.dcur_Sasha_vibratorRendered, libs.zad_DeviousPlugVaginal, destroydevice = true, skipmutex = true)	
		Endif
		if akSpeaker.GetItemCount(saqs.dcur_Sasha_buttplug) > 0
			libs.removedevice(akSpeaker, saqs.dcur_Sasha_buttplug, saqs.dcur_Sasha_buttplugRendered, libs.zad_DeviousPlugAnal, destroydevice = true, skipmutex = true)	
		Endif
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto