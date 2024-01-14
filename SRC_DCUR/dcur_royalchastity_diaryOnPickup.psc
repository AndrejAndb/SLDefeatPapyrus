Scriptname dcur_royalchastity_diaryOnPickup extends ObjectReference  

dcur_royalchastityQuestScript Property rcqs Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	If rcqs.GetStage() != 40
		return
	Endif
	;If akNewContainer == Game.GetPlayer()
	rcqs.dcur_royalchastity_fragmentsfound.SetValueInt(Game.GetPlayer().GetItemCount(rcqs.dcur_royalchastity_diaryfragment))
	rcqs.UpdateCurrentInstanceGlobal(rcqs.dcur_royalchastity_fragmentsfound)
	If rcqs.dcur_royalchastity_fragmentsfound.GetValueInt() >= 5
		rcqs.SetStage(50)
		rcqs.SetObjectiveDisplayed(50)
		rcqs.SetObjectiveCompleted(40)
	Else
		rcqs.SetObjectiveDisplayed(40)
	Endif
	;Endif
EndEvent