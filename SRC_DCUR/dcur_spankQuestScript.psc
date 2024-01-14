Scriptname dcur_spankQuestScript extends Quest  

ReferenceAlias Property SpankeeRef	Auto  
ReferenceAlias Property StorageCell  Auto  
ReferenceAlias Property SpankMe  Auto  
ReferenceAlias Property Kneel  Auto  
ReferenceAlias Property WhipPlayer  Auto  
ReferenceAlias Property LayFetal  Auto  
ReferenceAlias Property WhipperGirl  Auto  
ReferenceAlias Property DoNothing  Auto  
ReferenceAlias Property SpankMarker  Auto  
ReferenceAlias Property WhipperMarker  Auto  

Weapon Property dcur_prison_whip Auto

Sound Property dcur_sound_moan Auto

Actor Whipper
Actor Spankee
Form[] Stuff

Int Stage = 0
Bool SpankeeSubmits = True
Int Duration = 20

zadlibs Property libs Auto 
dcur_library Property dclibs Auto
dcur_mcmconfig Property dcumenu  Auto  

Function StartQuest()
	Stage = 0
	If StorageUtil.GetFormValue(libs.PlayerRef, "dcur_uss_whipper") != None
		Whipper = StorageUtil.GetFormValue(libs.PlayerRef, "dcur_uss_whipper") As Actor
		Whipper.AddItem(dcur_prison_whip, abSilent = True)
		WhipperMarker.GetReference().MoveTo(Whipper)
		WhipperMarker.GetReference().SetAngle(Whipper.GetPositionX(), Whipper.GetPositionY(), Whipper.GetPositionZ())
	Else
		Whipper = WhipperGirl.GetActorReference()
	EndIf	
	If StorageUtil.GetFormValue(libs.PlayerRef, "dcur_uss_spankee") != None
		Spankee = StorageUtil.GetFormValue(libs.PlayerRef, "dcur_uss_spankee") As Actor		
	Else 
		Spankee = libs.playerref
	EndIf
	SpankeeRef.ForceRefTo(Spankee)
	SpankeeSubmits = True
	If StorageUtil.GetIntValue(libs.PlayerRef, "dcur_uss_nosubmit") == 1
		SpankeeSubmits = False
	EndIf
	If StorageUtil.GetIntValue(libs.PlayerRef, "dcur_uss_duration") > 0
		Duration = StorageUtil.GetIntValue(libs.PlayerRef, "dcur_uss_duration")
	EndIf	
	If Spankee != libs.PlayerRef
		Stuff = dclibs.SexLab.StripActor(Spankee, none, DoAnimate = False, LeadIn = false)	
		while dclibs.hasAnyWeaponEquipped(Spankee)
			dclibs.stripweapons(Spankee)
		EndWhile
	EndIf	
	SpankMarker.GetReference().MoveTo(Spankee)
	SpankMarker.GetReference().SetAngle(Spankee.GetPositionX(), Spankee.GetPositionY(), Spankee.GetPositionZ())
	dclibs.Strip(Spankee, false)
	Utility.Wait(1)
	SpankActor()
EndFunction

Function EndQuest()
	If Whipper == WhipperGirl.GetActorReference()
		Whipper.moveto(StorageCell.GetReference())
	Else
		Whipper.RemoveItem(dcur_prison_whip, 1, abSilent = True)
		Whipper.MoveTo(WhipperMarker.GetReference())
	EndIf	
	If Spankee != libs.PlayerRef
		dclibs.SexLab.UnStripActor(Spankee, Stuff, False)	
	EndIf
	Spankee.SetDontMove(False)
	Spankee.SetRestrained(False)
	Spankee.SetHeadTracking(True)
	Spankee.SetVehicle(None)
	SpankeeRef.Clear()
	SpankMarker.GetReference().Moveto(StorageCell.GetReference())
	WhipperMarker.GetReference().Moveto(StorageCell.GetReference())
	StorageUtil.UnSetFormValue(libs.PlayerRef, "dcur_uss_whipper")
	StorageUtil.UnSetFormValue(libs.PlayerRef, "dcur_uss_spankee")
	StorageUtil.UnSetIntValue(libs.PlayerRef, "dcur_uss_nosubmit")
	SendModEvent("dcur_USS_finished")
	Stop()
