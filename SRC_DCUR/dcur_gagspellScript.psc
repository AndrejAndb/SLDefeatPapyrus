Scriptname dcur_gagspellScript extends activemagiceffect  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs Auto 

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Actor t = akTarget
	if t != dclibs.libs.playerref		
		t.StopCombat()
		t.StopCombatAlarm()
		t.SheatheWeapon()
	endif
	debug.trace("[DCUR] Gag Spell triggered on " + t.GetLeveledActorBase().GetName())
	dclibs.dcur_equiprandomgag(t, dcumenu.equiptheme)
EndEvent