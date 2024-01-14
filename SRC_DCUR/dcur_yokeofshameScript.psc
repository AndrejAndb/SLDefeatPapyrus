Scriptname dcur_yokeofshameScript extends zadequipscript  

dcur_publicindecencyQuestScript Property piqs Auto

Function DeviceMenu(Int msgChoice = 0)
	msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		if piqs.dcur_pi_timedyoke_lockstatus.GetValueInt() == 0 	
			RemoveDevice(libs.playerref)
		Else
			Libs.Notify("You cannot remove this item until the timer is up.", messagebox = true)
		EndIf		
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

Function OnEquippedPost(actor akActor)	
	piqs.LockYoke()
EndFunction

