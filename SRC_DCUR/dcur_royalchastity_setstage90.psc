;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_royalchastity_setstage90 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	GetOwningQuest().SetStage(90)
	GetOwningQuest().SetObjectiveCompleted(80)
	GetOwningQuest().SetObjectiveDisplayed(90)
	dclibs.sexwithplayer(akSpeaker, consensual = true, stages = 1, randomanim = true, preferredtag = "oral")		
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  