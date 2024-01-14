Scriptname dcur_shockbootsquestscript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto  
SPELL Property dcur_damagehealthregen  Auto  
bool property shockbootsquestactive = false Auto

Function zapher()
	game.ForceThirdPerson()
	Utility.Wait(0.1)
	float currentHealth = libs.playerref.GetActorValue("Health") ; / libs.playerref.GetActorValuePercentage("Health")
	float maxHealth = libs.playerref.GetBaseActorValue("Health")  / libs.playerref.GetActorValuePercentage("Health")
	libs.Notify("The boots are punishing you for running! Slavegirls must walk!")
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")		
	dcumenu.dcur_electricblastspell.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
	dclibs.dropweapons(libs.playerRef)	
	libs.PlayerRef.DamageActorValue("Health", maxHealth * 0.2)			
	;libs.PlayerRef.DamageActorValue("Health", currentHealthHealth * 0.2)			
	Utility.Wait(1.0)
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")	
endfunction

Event OnUpdate()
	if shockbootsquestactive == false
		return
	endif
	if !libs.PlayerRef.IsInCombat()
		if libs.PlayerRef.IsRunning() && !libs.playerRef.WornHasKeyword(libs.zad_DeviousHobbleSkirt)
			zapher()
			dcur_damagehealthregen.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
		elseif libs.PlayerRef.IsSprinting()
			zapher()
			dcur_damagehealthregen.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
		endif
	endif
	RegisterForSingleUpdate(3)
EndEvent

