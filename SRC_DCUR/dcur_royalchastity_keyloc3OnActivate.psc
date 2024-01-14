Scriptname dcur_royalchastity_keyloc3OnActivate extends ObjectReference  

dcur_royalchastityQuestScript Property rcqs Auto

Event OnActivate(ObjectReference akActionRef)	
	If rcqs.GetStage() != 110
		return
	Endif
	rcqs.SetStage(111)
	rcqs.SetObjectiveDisplayed(111)
	rcqs.SetObjectiveCompleted(110)
	Game.GetPlayer().AddItem(rcqs.dcur_royalchastity_KeyFragment3)
	rcqs.alias_royalchastity_HotSpring.GetReference().Disable()
EndEvent