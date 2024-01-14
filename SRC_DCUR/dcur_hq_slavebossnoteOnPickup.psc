Scriptname dcur_hq_slavebossnoteOnPickup extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	If hqqs.GetStage() != 20
		return
	Endif
	Utility.Wait(0.1)
	hqqs.libs.notify("You find a note on the slaver:\n\n'As for tomorrow's delivery, you are to take her to our safehouse in Riften. Make sure she is properly restrained when you transport her. Unlike the last girl who managed to escape her bonds and run off. If she escapes, I will charge you personally for the loss! And this one is a grand prize, she is worth a lot!\nAnd lock her in a chastity belt, too. I don't want your stupid crew get the wrong ideas when they handle her. They can spend their payment on whores in Riften, but nobody is to touch the girl! We don't sell used goods.'", true)
	Utility.Wait(0.1)
	hqqs.libs.notify("'When you have locked her up, send the keys to our safehouse with a separate courier, so she can't steal them or seduce the guards. Better safe than sorry!'", true)
	int i = Utility.RandomInt(9,14)		
	debug.trace("[DCUR] HQ: Setting office key drop to chest no. " + i)	
	(hqqs.GetAlias(i) As ReferenceAlias).GetReference().AddItem(hqqs.dcur_hq_slaveofficekey, 1)	
	hqqs.alias_ref_dcur_hq_bosschest.GetReference().AddItem(hqqs.dcur_hq_ledger, 1)
	hqqs.SetObjectiveCompleted(20)	
	hqqs.SetStage(30)
	hqqs.SetObjectiveDisplayed(30)	
EndEvent

dcur_hq_QuestScript Property hqqs Auto