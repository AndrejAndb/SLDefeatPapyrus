Scriptname dcur_lb_CorsetScript extends zadCorsetScript ;zadEquipScript  

GlobalVariable property dcur_lb_corset_lockstate_first Auto
GlobalVariable property dcur_lb_corset_lockstate_second Auto
GlobalVariable property dcur_lb_corset_lockstate_third Auto
GlobalVariable property dcur_lb_corset_lockstate_forth Auto

Armor Property zad_restrictiveCorsetChastity_scriptInstance Auto

Key property dcur_bodyrestraintskey Auto
Message property dcur_lb_corsetunlockMSG Auto

;Armor Property stateDefault Auto
;Armor Property stateBeltedFull Auto 
;Armor Property stateBeltedOpen Auto 

Bool restoreDDI = false

dcur_lbquestScript Property lbqs Auto
dcur_mcmconfig Property dcumenu  Auto

Function LockCorset()
	dcur_lb_corset_lockstate_first.SetValueInt(1)
	dcur_lb_corset_lockstate_second.SetValueInt(1)
	dcur_lb_corset_lockstate_third.SetValueInt(1)
	dcur_lb_corset_lockstate_forth.SetValueInt(1)	
EndFunction

Bool Function CheckLockState()
	If dcur_lb_corset_lockstate_first.GetValueInt() == 0 && dcur_lb_corset_lockstate_second.GetValueInt() == 0 && dcur_lb_corset_lockstate_third.GetValueInt() == 0 && dcur_lb_corset_lockstate_forth.GetValueInt() == 0 
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lb_corsetunlockMSG.show()
	if choice == 0 
		dcur_lb_corset_lockstate_first.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 1 
		dcur_lb_corset_lockstate_second.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 2 
		dcur_lb_corset_lockstate_third.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 3 
		dcur_lb_corset_lockstate_forth.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)	
	endif
	if !CheckLockState()
		return true ; unlocked
	endif
	return false
Endfunction

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		if !lbqs.lb_hasremoved_Hood
			libs.Notify("You cannot remove the corset while the hood is still locked on you!", messageBox=true)		
			return
		endif				
		if UnlockDialogue()										
			libs.Notify("You remove the last lock from your corset before you open the straps and release the tight grip it held on your waist.", messagebox = true)												
			libs.removeDevice(libs.PlayerRef, lbqs.dcur_lb_Corset, lbqs.dcur_lb_CorsetRendered, libs.zad_DeviousCorset, destroyDevice = false, skipevents = false, skipmutex = true)			
			SendSignal()
			;DeviceMenuRemoveWithKey()	
		endif
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction


Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		libs.NotifyActor("You pull the corset around "+GetMessageName(akActor)+" waist, and lock it in the back.", akActor, true)
	EndIf
	; wipe DDI devices underneath setting to make the corset appear on top of the catsuit
	restoreDDI = false
	int index = ((32 - 30) * 4)
	int i = 0
	int slot2 = 58
	while i < 4
		if libs.DevicesUnderneath.SlotMaskFilters[index+i] == libs.DevicesUnderneath.ShiftCache[slot2 - 30]
			restoreDDI = true
			libs.DevicesUnderneath.SlotMaskFilters[index+i] = 0
			libs.Log("DevicesUnderneath Unregistered(" + index+i + ":" + (slot2 - 30)+")")
			return
		EndIf
		i += 1
	EndWhile	
	;libs.DevicesUnderneath.ApplySlotmask()
	Parent.OnEquippedPre(akActor, silent)
EndFunction


int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor == none
		akActor == libs.PlayerRef
	EndIf
	if ! akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Corset).")
			return 0
		EndIf
		if akActor.WornHasKeyword(libs.zad_DeviousHarness)
			MultipleItemFailMessage("Harness")
			return 2
		Endif
	Endif
	if !silent
		int interaction = zad_DeviceMsg.Show()
		if interaction == 0 ; Equip Device		
			return 0 ; Proceed
		ElseIf interaction == 2 ; Put it away
			return 2
		EndIf
	endif
	return 0
EndFunction

Function OnEquippedPost(actor akActor)	
	LockCorset()	
	libs.DevicesUnderneath.RebuildSlotmask(akActor)
	libs.PlayerRef.QueueNiNodeUpdate()	
EndFunction

Function SendSignal()
	if restoreDDI 
		libs.DevicesUnderneath.HideEquipment(32, 58)
		libs.DevicesUnderneath.ApplySlotmask()
	endif	
	lbqs.removed_Corset = true
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

