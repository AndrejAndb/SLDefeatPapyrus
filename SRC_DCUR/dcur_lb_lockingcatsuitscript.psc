Scriptname dcur_lb_lockingcatsuitscript extends zadequipscript  

GlobalVariable property dcur_lb_catsuit_lockstate_backzipper Auto
GlobalVariable property dcur_lb_catsuit_lockstate_frontzipper Auto
GlobalVariable property dcur_lb_catsuit_lockstate_neckcuff Auto
GlobalVariable property dcur_lb_catsuit_lockstate_ranklecuff Auto
GlobalVariable property dcur_lb_catsuit_lockstate_lanklecuff Auto
GlobalVariable property dcur_lb_catsuit_lockstate_rwristcuff Auto
GlobalVariable property dcur_lb_catsuit_lockstate_lwristcuff Auto
Key property dcur_bodyrestraintskey Auto
Message property dcur_lockingcatsuitunlockMSG Auto

Keyword property dcur_lb_rubbersuitquest Auto
dcur_lbquestScript Property lbqs Auto

dcur_mcmconfig Property dcumenu  Auto  

Function LockSuit()
	dcur_lb_catsuit_lockstate_backzipper.SetValueInt(1)
	dcur_lb_catsuit_lockstate_frontzipper.SetValueInt(1)
	dcur_lb_catsuit_lockstate_neckcuff.SetValueInt(1)
	dcur_lb_catsuit_lockstate_ranklecuff.SetValueInt(1)
	dcur_lb_catsuit_lockstate_lanklecuff.SetValueInt(1)
	dcur_lb_catsuit_lockstate_rwristcuff.SetValueInt(1)
	dcur_lb_catsuit_lockstate_lwristcuff.SetValueInt(1)
EndFunction

Bool Function CheckLockState()
	If dcur_lb_catsuit_lockstate_backzipper.GetValueInt() == 0 && dcur_lb_catsuit_lockstate_frontzipper.GetValueInt() == 0 && dcur_lb_catsuit_lockstate_ranklecuff.GetValueInt() == 0 && dcur_lb_catsuit_lockstate_lanklecuff.GetValueInt() == 0 && dcur_lb_catsuit_lockstate_neckcuff.GetValueInt() == 0 && dcur_lb_catsuit_lockstate_rwristcuff.GetValueInt() == 0 && dcur_lb_catsuit_lockstate_lwristcuff.GetValueInt() == 0
		return false
	endif
	return true
EndFunction

bool Function UnlockDialogue()
	int choice = dcur_lockingcatsuitunlockMSG.show()
	if choice == 0 ; backzipper
		dcur_lb_catsuit_lockstate_backzipper.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 1 ; frontzipper
		dcur_lb_catsuit_lockstate_frontzipper.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 2 ; neck cuff
		dcur_lb_catsuit_lockstate_neckcuff.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 3 ; right ankle
		dcur_lb_catsuit_lockstate_ranklecuff.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 4 ; left ankle	
		dcur_lb_catsuit_lockstate_lanklecuff.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 5 ; right wrist
		dcur_lb_catsuit_lockstate_rwristcuff.SetValueInt(0)
		libs.playerref.removeitem(dcur_bodyrestraintskey, 1)
	elseif choice == 6 ; left wrist
		dcur_lb_catsuit_lockstate_lwristcuff.SetValueInt(0)
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
			libs.Notify("You cannot remove the rubber suit while the hood is still locked on you!", messageBox=true)		
			return
		endif
		if !lbqs.lb_hasremoved_RestrainingBelt || libs.playerref.wornhaskeyword(lbqs.dcur_kw_lb_fakecatsuit)
			libs.Notify("You cannot remove the rubber suit while the steel chastity belt is still locked on you!", messageBox=true)		
			return
		endif
		if !lbqs.lb_hasremoved_catsuitgloves
			libs.Notify("You cannot remove the rubber suit while the rubber gloves are still locked on you!", messageBox=true)		
			return
		endif
		if !lbqs.lb_hasremoved_RigidBra
			libs.Notify("You cannot remove the rubber suit while a chastity bra is still locked on you!", messageBox=true)		
			return
		endif
		if !lbqs.lb_hasremoved_catsuitboots
			libs.Notify("You cannot remove the rubber suit while the rubber boots are still locked on you!", messageBox=true)		
			return
		endif
		if !lbqs.lb_hasremoved_collar
			libs.Notify("You cannot remove the rubber suit while the steel collar is still locked on you!", messageBox=true)		
			return
		endif
		if UnlockDialogue()										
			libs.Notify("You remove the last lock from your rubber suit before you open the zippers. Your naked body is sweaty from being covered by a rubber skin for so long and it takes you a while to peel the rubbery second skin from your body.", messagebox = true)			
			Armor device = libs.GetWornDevice(libs.playerref, libs.zad_DeviousSuit)						
			libs.removeDevice(libs.PlayerRef, device, libs.GetRenderedDevice(device), libs.zad_DeviousSuit, destroyDevice = false, skipevents = false, skipmutex = true)			
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
		msg = "You step into the rubber suit and close the zippers. The incredibly skin tight suit leaves no feature about your curvy body to imagination, making you feel sexy and desirable. You run your hands across the smooth rubber while you apply the appropriate locks to the zippers and reinforced bands on the neck, wrists and ankles."		
	Else
		msg = "You put the suit on "+GetMessageName(akActor)+" and lock it shut."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf		
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnEquippedPost(actor akActor)	
	LockSuit()		
EndFunction

Function SendSignal()	
	lbqs.removed_Catsuit = true
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction
