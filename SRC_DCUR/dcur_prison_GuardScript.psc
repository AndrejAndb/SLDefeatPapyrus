Scriptname dcur_prison_GuardScript extends ReferenceAlias  

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)			
	if akAggressor == Game.GetPlayer()
		GetActorReference().StopCombatAlarm()
		(GetOwningQuest() As dcur_prisonQuestScript).OnPlayerHitGuard()
	EndIf
EndEvent
