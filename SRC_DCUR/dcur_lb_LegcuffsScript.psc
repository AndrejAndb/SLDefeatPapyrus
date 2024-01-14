Scriptname dcur_lb_LegcuffsScript extends zadequipscript  

import MfgConsoleFunc
GlobalVariable property dcur_lb_legcuffs_lockstate_lthigh Auto
GlobalVariable property dcur_lb_legcuffs_lockstate_rthigh Auto
GlobalVariable property dcur_lb_legcuffs_lockstate_lankle Auto
GlobalVariable property dcur_lb_legcuffs_lockstate_rankle Auto
Key Property dcur_legrestraintskey  Auto  

Message property dcur_lb_legcuffsunlockMSG Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_lbquestScript Property lbqs Auto

Function LockLegcuffs()
	dcur_lb_legcuffs_lockstate_lthigh.SetValueInt(1)	
	dcur_lb_legcuffs_lockstate_rthigh.SetValueInt(1)
	dcur_lb_legcuffs_lockstate_lankle.SetValueInt(1)
	dcur_lb_legcuffs_lockstate_rankle.SetValueInt(1)
EndFunction

Function SendSignal()	
	lbqs.removed_LegCuffs = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)	
	parent.OnUnequipped(akActor)
endfunction

Bool Function CheckLockState()
	If dcur_lb_legcuffs_lockstate_lthigh.GetValueInt() == 0 && dcur_lb_legcuffs_lockstate_rthigh.GetValueInt() == 0 && dcur_lb_legcuffs_lockstate_lankle.GetValueInt() == 0 && dcur_lb_legcuffs_lockstate_rankle.GetValueInt() == 0
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lb_legcuffsunlockMSG.show()
	if choice == 0 ;
		dcur_lb_legcuffs_lockstate_lthigh.SetValueInt(0)
		libs.playerref.removeitem(dcur_legrestraintskey, 1)
	elseif choice == 1 
		dcur_lb_legcuffs_lockstate_rthigh.SetValueInt(0)
		libs.playerref.removeitem(dcur_legrestraintskey, 1)
	elseif choice == 2 
		dcur_lb_legcuffs_lockstate_lankle.SetValueInt(0)
		libs.playerref.removeitem(dcur_legrestraintskey, 1)
	elseif choice == 3 
		dcur_lb_legcuffs_lockstate_rankle.SetValueInt(0)
		libs.playerref.removeitem(dcur_legrestraintskey, 1)
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
			libs.Notify("You cannot remove the hood with bound hands!", messageBox=true)		
			return
		endif
		if UnlockDialogue()			
			libs.Notify("You open the last lock and finally remove the cuffs from your thighs and ankles.", messagebox = true)			
			Armor device = libs.GetWornDevice(libs.playerref, libs.zad_DeviousLegCuffs)
			libs.removeDevice(libs.PlayerRef, device, libs.GetRenderedDevice(device), libs.zad_DeviousLegCuffs, destroyDevice = false, skipevents = false, skipmutex = true)						
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
		msg = "You click the legcuffs shut on your thighs and ankles."			
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnEquippedPost(actor akActor)
	LockLegcuffs()	
EndFunction