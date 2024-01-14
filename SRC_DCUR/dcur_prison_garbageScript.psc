Scriptname dcur_prison_garbageScript extends ObjectReference  

dcur_prisonQuestScript Property pqs Auto

Event OnActivate(ObjectReference akActionRef)
	if akActionRef != Game.GetPlayer()
		return
	EndIf
	pqs.GarbageOnActivate(self)
EndEvent