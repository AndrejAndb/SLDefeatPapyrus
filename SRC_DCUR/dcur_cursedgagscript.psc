Scriptname dcur_cursedgagScript extends zadEquipScript

Message Property callForHelpMsg Auto
Message Property zad_GagPreEquipMsg Auto
Message Property zad_GagEquipMsg Auto
Message Property zad_GagRemovedMsg Auto
Message Property zad_GagPickLockFailMsg Auto
Message Property zad_GagPickLockSuccessMsg Auto
Message Property zad_GagArmsTiedMsg Auto
Message Property zad_GagBruteForceArmsTiedMsg Auto
Message Property zad_GagBruteForceMsg Auto
import MfgConsoleFunc

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarilyQuest Property dcur_cursedcollarquest  Auto  
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		DeviceMenuRemoveWithKey()
		;libs.Notify("This " + deviceName + " has a no visible lock at all.", messageBox=true)
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You let your fingers run over the smooth rubber ball, before you reluctantly open your mouth and push it in. The large ball forces your mouth wide open and fills it almost completely. You wrap the straps around your head and pull them tight before you click the lock shut."		
	Else
		msg = "You slip the gag into "+GetMessageName(akActor)+" mouth, and lock it securely in place behind "+GetMessageName(akActor)+" head."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnEquippedPost(actor akActor)
	libs.ApplyGagEffect(akActor)
	dcur_cursedcollarquestscript ccqs = None
	ccqs = Game.GetFormFromFile(0x000058CC, "Deviously Cursed Loot.esp") as dcur_cursedcollarquestscript		
	ccqs.SetNextStage()
EndFunction
