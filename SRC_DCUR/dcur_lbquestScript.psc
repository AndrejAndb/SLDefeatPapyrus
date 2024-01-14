Scriptname dcur_lbquestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
SexLabFramework Property SexLab Auto
dcur_library Property dclibs  Auto  
zadlibs Property libs Auto
slaframeworkscr Property Aroused Auto
dcur_mastercontrollerscript Property mcs Auto

bool property lbqsquestrunning = False Auto

Armor Property dcur_lb_Shackles Auto
Armor Property dcur_lb_leatherbindings Auto
Armor Property dcur_lb_ArmCuffsLocked Auto
Armor Property dcur_lb_RubberGlovesLocked Auto
Armor Property dcur_lb_RubberGlovesLockedRendered Auto
Armor Property dcur_lb_RubberGloves Auto
Armor Property dcur_lb_RubberGlovesRendered Auto
Armor Property dcur_lb_ArmCuffs Auto
Armor Property dcur_lb_ArmCuffsRendered Auto
Armor Property dcur_lb_RubberBoots Auto
Armor Property dcur_lb_RubberBootsRendered Auto
Armor Property dcur_lb_Catsuit Auto
Armor Property dcur_lb_CatsuitRendered Auto
Armor Property dcur_lb_Armbinder Auto
Armor Property dcur_lb_ArmbinderRendered Auto
Armor Property dcur_lb_Collar Auto
Armor Property dcur_lb_CollarRendered Auto
Armor Property dcur_lb_Hood Auto
Armor Property dcur_lb_HoodRendered Auto
Armor Property dcur_lb_Vibrator Auto
Armor Property dcur_lb_VibratorRendered Auto
Armor Property dcur_lb_ButtPlug Auto
Armor Property dcur_lb_ButtPlugRendered Auto
Armor Property dcur_lb_VPiercing Auto
Armor Property dcur_lb_VPiercingRendered Auto
Armor Property dcur_lb_NPiercing Auto
Armor Property dcur_lb_NPiercingRendered Auto
Armor Property dcur_lb_Blindfold Auto
Armor Property dcur_lb_BlindfoldRendered Auto
Armor Property dcur_lb_PanelGag Auto
Armor Property dcur_lb_PanelGagRendered Auto
Armor Property dcur_lb_Harness Auto
Armor Property dcur_lb_HarnessRendered Auto
Armor Property dcur_lb_Belt Auto
Armor Property dcur_lb_BeltRendered Auto
Armor Property dcur_lb_Bra Auto
Armor Property dcur_lb_BraRendered Auto
Armor Property dcur_lb_RingGag Auto
Armor Property dcur_lb_RingGagRendered Auto
Armor Property dcur_lb_BallGag Auto
Armor Property dcur_lb_BallGagRendered Auto
Armor Property dcur_lb_SlaveBoots Auto
Armor Property dcur_lb_SlaveBootsRendered Auto
Armor Property dcur_lb_LegCuffs Auto
Armor Property dcur_lb_LegCuffsRendered Auto
Armor Property dcur_lb_RestrainingBelt Auto
Armor Property dcur_lb_RestrainingBeltRendered Auto
Armor Property dcur_lb_fakecatsuit Auto
Armor Property dcur_lb_fakecatsuitRendered Auto
Armor Property dcur_lb_Corset Auto
Armor Property dcur_lb_CorsetRendered Auto
Armor Property dcur_lb_RigidBra Auto
Armor Property dcur_lb_RigidBraRendered Auto

Armor Property dcur_lb_harnessblockerhelper Auto

