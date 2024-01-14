;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_chloequest_setstage20 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
cqs.SetObjectiveCompleted(10)
cqs.SetStage(20)
cqs.SetObjectiveDisplayed(20)
cqs.dcur_chloequest_strongbox.GetReference().Enable()
cqs.dcur_chloequest_strongbox.GetReference().AddItem(cqs.dcur_chloe_shackleskey)
cqs.dcur_chloequest_strongbox.GetReference().AddItem(cqs.dclibs.dcumenu.torch01)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_chloeQuestScript Property cqs Auto
