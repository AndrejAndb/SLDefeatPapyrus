;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname DCLAL_StartupQuest Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	SQ.SetAddonQuestStage(1, HQ)
	; ARTHLALRumorsOfWarQuest.RegisterForSingleUpdate(0.25)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ARTH_LAL_StartQuest Property SQ Auto
Quest Property HQ Auto
Quest Property ARTHLALRumorsOfWarQuest Auto