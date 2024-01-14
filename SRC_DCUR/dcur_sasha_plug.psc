;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_plug Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	Utility.Wait(0.5)
	libs.equipdevice(akSpeaker, saqs.dcur_Sasha_vibrator, saqs.dcur_Sasha_vibratorRendered, libs.zad_DeviousPlugVaginal, skipmutex = true)	
	libs.equipdevice(akSpeaker, saqs.dcur_Sasha_buttplug, saqs.dcur_Sasha_buttplugRendered, libs.zad_DeviousPlugAnal, skipmutex = true)	
	libs.notify("You briefly unlock Sasha's chastity belt and slide her oversized vibrators into her. Sasha is breathing heavily as you lock back the belt on her, the tight steel pushing the plugs deep into her, filling her completely.", messagebox = true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto