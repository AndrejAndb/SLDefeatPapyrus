Scriptname dcur_cursedCollarScript extends zadRestraintScript  

dcur_cursedcollarquestscript Property ccqs Auto
int escapeattempts = 0
spell shockeffect
dcur_mastercontrollerscript Property mcs Auto
dcur_mcmconfig Property dcumenu Auto

bool Function RemoveDeviceWithKey(actor akActor = none, bool destroyDevice=false)
	if akActor == none
		akActor = libs.PlayerRef
	EndIf
	if akActor.GetItemCount(deviceKey)>=1				
		mcs.isworn_cursedcollar = 0
		RemoveDevice(akActor, destroyDevice = true)
		ccqs.terminatequest()		
		return true
	else		
		libs.Notify("The Cursed Slave collar does not have an accessible lock.", messageBox=true)
		return false
	Endif
EndFunction

Function equipfullset()
	SexLabFramework SexLab  = None
	SexLab = Game.GetFormFromFile(0x0000D62, "SexLab.esm") as SexLabFramework
	mcs.dclibs.strip(libs.playerref, true)
	If !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousPlugVaginal)
		libs.equipDevice(libs.PlayerRef, libs.plugSoulgemVag, libs.plugSoulgemVagRendered, libs.Zad_Deviousplugvaginal, skipevents = false, skipmutex = true)
	endif
	If !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousPlugAnal)
		libs.equipDevice(libs.PlayerRef, libs.plugSoulgemAn, libs.plugSoulgemAnRendered, libs.Zad_Deviouspluganal, skipevents = false, skipmutex = true)		
	endif
	if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt)    
		libs.equipDevice(libs.PlayerRef, libs.beltPadded, libs.beltPaddedRendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)
	endif
	if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBra)
		libs.equipDevice(libs.PlayerRef, libs.braPadded, libs.braPaddedRendered, libs.Zad_DeviousBra, skipevents = false, skipmutex = true)	
	endif
	if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousGag)
		libs.equipDevice(Libs.PlayerRef, libs.gagBall, libs.gagBallRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)
	endif
	if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousLegCuffs)
		libs.equipDevice(libs.PlayerRef, libs.CuffsPaddedLegs, libs.CuffsPaddedLegsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
	endif
	if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousArmCuffs)
		libs.equipDevice(libs.PlayerRef, libs.CuffsPaddedArms, libs.CuffsPaddedArmsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)			
	endif
	if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBlindfold)
		libs.equipDevice(libs.PlayerRef, libs.blindfold, libs.blindfoldRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)			
	endif
	if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHeavyBondage)
		libs.equipDevice(libs.PlayerRef, libs.Armbinder, libs.ArmbinderRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
	endif
EndFunction

Function Punish()
	escapeattempts += 1
	float currentHealth = libs.playerref.GetActorValuePercentage("Health") * 100		
	shockeffect = ccqs.dcur_electricblastspell
	if escapeattempts == 1
		Utility.Wait(0.1)
		Game.ForceThirdPerson()
		libs.Notify("You hear the collar's voice in your head: 'Don't you dare tampering with me!'", messageBox=true)
		ShockEffect.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")		
		libs.PlayerRef.DamageActorValue("Health",  currentHealth* 0.33)		
		Utility.Wait(2.0)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")
	endif
	if escapeattempts == 2
		Utility.Wait(0.1)
		Game.ForceThirdPerson()
		libs.Notify("You hear the collar's voice in your head: 'It seems the last lesson wasn't painful enough for you. Take this!'", messageBox=true)
		ShockEffect.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")		
		Utility.Wait(1)
		ShockEffect.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
		libs.PlayerRef.DamageActorValue("Health",  currentHealth* 0.5)		
		Utility.Wait(2.0)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")
	endif
	if escapeattempts == 3
		Utility.Wait(0.1)
		Game.ForceThirdPerson()
		libs.Notify("You hear the collar's voice in your head: 'It seems you will have to learn the hard way that you cannot defy me. If you cannot keep your hands under control, they will be locked away!'", messageBox=true)
		ShockEffect.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")		
		Utility.Wait(1)
		ShockEffect.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
		libs.PlayerRef.DamageActorValue("Health",  currentHealth* 0.75)		
		Utility.Wait(2.0)		
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")
		if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHeavyBondage)
			libs.equipDevice(libs.PlayerRef, libs.Armbinder, libs.ArmbinderRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)			
		endif
	endif
	if escapeattempts > 3
		Utility.Wait(0.1)
		Game.ForceThirdPerson()
		libs.Notify("You hear the collar's voice in your head: 'Right, it seems you are a truly disobedient type. I will just keep your attention tied up with something else then. Literally.'", messageBox=true)
		ShockEffect.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")		
		Utility.Wait(1)
		ShockEffect.remoteCast(libs.playerRef, libs.playerRef, libs.playerRef)
		libs.PlayerRef.DamageActorValue("Health",  currentHealth* 0.75)		
		Utility.Wait(2.0)		
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")
		equipfullset()
	endif
Endfunction

Function OnEquippedPost(actor akActor)
	if mcs.isworn_cursedcollar == 0
		escapeattempts = 0	
		debug.trace("Starting Cursed Collar quest")
		ccqs.nofasttravel = dcumenu.collarquestnofasttravel
		ccqs.Start()
		ccqs.SetStage(10)
		ccqs.SetObjectiveDisplayed(10)		
		ccqs.cursedcollarquestrunning = true	
		ccqs.lastminorevent = Utility.GetCurrentGameTime()	
		; hand event control to the quest object		
		mcs.isworn_cursedcollar = 1
	endif
EndFunction