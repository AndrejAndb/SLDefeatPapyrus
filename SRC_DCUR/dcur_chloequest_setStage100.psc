Scriptname dcur_chloequest_setStage100 extends ObjectReference  

Event OnRead()
	If cqs.GetStage() > 90 
		return
	Endif	
	cqs.SetObjectiveCompleted(90)
	cqs.SetStage(100)
	cqs.SetObjectiveDisplayed(100)	
EndEvent

dcur_chloeQuestScript Property cqs Auto