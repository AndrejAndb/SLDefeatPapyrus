Scriptname dcur_royalchastity_key4OnPickup extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	If rcqs.GetStage() != 121
		return
	Endif	
	rcqs.SetStage(122)
	rcqs.SetObjectiveDisplayed(122)
	rcqs.SetObjectiveCompleted(121)	
EndEvent

dcur_royalchastityQuestScript Property rcqs Auto