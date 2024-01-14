Scriptname dcur_sadq_garbageScript extends ObjectReference  

dcur_SupplyQuestScript Property sadqs Auto
GlobalVariable Property dcur_sadq_garbagecollected Auto

Int NumOfGarbage = 15  ; number of garbage piles to pick up. Make sure to update the quest objective when changing this!

Event OnActivate(ObjectReference akActionRef)
	If akActionRef != sadqs.libs.PlayerRef
		Return
	EndIf
	If sadqs.GetStage() != 50
		return
	Endif	
	dcur_sadq_garbagecollected.SetValueInt(dcur_sadq_garbagecollected.GetValueInt() + 1 )
	sadqs.UpdateCurrentInstanceGlobal(dcur_sadq_garbagecollected)
	If dcur_sadq_garbagecollected.GetValueInt() >= NumOfGarbage
		sadqs.SetStage(60)
		sadqs.SetObjectiveDisplayed(60)
		sadqs.SetObjectiveCompleted(50)
	Else
		sadqs.SetObjectiveDisplayed(50)
	Endif
	Self.Disable()
EndEvent

