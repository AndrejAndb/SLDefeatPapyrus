Scriptname dcur_royalchastity_kingsnoteOnPickup extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	If rcqs.GetStage() != 70
		return
	Endif
	;If akNewContainer == Game.GetPlayer()	
	rcqs.SetStage(80)
	rcqs.SetObjectiveDisplayed(80)
	rcqs.SetObjectiveCompleted(70)
	;Endif
EndEvent

dcur_royalchastityQuestScript Property rcqs Auto