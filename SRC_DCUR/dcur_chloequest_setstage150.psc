;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_chloequest_setstage150 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	cqs.SetObjectiveCompleted(140)
	cqs.SetStage(150)
	Game.GetPlayer().Additem(cqs.dcur_chloequest_nazeemskey, 1)
	Game.GetPlayer().Additem(cqs.dcur_chloequest_nazeemnote2, 1)
	cqs.SetObjectiveDisplayed(150)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_chloeQuestScript Property cqs Auto