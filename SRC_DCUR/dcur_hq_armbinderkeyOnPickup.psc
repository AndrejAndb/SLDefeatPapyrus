Scriptname dcur_hq_armbinderkeyOnPickup extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	If hqqs.GetStage() != 70 || !akOldContainer
		return
	Endif	
	hqqs.libs.notify("You browse through the drunken man's pockets and find a key!\nBound as you are, you cannot reach the locks of your armbinder, so maybe you should just ask the innkeep?", true)
	Utility.Wait(0.1)
	hqqs.libs.notify("You also find a note:\nAs instructed, I have forwarded the keys for the girl to her buyer in Helgen. I will arrange for her to get sent there as soon as she arrives. I have no keys left other than the standard armbinder key.", true)
	Utility.Wait(0.1)
	hqqs.SetObjectiveCompleted(70)	
	hqqs.SetStage(80)
	hqqs.SetObjectiveDisplayed(80)	
EndEvent

dcur_hq_QuestScript Property hqqs Auto