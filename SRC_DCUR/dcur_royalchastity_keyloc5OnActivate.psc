Scriptname dcur_royalchastity_keyloc5OnActivate extends ObjectReference  

dcur_royalchastityQuestScript Property rcqs Auto

Event OnActivate(ObjectReference akActionRef)	
	If rcqs.GetStage() != 130
		return
	Endif
	rcqs.SetStage(131)
	rcqs.SetObjectiveDisplayed(131)
	rcqs.SetObjectiveCompleted(130)
	Game.GetPlayer().AddItem(rcqs.dcur_royalchastity_KeyFragment5)
	rcqs.dcur_al_royalchastity_keyloc5.GetReference().Disable()
EndEvent