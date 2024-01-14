;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_ltr_setstage50 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	ltrqs.SetObjectiveCompleted(40)
	ltrqs.SetStage(50)
	ltrqs.SetObjectiveDisplayed(50)
	Game.GetPlayer().AddItem(ltrqs.dcur_ltr_rope_fine)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_learningtheropesQuestScript Property ltrqs Auto