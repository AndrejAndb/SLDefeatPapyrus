Scriptname dcur_publicindecencyQuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto 
SexLabFramework Property SexLab  Auto  
slaFrameworkScr Property Aroused  Auto 
zadlibs Property libs  Auto  
ReferenceAlias Property dcur_pi_guard  Auto  
ReferenceAlias Property dcur_pi_witness Auto

Spell Property dcur_checkforguardFF Auto

sslThreadController Property SLcontroller Auto
Bool isVictim

GlobalVariable Property dcur_pi_timedbelt_lockstatus Auto
GlobalVariable Property dcur_pi_timedyoke_lockstatus Auto
GlobalVariable Property dcur_pi_timedcatsuit_lockstatus Auto

GlobalVariable Property dcur_dialogswitch Auto
GlobalVariable Property dcur_pi_userapedialogue Auto
GlobalVariable Property dcur_pi_usenakeddialogue Auto

Keyword Property dcur_kw_yokeofshame Auto

Float Property BeltLockedAt = 0.0 Auto
Float Property YokeLockedAt = 0.0 Auto
Float Property CatsuitLockedAt = 0.0 Auto

Actor witness
Bool Feedback
Bool property IsDetected Auto
Bool property IsDetectedByGuard Auto
Bool WasRaped

; these go into MCM 
Float locktime = 1.0 ; days
Float locktimeyoke = 1.0 ; days
Float locktimecatsuit = 3.0 ; days

Function LockCatsuit(Float min = 1.0, Float max = 2.0)
	locktimecatsuit = Utility.RandomFloat(min, max) ; pick a time between min and max days.
	dcur_pi_timedcatsuit_lockstatus.SetValueInt(1)
	CatsuitLockedAt = Utility.GetCurrentGameTime()	
EndFunction

Function UnLockCatsuit()
	dcur_pi_timedcatsuit_lockstatus.SetValueInt(0)	
EndFunction

Function LockBelt(Float min = 1.0, Float max = 2.0)
	locktime = Utility.RandomFloat(min, max) ; pick a time between min and max days.
	dcur_pi_timedbelt_lockstatus.SetValueInt(1)
	BeltLockedAt = Utility.GetCurrentGameTime()
	;RegisterForSingleUpdateGameTime(time)
EndFunction

Function UnLockBelt()
	dcur_pi_timedbelt_lockstatus.SetValueInt(0)	
EndFunction

Function LockYoke()
	locktimeyoke = Utility.RandomFloat(0.5, 1.5) ; pick a time.
	dcur_pi_timedYoke_lockstatus.SetValueInt(1)
	YokeLockedAt = Utility.GetCurrentGameTime()
	;RegisterForSingleUpdateGameTime(time)
EndFunction

Function UnLockYoke()
	dcur_pi_timedyoke_lockstatus.SetValueInt(0)	
EndFunction

Function CheckLockStatus()
	if (dcur_pi_timedbelt_lockstatus.GetValueInt() == 1) && ((Utility.GetCurrentGameTime() - BeltLockedAt) > locktime)
		UnLockBelt()
		libs.Notify("You hear the timer lock click open inside your chastity belt. You can probably remove it now. Or decide to wear it just a little bit longer...", messageBox = true)
	endif
	if (dcur_pi_timedyoke_lockstatus.GetValueInt() == 1) && ((Utility.GetCurrentGameTime() - YokeLockedAt) > locktimeyoke)	
		UnLockYoke()
		libs.Notify("You hear the timer lock click open inside your yoke. You can probably remove it now. Or decide to wear it just a little bit longer...", messageBox = true)
	endif
	if (dcur_pi_timedcatsuit_lockstatus.GetValueInt() == 1) && ((Utility.GetCurrentGameTime() - CatsuitLockedAt) > locktimecatsuit)	
		UnLockCatsuit()
		libs.Notify("You hear the timer lock click open inside your catsuit. You can probably remove it now. Or decide to wear it just a little bit longer...", messageBox = true)
	endif
EndFunction

Function init()
	RegisterForModEvent("AnimationStart", "SexLabAnimationStart")
	RegisterForModEvent("StageEnd", "SexLabStageEnd")
	RegisterForModEvent("AnimationEnd", "SexLabAnimationEnd")
	IsDetected = False
    IsDetectedByGuard = False
EndFunction

event onUpdate()
	CheckDetection()
EndEvent

