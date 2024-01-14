;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_royalchastity_setstage20 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	GetOwningQuest().SetStage(20)
	GetOwningQuest().SetObjectiveCompleted(10)
	GetOwningQuest().SetObjectiveDisplayed(21)
	GetOwningQuest().SetObjectiveDisplayed(22)
	GetOwningQuest().SetObjectiveDisplayed(23)
	GetOwningQuest().SetObjectiveDisplayed(24)
	GetOwningQuest().SetObjectiveDisplayed(25)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