bool property removed_armCuffs = False Auto
bool property removed_LegCuffs = False Auto
bool property removed_LockedArmCuffs = False Auto
bool property removed_Shackles = False Auto
bool property removed_Armbinder = False Auto
bool property removed_LockedGloves = False Auto
bool property removed_CatsuitGloves = False Auto
bool property removed_LeatherBindings = False Auto
bool property removed_Collar = False Auto
bool property removed_Hood = False Auto
bool property removed_Catsuit = False Auto
bool property removed_Blindfold = False Auto
bool property removed_PanelGag = False Auto
bool property removed_Harness = False Auto
bool property removed_Belt = False Auto
bool property removed_Bra = False Auto
bool property removed_RingGag = False Auto
bool property removed_BallGag = False Auto
bool property removed_SlaveBoots = False Auto
bool property removed_RubberBoots = False Auto
bool property removed_APlug = False Auto
bool property removed_VPlug = False Auto
bool property removed_VPiercing = False Auto
bool property removed_NPiercing = False Auto
bool property removed_RestrainingBelt = False Auto
bool property removed_Corset = False Auto
bool property removed_RigidBra = False Auto

bool property lb_hasremoved_Armbinder = False Auto
bool property lb_hasremoved_Shackles = False Auto
bool property lb_hasremoved_LinkedArmCuffs = False Auto
bool property lb_hasremoved_RopeBindings = False Auto
bool property lb_hasremoved_LinkedCatsuitGloves = False Auto
bool property lb_hasremoved_ArmCuffs = False Auto
bool property lb_hasremoved_Collar = False Auto
bool property lb_hasremoved_Hood = False Auto
bool property lb_hasremoved_Blindfold = False Auto
bool property lb_hasremoved_PanelGag = False Auto
bool property lb_hasremoved_RingGag = False Auto
bool property lb_hasremoved_BallGag = False Auto
bool property lb_hasremoved_Catsuit = False Auto
bool property lb_hasremoved_Harness = False Auto
bool property lb_hasremoved_Belt = False Auto
bool property lb_hasremoved_Bra = False Auto
bool property lb_hasremoved_LegCuffs = False Auto
bool property lb_hasremoved_CatsuitBoots = False Auto
bool property lb_hasremoved_SlaveBoots = False Auto
bool property lb_hasremoved_CatsuitGloves = False Auto
bool property lb_hasremoved_NPiercings = False Auto
bool property lb_hasremoved_VPiercings = False Auto
bool property lb_hasremoved_APlug = False Auto
bool property lb_hasremoved_VPlug = False Auto
bool property lb_hasremoved_RestrainingBelt = False Auto
bool property lb_hasremoved_Corset = False Auto
bool property lb_hasremoved_RigidBra = False Auto

Idle[] Property struggleIdles Auto

Function StruggleScene(actor akActor)
	if libs.IsAnimating(akActor)
		return
	EndIf
	int len = struggleIdles.length - 1
	bool[] cameraState = libs.StartThirdPersonAnimation(akActor, struggleIdles[Utility.RandomInt(0, len)], true)
	Utility.Wait(2.5)
	libs.Pant(libs.PlayerRef)
	Utility.Wait(2.5)
	akActor.PlayIdle(struggleIdles[Utility.RandomInt(0, len)])
	Utility.Wait(5)
	libs.SetAnimating(akActor, false)
	if akActor == libs.PlayerRef
		libs.UpdateControls()
	else
		akActor.SetDontMove(false)
	endif
	libs.SexlabMoan(libs.PlayerRef)
EndFunction

