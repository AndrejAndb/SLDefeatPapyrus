Scriptname dcur_self_lock extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)	
	If akActionRef == Game.GetPlayer() && !self.IsActivationBlocked()
		Game.DisablePlayerControls()
		RegisterForSingleUpdate(15)
		self.BlockActivation(True)		
	elseif self.IsActivationBlocked()
		self.BlockActivation(False)
	Endif	
EndEvent

Event OnUpdate()
	Game.EnablePlayerControls()
	self.Activate(Game.GetPlayer())	
EndEvent