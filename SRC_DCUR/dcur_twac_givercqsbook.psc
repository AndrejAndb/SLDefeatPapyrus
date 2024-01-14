;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_twac_givercqsbook Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Game.GetPlayer().AddItem(twacqs.dclibs.rcqs.dcur_royalchastity_bookstart, 1) 		
	twacqs.AdvanceArcQuestBook()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_thewhipandchainQuestScript Property twacqs Auto