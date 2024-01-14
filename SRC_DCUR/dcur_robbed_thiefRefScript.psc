Scriptname dcur_robbed_thiefRefScript Extends ReferenceAlias

dcur_robbed_QuestScript Property roqs Auto

Event OnActivate(ObjectReference akActionRef)
	If akActionRef != Game.GetPlayer()
		return
	EndIf
	roqs.FoundThief()
EndEvent
