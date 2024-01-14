Scriptname dcur_royalchastity_buttonOnActivate extends ObjectReference  

dcur_royalchastityQuestScript Property rcqs Auto

Event OnActivate(ObjectReference akActionRef)
	rcqs.dcur_royalchastity_trapdoor.GetReference().Enable(True)
	rcqs.SetStage(70)
	rcqs.SetObjectiveDisplayed(70)
	rcqs.SetObjectiveCompleted(60)
EndEvent