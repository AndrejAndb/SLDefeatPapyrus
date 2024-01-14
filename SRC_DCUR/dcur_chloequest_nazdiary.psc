Scriptname dcur_chloequest_nazdiary extends ObjectReference  

Event OnRead()
	If cqs.GetStage() > 170
		return
	Endif	
	cqs.SetObjectiveCompleted(170)
	cqs.SetStage(180)
	cqs.SetObjectiveDisplayed(180)	
	cqs.SetObjectiveDisplayed(190)
EndEvent

dcur_chloeQuestScript Property cqs Auto