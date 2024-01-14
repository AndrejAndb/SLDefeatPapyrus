Scriptname dcur_lb_BallGagScript extends zadequipscript  

import MfgConsoleFunc

dcur_mcmconfig Property dcumenu  Auto  
dcur_lbquestScript Property lbqs Auto

Function SendSignal()	
	lbqs.removed_BallGag = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)		
	parent.OnUnequipped(akActor)
endfunction

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		DeviceMenuRemoveWithKey()
		SendSignal()		
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
		msg = "You put the ball gag on your head and pull the straps tight before you lock them in place with padlocks."		
	Else
		msg = "You put the ball gag over "+GetMessageName(akActor)+"'s head and close the zippers before you lock them in place with padlocks."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnRemoveDevice(actor akActor)
	if !libs.IsAnimating(akActor)
		akActor.ClearExpressionOverride()
		ResetPhonemeModifier(akActor)
	EndIf
EndFunction

Function OnEquippedPost(actor akActor)	
	libs.ApplyGagEffect(akActor)	
EndFunction