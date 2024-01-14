Scriptname dcur_twac_celldoor_autoclose extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)		
	RegisterForSingleUpdate(5)	
EndEvent

Event OnUpdate()
	self.SetOpen(False)
EndEvent