EndFunction

Function SpankActor()
	;If Whipper.GetDistance(Spankee) > 1000
		Whipper.moveto(Spankee)
	;Endif		
	If (Spankee == libs.PlayerRef) || (Whipper == libs.PlayerRef)
		Game.DisablePlayerControls()
		Game.ForceThirdPerson()		
		Game.SetPlayerAIDriven(True)			
	EndIf
	Spankee.SetVehicle(SpankMarker.GetReference())
	Spankee.SetDontMove(True)
	Spankee.SetRestrained(True)
	Spankee.SetHeadTracking(False)
	If !Spankee.WornHasKeyword(libs.zad_DeviousHeavyBondage) && SpankeeSubmits
		Whipper.SheatheWeapon()
		spankme.ForceRefTo(Spankee)
		doNothing.ForceRefTo(Whipper)
		Whipper.EvaluatePackage()
		Utility.Wait(5)
		doNothing.Clear()
	EndIf			
	WhipPlayer.ForceRefTo(Whipper)
	Whipper.EvaluatePackage()	
	RegisterForSingleUpdate(Math.Ceiling(Duration / 2))
EndFunction

Function OnHitPlayer()
	If Utility.RandomInt() < 33
		dcur_sound_moan.Play(Spankee)
	EndIf
EndFunction

Function PlayBleedOut()
	If Spankee.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		If Spankee.WornHasKeyword(libs.zad_DeviousArmbinder)
			Debug.SendAnimationEvent(Spankee, "DD_FT_Bleedout_Armbinder")
		ElseIf Spankee.WornHasKeyword(libs.zad_DeviousYoke)
			Debug.SendAnimationEvent(Spankee, "DD_FT_Bleedout_Yoke")
		ElseIf Spankee.WornHasKeyword(libs.zad_DeviousYokeBB)
			Debug.SendAnimationEvent(Spankee, "DD_FT_Bleedout_BBYoke")
		ElseIf Spankee.WornHasKeyword(libs.zad_DeviousArmbinderElbow)
			Debug.SendAnimationEvent(Spankee, "DD_FT_Bleedout_Elbowbinder")
		ElseIf Spankee.WornHasKeyword(libs.zad_DeviousCuffsFront)
			Debug.SendAnimationEvent(Spankee, "DD_FT_Bleedout_Frontcuffs")
		EndIf
	Else
		Debug.SendAnimationEvent(Spankee, "BleedOutStart")
	EndIf
EndFunction

Event OnUpdate()	
	If Stage == 0
		Stage = 1
		PlayBleedOut()
		RegisterForSingleUpdate(Math.Ceiling(Duration / 2))
		return
	EndIf
	WhipPlayer.Clear()			
	Whipper.EvaluatePackage()
	If !Spankee.WornHasKeyword(libs.zad_DeviousHeavyBondage) ; && SpankeeSubmits
		doNothing.ForceRefTo(Whipper)
		spankme.Clear()
		layfetal.ForceRefTo(Spankee)
		Spankee.EvaluatePackage()
		Utility.Wait(7)
		doNothing.Clear()
		layfetal.Clear()		
		Whipper.EvaluatePackage()
	Endif	
	If (Spankee == libs.PlayerRef) || (Whipper == libs.PlayerRef)
		Game.SetPlayerAIDriven(False)	
		Game.EnablePlayerControls()
	EndIf
	Utility.Wait(1)
	If !Spankee.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		Debug.SendAnimationEvent(Spankee, "BleedOutStop")		
		Utility.Wait(1)
	EndIf
	Utility.Wait(2)
	Debug.SendAnimationEvent(Spankee, "IdleForceDefaultState")				
	EndQuest()
EndEvent
