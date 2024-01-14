;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_prison_setstage190 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	pqs.Lock_Elbowbinder()
	pqs.SetObjectiveCompleted(180)
	pqs.dcur_prison_questcontrol.SetValueInt(190)
	pqs.SetObjectiveDisplayed(190)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_prisonQuestScript Property pqs Auto