;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_UnlockCollar Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Armor device = libs.GetWornDevice(akSpeaker, libs.zad_DeviousCollar)
	if !device		
		libs.notify(akSpeaker.GetLeveledActorBase().GetName() + " is not wearing a slave collar!")
		Return
	Endif
	Key devicekey = libs.GetDeviceKey(device)
	If libs.playerref.GetItemCount(devicekey) < 1
		libs.notify("You don't have a key to unlock " + akSpeaker.GetLeveledActorBase().GetName() + "'s collar!")
		Return
	EndIf	
	libs.removedevice(akSpeaker, device, libs.GetRenderedDevice(device), libs.zad_DeviousCollar, destroydevice = true, skipmutex = true)
	Utility.Wait(0.5)
	libs.playerref.AddItem(device, 1)
	If !saqs.dcur_DDsashaitems.HasForm(device)
		saqs.lastfriendlyact = Utility.GetCurrentGameTime()		
	Endif		
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto