Scriptname dcur_chloequest_playerScript extends ReferenceAlias

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If cqs.GetStage() != 110
		return
	EndIf
	If akBaseItem == FoodBread01A && !cqs.IsObjectiveCompleted(111)
		cqs.libs.notify("Chloe takes the bread and adds it to the potion mix!")
		cqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		cqs.SetObjectiveCompleted(111)
	Endif
	If akBaseItem == FoodSweetroll && !cqs.IsObjectiveCompleted(112)
		cqs.libs.notify("Chloe takes the Sweetroll and adds it to the potion mix!")
		cqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		cqs.SetObjectiveCompleted(112)
	Endif
	If akBaseItem == FoodHonningbrewMead && !cqs.IsObjectiveCompleted(113)
		cqs.libs.notify("Chloe takes the mead and adds it to the potion mix!")
		cqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		cqs.SetObjectiveCompleted(113)
	Endif
	If akBaseItem == Nirnroot && !cqs.IsObjectiveCompleted(114)
		cqs.libs.notify("Chloe takes the Nirnroot and adds it to the potion mix!")
		cqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		cqs.SetObjectiveCompleted(114)
	Endif
	If akBaseItem == Lavender && !cqs.IsObjectiveCompleted(115)
		cqs.libs.notify("Chloe takes the lavender and adds it to the potion mix!")
		cqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		cqs.SetObjectiveCompleted(115)
	Endif
	If akBaseItem == FoodCabbage && !cqs.IsObjectiveCompleted(116)
		cqs.libs.notify("Chloe takes the cabbage and adds it to the potion mix!")
		cqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		cqs.SetObjectiveCompleted(116)
	Endif
	If akBaseItem == FoodPotato && !cqs.IsObjectiveCompleted(117)
		cqs.libs.notify("Chloe takes the potato and adds it to the potion mix!")
		cqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		cqs.SetObjectiveCompleted(117)
	Endif
	If akBaseItem == MountainFlower01Red && !cqs.IsObjectiveCompleted(118)
		cqs.libs.notify("Chloe takes the flower and adds it to the potion mix!")
		cqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		cqs.SetObjectiveCompleted(118)
	Endif
	If cqs.IsObjectiveCompleted(111) && cqs.IsObjectiveCompleted(112) && cqs.IsObjectiveCompleted(113) && cqs.IsObjectiveCompleted(114) && cqs.IsObjectiveCompleted(115) && cqs.IsObjectiveCompleted(116) && cqs.IsObjectiveCompleted(117) && cqs.IsObjectiveCompleted(118)
		cqs.SetObjectiveCompleted(110)
		cqs.SetStage(120)
		cqs.Alias_dcur_chloequest_nazchest.GetReference().Enable()
		cqs.SetObjectiveDisplayed(120)
	Endif	
EndEvent

Event OnPlayerLoadGame()
	If cqs.GetStage() >= 90 && cqs.GetStage() < 230
		cqs.TransferWeapons()
	EndIf	
EndEvent

dcur_chloeQuestScript Property cqs Auto
Potion Property FoodHonningbrewMead  Auto  
Potion Property FoodSweetroll  Auto  
Potion Property FoodBread01A  Auto  
Ingredient Property Nirnroot  Auto  
Ingredient Property Lavender  Auto  
Potion Property FoodCabbage  Auto  
Potion Property FoodPotato  Auto  
Ingredient Property MountainFlower01Red  Auto  