Function CheckDetection()
	;libs.notify("Checking For Sex Detection!")
	; if !dcumenu.pienabled || libs.playerref.GetParentCell().IsInterior() || !dclibs.IsInCity() || dclibs.mcs.cts.suspendedstate || dclibs.mcs.isDCURQuestRunning || IsDetectedByGuard || dcumenu.shutdownmod || (dclibs.mcs.sqqs.GetStage() >= 10 && dclibs.mcs.sqqs.GetStage() < 30)				
		; If dcumenu.debuglogenabled && !IsDetectedByGuard && !IsDetected
			; debug.trace("[DCUR] Public Indecency not allowed to trigger.")
		; Endif
		; return
	; Endif
	Actor[] actors = SLcontroller.Positions
	Actor oldwitness
	int numactors = actors.Length
	int i = 0
	; let's check if one participant is a guard and abort if that's the case.
	While i < numactors
		If actors[i].IsGuard()
			Return
		Endif
		i += 1
	EndWhile		
	bool playerInScene = SLcontroller.HasPlayer	
	dcur_pi_guard.Clear()
	dcur_pi_witness.Clear()
	dcur_checkforguardFF.Cast(libs.playerref)
	Utility.Wait(2)
	if playerInScene && SLcontroller.Animation.IsSexual										
		If IsDetected
			; Player has been detected by a civilian already, let's see if she is getting spotted by a guard:
			oldwitness = witness
		Endif
		witness = dcur_pi_witness.GetActorReference()		
		Bool guard
		If witness
			guard = witness.IsGuard()		
			; Rule out ineliglible Actors:
			If !guard && !dclibs.TestRapist(witness)
				If dcumenu.debuglogenabled
					debug.trace("[DCUR] " + Witness + " is not allowed to trigger Public Indeceny.")
				Endif
				Return
			Endif
			If IsDetected && !guard
				witness = oldwitness
				return
			Endif
			If dcumenu.debuglogenabled
				debug.trace("[DCUR] " + Witness + " spotted the player having sex.")
			Endif
		elseif IsDetected
			witness = oldwitness
			return
		Endif
		if isVictim && !witness
			if feedback
				libs.notify("I am getting raped and no one is there to help me!")
			Endif			
			WasRaped = True
		elseif isVictim && witness && !guard
			if feedback || !IsDetected 
				libs.notify("I am getting raped but someone saw it!")
			Endif
			WasRaped = True
			IsDetected = True
		elseif isVictim && witness && guard
			if feedback || !IsDetectedByGuard
				libs.notify("I am getting raped and the guard is watching!")
			EndIf
			WasRaped = True
			IsDetectedByGuard = True
		Elseif numactors == 1 && !witness
			if feedback
				libs.notify("I hope nobody sees me playing with myself!")
			Endif
		elseif numactors == 1 && witness && !guard
			if feedback || !IsDetected 
				libs.notify("Someone just spotted me playing with myself!")									
			Endif
			IsDetected = True			
		elseif numactors == 1 && witness && guard
			if feedback || !IsDetectedByGuard
				libs.notify("That guard saw me putting my fingers into my pussy!")
			Endif
			dcur_pi_guard.ForceRefTo(witness)
			SLcontroller.EndAnimation()
		elseif numactors > 1 && !witness
			if feedback
				libs.notify("I hope nobody can see me getting banged in public!")
			Endif
		elseif numactors > 1 && witness && !guard
			if feedback || !IsDetected 
				libs.notify("Someone spotted me getting banged in public!")
			Endif
			IsDetected = True			
		elseif numactors > 1 && witness && guard
			if feedback || !IsDetectedByGuard
				libs.notify("A guard saw me getting banged in public!")
			Endif
			IsDetectedByGuard = True
			; interrupt the scene if it wasn't a sex attack (sex attacks do not need to be processed separately because they are considerd rapes)
			if !dclibs.gangbangmutex && !dcumenu.pidelayedarrest	
				SLcontroller.EndAnimation()
				dcur_pi_guard.ForceRefTo(witness)
			Endif
		endif						
	endif
	dcur_pi_witness.Clear()
EndFunction