Function Wiggle(bool triggeredByQuest = true)	
	int choice
	int strugglechoice
	int random
	int leastresistance
	bool free = false
	string text
	int breakfreechance = 0
	Game.ForceThirdPerson()
	while !free				
		Game.SetCameraTarget(libs.playerref)
		Utility.Wait(0.5)
		choice = dcur_lb_hogtie.show()
		Utility.Wait(0.5)		
		leastresistance = Utility.RandomInt(1,3)
		if choice == 0 ;break free
			strugglechoice = dcur_lb_hogtie_struggle.show()
			if strugglechoice == 0 ; struggle
				if Utility.RandomInt(0, 99) < breakfreechance
					libs.notify("You struggle against your bindings with all your might and finally manage to slip one of your feet out of the loosened ropes, making them fall off you entirely.", messagebox = true)
					free = true
				else
					libs.notify("You struggle against your bindings with all your might. But despite your best efforts, you don't manage to escape your restraints. With a sigh you realize that your struggles have tightened the ropes again, leaving you no freedom of movement whatsoever", messagebox = true)
					breakfreechance = 0
				endif
			elseif strugglechoice == 1 ; reconsider
			endif
		elseif choice == 1
			StruggleScene(libs.playerref)
			random = Utility.RandomInt(0,4)
			if choice == leastresistance
				libs.notify("You wiggle your bound ankles as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. You have the feeling that you attacked your bonds at the weakest spot, either by instinct or fate. Either way, the ropes are now a lot less tight than before.", messagebox = true)
				breakfreechance += 33
			elseif random == 0
				libs.notify("You wiggle your bound ankles as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. But your efforts have no success.. The ropes are now even tighter than before.", messagebox = true)
				breakfreechance -= 5
			elseif random == 1
				libs.notify("You wiggle your bound ankles as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. But one wrong ill-advised move and some bad luck causes the ropes to tighten up a fair bit again.", messagebox = true)
				breakfreechance -= 10
			elseif random == 2
				libs.notify("You wiggle your bound ankles as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. But your efforts have very little success. The ropes are almost as tight as before.", messagebox = true)
				breakfreechance += 5
			elseif random == 3
				libs.notify("You wiggle your bound ankles as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. Your efforts have some success. The ropes are a bit less tight as before.", messagebox = true)
				breakfreechance += 10
			elseif random == 4
				libs.notify("You wiggle your bound ankles as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. Your efforts are successful. The ropes are significantly less tight as before.", messagebox = true)
				breakfreechance += 20
			endif
		elseif choice == 2
			StruggleScene(libs.playerref)
			random = Utility.RandomInt(0,4)
			if choice == leastresistance
				libs.notify("You wiggle your bound arms as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. You have the feeling that you attacked your bonds at the weakest spot, either by instinct or fate. Either way, the ropes are now a lot less tight than before.", messagebox = true)
				breakfreechance += 33
			elseif random == 0
				libs.notify("You wiggle your bound arms as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. But your efforts have no success.. The ropes are now even tighter than before.", messagebox = true)
				breakfreechance -= 5
			elseif random == 1
				libs.notify("You wiggle your bound arms as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. But one wrong ill-advised move and some bad luck causes the ropes to tighten up a fair bit again.", messagebox = true)
				breakfreechance -= 10
			elseif random == 2
				libs.notify("You wiggle your bound arms as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. But your efforts have very little success. The ropes are almost as tight as before.", messagebox = true)
				breakfreechance += 5
			elseif random == 3
				libs.notify("You wiggle your bound arms as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. Your efforts have some success. The ropes are a bit less tight as before.", messagebox = true)
				breakfreechance += 10
			elseif random == 4
				libs.notify("You wiggle your bound arms as far as the ropes will allow and work your restraints, desperately trying to loosen them just a bit. Your efforts are successful. The ropes are significantly less tight as before.", messagebox = true)
				breakfreechance += 20
			endif			
		elseif choice == 3
			StruggleScene(libs.playerref)
			random = Utility.RandomInt(0,4)
			if choice == leastresistance
				libs.notify("You throw around your entire body and pull against your bindings. You have the feeling that you attacked your bonds at the weakest spot, either by instinct or fate. Either way, the ropes are now a lot less tight than before.", messagebox = true)
				breakfreechance += 33
			elseif random == 0
				libs.notify("You throw around your entire body and pull against your bindings.But your efforts have no success.. The ropes are now even tighter than before.", messagebox = true)
				breakfreechance -= 5
			elseif random == 1
				libs.notify("You throw around your entire body and pull against your bindings. But one wrong ill-advised move and some bad luck causes the ropes to tighten up a fair bit again.", messagebox = true)
				breakfreechance -= 10
			elseif random == 2
				libs.notify("You throw around your entire body and pull against your bindings. But your efforts have very little success. The ropes are almost as tight as before.", messagebox = true)
				breakfreechance += 5
			elseif random == 3
				libs.notify("You throw around your entire body and pull against your bindings. Your efforts have some success. The ropes are a bit less tight as before.", messagebox = true)
				breakfreechance += 10
			elseif random == 4
				libs.notify("You throw around your entire body and pull against your bindings. Your efforts are successful. The ropes are significantly less tight as before.", messagebox = true)
				breakfreechance += 20
			endif
		elseif choice == 4
			if breakfreechance < 25
				Text = "The rope is still sitting extremely tight on you and cutting deep into your flesh."
			elseif breakfreechance < 50
				Text = "The rope is sitting fairly tight on you."
			elseif breakfreechance < 75
				Text = "The rope has loosened a bit and allows you to wiggle your limbs a bit more."
			else
				Text = "The rope is now fairly loose. You might be able to struggle out of your bindings now."
			endif
			; text = text + " You now have a " + breakfreechance + "% chance to struggle out of your bindings!"
			libs.notify(text, messagebox = true)			
		endif
	endwhile	
	ActorUtil.RemovePackageOverride(libs.playerref, dcumenu.dcur_pk_hogtie)
	libs.playerref.EvaluatePackage()
	libs.playerref.RemoveItem(dcumenu.dcur_fakearmbinder, 1, true)
	if triggeredByQuest	
		self.SetStage(20)
		self.SetObjectiveDisplayed(20)	
		self.SetObjectiveCompleted(10)	
	endif
	Game.SetPlayerAIDriven(False)
	Debug.SendAnimationEvent(libs.playerref, "IdleForceDefaultState")
	Game.EnablePlayerControls()	
