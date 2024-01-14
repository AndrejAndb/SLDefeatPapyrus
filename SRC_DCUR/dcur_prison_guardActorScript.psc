Scriptname dcur_prison_guardActorScript extends Actor

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)			
	if akAggressor == Game.GetPlayer()
		StopCombatAlarm()
		pqs.OnPlayerHitGuard()
	EndIf
EndEvent

dcur_prisonQuestScript Property pqs Auto
