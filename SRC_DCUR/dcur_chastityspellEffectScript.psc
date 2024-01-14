Scriptname dcur_chastityspellEffectScript extends activemagiceffect  

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
	debug.trace("[DCUR] Chastity Spell triggered on " + t.GetLeveledActorBase().GetName())
	dclibs.strip(t, false)
	int theme = 0
	if dcumenu.equiptheme == 0
		theme = Utility.RandomInt(1, dcumenu.ThemeList.Length - 1)
	Else
		theme = dcumenu.equiptheme
	EndIf
	dclibs.dcur_equiprandombelt(t, theme)
	dclibs.dcur_equiprandombra(t, theme)
	dclibs.dcur_equiprandomarmcuffs(t, theme)
	dclibs.dcur_equiplegcuffs(t, theme)
EndEvent