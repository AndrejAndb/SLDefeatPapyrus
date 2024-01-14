Scriptname dcur_royalchastity_keyOnPickup extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	If rcqs.GetStage() != 300 || akNewContainer != Game.GetPlayer()
		return
	Endif	
	rcqs.SetStage(410)
	rcqs.SetObjectiveCompleted(300)	
	rcqs.SetObjectiveCompleted(400)	
	rcqs.SetObjectiveDisplayed(410)	
	rcqs.UnregisterForUpdateGameTime()
EndEvent

dcur_royalchastityQuestScript Property rcqs Auto
