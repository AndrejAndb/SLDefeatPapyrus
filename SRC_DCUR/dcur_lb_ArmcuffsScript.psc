Scriptname dcur_lb_ArmcuffsScript extends zadequipscript  

import MfgConsoleFunc
GlobalVariable property dcur_lb_armcuffs_lockstate_lelbow Auto
GlobalVariable property dcur_lb_armcuffs_lockstate_relbow Auto
GlobalVariable property dcur_lb_armcuffs_lockstate_rwrist Auto
GlobalVariable property dcur_lb_armcuffs_lockstate_lwrist Auto
Key Property dcur_handrestraintskey  Auto  

Message property dcur_lb_armcuffsunlockMSG Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_lbquestScript Property lbqs Auto

Function LockArmcuffs()
	dcur_lb_armcuffs_lockstate_lelbow.SetValueInt(1)	
	dcur_lb_armcuffs_lockstate_relbow.SetValueInt(1)
	dcur_lb_armcuffs_lockstate_lwrist.SetValueInt(1)
	dcur_lb_armcuffs_lockstate_rwrist.SetValueInt(1)
EndFunction

Function SendSignal()	
	lbqs.removed_ArmCuffs = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)		
	parent.OnUnequipped(akActor)
endfunction

Bool Function CheckLockState()
	If dcur_lb_armcuffs_lockstate_lelbow.GetValueInt() == 0 && dcur_lb_armcuffs_lockstate_relbow.GetValueInt() == 0 && dcur_lb_armcuffs_lockstate_lwrist.GetValueInt() == 0 && dcur_lb_armcuffs_lockstate_rwrist.GetValueInt() == 0
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lb_armcuffsunlockMSG.show()
	if choice == 0 ;
		dcur_lb_armcuffs_lockstate_relbow.SetValueInt(0)
		libs.playerref.removeitem(dcur_handrestraintskey, 1)
	elseif choice == 1 
		dcur_lb_armcuffs_lockstate_lelbow.SetValueInt(0)		
		libs.playerref.removeitem(dcur_handrestraintskey, 1)
	elseif choice == 2 
		dcur_lb_armcuffs_lockstate_rwrist.SetValueInt(0)
		libs.playerref.removeitem(dcur_handrestraintskey, 1)
	elseif choice == 3 
		dcur_lb_armcuffs_lockstate_lwrist.SetValueInt(0)		
		libs.playerref.removeitem(dcur_handrestraintskey, 1)
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
			libs.Notify("You open the last lock and finally remove the cuffs from your wrists and elbows.", messagebox = true)			
			libs.removeDevice(libs.PlayerRef, lbqs.dcur_lb_ArmCuffs, lbqs.dcur_lb_ArmCuffsRendered, libs.zad_DeviousArmCuffs, false, false, true)			
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
		msg = "You click the armcuffs shut on your wrists and elbows."			
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnEquippedPost(actor akActor)
	LockArmcuffs()	
EndFunction