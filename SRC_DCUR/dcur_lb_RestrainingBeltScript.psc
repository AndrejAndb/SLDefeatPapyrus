Scriptname dcur_lb_RestrainingBeltScript extends zadequipscript  

GlobalVariable property dcur_lb_belt_lockstate_lfront Auto
GlobalVariable property dcur_lb_belt_lockstate_rfront Auto
GlobalVariable property dcur_lb_belt_lockstate_lshield Auto
GlobalVariable property dcur_lb_belt_lockstate_rshield Auto

Key property dcur_bodyrestraintskey Auto
Message property dcur_lb_beltunlockMSG Auto

dcur_lbquestScript Property lbqs Auto
dcur_mcmconfig Property dcumenu  Auto  

Function LockBelt()
	dcur_lb_belt_lockstate_lfront.SetValueInt(1)
	dcur_lb_belt_lockstate_rfront.SetValueInt(1)
	dcur_lb_belt_lockstate_lshield.SetValueInt(1)	
	dcur_lb_belt_lockstate_rshield.SetValueInt(1)	
EndFunction

Bool Function CheckLockState()
	If dcur_lb_belt_lockstate_lfront.GetValueInt() == 0 && dcur_lb_belt_lockstate_rfront.GetValueInt() == 0 && dcur_lb_belt_lockstate_lshield.GetValueInt() == 0 && dcur_lb_belt_lockstate_rshield.GetValueInt() == 0 
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lb_beltunlockMSG.show()
	if choice == 0 
		dcur_lb_belt_lockstate_lfront.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 1 
		dcur_lb_belt_lockstate_rfront.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 2 
		dcur_lb_belt_lockstate_lshield.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)	
	elseif choice == 3
		dcur_lb_belt_lockstate_rshield.SetValueInt(0)
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
			libs.Notify("You cannot remove the chastity belt while the hood is still locked on you!", messageBox=true)		
			return
		endif
		if !lbqs.lb_hasremoved_corset
			libs.Notify("You cannot remove the chastity belt while the corset is still locked on you!", messageBox=true)		
			return
		endif
		if UnlockDialogue()			
			libs.Notify("You remove the last lock from your belt and remove the iron bands from your waist and crotch.", messagebox = true)						
			Armor device = libs.GetWornDevice(libs.playerref, libs.zad_DeviousBelt)
			libs.removeDevice(libs.PlayerRef, device, libs.GetRenderedDevice(device), libs.zad_DeviousBelt, destroyDevice = false, skipevents = false, skipmutex = true)			
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
			libs.NotifyActor("Reluctantly you wrap the metal bands around your body. You wonder if its just bad luck or cruel magic at work, but the belt is sitting so extremely tight on your hips that you have to use considerable force to press the lock shut. A shiver runs through your body as you finally hear the mechanism click inside the belt. You probe the belt by trying to slide a finger underneath it and reach your already wet pussy, but soon you sigh in frustration at the utter futility of the task. You won't be able to satisfy your desires anytime soon.", akActor, true)
		Else
			libs.NotifyActor(GetMessageName(akActor) +" locks the belt on herself and hands you the keys.", akActor, true)
			
		EndIf
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnEquippedPost(actor akActor)	
	LockBelt()			
EndFunction

Function SendSignal()	
	lbqs.removed_RestrainingBelt = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)		
	parent.OnUnequipped(akActor)
endfunction

Function OnRemoveDevice(actor akActor)		
	parent.OnRemoveDevice(akActor)	
EndFunction