EndFunction

Function HogtiePlayer(bool triggeredByQuest = true)
	Actor pl = libs.playerref
	Game.DisablePlayerControls()
	Game.ForceThirdPerson()
	Game.SetPlayerAIDriven(True)	
	;if triggeredByQuest
		libs.playerref.equipItem(dcumenu.dcur_fakearmbinder, true, true)
	;endif
	ActorUtil.AddPackageOverride(pl, dcumenu.dcur_pk_hogtie ,99)
	pl.EvaluatePackage()	
EndFunction

Event OnUpdate()	
	if removed_LeatherBindings
		libs.playerref.UnequipItem(dcur_lb_leatherbindings)
		libs.playerref.RemoveItem(dcur_lb_leatherbindings, 1, true)
		libs.equipDevice(libs.playerref, dcur_lb_ArmCuffs, dcur_lb_ArmCuffsRendered, libs.Zad_DeviousArmCuffs, skipevents = false, skipmutex = true)			
		lb_hasremoved_RopeBindings = True
		removed_LeatherBindings = false
	endif
	if removed_LockedArmCuffs
		libs.playerref.equipItem(dcur_lb_leatherbindings, true, true)
		lb_hasremoved_LinkedArmCuffs = True
		removed_LockedArmCuffs = false
	endif
	if removed_ArmCuffs		
		lb_hasremoved_ArmCuffs = True
		libs.playerref.RemoveItem(dcur_lb_ArmCuffs, 1, true)
		removed_ArmCuffs = false
	endif
	if removed_Collar
		lb_hasremoved_Collar = True		
		libs.playerref.RemoveItem(dcur_lb_Collar, 1, true)
		removed_Collar = false
	endif
	if removed_Hood
		lb_hasremoved_Hood = True
		libs.equipDevice(libs.playerref, dcur_lb_Blindfold, dcur_lb_BlindfoldRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)		
		libs.equipDevice(libs.playerref, dcur_lb_PanelGag, dcur_lb_PanelGagRendered, libs.Zad_DeviousGag, skipevents = false, skipmutex = true)		
		libs.playerref.RemoveItem(dcur_lb_hood, 1, true)
		removed_Hood = false
	endif
	if removed_Shackles
		libs.playerref.equipItem(dcur_lb_ArmCuffsLocked, true, true)
		lb_hasremoved_Shackles = True
		removed_Shackles = False
	endif
	if removed_Armbinder
		libs.equipDevice(libs.playerref, dcur_lb_rubberGlovesLocked, dcur_lb_rubberGlovesLockedRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)				
		libs.playerref.RemoveItem(dcur_lb_armbinder, 1, true)		
		lb_hasremoved_Armbinder = True
		removed_Armbinder = False
	endif
	if removed_LockedGloves
		libs.RemoveDevice(libs.PlayerRef, dcur_lb_RubberGlovesLocked, dcur_lb_RubberGlovesLockedRendered, libs.zad_DeviousHeavyBondage, true, false, true)						
		libs.PlayerRef.RemoveItem(dcumenu.dcur_handrestraintskey, 1, true)			
		libs.equipDevice(libs.PlayerRef, dcur_lb_RubberGloves, dcur_lb_RubberGlovesRendered, libs.zad_DeviousGloves, false, true)								
		libs.playerref.RemoveItem(dcur_lb_RubberGlovesLocked, 1, true)
		self.SetStage(30)
		self.SetObjectiveDisplayed(30)	
		self.SetObjectiveCompleted(20)	
		lb_hasremoved_LinkedCatsuitGloves = True
		removed_LockedGloves = False
	endif		
	if removed_CatsuitGloves		
		lb_hasremoved_CatsuitGloves = True
		libs.playerref.RemoveItem(dcur_lb_RubberGloves, 1, true)
		removed_CatsuitGloves = false
	endif
	if removed_RubberBoots
		lb_hasremoved_CatsuitBoots = True		
		libs.equipDevice(libs.PlayerRef, dcur_lb_SlaveBoots, dcur_lb_SlaveBootsRendered, libs.zad_DeviousBoots, false, true)									
		
		libs.playerref.RemoveItem(dcur_lb_RubberBoots, 1, true)		
		removed_RubberBoots = false
	endif	
	if removed_Catsuit
		lb_hasremoved_Catsuit = True
		libs.equipDevice(libs.PlayerRef, dcur_lb_Harness, dcur_lb_HarnessRendered, libs.zad_DeviousHarness, false, true)									
		libs.equipDevice(libs.PlayerRef, dcur_lb_Belt, dcur_lb_BeltRendered, libs.zad_DeviousBelt, false, true)											
		; The bra is special, since we don't occupy its slot at quest start for this make the DD breast management system shrink her breasts. There is no way to disable it and it looks stupid.
		if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBra)				
			; character is already wearing a bra- if it's a generic one, we just unequip it			
			if !libs.LockDevice(libs.PlayerRef, dcur_lb_Bra, force = true)												
				; this sucks - someone must have put a quest bra on her in the meantime. We just mark it as done to avoid complications.
				lb_hasremoved_Bra = True						
			endIf
		else		
			libs.equipDevice(libs.PlayerRef, dcur_lb_Bra, dcur_lb_BraRendered, libs.zad_DeviousBra, false, true)										
		endif
		libs.playerref.RemoveItem(dcur_lb_Catsuit, 1, true)
		removed_Catsuit = false
	endif
	if removed_PanelGag
		lb_hasremoved_PanelGag = True		
		libs.equipDevice(libs.PlayerRef, dcur_lb_RingGag, dcur_lb_RingGagRendered, libs.zad_DeviousGag, false, true)											
		libs.playerref.RemoveItem(dcur_lb_PanelGag, 1, true)
		removed_PanelGag = false
	endif	
	if removed_RingGag
		lb_hasremoved_RingGag = True		
		libs.equipDevice(libs.PlayerRef, dcur_lb_BallGag, dcur_lb_BallGagRendered, libs.zad_DeviousGag, false, true)
		libs.playerref.RemoveItem(dcumenu.dcur_headrestraintskey, 1, true)
		libs.playerref.RemoveItem(dcur_lb_RingGag, 1, true)		
		removed_RingGag = false
	endif	
	if removed_BallGag
		lb_hasremoved_BallGag = True		
		libs.playerref.RemoveItem(dcur_lb_BallGag, 1, true)
		libs.playerref.RemoveItem(dcumenu.dcur_headrestraintskey, 1, true)
		removed_BallGag = false
	endif	
	if removed_Blindfold
		lb_hasremoved_Blindfold = True		
		libs.playerref.RemoveItem(dcur_lb_Blindfold, 1, true)
		libs.playerref.RemoveItem(dcumenu.dcur_headrestraintskey, 1, true)
		removed_Blindfold = false
	endif	
	if removed_Harness
		lb_hasremoved_Harness = True		
		libs.playerref.RemoveItem(dcur_lb_Harness, 1, true)
		removed_Harness = false
	endif	
	if removed_Belt
		lb_hasremoved_Belt = True		
		libs.playerref.RemoveItem(dcur_lb_Belt, 1, true)
		removed_Belt = false
	endif
	if removed_Bra
		lb_hasremoved_Bra = True		
		libs.playerref.RemoveItem(dcur_lb_Bra, 1, true)
		removed_Bra = false
	endif	
	if removed_SlaveBoots
		lb_hasremoved_SlaveBoots = True		
		libs.playerref.RemoveItem(dcur_lb_SlaveBoots, 1, true)
		removed_SlaveBoots = false
	endif	
	if removed_LegCuffs		
		lb_hasremoved_LegCuffs = True
		libs.playerref.RemoveItem(dcur_lb_LegCuffs, 1, true)
		removed_LegCuffs = false
	endif
	if removed_APlug
		lb_hasremoved_APlug = True
		libs.playerref.RemoveItem(dcur_lb_ButtPlug, 1, true)
		libs.playerref.RemoveItem(dcumenu.dcur_bodyrestraintskey, 1, true)
		removed_APlug = false
	endif
	if removed_VPlug
		lb_hasremoved_VPlug = True
		libs.playerref.RemoveItem(dcur_lb_Vibrator, 1, true)
		libs.playerref.RemoveItem(dcumenu.dcur_bodyrestraintskey, 1, true)
		removed_VPlug = false
	endif
	if removed_VPiercing
		lb_hasremoved_VPiercings = True
		libs.playerref.RemoveItem(dcur_lb_VPiercing, 1, true)
		libs.playerref.RemoveItem(dcumenu.dcur_bodyrestraintskey, 1, true)
		removed_VPiercing = false
	endif
	if removed_NPiercing
		lb_hasremoved_NPiercings = True
		libs.playerref.RemoveItem(dcur_lb_NPiercing, 1, true)
		libs.playerref.RemoveItem(dcumenu.dcur_bodyrestraintskey, 1, true)
		removed_NPiercing = false
	endif
	if removed_RestrainingBelt
		lb_hasremoved_RestrainingBelt = True
		libs.playerref.RemoveItem(dcur_lb_harnessblockerhelper, 1, true)
		libs.playerref.RemoveItem(dcur_lb_restrainingbelt, 1, true)
		libs.RemoveDevice(libs.playerref, dcur_lb_fakeCatsuit, dcur_lb_fakeCatsuitRendered, libs.Zad_DeviousSuit, destroydevice = true, skipevents = false, skipmutex = true)
		Utility.Wait(0.1)
		libs.equipDevice(libs.playerref, dcur_lb_Catsuit, dcur_lb_CatsuitRendered, libs.Zad_DeviousSuit, skipevents = false, skipmutex = true)		
		removed_RestrainingBelt = False
	endif
	if removed_Corset
		lb_hasremoved_Corset = True
		libs.playerref.RemoveItem(dcur_lb_Corset, 1, true)
		libs.playerref.equipItem(dcur_lb_harnessblockerhelper, true, true)
		removed_Corset = false
	endif
	if removed_RigidBra
		lb_hasremoved_RigidBra = True
		libs.playerref.RemoveItem(dcur_lb_RigidBra, 1, true)		
		removed_RigidBra = false
	endif
	if isDone()
		StopQuest()
	Endif
