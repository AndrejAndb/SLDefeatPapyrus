;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_LockBallGag Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	If !akSpeaker.WornHasKeyword(libs.zad_DeviousGag) && libs.playerref.GetItemCount(saqs.dcur_SashaBallGag) >= 1
		libs.playerref.RemoveItem(saqs.dcur_SashaBallGag, 1, absilent = true)	
		Utility.Wait(0.5)
		libs.equipdevice(akSpeaker, saqs.dcur_SashaBallGag, saqs.dcur_SashaBallGagRendered, libs.zad_DeviousGag, skipmutex = true)	
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto