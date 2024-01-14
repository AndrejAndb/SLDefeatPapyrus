;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_unplug Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	;libs.playerref.RemoveItem(saqs.dcur_SashaCollar, 1, absilent = true)	
	Utility.Wait(0.5)
	libs.removedevice(akSpeaker, saqs.dcur_Sasha_vibrator, saqs.dcur_Sasha_vibratorRendered, libs.zad_DeviousPlugVaginal, destroydevice = true, skipmutex = true)	
	libs.removedevice(akSpeaker, saqs.dcur_Sasha_buttplug, saqs.dcur_Sasha_buttplugRendered, libs.zad_DeviousPlugAnal, destroydevice = true, skipmutex = true)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto
