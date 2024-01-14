Scriptname dcur_detectioncloakapplyEffectScript extends activemagiceffect  

;dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  

GlobalVariable property dcur_playerisdetectedbycloak Auto
FormList Property dcur_detectioncloakhitlist Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Actor t = akTarget
	if t != dclibs.libs.playerref
		if !dcur_detectioncloakhitlist.HasForm(t)	
			dcur_detectioncloakhitlist.addForm(t)			
			t.StopCombat()
			t.StopCombatAlarm()
			t.SheatheWeapon()
			t.AddToFaction(dclibs.dcur_PacifiedEvilPeopleFaction)
			t.SetFactionRank(dclibs.dcur_PacifiedEvilPeopleFaction, 100)	
		endif
	endif
EndEvent