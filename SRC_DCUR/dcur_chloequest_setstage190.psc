;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_chloequest_setstage190 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Game.GetPlayer().moveto(cqs.Alias_dcur_falkreath_marker.GetReference())
	Utility.Wait(5)
	cqs.GetChloe().moveto(cqs.Alias_dcur_falkreath_marker.GetReference())
	cqs.SetObjectiveCompleted(180)
	cqs.SetStage(190)
	cqs.SetObjectiveDisplayed(190)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_chloeQuestScript Property cqs Auto