;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_LockBelt Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.playerref.RemoveItem(saqs.dcur_SashaChastityBelt, 1, absilent = true)	
	Utility.Wait(0.5)
	libs.equipdevice(akSpeaker, saqs.dcur_SashaChastityBelt, saqs.dcur_SashaChastityBeltRendered, libs.zad_DeviousBelt, skipmutex = true)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto