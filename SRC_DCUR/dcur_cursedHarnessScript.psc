Scriptname dcur_cursedHarnessScript extends zadRestraintScript

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarilyQuest Property dcur_cursedcollarquest  Auto  
		;DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		DeviceMenuRemoveWithKey()
		;libs.Notify("This " + deviceName + " has a no visible lock at all.", messageBox=true)
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		if akActor == libs.PlayerRef
			libs.NotifyActor("As you step into the harness, you notice that the straps were carefully designed in a way that you won't ever be able to struggle out of them and that it can't be even be locked unless the straps are pulled very tight around your body. When you finally manage to shut the lock, the strong leather straps are cutting uncomfortably into your soft flesh.", akActor, true)
		Else
			libs.NotifyActor(GetMessageName(akActor) +" steps in to the harness, securing it tightly against her body.", akActor, true)
			
		EndIf
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor == none
		akActor == libs.PlayerRef
	EndIf
	if ! akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Harness + Collar).")
			return 0
		EndIf		
	Endif
	return 0
EndFunction

Function OnEquippedPost(actor akActor)
	dcur_cursedcollarquestscript ccqs = None
	ccqs = Game.GetFormFromFile(0x000058CC, "Deviously Cursed Loot.esp") as dcur_cursedcollarquestscript		
	ccqs.SetNextStage()
EndFunction
