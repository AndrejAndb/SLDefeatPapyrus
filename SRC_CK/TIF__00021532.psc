;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__00021532 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
TG01QuestScript pTG01Script = getowningquest() as TG01QuestScript
pTG01Script.pTG01LoverFound = 1
if getowningquest().IsObjectiveDisplayed(21) == 1
getowningquest().SetObjectiveCompleted(21,1)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
