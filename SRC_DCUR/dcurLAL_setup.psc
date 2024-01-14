;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcurLAL_setup Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	(ARTHLALChargenQuest As ARTH_LAL_StartQuest).SetAddonQuestStage(0, lbq)
	;ARTHLALRumorsOfWarQuest.RegisterForSingleUpdate(0.25)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

;ARTH_LAL_StartQuest Property NewStartQuest Auto 
;Quest Property ARTHLALRumorsOfWarQuest Auto 
;Quest Property lbq Auto
Quest Property ARTHLALChargenQuest  Auto  
