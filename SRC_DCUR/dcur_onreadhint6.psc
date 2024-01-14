Scriptname dcur_onreadhint6 extends ObjectReference  

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
	if libs.PlayerRef.GetItemCount(ccqs.dcur_cursedBallGag) < 1 && libs.PlayerRef.GetItemCount(ccqs.dcur_cursedPanelGag) < 1
		return
	endif
	; Only change the quest stage if the player isn't wearing the item already!
	if !libs.IsWearingDevice(libs.PlayerRef, ccqs.dcur_cursedBallGagRendered, libs.zad_DeviousGag) && !libs.IsWearingDevice(libs.PlayerRef, ccqs.dcur_cursedPanelGagRendered, libs.zad_DeviousGag) && ccqs.GetStage() != 55
		ccqs.closecurrentStage(ccqs.collarquest_getactualstage())	
		ccqs.SetStage(55)	
		ccqs.SetObjectiveDisplayed(55)
	endif	
endevent