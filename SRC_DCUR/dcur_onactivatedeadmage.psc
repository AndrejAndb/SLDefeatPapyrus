Scriptname dcur_onactivatedeadmage extends ObjectReference  

event OnActivate(ObjectReference akRef)
	dcur_cursedcollarquestscript ccqs = None
	ccqs = Game.GetFormFromFile(0x000058CC, "Deviously Cursed Loot.esp") as dcur_cursedcollarquestscript	
	ccqs.Alias_dcur_ddd_prisondoor.GetReference().lock()
	ccqs.Alias_dcur_ddd_prisondoor.GetReference().SetLockLevel(255)
	ccqs.Alias_dcur_alias_ddd_jaildoor.GetReference().Lock()
	ccqs.Alias_dcur_alias_ddd_jaildoor.GetReference().SetLockLevel(255)
	ccqs.Alias_dcur_alias_ddd_sheogorath.GetReference().enable(true)	
	ccqs.Alias_dcur_alias_collarquesttrapdoor.GetReference().disable(false)
	ccqs.SetObjectiveCompleted(90)
	ccqs.SetStage(95)
	ccqs.SetObjectiveDisplayed(95, true)
endevent
