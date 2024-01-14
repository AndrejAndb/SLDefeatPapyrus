Scriptname dcur_cursedArmCuffsScript extends zadRestraintScript

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You let your fingers run over the smooth surface of the shackles. The heavy metal restraints have a one-time lock that cannot be opened once they are locked shut. Knowing that there is no way back now, you place the first pair of shackles on your elbows and click them shut, then repeat the process with your wrists. The shackles snug tightly around your wrists, making it completely impossible to slip your hands out of them. With no obvious way to unlock the restraints, you wonder if you will ever get out of them again."		
	Else
		msg = "You snap the shackles around "+GetMessageName(akActor)+" wrists and lock them shut."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
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
