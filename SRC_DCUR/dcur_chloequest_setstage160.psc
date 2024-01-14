Scriptname dcur_chloequest_setstage160 extends ObjectReference  

Event OnRead()
	If cqs.GetStage() > 150
		return
	Endif	
	cqs.SetObjectiveCompleted(150)
	cqs.SetStage(160)
	cqs.SetObjectiveDisplayed(160)	
EndEvent

dcur_chloeQuestScript Property cqs Auto