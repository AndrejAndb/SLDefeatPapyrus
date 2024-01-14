Scriptname dcur_rubberHoodScript extends zadequipscript  

import MfgConsoleFunc
GlobalVariable property dcur_lb_hood_lockstate_rearzipper Auto
GlobalVariable property dcur_lb_hood_lockstate_neckzipper Auto
GlobalVariable property dcur_lb_hood_lockstate_mouthzipper Auto
GlobalVariable property dcur_lb_hood_lockstate_reyezipper Auto
GlobalVariable property dcur_lb_hood_lockstate_leyezipper Auto

Message property dcur_lb_hoodunlockMSG Auto
dcur_mcmconfig Property dcumenu  Auto  

Function LockHood()
	dcur_lb_hood_lockstate_rearzipper.SetValueInt(1)
	dcur_lb_hood_lockstate_neckzipper.SetValueInt(1)
	dcur_lb_hood_lockstate_mouthzipper.SetValueInt(1)
	dcur_lb_hood_lockstate_reyezipper.SetValueInt(1)
	dcur_lb_hood_lockstate_leyezipper.SetValueInt(1)
EndFunction

Bool Function CheckLockState()
	If dcur_lb_hood_lockstate_rearzipper.GetValueInt() == 0 && dcur_lb_hood_lockstate_neckzipper.GetValueInt() == 0 && dcur_lb_hood_lockstate_mouthzipper.GetValueInt() == 0 && dcur_lb_hood_lockstate_reyezipper.GetValueInt() == 0&& dcur_lb_hood_lockstate_leyezipper.GetValueInt() == 0
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lb_hoodunlockMSG.show()
	if choice == 0
		dcur_lb_hood_lockstate_neckzipper.SetValueInt(0)		
		libs.playerref.removeitem(dcumenu.dcur_headrestraintskey, 1)
	elseif choice == 1 
		dcur_lb_hood_lockstate_rearzipper.SetValueInt(0)
		libs.playerref.removeitem(dcumenu.dcur_headrestraintskey, 1)
	elseif choice == 2 
		dcur_lb_hood_lockstate_mouthzipper.SetValueInt(0)
		libs.playerref.removeitem(dcumenu.dcur_headrestraintskey, 1)
	elseif choice == 3 
		dcur_lb_hood_lockstate_reyezipper.SetValueInt(0)
		libs.playerref.removeitem(dcumenu.dcur_headrestraintskey, 1)
	elseif choice == 4 
		dcur_lb_hood_lockstate_leyezipper.SetValueInt(0)
		libs.playerref.removeitem(dcumenu.dcur_headrestraintskey, 1)
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
		if deviceKey != libs.RestraintsKey			
			if UnlockDialogue()			
				libs.Notify("You remove the last lock from your hood before you open the zippers and finally pull the hood off your head.", messagebox = true)			
				libs.removeDevice(libs.PlayerRef, dcumenu.dcur_rubberHood, dcumenu.dcur_rubberHoodRendered, libs.zad_DeviousHood, false, false, true)			
			endif
		else		
			DeviceMenuRemoveWithKey()			
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
		Else ; If interaction == 2 ; Put it away
			return 2
		EndIf	
	return 0
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You put the hood over your head and close the zippers before you lock them in place with padlocks."		
	Else
		msg = "You put the hood over "+GetMessageName(akActor)+"'s head and close the zippers before you lock them in place with padlocks."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnRemoveDevice(actor akActor)
	if !libs.IsAnimating(akActor)
		akActor.ClearExpressionOverride()
		ResetPhonemeModifier(akActor)
	EndIf
EndFunction

Function OnEquippedPost(actor akActor)
	if deviceKey != libs.RestraintsKey			 
		LockHood()
	endif
	libs.ApplyGagEffect(akActor)	
EndFunction