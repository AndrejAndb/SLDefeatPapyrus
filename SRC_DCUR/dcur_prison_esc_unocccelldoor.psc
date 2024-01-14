Scriptname dcur_prison_esc_unocccelldoor extends ObjectReference  

dcur_prisonQuestScript Property pqs Auto

Event OnActivate(ObjectReference akActionRef)	
	pqs.OnUnoccupiedCellDoorActive()
EndEvent