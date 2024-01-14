Scriptname dcur_leon_playerrefscript extends ReferenceAlias  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
dcur_leon_enslaveScript Property leqs Auto
zadlibs Property libs  Auto  

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	If leqs.GetStage() == 120
		Actor pl = libs.playerref
		If akBaseObject == leqs.dcur_leon_boots
			libs.notify("You have equipped a pair of slave boots.")
			leqs.SetObjectiveCompleted(121)
		Endif
		If akBaseObject == leqs.dcur_leon_npiercings
			libs.notify("You have equipped a pair of nipple piercings.")
			leqs.SetObjectiveCompleted(123)
		Endif
		If akBaseObject == leqs.dcur_leon_vpiercings
			libs.notify("You have equipped a vaginal piercing.")
			leqs.SetObjectiveCompleted(124)
		Endif
		If akBaseObject == leqs.dcur_leon_rubbergloves
			libs.notify("You have equipped a pair of rubber gloves.")
			leqs.SetObjectiveCompleted(122)
		Endif
		If libs.IsWearingDevice(pl, leqs.dcur_leon_boots, libs.zad_DeviousBoots) == 1 && libs.IsWearingDevice(pl, leqs.dcur_leon_npiercings, libs.zad_DeviousPiercingsNipple) == 1 && libs.IsWearingDevice(pl, leqs.dcur_leon_vpiercings, libs.zad_DeviousPiercingsVaginal) == 1 && libs.IsWearingDevice(pl, leqs.dcur_leon_rubbergloves, libs.zad_DeviousGloves) == 1 
			leqs.SetStage(130)
			leqs.SetObjectiveDisplayed(130)
		Endif
	Endif
EndEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If leqs.GetStage() == 200
		If akBaseItem == dcumenu.dcur_pinkArmbinder
			libs.notify("You found Melissa's pink armbinder!")
			leqs.SetStage(210)
			leqs.SetObjectiveDisplayed(210)
			leqs.SetObjectiveCompleted(200)
		Endif
	Endif
EndEvent