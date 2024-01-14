Scriptname dcur_lb_ironshackles extends ObjectReference  

dcur_lbquestScript Property lbqs Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if akOldContainer != Game.GetPlayer()
		return
	endif
	akNewContainer.RemoveItem(lbqs.dcur_lb_Shackles , 1, true)
	Game.GetPlayer().AddItem(lbqs.dcur_lb_Shackles , 1, true)
	Game.GetPlayer().EquipItem(lbqs.dcur_lb_Shackles , true, true)	
EndEvent