Bool Function PICanExecute(bool displayfeedback = false)
	if IsDetectedByGuard
		If displayfeedback
			debug.trace("[DCUR] Public Indecency: Skipping detection, player already detected by guard.")
		Endif
		return false
	Endif
	if !dcumenu.pienabled
		If displayfeedback && dcumenu.debuglogenabled && !IsDetectedByGuard && !IsDetected
			debug.trace("[DCUR] Public Indecency not allowed to trigger. Reason: Disabled.")
		Endif
		return false
	Endif
	if dclibs.mcs.isDCURQuestRunning || (dclibs.mcs.sqqs.GetStage() >= 10 && dclibs.mcs.sqqs.GetStage() < 30)				
		If displayfeedback && dcumenu.debuglogenabled && !IsDetectedByGuard && !IsDetected
			debug.trace("[DCUR] Public Indecency not allowed to trigger. Reason: Conflicting quest.")
		Endif
		return false
	Endif
	if dclibs.mcs.cts.suspendedstate || (dcumenu.shutdownmod && !dclibs.gangbangmutex)
		If displayfeedback && dcumenu.debuglogenabled && !IsDetectedByGuard && !IsDetected
			debug.trace("[DCUR] Public Indecency not allowed to trigger. Reason: DCL Suspended.")
		Endif
		return false
	Endif
	If !dclibs.IsInCity() || libs.playerref.GetParentCell().IsInterior()
		If displayfeedback && dcumenu.debuglogenabled && !IsDetectedByGuard && !IsDetected
			debug.trace("[DCUR] Public Indecency not allowed to trigger. Reason: Not in City or not outdoors.")
		Endif
		Return False
	Endif
	If libs.playerref.WornHasKeyword(dcur_kw_yokeofshame)
		If displayfeedback && dcumenu.debuglogenabled && !IsDetectedByGuard && !IsDetected
			debug.trace("[DCUR] Public Indecency not allowed to trigger. Reason: Player is wearing yoke of shame.")
		Endif
		return False
	EndIf
	return true
EndFunction

event SexLabAnimationStart(string eventname, string argString, float argNum, form sender)					
	SLcontroller = SexLab.HookController(argString)	
	Actor victim = SexLab.HookVictim(argString)
	if (victim && victim == libs.playerref) || dclibs.gangbangmutex			
		isVictim = True		
		dcur_pi_userapedialogue.SetValueInt(1)		
	Else	
		isVictim = False
		dcur_pi_userapedialogue.SetValueInt(0)		
	endif
	Feedback = True
	IsDetected = False
	IsDetectedByGuard = False
	WasRaped = False
	; we allow setting of the default values in case the player switches on PI -during- a scene.
	If !PICanExecute(displayfeedback = true)
		return
	Endif
	if isVictim
		debug.trace("[DCUR] Public indecency: Player is victim.")
	else
		debug.trace("[DCUR] Public indecency: Player is having consensual sex.")
	EndIf
	RegisterForSingleUpdate(3)
endevent

event SexLabStageEnd(string eventname, string argString, float argNum, form sender)
	If !PICanExecute(displayfeedback = false)
		return
	Endif
	SLcontroller = SexLab.HookController(argString)	
	Feedback = False
	RegisterForSingleUpdate(3)
EndEvent

event SexLabAnimationEnd(string eventname, string argString, float argNum, form sender)
	If !IsDetectedByGuard && !IsDetected
		return
	Endif
	Feedback = False
	int bounty
	If dcumenu.pimisogyny
		bounty = dcumenu.pibounty * 2
	Else
		bounty = dcumenu.pibounty
	Endif
	If WasRaped && IsDetectedByGuard && dcumenu.pimisogyny
		debug.trace("[DCUR] Public indecency: Player is getting prosecuted by guard (raped).")
		if dclibs.gangbangmutex 
			dclibs.sexattackterminate = true
		endif
		witness.moveto(libs.playerref)
		libs.notify("A guard is going to prosecute you for public indecency even though you were raped!", messageBox = true)
		dcur_pi_guard.ForceRefTo(witness)
	ElseIf WasRaped && IsDetected && dcumenu.pimisogyny		
		If Utility.RandomFloat(0.0, 99.9) < dcumenu.picitizensreporttoguard
			debug.trace("[DCUR] Public indecency: Player is getting reported by citizen (raped).")
			Faction akFaction = witness.GetCrimeFaction()
			If akFaction
				if dclibs.gangbangmutex 
					dclibs.sexattackterminate = true
				endif
				akFaction.ModCrimeGold(bounty, false)
				libs.notify("Someone reported you to the guard for public indecency even though you were raped!", messageBox = true)				
			Else
				if dcumenu.debuglogenabled
					debug.trace("[DCUR] Public Indecency failed. Crime Faction could not be determined")
				EndIf
			Endif
		Endif
	Endif
	If !WasRaped && IsDetected
		If Utility.RandomFloat(0.0, 99.9) < dcumenu.picitizensreporttoguard
			debug.trace("[DCUR] Public indecency: Player is getting reported by citizen (consensual).")
			Faction akFaction = witness.GetCrimeFaction()
			If akFaction
				if dclibs.gangbangmutex 
					dclibs.sexattackterminate = true
				endif
				akFaction.ModCrimeGold(bounty, false)
				libs.notify("Someone reported you to the guard for public indecency!", messageBox = true)
			Else
				if dcumenu.debuglogenabled
					debug.trace("[DCUR] Public Indecency failed. Crime Faction could not be determined")
				EndIf
			Endif
		EndIf
	ElseIf !WasRaped && IsDetectedByGuard && dcumenu.pidelayedarrest
		debug.trace("[DCUR] Public indecency: Player is getting prosecuted by guard (consensual).")
		if dclibs.gangbangmutex 
			dclibs.sexattackterminate = true
		endif
		witness.moveto(libs.playerref)
		libs.notify("A guard is going to prosecute you for public indecency!", messageBox = true)
		dcur_pi_guard.ForceRefTo(witness)		
	Endif
	UnRegisterForUpdate()
