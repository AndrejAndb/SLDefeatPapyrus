Scriptname dcur_spankquest_Player extends ReferenceAlias  

dcur_spankQuestScript Property spqs Auto

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	spqs.OnHitPlayer()
EndEvent