EndEvent

bool Function isDone()
	if lb_hasremoved_Armbinder && lb_hasremoved_Shackles && lb_hasremoved_LinkedArmCuffs &&	lb_hasremoved_RopeBindings && lb_hasremoved_LinkedCatsuitGloves && lb_hasremoved_ArmCuffs && lb_hasremoved_Hood &&lb_hasremoved_Blindfold && lb_hasremoved_PanelGag && lb_hasremoved_RingGag && lb_hasremoved_BallGag && lb_hasremoved_Catsuit && lb_hasremoved_Harness && lb_hasremoved_Belt && lb_hasremoved_Bra && lb_hasremoved_LegCuffs &&	lb_hasremoved_CatsuitBoots && lb_hasremoved_SlaveBoots && lb_hasremoved_CatsuitGloves && lb_hasremoved_NPiercings && lb_hasremoved_VPiercings && lb_hasremoved_APlug &&	lb_hasremoved_VPlug && lb_hasremoved_Collar && lb_hasremoved_Corset && lb_hasremoved_RestrainingBelt && lb_hasremoved_RigidBra
		Return true
	endif
	return false
EndFunction
	
Function StopQuest()		
	self.SetObjectiveCompleted(30)	
	self.SetStage(1000)
	self.SetObjectiveDisplayed(1000)			
	self.Reset()	
	lbqsquestrunning = False
	Game.EnableFastTravel(True)
