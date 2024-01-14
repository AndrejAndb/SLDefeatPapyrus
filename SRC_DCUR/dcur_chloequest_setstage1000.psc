;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_chloequest_setstage1000 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Game.GetPlayer().AddItem(cqs.dcur_chloe_restraintskey)
	Game.GetPlayer().AddItem(cqs.dcur_chloe_BallGag_Inventory)
	Game.GetPlayer().AddItem(cqs.dclibs.dcur_dq_damnbox, 3)
	Game.GetPlayer().AddItem(cqs.dcur_thedollmakerGS, 1)
	cqs.TerminateQuest(PlayerOnly = True)	
	cqs.SetObjectiveCompleted(220)
	cqs.SetStage(230)
	cqs.SetObjectiveDisplayed(230)
	;ssqs.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_chloeQuestScript Property cqs Auto
dcur_savingsashaQuest Property ssqs Auto