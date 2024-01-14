Scriptname dcur_restraintsonhitEff extends activemagiceffect  

zadlibs Property libs Auto 
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  

GlobalVariable Property dcur_dollmakerweapon_cooldown Auto
Outfit Property dcur_outfitnaked Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)	
	Actor t = akTarget		
	if !t || !t.HasKeyword(dcumenu.ActorTypeNPC) || t.GetLeveledActorBase().GetSex() != 1 || t.WornHasKeyword(libs.zad_Lockable) || t.GetActorBase().IsUnique() || t.GetActorBase().IsEssential() || t.GetActorBase().IsProtected() || t.IsChild() || libs.IsAnimating(t) || t.IsDead()		
		return
	EndIf				
	; we got a valid target, check if the cooldown is expired.	
	Float currentRealTime = Utility.GetCurrentRealTime()
	Float cooldownTime = dcur_dollmakerweapon_cooldown.GetValue()
	if ( currentRealTime > cooldownTime)	
		; cooldown expired, reset and continue 
		dcur_dollmakerweapon_cooldown.SetValue(currentRealTime + 10.0)
	elseif currentRealTime < 10.0
		; game freshly loaded, reset cooldown from previous game and continue
		dcur_dollmakerweapon_cooldown.SetValue(currentRealTime + 10.0)
	elseif cooldownTime - currentRealTime > 11.0 
		; game loaded from previous save, reset cooldown and continue
		dcur_dollmakerweapon_cooldown.SetValue(currentRealTime + 10.0)
	else 
		; cooldown not expired
 		return
 	endif
 	debug.trace("[DCUR] Dollmaker weapon spell triggered on " + t.GetLeveledActorBase().GetName())	
	; push her out of melee range and avoid her getting hit again too soon.
	; Version 9: This effect can mess up the game, so it's disabled.
	;libs.PlayerRef.PushActorAway(t, 15.0)		
	float HP = t.GetAV("Health")
	Utility.Wait(2)	
	; don't execute if the mob died from the blow or has life draining effects on them		
	If t.IsDead() || t.GetAV("Health") < HP		
		; we shorten the cooldown in this case, though
		dcur_dollmakerweapon_cooldown.SetValue(Utility.GetCurrentRealTime())
		self.Dispel()
		return
	EndIf				
	int theme =  Utility.RandomInt(1, dcumenu.ThemeList.Length - 1)	
	If Utility.RandomInt() < 50
		; non-debilitating devices		
		dclibs.EquipSet(t, Theme, MinDifficulty = 0, MaxDifficulty = 69)
		;dclibs.strip(t, false)
		t.SetOutfit(dcur_outfitnaked)
		return
	EndIf	
	t.StopCombat()
	t.StopCombatAlarm()
	t.SheatheWeapon()			
	; we equip harsh bindings, so make them surrender.
	if t != dclibs.libs.playerref		
		dclibs.SurrenderEvilPerson(t)		
	endif	
	;dclibs.strip(t, false)		
	t.SetOutfit(dcur_outfitnaked)
	If Utility.RandomInt() < 50
		dclibs.EquipSetPunishingBondage(t, Theme)	
		return
	EndIf
	dclibs.EquipSetBindAndGag(t, Theme)		
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
