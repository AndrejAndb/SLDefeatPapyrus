Scriptname dcur_lb_lockedGlovesScript extends zadRestraintScript

Message Property dcur_shackleunlockmsg Auto 
Key Property dcur_handrestraintskey Auto
Armor Property dcur_lb_ArmCuffsLocked Auto
dcur_lbquestScript Property lbqs Auto

Keyword Property dcur_kw_lb_linkedarmcuffs Auto
Message Property dcur_lb_armcuffslockedMsg Auto

Keyword Property dcur_kw_lb_leatherbindings Auto

Armor Property dcur_lb_shackles Auto
Keyword Property dcur_kw_lb_shackles Auto
Message Property dcur_shacklesMsg Auto
Message Property dcur_shacklesStruggleMsg Auto

Function ShowShacklesMenu()
	int msgChoice = dcur_shacklesMsg.Show() ; display menu
	if msgChoice == 0 ; Struggle
		if libs.PlayerRef.GetAv("Stamina")<=35
			libs.NotifyPlayer("You are far too tired to struggle with the shackles.", true)
		Elseif libs.playerref.GetItemCount(dcur_handrestraintskey) < 1
			libs.PlayerRef.DamageAV("Stamina", 35)			
			StruggleScene(libs.PlayerRef)			
			dcur_shacklesStruggleMsg.Show()
		else
			StruggleScene(libs.PlayerRef)			
			dcur_shackleunlockmsg.Show()			
			libs.PlayerRef.RemoveItem(dcur_handrestraintskey, 1, true)					
			libs.PlayerRef.UnEquipItem(dcur_lb_shackles)
			libs.PlayerRef.RemoveItem(dcur_lb_shackles, 1, true)					
			lbqs.removed_Shackles = True	
			lbqs.RegisterForSingleUpdate(0.1)
		EndIf
	elseif msgChoice == 1 ; Endure Bonds
	endif	
EndFunction

Function ShowArmCuffsMenu()
	int msgChoice = dcur_lb_armcuffslockedMsg.Show() ; display menu
	if msgChoice == 0 ; Struggle
		if libs.PlayerRef.GetAv("Stamina")<=35
			libs.NotifyPlayer("You are far too tired to struggle with the arm cuffs.", true)
		Elseif libs.playerref.GetItemCount(dcur_handrestraintskey) < 1
			libs.PlayerRef.DamageAV("Stamina", 35)			
			StruggleScene(libs.PlayerRef)			
			dcur_shacklesStruggleMsg.Show()
		else
			if Utility.RandomInt(1,5) == 1	
				StruggleScene(libs.PlayerRef)			
				dcur_shackleunlockmsg.Show()			
				libs.PlayerRef.RemoveItem(dcur_handrestraintskey, 1, true)					
				libs.PlayerRef.UnEquipItem(dcur_lb_ArmCuffsLocked)
				libs.PlayerRef.RemoveItem(dcur_lb_ArmCuffsLocked, 1, true)	
				lbqs.removed_LockedArmCuffs = True	
				lbqs.RegisterForSingleUpdate(0.1)			
			else
				StruggleScene(libs.PlayerRef)			
				libs.NotifyPlayer("You desperately try to insert the key into the padlock, but with your hands and elbows being bound tight, you fail to slide the key into the lock", true)
			endif
		EndIf
	elseif msgChoice == 1 ; Endure Bonds
	endif	
EndFunction

Function DeviceMenu(Int msgChoice = 0)
	msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		if libs.playerref.wornhaskeyword(dcur_kw_lb_shackles)
			ShowShacklesMenu()
		elseif libs.playerref.wornhaskeyword(dcur_kw_lb_linkedarmcuffs)
			ShowArmCuffsMenu()
		elseif libs.playerref.wornhaskeyword(dcur_kw_lb_leatherbindings)
			StruggleScene(libs.PlayerRef)			
			libs.notify("The leather bindings sit too tight on you to be able to struggle them off. Maybe you should look around for a sharp object to cut them open?", messagebox = true)		
		else
			if libs.PlayerRef.GetAv("Stamina")<=35
				libs.NotifyPlayer("You are far too tired to struggle with the gloves.", true)
			Elseif libs.playerref.GetItemCount(dcur_handrestraintskey) < 2
				libs.PlayerRef.DamageAV("Stamina", 35)			
				StruggleScene(libs.PlayerRef)			
				if libs.playerref.GetItemCount(dcur_handrestraintskey) > 0
					libs.NotifyPlayer("You need a second key to unlock both the padlocks locking your gloves together.", true)
				else				
					libs.NotifyPlayer("You need the proper keys to unlock both the padlocks locking your gloves together.", true)
				endif
			else
				StruggleScene(libs.PlayerRef)			
				if Utility.RandomInt(1,5) == 1	
					libs.NotifyPlayer("You desperately try to insert the key into the padlock, and with a lot of effort, finally succeed!", true)
					lbqs.removed_lockedGloves = True
					lbqs.RegisterForSingleUpdate(0.1)
				else
					libs.NotifyPlayer("You desperately try to insert the key into the padlock, but with your hands and elbows being bound tight, you fail to slide the key into the lock", true)
				endif
			EndIf			
		endif
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction
