Scriptname dcur_cursedlegcuffsScript extends zadRestraintScript  

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You snap the heavy metal cuffs around your thighs and ankles and press the lock shut."		
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
