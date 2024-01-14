;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_chloequest_setstage220 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Game.GetPlayer().moveto(cqs.Alias_dcur_chloequest_dawnstar_marker.GetReference())	
	cqs.GetChloe().moveto(cqs.Alias_dcur_chloequest_dawnstar_marker.GetReference())
	cqs.SetObjectiveCompleted(210)
	cqs.SetStage(221)
	cqs.SetObjectiveDisplayed(221)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_chloeQuestScript Property cqs Auto