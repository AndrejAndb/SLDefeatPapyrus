Scriptname dcur_lb_SlaveBootsScript extends zadequipscript  

GlobalVariable property dcur_lb_slaveboots_lockstate_lshaft Auto
GlobalVariable property dcur_lb_slaveboots_lockstate_rshaft Auto
GlobalVariable property dcur_lb_slaveboots_lockstate_lboot Auto
GlobalVariable property dcur_lb_slaveboots_lockstate_rboot Auto

Key property dcur_legrestraintskey Auto
Message property dcur_lb_slavebootsunlockMSG Auto

dcur_lbquestScript Property lbqs Auto
dcur_mcmconfig Property dcumenu  Auto  

Function LockBoots()
	dcur_lb_slaveboots_lockstate_lshaft.SetValueInt(1)
	dcur_lb_slaveboots_lockstate_rshaft.SetValueInt(1)
	dcur_lb_slaveboots_lockstate_lboot.SetValueInt(1)		
	dcur_lb_slaveboots_lockstate_rboot.SetValueInt(1)		
EndFunction

Bool Function CheckLockState()
	If dcur_lb_slaveboots_lockstate_lshaft.GetValueInt() == 0 && dcur_lb_slaveboots_lockstate_rshaft.GetValueInt() == 0 && dcur_lb_slaveboots_lockstate_lboot.GetValueInt() == 0 && dcur_lb_slaveboots_lockstate_rboot.GetValueInt() == 0 
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lb_slavebootsunlockMSG.show()
	if choice == 0 
		dcur_lb_slaveboots_lockstate_lshaft.SetValueInt(0)
		libs.playerref.removeitem(dcur_legrestraintskey, 1)
	elseif choice == 1 
		dcur_lb_slaveboots_lockstate_rshaft.SetValueInt(0)
		libs.playerref.removeitem(dcur_legrestraintskey, 1)
	elseif choice == 2 
		dcur_lb_slaveboots_lockstate_lboot.SetValueInt(0)
		libs.playerref.removeitem(dcur_legrestraintskey, 1)		
	elseif choice == 3
		dcur_lb_slaveboots_lockstate_rboot.SetValueInt(0)
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
		if UnlockDialogue()			
			libs.Notify("You remove the last lock from your slave boots and slip your feet out of them.", messagebox = true)
			Armor device = libs.GetWornDevice(libs.playerref, libs.zad_DeviousBoots)
			libs.removeDevice(libs.PlayerRef, device, libs.GetRenderedDevice(device), libs.zad_DeviousBoots, destroyDevice = false, skipevents = false, skipmutex = true)
			SendSignal()
			;DeviceMenuRemoveWithKey()	
		endif
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)	
	if SKSE.GetPluginVersion("NiOverride") < 5 && SKSE.GetPluginVersion("skee") < 1 || NiOverride.GetScriptVersion() < 5
    		libs.NotifyPlayer("This device ("+deviceName+") requires NetImmerse Override, which you do not have installed.", true)
		return 2
	EndIf
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
			msg = "You sit down to slip your feet into the steel boots and lock them shut. They raise your heels by almost seven inches and when you push yourself up to stand on the thin metal rings, you need all your concentration not to fall. But with the slave boots now securely locked on you, you know that you will get ample time to practice walking in them."				
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
EndFunction

Function OnEquippedPost(actor akActor)	
	LockBoots()			
EndFunction

Function SendSignal()	
	lbqs.removed_SlaveBoots = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)	
	parent.OnUnequipped(akActor)
endfunction


