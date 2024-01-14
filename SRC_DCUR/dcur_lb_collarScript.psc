Scriptname dcur_lb_collarScript extends zadequipscript  

import MfgConsoleFunc
GlobalVariable property dcur_lb_collar_lockstate_firstlock Auto
GlobalVariable property dcur_lb_collar_lockstate_secondlock Auto
GlobalVariable property dcur_lb_collar_lockstate_thirdlock Auto
Key Property dcur_headrestraintskey  Auto  

Message property dcur_lb_collarunlockMSG Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_lbquestScript Property lbqs Auto

Function LockCollar()
	dcur_lb_collar_lockstate_firstlock.SetValueInt(1)	
	dcur_lb_collar_lockstate_secondlock.SetValueInt(1)
	dcur_lb_collar_lockstate_thirdlock.SetValueInt(1)	
EndFunction

Function SendSignal()	
	lbqs.removed_Collar = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)	
	parent.OnUnequipped(akActor)
endfunction

Bool Function CheckLockState()
	If dcur_lb_collar_lockstate_firstlock.GetValueInt() == 0 && dcur_lb_collar_lockstate_secondlock.GetValueInt() == 0 && dcur_lb_collar_lockstate_thirdlock.GetValueInt() == 0 
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lb_collarunlockMSG.show()
	if choice == 0 ;
		dcur_lb_collar_lockstate_firstlock.SetValueInt(0)
		libs.playerref.removeitem(dcur_headrestraintskey, 1)
	elseif choice == 1 
		dcur_lb_collar_lockstate_secondlock.SetValueInt(0)
		libs.playerref.removeitem(dcur_headrestraintskey, 1)
	elseif choice == 2 
		dcur_lb_collar_lockstate_thirdlock.SetValueInt(0)
		libs.playerref.removeitem(dcur_headrestraintskey, 1)
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
		if !lbqs.lb_hasremoved_LinkedCatsuitGloves
			libs.Notify("You cannot remove the steel collar with bound hands!", messageBox=true)		
			return
		endif
		if !lbqs.lb_hasremoved_Hood
			libs.Notify("You cannot remove the steel collar while the hood is still locked on you!", messageBox=true)		
			return
		endif
		if UnlockDialogue()			
			libs.Notify("You open the last lock and finally remove the collar from your neck.", messagebox = true)			
			Armor device = libs.GetWornDevice(libs.playerref, libs.zad_DeviousCollar)
			libs.removeDevice(libs.PlayerRef, device, libs.GetRenderedDevice(device), libs.zad_DeviousCollar, destroyDevice = false, skipevents = false, skipmutex = true)						
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
		msg = "You click the collar shut on your neck."			
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnEquippedPost(actor akActor)
	LockCollar()	
EndFunction