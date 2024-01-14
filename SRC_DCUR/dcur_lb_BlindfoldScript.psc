Scriptname dcur_lb_BlindfoldScript extends zadEquipScript

dcur_lbquestScript Property lbqs Auto
dcur_mcmconfig Property dcumenu  Auto 

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		libs.NotifyActor("You slip the blindfold around "+GetMessageName(akActor)+" head, and it locks in place with a soft click.", akActor, true)
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarilyQuest Property dcur_cursedcollarquest  Auto  
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		if !lbqs.lb_hasremoved_Hood
			libs.Notify("You cannot remove the blindfold with the hood still locked on you!", messageBox=true)		
			return
		endif
		DeviceMenuRemoveWithKey()	
		SendSignal()
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

Function SendSignal()	
	lbqs.removed_Blindfold = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)	
	parent.OnUnequipped(akActor)
endfunction

