Scriptname dcur_lb_armbinderScript extends zadRestraintScript

dcur_lbquestScript Property lbqs Auto
dcur_mcmconfig Property dcumenu  Auto  

Function SendSignal()	
	lbqs.removed_Armbinder = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)	
	;SendSignal()
	parent.OnUnequipped(akActor)
endfunction

function OnRemoveDevice(actor akActor)
    self.SendSignal()    
EndFunction
