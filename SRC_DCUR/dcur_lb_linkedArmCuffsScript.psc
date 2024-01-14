Scriptname dcur_lb_linkedArmCuffsScript extends ObjectReference  

dcur_lbquestScript Property lbqs Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if akOldContainer != Game.GetPlayer()
		return
	endif
	akNewContainer.RemoveItem(lbqs.dcur_lb_ArmCuffsLocked , 1, true)
	Game.GetPlayer().AddItem(lbqs.dcur_lb_ArmCuffsLocked , 1, true)
	Game.GetPlayer().EquipItem(lbqs.dcur_lb_ArmCuffsLocked , true, true)	
EndEvent