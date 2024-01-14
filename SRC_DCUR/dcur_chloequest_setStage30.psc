Scriptname dcur_chloequest_setStage30 extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	If cqs.GetStage() != 20 || !akOldContainer
		return
	Endif	
	cqs.SetObjectiveCompleted(20)	
	cqs.SetStage(30)
	cqs.SetObjectiveDisplayed(30)	
EndEvent

dcur_chloeQuestScript Property cqs Auto
