;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sadq_starttwac Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	sadqs.dclibs.dcur_boundinskyrimQuest.SetStage(50)
	sadqs.dclibs.dcur_boundinskyrimQuest.SetObjectiveDisplayed(50)
	sadqs.EndQuest()
	Game.GetPlayer().AddItem(twacqs.dcur_twac_vipinvitation)
	dcur_twac_questarc.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SupplyQuestScript Property sadqs Auto
dcur_thewhipandchainQuestScript Property twacqs Auto
Quest Property dcur_twac_questarc Auto
