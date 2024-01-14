Scriptname dcur_lb_rigidBraScript extends zadequipscript  

GlobalVariable property dcur_lb_bra_lockstate_lcup Auto
GlobalVariable property dcur_lb_bra_lockstate_rcup Auto
GlobalVariable property dcur_lb_bra_lockstate_chestband Auto

Key property dcur_bodyrestraintskey Auto
Message property dcur_lb_braunlockMSG Auto

dcur_lbquestScript Property lbqs Auto
dcur_mcmconfig Property dcumenu  Auto  

Bool restoreDDI = false

Function LockBra()
	dcur_lb_bra_lockstate_lcup.SetValueInt(1)
	dcur_lb_bra_lockstate_rcup.SetValueInt(1)
	dcur_lb_bra_lockstate_chestband.SetValueInt(1)		
EndFunction

Bool Function CheckLockState()
	If dcur_lb_bra_lockstate_lcup.GetValueInt() == 0 && dcur_lb_bra_lockstate_rcup.GetValueInt() == 0 && dcur_lb_bra_lockstate_chestband.GetValueInt() == 0 
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lb_braunlockMSG.show()
	if choice == 0 
		dcur_lb_bra_lockstate_lcup.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 1 
		dcur_lb_bra_lockstate_rcup.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 2 
		dcur_lb_bra_lockstate_chestband.SetValueInt(0)
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
		if UnlockDialogue()			
			libs.Notify("You remove the last lock from your chastity bra and remove the cups from your breasts.", messagebox = true)						
			Armor device = libs.GetWornDevice(libs.playerref, libs.zad_DeviousBra)
			libs.removeDevice(libs.PlayerRef, device, libs.GetRenderedDevice(device), libs.zad_DeviousBra, destroyDevice = false, skipevents = false, skipmutex = true)			
			SendSignal()
			;DeviceMenuRemoveWithKey()	
		endif
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)	
	if silent
		return 0 ; Proceed.
	EndIf
        int interaction = zad_DeviceMsg.Show()
        if interaction == 0 ; Equip Device		
			return 0 ; Proceed
		ElseIf interaction == 2 ; Put it away
			return 2
		EndIf	
	return 0
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
			msg = "You place the two heavy metal cups over your breasts and slip the bra around your chest. Probably an intended feature for these devices, the bra is borderline too small for you and sitting extremely tight on you, but you manage to press the shackle into the lock with a bit of force. When you hear an inaccessible locking mechanism click shut, you know that your breasts are now sealed away and out of reach for any caressing hands."				
	Else
		msg = "You slip the bra around "+GetMessageName(akActor)+" chest, and it locks in place with a soft click."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf
	; wipe DDI devices underneath setting to make the bra appear on top of the catsuit
	restoreDDI = false
	int index = ((32 - 30) * 4)
	int i = 0
	int slot2 = 56
	while i < 4
		if libs.DevicesUnderneath.SlotMaskFilters[index+i] == libs.DevicesUnderneath.ShiftCache[slot2 - 30]
			restoreDDI = true
			libs.DevicesUnderneath.SlotMaskFilters[index+i] = 0
			libs.Log("DevicesUnderneath Unregistered(" + index+i + ":" + (slot2 - 30)+")")
			return
		EndIf
		i += 1
	EndWhile		
EndFunction

Function OnEquippedPost(actor akActor)	
	LockBra()		
	libs.DevicesUnderneath.RebuildSlotmask(akActor)
	libs.PlayerRef.QueueNiNodeUpdate()	
EndFunction

Function SendSignal()	
	if restoreDDI 
		libs.DevicesUnderneath.HideEquipment(32, 56)
		libs.DevicesUnderneath.ApplySlotmask()
	endif	
	lbqs.removed_rigidBra = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)	
	parent.OnUnequipped(akActor)
endfunction
