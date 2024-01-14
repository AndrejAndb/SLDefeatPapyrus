Scriptname dcur_lb_leatherbindingsScript extends ObjectReference  

dcur_lbquestScript Property lbqs Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if akOldContainer != Game.GetPlayer()
		return
	endif
	akNewContainer.RemoveItem(lbqs.dcur_lb_leatherbindings , 1, true)
	Game.GetPlayer().AddItem(lbqs.dcur_lb_leatherbindings , 1, true)
	Game.GetPlayer().EquipItem(lbqs.dcur_lb_leatherbindings , true, true)	
EndEvent