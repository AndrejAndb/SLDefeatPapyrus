Scriptname dcur_hq_ledgerOnPickup extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	If hqqs.GetStage() != 30 || !akOldContainer
		return
	Endif	
	hqqs.SetObjectiveCompleted(30)	
	hqqs.SetStage(40)
	hqqs.SetObjectiveDisplayed(40)	
EndEvent

dcur_hq_QuestScript Property hqqs Auto