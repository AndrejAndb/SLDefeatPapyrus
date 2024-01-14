Scriptname dcur_pacifycloakapplyEffectScript extends activemagiceffect  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
FormList Property dcur_detectioncloakhitlist Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Actor t = akTarget
	if t != dclibs.libs.playerref
		if !dcur_detectioncloakhitlist.HasForm(t)	
			t.StopCombat()
			t.StopCombatAlarm()
			t.SheatheWeapon()
			t.AddToFaction(dclibs.dcur_PacifiedEvilPeopleFaction)
			t.SetFactionRank(dclibs.dcur_PacifiedEvilPeopleFaction, 100)	
			dclibs.dcur_detectioncloakhitlist.addForm(t)	
		endif
	endif
EndEvent