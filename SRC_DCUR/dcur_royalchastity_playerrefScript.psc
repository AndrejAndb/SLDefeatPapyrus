Scriptname dcur_royalchastity_playerrefScript extends ReferenceAlias

dcur_royalchastityQuestScript Property rcqs Auto
dcur_mcmconfig Property dcumenu  Auto  

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If rcqs.GetStage() == 20
		If akBaseItem == dcumenu.dcur_royalchastity_belt
			rcqs.ItemsFound += 1
			rcqs.SetObjectiveCompleted(21)
		ElseIf akBaseItem == dcumenu.dcur_royalchastity_bra
			rcqs.ItemsFound += 1
			rcqs.SetObjectiveCompleted(22)
		ElseIf akBaseItem == dcumenu.dcur_royalchastity_collar
			rcqs.ItemsFound += 1
			rcqs.SetObjectiveCompleted(23)
		ElseIf akBaseItem == dcumenu.dcur_royalchastity_armcuffs
			rcqs.ItemsFound += 1
			rcqs.SetObjectiveCompleted(24)
		ElseIf akBaseItem == dcumenu.dcur_royalchastity_legcuffs
			rcqs.ItemsFound += 1
			rcqs.SetObjectiveCompleted(25)
		Endif
		If rcqs.IsObjectiveCompleted(21) && rcqs.IsObjectiveCompleted(22) && rcqs.IsObjectiveCompleted(23) && rcqs.IsObjectiveCompleted(24) && rcqs.IsObjectiveCompleted(25)
			rcqs.FullSetFound()
		Endif
	EndIf
EndEvent