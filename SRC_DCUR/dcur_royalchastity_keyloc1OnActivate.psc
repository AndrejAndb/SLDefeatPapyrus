Scriptname dcur_royalchastity_keyloc1OnActivate extends ObjectReference  

dcur_royalchastityQuestScript Property rcqs Auto

Event OnActivate(ObjectReference akActionRef)	
	If rcqs.GetStage() != 90
		return
	Endif
	rcqs.SetStage(91)
	rcqs.SetObjectiveDisplayed(91)
	rcqs.SetObjectiveCompleted(90)
	Game.GetPlayer().AddItem(rcqs.dcur_royalchastity_KeyFragment1)
EndEvent