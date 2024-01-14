Scriptname dcur_rubberGlovesScript extends zadequipscript  

dcur_mcmconfig Property dcumenu  Auto  
dcur_mastercontrollerscript Property mcs Auto

GlobalVariable property dcur_lb_rubbergloves_lockstate_lshaft Auto
GlobalVariable property dcur_lb_rubbergloves_lockstate_rshaft Auto
GlobalVariable property dcur_lb_rubbergloves_lockstate_lwrist Auto
GlobalVariable property dcur_lb_rubbergloves_lockstate_rwrist Auto

Message property dcur_lb_rubberglovesunlockMSG Auto
Message property dcur_rubbergloveslockMSG Auto

Function LockGloves()
	dcur_lb_rubbergloves_lockstate_lshaft.SetValueInt(1)
	dcur_lb_rubbergloves_lockstate_rshaft.SetValueInt(1)
	dcur_lb_rubbergloves_lockstate_lwrist.SetValueInt(1)		
	dcur_lb_rubbergloves_lockstate_rwrist.SetValueInt(1)		
EndFunction

Bool Function CheckLockState()
	If dcur_lb_rubbergloves_lockstate_lshaft.GetValueInt() == 0 && dcur_lb_rubbergloves_lockstate_rshaft.GetValueInt() == 0 && dcur_lb_rubbergloves_lockstate_lwrist.GetValueInt() == 0 && dcur_lb_rubbergloves_lockstate_rwrist.GetValueInt() == 0 
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lb_rubberglovesunlockMSG.show()
	if choice == 0 
		dcur_lb_rubbergloves_lockstate_lshaft.SetValueInt(0)
		libs.playerref.removeitem(dcumenu.dcur_handrestraintskey, 1)
	elseif choice == 1 
		dcur_lb_rubbergloves_lockstate_rshaft.SetValueInt(0)
		libs.playerref.removeitem(dcumenu.dcur_handrestraintskey, 1)
	elseif choice == 2 
		dcur_lb_rubbergloves_lockstate_lwrist.SetValueInt(0)
		libs.playerref.removeitem(dcumenu.dcur_handrestraintskey, 1)		
	elseif choice == 3
		dcur_lb_rubbergloves_lockstate_rwrist.SetValueInt(0)
		libs.playerref.removeitem(dcumenu.dcur_handrestraintskey, 1)		
	endif
	if !CheckLockState()
		return true ; unlocked
	endif
	return false
Endfunction

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You let your fingers run over the smooth rubber before you slip your arms into them, pull the locking bands tight and secure them with locks."		
	Else
		msg = "You slide the rubber gloves over "+GetMessageName(akActor)+"'s arms and lock them tight."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key		
		if deviceKey != libs.RestraintsKey			
			if UnlockDialogue()			
				libs.Notify("You remove the last lock from your rubber gloves and slip your arms out of them.", messagebox = true)							
				Armor device = libs.GetWornDevice(libs.playerref, libs.zad_DeviousGloves)
				libs.removeDevice(libs.PlayerRef, device, libs.GetRenderedDevice(device), libs.zad_DeviousGloves, destroyDevice = false, skipevents = false, skipmutex = true)						
				;DeviceMenuRemoveWithKey()	
			endif
		else		
			DeviceMenuRemoveWithKey()			
		endif
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	elseif msgChoice == 3 ; Link the gloves
		if dcur_rubbergloveslockMSG.Show() == 0
			mcs.lockRubberGloves = True
			mcs.RegisterForSingleUpdate(0.1)
		endif
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

Function OnEquippedPost(actor akActor)	
	if deviceKey != libs.RestraintsKey			 
		LockGloves()			
	endif
EndFunction
