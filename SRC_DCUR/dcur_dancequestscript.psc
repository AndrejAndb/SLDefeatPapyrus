Scriptname dcur_dancequestscript extends Quest  

Actor spectator
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
GlobalVariable property dcur_scquest_isdancing Auto
ReferenceAlias Property dcur_dancer1  Auto  
ReferenceAlias Property dcur_dancer2  Auto  
ReferenceAlias Property dcur_dancespectator  Auto  

Function DanceWrapper(actor a)
	dcur_scquest_isdancing.SetValueInt(1)
	dcur_dancespectator.ForceRefTo(a)
	if dcumenu.installed_SerialStrip && !libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		spectator = a
		RegisterForModEvent("SerialStripStop", "OnSSEnd")		
		dclibs.serialstrip(libs.playerref)
	else
		if (libs.playerref.GetWornForm(0x00000004) != None)
			dclibs.strip(libs.playerref, false)
		endif
		dance(a)
	endif
EndFunction

Function Dance(actor a)
	int addarousal = Utility.RandomInt(0, 60)
	libs.Aroused.UpdateActorExposure(a, addarousal)	
	Game.ForceThirdPerson()
	Game.SetPlayerAIDriven(True)
	dcur_dancer1.ForceRefTo(libs.playerref)	
	RegisterForSingleUpdate(30)
	libs.playerref.EvaluatePackage()		
	Utility.Wait(3)
	ArousalMessage(a)		
EndFunction

Event OnSSEnd(Form sender, Form a)	
	dance(spectator)	
	UnRegisterForModEvent("SerialStripStop")		
EndEvent

Function ArousalMessage(actor a)
	int npcarousal = libs.aroused.GetActorArousal(a) 
	bool actorgender = a.GetLeveledActorBase().GetSex()
	if npcarousal < 25
		if actorgender == 0
			libs.notify(a.GetLeveledActorBase().GetName() + " glances casually at you and returns to what he was doing.")
		else
			libs.notify(a.GetLeveledActorBase().GetName() + " glances casually at you and returns to what she was doing.")
		endif
	elseif npcarousal < 50
		libs.notify(a.GetLeveledActorBase().GetName() + " watches your moves with some interest.")
	elseif npcarousal < 75
		libs.notify(a.GetLeveledActorBase().GetName() + " stares at your bouncing breasts and swinging hips.")
	elseif npcarousal < 90
		if actorgender == 0
			libs.notify(a.GetLeveledActorBase().GetName() + " is breathing heavily while keeping his eyes locked on you.")
		else
			libs.notify(a.GetLeveledActorBase().GetName() + " is breathing heavily while keeping her eyes locked on you.")			
		endif	
	endif	
EndFunction

Event OnUpdate()	
	dcur_dancer1.Clear()
	dcur_dancespectator.Clear()
	Game.SetPlayerAIDriven(False)
	Debug.SendAnimationEvent(libs.playerref, "IdleForceDefaultState")			
	dcur_scquest_isdancing.SetValueInt(0) 		
	libs.playerref.EvaluatePackage()	
	If Utility.RandomInt(0,99) < dcumenu.solicitationdancerapechance && dcumenu.sexGloballyEnabled 
		if dclibs.TestRapist(spectator)
			libs.notify("Your performance was a lot more successful than you thought...")			
			SendModEvent("dcur-triggerrape")
			;dclibs.GangBang(fullscene = true, origin = dclibs.origin_cloak)
		endif
	endif
EndEvent

