Scriptname PahE_teleport_Slave extends activemagiceffect

PAH_MCM Property Config Auto

event OnEffectStart ( Actor Target, Actor Caster )
;	target == Config.currentSlave.GetActorRef()
	Target.MoveTo(Game.GetPlayer())
	
EndEvent