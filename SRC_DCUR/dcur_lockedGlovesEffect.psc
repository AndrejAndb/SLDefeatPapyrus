ScriptName dcur_lockedGlovesEffect extends ActiveMagicEffect

; Libraries
dcur_lb_lockedGlovesQuestScript Property abq Auto
zadLibs Property Libs Auto
dcur_lbquestScript Property lbqs Auto

Armor Property dcur_lb_ArmCuffsLocked  Auto  
Keyword Property dcur_kw_lb_linkedarmcuffs Auto
Message Property dcur_lb_armcuffslockedMsg Auto

Keyword Property dcur_kw_lb_leatherbindings Auto

Armor Property dcur_lb_shackles Auto
Keyword Property dcur_kw_lb_shackles Auto
Message Property dcur_shacklesMsg Auto
Message Property dcur_shacklesStruggleMsg Auto
Message Property dcur_shackleunlockmsg Auto

Key Property dcur_handrestraintskey Auto

; Idles
Idle[] Property idles Auto

; Cache keystroke ID's
Int Property TweenMenuKey Auto

; Internal Variables
Keyword Property zad_DeviousDevice Auto
Actor Property target Auto
bool Property Terminate Auto

Function DoRegister()
	if !Terminate && target
		RegisterForSingleUpdate(5.0)
	EndIf
EndFunction

Function DoUnregister()
	if !Terminate && target
		UnregisterForUpdate()
	EndIf
EndFunction

Function DoReLoad()
	if target && ! Terminate
		PlayBoundIdle()
		DoRegister()
	EndIf
EndFunction

Function DoUnLoad()
	if target && ! Terminate
		DoUnregister()
	EndIf
EndFunction

Function StruggleScene(actor akActor)
	if libs.IsAnimating(akActor)
		return
	EndIf
	int len = abq.StruggleIdles.length - 1
	bool[] cameraState = libs.StartThirdPersonAnimation(akActor, abq.StruggleIdles[Utility.RandomInt(0, len)], true)
	Utility.Wait(2.5)
	libs.Pant(libs.PlayerRef)
	Utility.Wait(2.5)
	akActor.PlayIdle(abq.StruggleIdles[Utility.RandomInt(0, len)])
	Utility.Wait(5)
	libs.EndThirdPersonAnimation(akActor, cameraState, true)
	libs.SexlabMoan(libs.PlayerRef)
EndFunction

Event OnUpdate()
	if target == libs.PlayerRef && ((Game.IsMenuControlsEnabled() && libs.config.HardcoreEffects) || Game.IsFightingControlsEnabled() )
		if !libs.IsAnimating(target)
			libs.UpdateControls()
		EndIf
	EndIf
	DoRegister()
EndEvent

Event OnEffectStart(Actor akTarget, Actor akCaster)
	; ConsoleUtil.ExecuteCommand("set zbfSettingDisableEffects to 1.0")	
	if akTarget != libs.PlayerRef
		libs.BoundCombat.Apply_ABC(akTarget)
		libs.BoundCombat.Apply_NPC_ABC(akTarget)
		return
	EndIf
	libs.Log("OnEffectStart(): Armbinder")
	target = akTarget
	Terminate = False
	if target == libs.PlayerRef
		UnregisterForAllKeys()
		TweenMenuKey = Input.GetMappedKey("Tween Menu")
		RegisterForKey(TweenMenuKey)
	EndIf
	PlayBoundIdle()
	DoRegister()
	if target == libs.PlayerRef
		libs.UpdateControls()
	Endif
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	libs.Log("OnEffectFinish(): Armbinder")
	Terminate = True
	Debug.SendAnimationEvent(target, "IdleForceDefaultState")
	if target == libs.PlayerRef
		libs.UpdateControls()
		; UnregisterForAllKeys() ; Not necessary: Automatically unregistered on effect expiration
	else
		libs.BoundCombat.Remove_NPC_ABC(akTarget)
	EndIf
	libs.BoundCombat.Remove_ABC(akTarget)
EndEvent

