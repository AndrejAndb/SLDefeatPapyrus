Scriptname dcur_nonremovableglovesScript extends dcur_nonremovablegenericitemScript

dcur_mcmconfig Property dcumenu  Auto  
dcur_mastercontrollerscript Property mcs Auto

Message property dcur_rubbergloveslockMSG Auto

Function OnEquippedPre(actor akActor, bool silent=false)
	if akActor == libs.PlayerRef						
		applymessage = "You let your fingers run over the smooth rubber before you slip your arms into them, pull the locking bands tight and secure them with locks."		
	Else
		applymessage = "You slide the rubber gloves over "+GetMessageName(akActor)+"'s arms and lock them tight."
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key				
		if CheckMultiLock()			
			libs.Notify("You remove the last lock from your rubber gloves and slip your arms out of them.", messagebox = true)											
			DeviceMenuRemoveWithKey()	
		else
			libs.Notify("You need " + multikeys + " " + deviceKey.GetName() + " to unlock this restraint!", messagebox = true)						
		endif		
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	elseif msgChoice == 3 ; Link the gloves
		if dcur_rubbergloveslockMSG.Show() == 0
			mcs.lockRubberGloves = True
			mcs.RegisterForSingleUpdate(0.1)
		endif
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

Function OnRemoveDevice(actor akActor)	
	Parent.OnRemoveDevice(akActor)
EndFunction