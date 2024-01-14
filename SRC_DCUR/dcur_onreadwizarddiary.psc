Scriptname dcur_onreadwizarddiary extends ObjectReference  

Quest Property dcur_cursedcollarquest  Auto  

event onread()
	dcur_cursedcollarquestscript ccqs = None
	ccqs = Game.GetFormFromFile(0x000058CC, "Deviously Cursed Loot.esp") as dcur_cursedcollarquestscript
	if ccqs == None 
		debug.notification("DCUR Critical Error - couldn't load library.")
	endif	
	if ccqs.cursedcollarquestrunning && ccqs.GetStage() == 20		
		ccqs.SetNextStage()		
		ccqs.Alias_dcur_alias_magechest_roadsideruins.GetReference().disable(true)
	endif	
endevent