Function ShowShacklesMenu()
	int msgChoice = dcur_shacklesMsg.Show() ; display menu
	if msgChoice == 0 ; Struggle
		if libs.PlayerRef.GetAv("Stamina")<=35
			libs.NotifyPlayer("You are far too tired to struggle with the shackles.", true)
		Elseif libs.playerref.GetItemCount(dcur_handrestraintskey) < 1
			libs.PlayerRef.DamageAV("Stamina", 35)			
			StruggleScene(libs.PlayerRef)			
			dcur_shacklesStruggleMsg.Show()
		else
			StruggleScene(libs.PlayerRef)			
			dcur_shackleunlockmsg.Show()			
			libs.PlayerRef.RemoveItem(dcur_handrestraintskey, 1, true)					
			libs.PlayerRef.UnEquipItem(dcur_lb_shackles)
			libs.PlayerRef.RemoveItem(dcur_lb_shackles, 1, true)					
			lbqs.removed_Shackles = True	
			lbqs.RegisterForSingleUpdate(0.1)
		EndIf
	elseif msgChoice == 1 ; Endure Bonds
	endif	
EndFunction

Function ShowArmCuffsMenu()
	int msgChoice = dcur_lb_armcuffslockedMsg.Show() ; display menu
	if msgChoice == 0 ; Struggle
		if libs.PlayerRef.GetAv("Stamina")<=35
			libs.NotifyPlayer("You are far too tired to struggle with the arm cuffs.", true)
		Elseif libs.playerref.GetItemCount(dcur_handrestraintskey) < 1
			libs.PlayerRef.DamageAV("Stamina", 35)			
			StruggleScene(libs.PlayerRef)			
			dcur_shacklesStruggleMsg.Show()
		else
			if Utility.RandomInt(1,5) == 1	
				StruggleScene(libs.PlayerRef)			
				dcur_shackleunlockmsg.Show()			
				libs.PlayerRef.RemoveItem(dcur_handrestraintskey, 1, true)					
				libs.PlayerRef.UnEquipItem(dcur_lb_ArmCuffsLocked)
				libs.PlayerRef.RemoveItem(dcur_lb_ArmCuffsLocked, 1, true)	
				lbqs.removed_LockedArmCuffs = True	
				lbqs.RegisterForSingleUpdate(0.1)			
			else
				StruggleScene(libs.PlayerRef)			
				libs.NotifyPlayer("You desperately try to insert the key into the padlock, but with your hands and elbows being bound tight, you fail to slide the key into the lock", true)
			endif
		EndIf
	elseif msgChoice == 1 ; Endure Bonds
	endif	
EndFunction

Event OnKeyDown(Int KeyCode) 
	if !Game.IsMenuControlsEnabled() && KeyCode == TweenMenuKey && !UI.IsMenuOpen("Dialogue Menu") && !UI.IsMenuOpen("BarterMenu") && !UI.IsMenuOpen("ContainerMenu") && !UI.IsMenuOpen("Sleep/Wait Menu")
		libs.playerRef.SheatheWeapon()
		Utility.Wait(0.1)
		if libs.playerref.wornhaskeyword(dcur_kw_lb_shackles)
			ShowShacklesMenu()
		elseif libs.playerref.wornhaskeyword(dcur_kw_lb_linkedarmcuffs)
			ShowArmCuffsMenu()
		elseif libs.playerref.wornhaskeyword(dcur_kw_lb_leatherbindings)
			StruggleScene(libs.PlayerRef)			
			libs.notify("The leather bindings sit too tight on you to be able to struggle them off. Maybe you should look around for a sharp object to cut them open?", messagebox = true)		
		else
			abq.ShowDeviceMenu()
		endif
	EndIf
EndEvent

Function PlayBoundIdle()
	libs.BoundCombat.Apply_ABC(target)
	if !Terminate && libs.IsValidActor(target) && !libs.IsAnimating(target) && !target.IsInFaction(libs.SexLabAnimatingFaction) 
		libs.ApplyBoundAnim(target)
	EndIf
EndFunction

Event OnCellLoad()
	DoReLoad()
EndEvent

Event OnCellAttach()
	DoReLoad()
EndEvent

Event OnLoad()
	DoReLoad()
EndEvent

Event OnCellDetach()
	DoUnLoad()
EndEvent