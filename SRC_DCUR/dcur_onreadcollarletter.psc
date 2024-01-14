Scriptname dcur_onreadcollarletter extends ObjectReference  

Quest Property dcur_cursedcollarquest  Auto 

event onread()
	dcur_cursedcollarquestscript ccqs = None
	ccqs = Game.GetFormFromFile(0x000058CC, "Deviously Cursed Loot.esp") as dcur_cursedcollarquestscript		
	if ccqs == None 
		debug.notification("DCUR Critical Error - couldn't load library.")
	endif
	if ccqs.cursedcollarquestrunning && ccqs.GetStage() == 10		
		ccqs.SetNextStage()		
	endif
endevent
