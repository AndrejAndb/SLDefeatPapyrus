Scriptname dcur_prison_playerref Extends ReferenceAlias

Event OnPlayerLoadGame()	
	pqs.OnGameLoad()	
EndEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)		
	If pqs.dcur_prison_questcontrol.GetValueInt() == 200	
		If akBaseItem == pqs.WineBottle01BEmpty
			pqs.SetObjectiveCompleted(200)
			pqs.dcur_prison_questcontrol.SetValueInt(210)
			pqs.SetObjectiveDisplayed(210)
		EndIf	
	ElseIf pqs.dcur_prison_questcontrol.GetValueInt() == 230
		If akBaseItem == pqs.FoodCheeseWedge02
			pqs.SetObjectiveCompleted(230)
			pqs.dcur_prison_questcontrol.SetValueInt(240)
			pqs.SetObjectiveDisplayed(240)
		EndIf	
	ElseIf pqs.dcur_prison_questcontrol.GetValueInt() == 260
		If akBaseItem == pqs.WoodenLadle01
			pqs.SetObjectiveCompleted(261)			
		EndIf	
		If akBaseItem == pqs.FoodBread01A && akSourceContainer == pqs.KitchenSack.GetReference()
			pqs.SetObjectiveCompleted(262)			
		EndIf	
		If akBaseItem == pqs.FoodCabbage
			pqs.SetObjectiveCompleted(263)			
		EndIf	
		If akBaseItem == pqs.FoodPotato && akSourceContainer == pqs.StockAreaBarrel2.GetReference()
			pqs.SetObjectiveCompleted(264)			
		EndIf	
		If akBaseItem == pqs.DwarvenSpoon
			pqs.SetObjectiveCompleted(265)			
		EndIf	
		If akBaseItem == pqs.dcur_prison_water
			pqs.SetObjectiveCompleted(266)			
		EndIf	
		if pqs.IsObjectiveCompleted(261) && pqs.IsObjectiveCompleted(262) && pqs.IsObjectiveCompleted(263) && pqs.IsObjectiveCompleted(264) && pqs.IsObjectiveCompleted(265) && pqs.IsObjectiveCompleted(266)
			pqs.SetObjectiveCompleted(260)
			pqs.dcur_prison_questcontrol.SetValueInt(270)
			pqs.SetObjectiveDisplayed(270)
		EndIf
	else
		; when this stage isn't running, we auto-eat food:
		If (akBaseItem == pqs.FoodBread01B || akBaseItem == pqs.FoodTomatoSoup)
			pqs.libs.playerref.equipitem(akBaseItem)
		EndIf
	EndIf
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	If pqs.dcur_prison_questcontrol.GetValueInt() == 280 && akBaseObject == pqs.dcur_prison_stew
		pqs.SetObjectiveCompleted(280)
		pqs.dcur_prison_questcontrol.SetValueInt(290)
		pqs.SetObjectiveDisplayed(290)
		pqs.libs.playerref.RemoveItem(pqs.dcur_prison_stew, pqs.libs.playerref.GetItemCount(pqs.dcur_prison_stew), absilent = true)
	EndIf
	If pqs.IsRunning() && (akBaseObject == pqs.FoodBread01B || akBaseObject == pqs.FoodTomatoSoup)
		If pqs.Libs.PlayerRef.WornHasKeyword(pqs.libs.zad_DeviousGag)
			If pqs.IsDDRestrained()
				pqs.libs.Notify("Eating while gagged and tightly restrained isn't the easiest task for sure, but with a lot of patience and a bit of luck you manage to get the food past your gag...", messagebox = true)
			Else
				pqs.libs.Notify("Eating while gagged isn't the easiest task for sure, but with a lot of patience and a bit of luck you manage to get the food past your gag...", messagebox = true)
			EndIf
		EndIf
	EndIf
EndEvent

dcur_prisonQuestScript Property pqs Auto