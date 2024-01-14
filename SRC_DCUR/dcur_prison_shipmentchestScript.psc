Scriptname dcur_prison_shipmentchestScript extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)
	pqs.ActivateShipmentChest(False)
EndEvent	

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)	
	If pqs.dcur_prison_wares.HasForm(akBaseItem) && !pqs.dcur_prison_ware_dumpedwares.HasForm(akItemReference)
		pqs.dcur_prison_ware_dumpedwares.AddForm(akItemReference)
		pqs.ActivateShipmentChest(True)
	Else
		pqs.ActivateShipmentChest(False)	
	EndIf	
EndEvent

dcur_prisonQuestScript Property pqs Auto