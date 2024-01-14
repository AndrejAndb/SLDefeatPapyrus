Scriptname dcur_restraintspellScript extends activemagiceffect  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs Auto 

Float onhitcooldown

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Actor t = akTarget		
	if !t || t.WornHasKeyword(libs.zad_DeviousHeavyBondage) || t.GetActorBase().IsUnique() || t.GetActorBase().IsEssential() || t.GetActorBase().IsProtected() 
		return
	EndIf		
	t.StopCombat()
	t.StopCombatAlarm()
	t.SheatheWeapon()	
	float HP = t.GetAV("Health")
	Utility.Wait(1)	
	; don't execute if the mob died from the blow or has life draining effects on them		
	If t.IsDead() || t.GetAV("Health") < HP		
		; we shorten the cooldown in this case, though
		onhitcooldown = Utility.GetCurrentRealTime() + 20
		self.Dispel()
		return
	EndIf			
	if t != dclibs.libs.playerref		
		dclibs.SurrenderEvilPerson(t)		
	endif
	debug.trace("[DCUR] Restraint Spell triggered on " + t.GetLeveledActorBase().GetName())
	dclibs.strip(t, false)
	int theme =  Utility.RandomInt(1, dcumenu.ThemeList.Length - 1)	
	; basic restraints always get equipped
	dclibs.dcur_equiprandomarmbinder(t, theme)
	dclibs.dcur_equiprandomballgag(t, theme)	
	dclibs.dcur_equiprandomboots(t, theme)
	Int i = Utility.RandomInt()
	If i < 20
		dclibs.dcur_equiprandomsuit(t, theme)	
		dclibs.dcur_equiprandomcollar(t, theme)
		dclibs.dcur_equiprandomgloves(t, theme)
	elseif i < 40
		dclibs.dcur_equiprandomcollarharness(t, theme)		
	elseif i < 60
		dclibs.dcur_equiprandombelt(t, theme)		
		dclibs.dcur_equiprandombra(t, theme)		
	EndIf
EndEvent