Scriptname dcur_lb_harnessScript extends zadequipscript  

GlobalVariable property dcur_lb_harness_lockstate_collar Auto
GlobalVariable property dcur_lb_harness_lockstate_harness Auto
GlobalVariable property dcur_lb_harness_lockstate_crotch Auto

Key property dcur_bodyrestraintskey Auto
Message property dcur_lb_harnessunlockMSG Auto

dcur_lbquestScript Property lbqs Auto
dcur_mcmconfig Property dcumenu  Auto  

Function LockHarness()
	dcur_lb_harness_lockstate_collar.SetValueInt(1)
	dcur_lb_harness_lockstate_harness.SetValueInt(1)
	dcur_lb_harness_lockstate_crotch.SetValueInt(1)	
EndFunction

Bool Function CheckLockState()
	If dcur_lb_harness_lockstate_collar.GetValueInt() == 0 && dcur_lb_harness_lockstate_harness.GetValueInt() == 0 && dcur_lb_harness_lockstate_crotch.GetValueInt() == 0 
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lb_harnessunlockMSG.show()
	if choice == 0 
		dcur_lb_harness_lockstate_collar.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 1 
		dcur_lb_harness_lockstate_harness.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 2 
		dcur_lb_harness_lockstate_crotch.SetValueInt(0)
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
			libs.Notify("You remove the last lock from your harness and remove the straps from your upper body.", messagebox = true)						
			Armor device = libs.GetWornDevice(libs.playerref, libs.zad_DeviousHarness)
			libs.removeDevice(libs.PlayerRef, device, libs.GetRenderedDevice(device), libs.zad_DeviousHarness, destroyDevice = false, skipevents = false, skipmutex = true)			
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
	if !silent
		if akActor == libs.PlayerRef
			libs.NotifyActor("As you step into the harness, you notice that the straps were carefully designed in a way that you won't ever be able to struggle out of them and that it can't be even be locked unless the straps are pulled very tight around your body. When you finally manage to shut the lock, the strong leather straps are cutting uncomfortably into your soft flesh.", akActor, true)
		Else
			libs.NotifyActor(GetMessageName(akActor) +" steps in to the harness, securing it tightly against her body.", akActor, true)
			
		EndIf
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnEquippedPost(actor akActor)	
	LockHarness()		
EndFunction

Function SendSignal()	
	lbqs.removed_Harness = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)		
	parent.OnUnequipped(akActor)
endfunction
