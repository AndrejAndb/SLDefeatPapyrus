;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_royalchastity_setstage60 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	rcqs.alias_royalchastity_pushbutton.GetReference().Enable(True)
	GetOwningQuest().SetStage(60)
	GetOwningQuest().SetObjectiveCompleted(50)
	GetOwningQuest().SetObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_royalchastityQuestScript Property rcqs Auto
