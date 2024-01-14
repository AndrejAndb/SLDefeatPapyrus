Scriptname dcur_royalchastity_bookstart_onread extends ObjectReference  

dcur_royalchastityQuestScript Property rcqs Auto
dcur_thewhipandchainQuestScript Property twacqs Auto

Event OnRead()
	if rcqs.GetStage() < 10
		rcqs.SetStage(10)
		rcqs.SetObjectiveDisplayed(10)
		twacqs.EndArcQuest()
	Endif
EndEvent

