;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_shoppingqueststartNPC Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	sqqs.Reset()	
	sqqs.QuestGiverisMaster = False
	sqqs.Start()	
	sqqs.QuestGiver.ForceRefTo(akSpeaker)
	sqqs.aliases_QuestGiver.ForceRefTo(akSpeaker)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_shopping_QuestScript Property sqqs Auto 