EndFunction	
	
Function DIDStartWrapper()
	Actor pl = libs.playerref
	Utility.Wait(0.2)	
	Game.DisablePlayerControls()
	dcumenu.black.ApplyCrossFade(1)
	if !dclibs.WipeDDSlots()
		; character is wearing at least one quest DD item. We better not start this quest. Let's just put some regular items on her.		
		ImageSpaceModifier.Removecrossfade(1)					
		Game.EnablePlayerControls()
		dclibs.itemequip(pl)
		return
	endif	
	self.Start()
EndFunction
	
Bool Function DiDWiggleWrapper()
	; this function isn't used by the quest, it allows using the wiggle mechanic in other situations.
	if libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		return false
	endif
	Game.DisablePlayerControls()	
	dclibs.strip(libs.playerref, false)	
	HogtiePlayer(triggeredByQuest = false)	
	Utility.Wait(2)
	Wiggle(triggeredByQuest = false)	
	Game.EnablePlayerControls()	
	dclibs.dcur_equiprandomleatherarmbinder(libs.playerref, dcumenu.equiptheme)			
	return true
EndFunction	
	
Function StartQuest()
	Actor pl = libs.playerref
	Utility.Wait(0.2)	
	Game.DisablePlayerControls()	
	Game.EnableFastTravel(False)		
	if self.GetStage() != 0
		self.reset()
	EndIf
	self.SetStage(10)
	self.SetObjectiveDisplayed(10)			
	Utility.Wait(4)			
	; stupid Skyrim alias system. There is a chance that the alias didn't get baked into older savegames yet. For this quest it thankfully doesn't matter all that much.	
	if dcur_lb_queststartmarker
		pl.moveto(dcur_lb_queststartmarker.GetReference())
		dcumenu.black.Apply(1)
	endif	
	Utility.Wait(2.5)			
	dclibs.strip(libs.playerref, false)	
	lbqsquestrunning = True
	lb_hasremoved_Armbinder = False
	lb_hasremoved_Shackles = False
	lb_hasremoved_LinkedArmCuffs = False
	lb_hasremoved_RopeBindings = False
	lb_hasremoved_LinkedCatsuitGloves = False
	lb_hasremoved_ArmCuffs = False
	lb_hasremoved_Collar = False
	lb_hasremoved_Hood = False
	lb_hasremoved_Blindfold = False
	lb_hasremoved_PanelGag = False
	lb_hasremoved_RingGag = False
	lb_hasremoved_BallGag = False
	lb_hasremoved_Catsuit = False
	lb_hasremoved_Harness = False
	lb_hasremoved_Belt = False
	lb_hasremoved_Bra = False
	lb_hasremoved_LegCuffs = False
	lb_hasremoved_CatsuitBoots = False
	lb_hasremoved_SlaveBoots = False
	lb_hasremoved_CatsuitGloves = False
	lb_hasremoved_NPiercings = False
	lb_hasremoved_VPiercings = False
	lb_hasremoved_APlug = False
	lb_hasremoved_VPlug = False	
	lb_hasremoved_RestrainingBelt = False
	lb_hasremoved_Collar = False 
	lb_hasremoved_RigidBra = False 
	libs.equipDevice(pl, dcur_lb_Vibrator, dcur_lb_VibratorRendered, libs.Zad_DeviousPlugVaginal, skipevents = false, skipmutex = true)			
	libs.equipDevice(pl, dcur_lb_ButtPlug, dcur_lb_ButtPlugRendered, libs.Zad_DeviousPlugAnal, skipevents = false, skipmutex = true)			
	libs.equipDevice(pl, dcur_lb_VPiercing, dcur_lb_VPiercingRendered, libs.Zad_DeviousPiercingsVaginal, skipevents = false, skipmutex = true)			
	libs.equipDevice(pl, dcur_lb_NPiercing, dcur_lb_NPiercingRendered, libs.Zad_DeviousPiercingsNipple, skipevents = false, skipmutex = true)			
	libs.equipDevice(pl, dcur_lb_Collar, dcur_lb_CollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)					
	libs.equipDevice(libs.playerref, dcur_lb_fakeCatsuit, dcur_lb_fakeCatsuitRendered, libs.Zad_DeviousSuit, skipevents = false, skipmutex = true)				
	Utility.Wait(1)
	libs.equipDevice(pl, dcur_lb_RigidBra, dcur_lb_RigidBraRendered, libs.Zad_DeviousBra, skipevents = false, skipmutex = true)					
	libs.equipDevice(pl, dcur_lb_RestrainingBelt, dcur_lb_RestrainingBeltRendered, libs.Zad_DeviousBelt, skipevents = false, skipmutex = true)					
	Utility.Wait(1)
	libs.equipDevice(libs.playerref, dcur_lb_corset, dcur_lb_corsetRendered, libs.Zad_DeviousCorset, skipevents = false, skipmutex = true)		
	libs.equipDevice(libs.PlayerRef, dcur_lb_LegCuffs, dcur_lb_LegCuffsRendered, libs.zad_DeviousLegCuffs, false, true)			
	libs.equipDevice(pl, dcur_lb_RubberBoots, dcur_lb_RubberBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)		
	libs.equipDevice(pl, dcur_lb_Hood, dcur_lb_HoodRendered, libs.Zad_DeviousHood, skipevents = false, skipmutex = true)					
	Utility.Wait(2)			
	HogtiePlayer()		
	Utility.Wait(3)		
	libs.notify("When you wake up and open your eyes, you notice that you cannot see anything. Only when you finally shake off the remaining dizziness you notice that you have been tied up with multiple restraints, leaving you almost no room to move any of your limbs.", messagebox = true)
	Utility.Wait(1)
	libs.notify("You feel several gags inside your mouth, a blindfold over your eyes and a hood that has been put on your head. Your hands and elbows have been bound with several steel and leather restraints and put inside a tightly applied armbinder to completely immobilize them. Your body has been sealed inside a skin tight rubber suit and a set of restraint boots is securely locked on your legs.", messagebox = true)
	Utility.Wait(1)
	libs.notify("Last but not least, your ankles have been tied and connected to your armbinder's ring, locking you into a strict hogtie pose. Unless you can manage to somehow wiggle out of your bindings, you're not going anywhere...", messagebox = true)
	Utility.Wait(1)
	ImageSpaceModifier.Removecrossfade(1)				
	Wiggle()	
	libs.equipDevice(pl, dcur_lb_Armbinder, dcur_lb_ArmbinderRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)		
	libs.playerref.equipItem(dcur_lb_Shackles, true, true)	
	Utility.Wait(4)
	;ImageSpaceModifier.Removecrossfade(1)				
	Game.EnablePlayerControls()		
endfunction

Message Property dcur_lb_hogtie_struggle  Auto  
Message Property dcur_lb_hogtie  Auto  
ReferenceAlias Property dcur_lb_queststartmarker  Auto  

Keyword Property dcur_kw_lb_fakecatsuit  Auto  
