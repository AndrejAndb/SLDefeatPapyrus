Scriptname dcur_lb_GagScript extends zadequipscript  

import MfgConsoleFunc
GlobalVariable property dcur_lb_panelgag_lockstate_harness Auto
GlobalVariable property dcur_lb_panelgag_lockstate_plug Auto
GlobalVariable property dcur_lb_panelgag_lockstate_panel Auto
Key property dcur_headrestraintskey Auto

Message property dcur_lb_panelgagunlockMSG Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_lbquestScript Property lbqs Auto

Function LockGag()
	dcur_lb_panelgag_lockstate_harness.SetValueInt(1)
	dcur_lb_panelgag_lockstate_plug.SetValueInt(1)
	dcur_lb_panelgag_lockstate_panel.SetValueInt(1)	
EndFunction

Bool Function CheckLockState()
	If dcur_lb_panelgag_lockstate_harness.GetValueInt() == 0 && dcur_lb_panelgag_lockstate_plug.GetValueInt() == 0 && dcur_lb_panelgag_lockstate_panel.GetValueInt() == 0 
		return false
	endif
	return true
EndFunction

Function SendSignal()	
	lbqs.removed_PanelGag = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)		
	parent.OnUnequipped(akActor)
endfunction

bool Function UnlockDialogue()
	int choice = dcur_lb_panelgagunlockMSG.show()
	if choice == 0 ; backzipper
		dcur_lb_panelgag_lockstate_harness.SetValueInt(0)
		libs.playerref.removeitem(dcur_headrestraintskey, 1)
	elseif choice == 1 ; frontzipper
		dcur_lb_panelgag_lockstate_plug.SetValueInt(0)
		libs.playerref.removeitem(dcur_headrestraintskey, 1)
	elseif choice == 2 ; neck cuff
		dcur_lb_panelgag_lockstate_panel.SetValueInt(0)
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
		if !lbqs.lb_hasremoved_Hood
			libs.Notify("You cannot remove the Panel Gag with the hood still on your head!", messageBox=true)		
			return
		endif		
		if UnlockDialogue()			
			libs.Notify("You remove the last lock from your panel gag and take it off you.", messagebox = true)			
			libs.removeDevice(libs.PlayerRef, lbqs.dcur_lb_PanelGag, lbqs.dcur_lb_PanelGagRendered, libs.zad_DeviousGag, false, false, true)			
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
		msg = "You put the panel gag on your head and pull the straps tight before you lock them in place with padlocks."		
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
	LockGag()
	libs.ApplyGagEffect(akActor)	
EndFunction