;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_chloequest_setstages40 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	cqs.SetObjectiveCompleted(35)	
	cqs.SetStage(40)
	cqs.SetObjectiveDisplayed(40)
	Alias_dcur_chloequest_helgen_passage.GetReference().Enable()
	cqs.GetChloe().SetOutfit(cqs.dcur_outfitnaked)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_chloeQuestScript Property cqs Auto
ReferenceAlias Property Alias_dcur_chloequest_helgen_passage Auto