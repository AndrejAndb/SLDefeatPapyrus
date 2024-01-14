Scriptname dcur_royalchastity_keyloc2OnActivate extends ObjectReference  

dcur_royalchastityQuestScript Property rcqs Auto

Event OnActivate(ObjectReference akActionRef)		
	If rcqs.GetStage() != 100
		return
	Endif
	rcqs.SetStage(101)
	rcqs.SetObjectiveDisplayed(101)
	rcqs.SetObjectiveCompleted(100)
	Game.GetPlayer().AddItem(rcqs.dcur_royalchastity_KeyFragment2)
	rcqs.alias_royalchastity_LoverStone.GetReference().Disable()
EndEvent