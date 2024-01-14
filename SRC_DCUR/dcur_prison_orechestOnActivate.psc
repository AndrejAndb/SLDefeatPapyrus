Scriptname dcur_prison_orechestOnActivate extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)
	pqs.ActivateOreChest(False)	
EndEvent	

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)	
	If akBaseItem == pqs.dcur_prison_orechunk && !pqs.dcur_prison_mine_dumpedore.HasForm(akItemReference)
		pqs.dcur_prison_mine_dumpedore.AddForm(akItemReference)
		pqs.ActivateOreChest(True)	
	Else
		pqs.ActivateOreChest(False)	
	EndIf	
EndEvent

dcur_prisonQuestScript Property pqs Auto