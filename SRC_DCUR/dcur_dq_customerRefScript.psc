Scriptname dcur_dq_customerRefScript extends ReferenceAlias  

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)	
	If dqqs.GetStage() == 50
		Actor girl = GetActorReference()
		dqqs.dcumenu.dcur_electricblastspell.remoteCast(girl, girl, girl)
		Debug.SendAnimationEvent(girl, "BleedOutStart")		
		Utility.Wait(1)
		dqqs.dcur_ref_dq_customerStop.Clear()
		dqqs.dcur_ref_dq_customerFollow.ForceRefTo(GetReference())
		Debug.SendAnimationEvent(girl, "BleedOutStop")		
		dqqs.libs.notify(dqqs.GirlName + " will offer no further resistance!")
	EndIf	
	If dqqs.GetStage() != 20
		return
	EndIf
	if (akSource as Weapon) && (akSource as Weapon) == dqqs.dcur_dq_zapper
		debug.trace("[DCUR] OnHit Rubber Arears Girl Success")
		dqqs.dcur_ref_dq_customerHit.ForceRefTo(GetReference())
		dqqs.dcur_ref_dq_customerHit.GetActorReference().EvaluatePackage()
		dqqs.zapher(GetActorReference())
	EndIf	
EndEvent

dcur_dq_QuestScript Property dqqs Auto