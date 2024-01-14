;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_prison_55setstage60 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	GetOwningQuest().SetObjectiveCompleted(55)
	(GetOwningQuest() As dcur_prisonQuestScript).dcur_prison_questcontrol.SetValueInt(60)
	GetOwningQuest().SetObjectiveDisplayed(60)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
