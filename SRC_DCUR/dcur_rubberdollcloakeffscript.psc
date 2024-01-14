Scriptname dcur_rubberdollcloakeffscript extends activemagiceffect  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
dcur_rubberdollquestscript Property rdqs Auto
dcur_clocktickScript Property cts Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)				
	if !cts.rapemutex && !dclibs.gangbangmutex			
		cts.rapemutex = True
		if dclibs.TestRapist(akTarget)									
			cts.lastrape = Utility.GetCurrentGameTime()
			dclibs.dcur_detectioncloakhitlist.Revert()			
			dclibs.dcur_detectioncloakhitlist.AddForm(akTarget)
			if dcumenu.debuglogenabled	
				debug.trace("[DCUR] - Proximity rape started with " + akTarget.GetLeveledActorBase().GetName())
			endif
			dclibs.GangBang(fullscene = false, origin = dclibs.origin_proxyrape)
		else
			cts.rapemutex = False
		endif
	endif
EndEvent