Scriptname dcur_cursedBraScript extends zadEquipScript  


int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor == none
		akActor == libs.PlayerRef
	EndIf
	if !akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Piercings + Bra).")
			return 0
		EndIf			
	Endif
	return 0
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
			msg = "You place the two heavy metal cups over your breasts and slip the bra around your chest. Probably an intended feature for these devices, the bra is borderline too small for you and sitting just as tight on you as the belt, but you manage to press the shackle into the lock with a bit of force. Once more, you hear a inaccessible locking mechanism click shut, telling you that your breasts are now sealed away and out of reach for any caressing hands."				
	Else
		msg = "You slip the bra around "+GetMessageName(akActor)+" chest, and it locks in place with a soft click."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
EndFunction

Function OnEquippedPost(actor akActor)
	dcur_cursedcollarquestscript ccqs = None
	ccqs = Game.GetFormFromFile(0x000058CC, "Deviously Cursed Loot.esp") as dcur_cursedcollarquestscript		
	ccqs.SetNextStage()
EndFunction

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarilyQuest Property dcur_cursedcollarquest  Auto  
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		
	;	DeviceMenuRemoveWithKey()
		libs.Notify("This " + deviceName + " has a no visible lock at all.", messageBox=true)
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction
