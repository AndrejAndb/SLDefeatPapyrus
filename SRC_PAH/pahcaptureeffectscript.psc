Scriptname PAHCaptureEffectScript extends activemagiceffect  

PAHCore Property PAH Auto
Faction Property PAHCleaned Auto
Faction Property NoEnslave Auto
Faction Property PAH_CanBeCaptured Auto
Faction Property CaptiveFaction Auto
Faction Property PAHHasBeenPlayerSlaveFaction Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	if PAH.GetSlave(akTarget) != None
		return
	endif

	if !akTarget.IsInFaction(PAHCleaned) && !akTarget.IsInFaction(NoEnslave) && (akTarget.IsInFaction(PAH_CanBeCaptured) || akTarget.IsInFaction(CaptiveFaction) || akTarget.IsInFaction(PAHHasBeenPlayerSlaveFaction))
	;	PAH.clonifier.StartCloning(akTarget)
		PAH.Capture(akTarget)
	endif

	if (akTarget.GetActorValuePercentage("Health") <= 0.25) && !akTarget.IsInFaction(NoEnslave)
	;	DoCapture(akTarget)
		PAH.Capture(akTarget)
	endif		
EndEvent

Function DoCapture(Actor captive)
	if !captive.IsInFaction(PAHCleaned)
		if PAH.clonifier.GetClone(captive) == None
			;# clonifier not ready - return
			return
		else
			captive = PAH.clonifier.SwitchClone(captive)
			if captive.GetBaseAv("Stamina") > captive.GetBaseAv("Magicka")
				captive.DamageAv("Stamina", 10000)
			else
				captive.DamageAv("Magicka", 10000)
			endif	
			captive.DamageAv("Health", captive.GetBaseAv("Health") * 0.75)
		endif
	endif

	PAH.AddSlave(captive)
EndFunction