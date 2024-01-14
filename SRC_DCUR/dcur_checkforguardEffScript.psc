Scriptname dcur_checkforguardEffScript extends activemagiceffect  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
ReferenceAlias Property dcur_pi_witness Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Actor t = akTarget
	if t != dclibs.libs.playerref		
		if akTarget.IsGuard() && t.GetDistance(dclibs.libs.playerref) < 1000
			dcur_pi_witness.ForceRefTo(akTarget)
		elseif !akTarget.IsGuard() && !dcur_pi_witness.GetActorReference() && t.GetDistance(dclibs.libs.playerref) < 1000
			dcur_pi_witness.ForceRefTo(akTarget)
		endif
	endif
EndEvent
