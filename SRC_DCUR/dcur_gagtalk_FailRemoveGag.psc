;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_gagtalk_FailRemoveGag Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Armor device = libs.GetWornDevice(libs.playerref, libs.zad_DeviousGag)
	If device.HasKeyword(libs.zad_BlockGeneric)
		libs.notify(akSpeaker.GetLeveledActorBase().GetName() + " fails to unlock your gag.")
		dclibs.FindAnyUsefulKey(libs.playerref)
		Return
	Endif
	libs.removedevice(libs.playerref, device, libs.GetRenderedDevice(device), libs.zad_DeviousGag)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  