Scriptname dcur_shacklesScript extends zadRestraintScript

dcur_shacklesQuestScript Property abq Auto

; Messages
Message Property zad_ArmBinderPreEquipMsg Auto
Message Property zad_ArmBinderEquipPostMsg Auto
Message Property zad_ArmBinderDisableLocksMsg Auto
Message Property zad_ArmBinderEnableLocksMsg Auto

Bool Property Locked = true Auto

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		if akActor == libs.PlayerRef
			zad_ArmBinderEquipPostMsg.Show()
		Else
			libs.NotifyActor("You lock "+GetMessageName(akActor)+"'s wrists into the heavy shackles.", akActor, true)
		EndIf
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction


Function OnEquippedPost(actor akActor)
	akActor.UnequipItemSlot(36) ; Unequip ring to avoid clipping
	if akActor == libs.PlayerRef
		libs.UpdateControls()
		abq.IsLoose = False
		abq.StruggleCount = 0
		abq.EnableStruggling()
		SetCustomMessage()
	EndIf
	libs.ApplyBoundAnim(akActor)
EndFunction


Function SetCustomMessage()
	SetDefaultMessages()
EndFunction


Function SetDefaultMessages()
	abq.CustomStruggleMsg = None
	abq.CustomStruggleImpossibleMsg = None
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if ! akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Armbinder).")
			return 0
		EndIf
		if akActor.WornHasKeyword(libs.zad_DeviousYoke)
			MultipleItemFailMessage("Yoke")
			return 2
		EndIf	
	EndIf	
	if akActor != libs.PlayerRef || silent
		return 0 ; Proceed.
	EndIf
        int interaction = zad_ArmBinderPreEquipMsg.show()
        if interaction == 0 ; Equip Device		
			return 0 ; Proceed
		Else ;If interaction == 1 ; Put it away
			return 2
		EndIf
	libs.Error("Invalid menu option selected for Armbinder Script")
	return 0
EndFunction

Function DeviceMenu(Int msgChoice = 0)
	msgChoice = abq.ShowDeviceMenu(msgChoice)
	DeviceMenuExt(msgChoice)
	SyncInventory()
EndFunction


Function OnRemoveDevice(actor akActor)
	if akActor == libs.PlayerRef
		SetDefaultMessages()
	EndIf
	if !libs.IsAnimating(akActor)
		Debug.SendAnimationEvent(akActor, "IdleForceDefaultState")
	EndIf
EndFunction
