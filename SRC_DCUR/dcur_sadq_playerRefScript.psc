Scriptname dcur_sadq_playerRefScript extends ReferenceAlias  

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If sadqs.GetStage() != 70
		return
	EndIf
	If akBaseItem == FoodSalmon && !sadqs.IsObjectiveCompleted(71)
		sadqs.libs.notify("You add the salmon to the fish burger!")
		sadqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		sadqs.SetObjectiveCompleted(71)
	Endif
	
	If akBaseItem == BirdEgg03 && !sadqs.IsObjectiveCompleted(72)
		sadqs.libs.notify("You add the chicken egg to the fish burger!")
		sadqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		sadqs.SetObjectiveCompleted(72)
	Endif
	
	If akBaseItem == Nirnroot && !sadqs.IsObjectiveCompleted(73)
		sadqs.libs.notify("You add the Nirnroot to the fish burger!")
		sadqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		sadqs.SetObjectiveCompleted(73)
	Endif	
	
	If akBaseItem == FoodLeek && !sadqs.IsObjectiveCompleted(74)
		sadqs.libs.notify("You add the leek to the fish burger!")
		sadqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		sadqs.SetObjectiveCompleted(74)
	Endif
	
	If akBaseItem == FoodBread01A && !sadqs.IsObjectiveCompleted(75)
		sadqs.libs.notify("You add the bread to the fish burger!")
		sadqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		sadqs.SetObjectiveCompleted(75)
	Endif	
	
	If akBaseItem == FoodCheeseWheel01A && !sadqs.IsObjectiveCompleted(76)
		sadqs.libs.notify("You add the cheese to the fish burger!")		 
		sadqs.libs.Playerref.RemoveItem(akBaseItem, 1, absilent = true)	
		sadqs.SetObjectiveCompleted(76)
	Endif	
	
	If sadqs.IsObjectiveCompleted(71) && sadqs.IsObjectiveCompleted(72) && sadqs.IsObjectiveCompleted(73) && sadqs.IsObjectiveCompleted(74) && sadqs.IsObjectiveCompleted(75) && sadqs.IsObjectiveCompleted(76)
		sadqs.SetObjectiveCompleted(70)
		sadqs.SetStage(80)		
		sadqs.SetObjectiveDisplayed(80)
	Endif
	
EndEvent

dcur_SupplyQuestScript Property sadqs Auto

Potion Property FoodBread01A  Auto  
Ingredient Property Nirnroot  Auto  
Potion Property FoodCheeseWheel01A Auto
Potion Property FoodSalmon Auto
Ingredient Property BirdEgg03 Auto
Potion Property FoodLeek Auto