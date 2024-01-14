Scriptname dcur_prison_receptiondoorScript extends ObjectReference  

dcur_prisonQuestScript Property pqs Auto

Event OnActivated(ObjectReference akActionRef)
	If self.IsLocked()
		pqs.Libs.Notify("This metal jail door is fitted with a high security lock. It's opened only when admitting or releasing prisoners.", messagebox = true)
	EndIf
EndEvent
