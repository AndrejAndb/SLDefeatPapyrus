;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_prison_setstage50ns Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	pqs.SetObjectiveCompleted(30)
	pqs.dcur_prison_questcontrol.SetValueInt(50)
	pqs.SetObjectiveDisplayed(50)
	pqs.EntranceDoor.GetReference().Lock(False)
	pqs.EntranceDoor.GetReference().SetOpen(true)
	pqs.Lock_Straitjacket()

;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_prisonQuestScript Property pqs Auto