;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_dom_unbeltplayer Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor pl = Game.GetPlayer()		
	libs.removedevice(pl, saqs.dcur_Sasha_Vibrator, saqs.dcur_Sasha_VibratorRendered, libs.zad_DeviousPlugVaginal, destroydevice = true, skipevents = false, skipmutex = true)
	libs.removedevice(pl, saqs.dcur_Sasha_ButtPlug, saqs.dcur_Sasha_ButtPlugRendered, libs.zad_DeviousPlugAnal, destroydevice = true, skipevents = false, skipmutex = true)
	libs.removedevice(pl, dcur_SashaPlayerChastityBelt, dcur_SashaPlayerChastityBeltRendered, libs.zad_DeviousBelt, destroydevice = true, skipevents = false, skipmutex = true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
armor property dcur_SashaPlayerChastityBelt Auto
armor property dcur_SashaPlayerChastityBeltRendered Auto