EndEvent

Function CalcOutcome()
	; reset the naked dialogue selector to zero.
	dcur_pi_usenakeddialogue.SetValueInt(0)
	Float grandtotalweight = dcumenu.piarrestweight + dcumenu.pibeltweight + dcumenu.pifineweight + dcumenu.piletgoweight + dcumenu.pirapeweight + dcumenu.pitieupweight + dcumenu.piyokeweight + dcumenu.pichainharnessweight
	Float Select = 0.0	
	; Don't let her just go if misogeny is active
	If dcumenu.pimisogyny
		grandtotalweight -= dcumenu.piletgoweight
	EndIf
	dcur_dialogswitch.SetValueInt(1)						
	Select = Utility.RandomFloat(0.0, grandtotalweight)			
	if Select < dcumenu.piarrestweight
		dcur_dialogswitch.SetValueInt(1)
		return
	endIf
	Select = Select - dcumenu.piarrestweight	
	if Select < dcumenu.pibeltweight
		dcur_dialogswitch.SetValueInt(2)						
		return
	endIf
	Select = Select - dcumenu.pibeltweight		
	if Select < dcumenu.piyokeweight
		dcur_dialogswitch.SetValueInt(7)						
		return
	endIf
	Select = Select - dcumenu.piyokeweight	
	if Select < dcumenu.pichainharnessweight
		dcur_dialogswitch.SetValueInt(8)						
		return
	endIf
	Select = Select - dcumenu.pichainharnessweight
	if Select < dcumenu.pifineweight
		dcur_dialogswitch.SetValueInt(3)						
		return
	endIf	
	Select = Select - dcumenu.pifineweight
	if Select < dcumenu.pirapeweight
		dcur_dialogswitch.SetValueInt(4)						
		return
	endIf
	Select = Select - dcumenu.pirapeweight
	if Select < dcumenu.pitieupweight
		dcur_dialogswitch.SetValueInt(6)		
		return
	endIf
	Select = Select - dcumenu.pitieupweight	
	if Select < dcumenu.piletgoweight
		dcur_dialogswitch.SetValueInt(5)							
		return
	endIf	
	; sanity checks:
	; is already belted:
	If dcur_dialogswitch.GetValueInt() == 2 && libs.playerref.WornHasKeyword(libs.zad_DeviousBelt)
		If dcumenu.pirapeweight > 0
			dcur_dialogswitch.SetValueInt(4)
		Elseif dcumenu.pifineweight
			dcur_dialogswitch.SetValueInt(3)
		Else
			dcur_dialogswitch.SetValueInt(5)							
			return
		Endif
	EndIf
	; can't wear harness
	If dcur_dialogswitch.GetValueInt() == 8 && (libs.playerref.WornHasKeyword(libs.zad_DeviousHarness) || libs.playerref.WornHasKeyword(libs.zad_DeviousCollar))
		If dcumenu.pirapeweight > 0
			dcur_dialogswitch.SetValueInt(4)
		Elseif dcumenu.pifineweight
			dcur_dialogswitch.SetValueInt(3)
		Else
			dcur_dialogswitch.SetValueInt(5)							
			return
		Endif
	EndIf
	; is already restrained:
	If dcur_dialogswitch.GetValueInt() == 2 && libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		If !libs.playerref.WornHasKeyword(libs.zad_DeviousBelt)
			dcur_dialogswitch.SetValueInt(2)
		Elseif dcumenu.pirapeweight > 0
			dcur_dialogswitch.SetValueInt(4)
		Elseif dcumenu.pifineweight
			dcur_dialogswitch.SetValueInt(3)
		Else
			dcur_dialogswitch.SetValueInt(5)							
			return
		Endif
	EndIf
	; This shouldn't happen, but better safe than sorry.
	If dcumenu.pimisogyny && dcur_dialogswitch.GetValueInt() == 5
		dcur_dialogswitch.SetValueInt(4)
	Endif	
EndFunction