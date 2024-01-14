Scriptname dcur_prison_esc_unocccellTrigger extends ObjectReference  

dcur_prisonQuestScript Property pqs Auto

Event OnTriggerEnter(ObjectReference akActionRef)
	pqs.OnUnoccupiedCellEnterTrigger()
EndEvent
