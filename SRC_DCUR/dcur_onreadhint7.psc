Scriptname dcur_onreadhint7 extends ObjectReference  

Quest Property dcur_cursedcollarquest  Auto  

event onread()	
	dcur_cursedcollarquestscript ccqs = None
	zadlibs libs = None
	ccqs = Game.GetFormFromFile(0x000058CC, "Deviously Cursed Loot.esp") as dcur_cursedcollarquestscript	
	libs = Game.GetFormFromFile(0x0000F624, "Devious Devices - Integration.esm") as zadLibs
	if ccqs == None || libs == None
		debug.notification("DCUR Critical Error - couldn't load library.")
	endif	
	; If the player didn't yet pick up the item, don't continue, or the chest will despawn!
	if libs.PlayerRef.GetItemCount(ccqs.dcur_cursedArmbinder) < 1
		return
	endif
	; Only change the quest stage if the player isn't wearing the item already!
	if !libs.IsWearingDevice(libs.PlayerRef, ccqs.dcur_cursedArmbinderRendered, libs.zad_DeviousHeavyBondage) && ccqs.GetStage() != 56
		ccqs.closecurrentStage(ccqs.collarquest_getactualstage())	
		ccqs.SetStage(56)	
		ccqs.SetObjectiveDisplayed(56)
	endif	
endevent
