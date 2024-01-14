Scriptname dcur_nonremovablegenericitemScript extends zadequipscript  

int property multikeys Auto
bool property destroykeys = true Auto
String property applymessage Auto

int Function OnEquippedFilter(actor akActor, bool silent=false)	
	if silent
		return 0 ; Proceed.
	EndIf
        int interaction = zad_DeviceMsg.Show()
        if interaction == 0 ; Equip Device		
			return 0 ; Proceed
		else ; If interaction == 2 ; Put it away
			return 2
		EndIf	
	return 0
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)	
	if applymessage == "" 
		if akActor == libs.PlayerRef
			applymessage = "You apply the " + deviceInventory.GetName() + " and eagerly press the lock shut."
		Else
			applymessage = "You apply the " + deviceInventory.GetName() + " on " + akActor.GetLeveledActorBase().GetName() + " and press the lock shut."
		EndIf
	Endif
	if !silent
		libs.NotifyActor(applymessage, akActor, true)
	EndIf	
	applymessage = ""
	;Parent.OnEquippedPre(akActor, silent)
EndFunction

Bool Function CheckMultiLock()
	if !deviceKey
		return true
	Endif
	If libs.playerref.GetItemCount(devicekey) >= multikeys		
		return true
	EndIf
	Return false
EndFunction

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		if CheckMultiLock()			
			libs.Notify("You unlock the " + deviceInventory.GetName() + " and feel relieved as the restraint finally releases its tight hold on you.", messagebox = true)						
			DeviceMenuRemoveWithKey()	
			if destroykeys
				libs.playerref.RemoveItem(devicekey, multikeys)
			Endif
		else
			libs.Notify("You need " + multikeys + " " + deviceKey.GetName() + " to unlock this restraint!", messagebox = true)						
		endif
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

Function DeviceMenuEquip()
    EquipDevice(libs.PlayerRef)
EndFunction

function DeviceMenuRemoveWithKey()
    RemoveDeviceWithKey()	
EndFunction

Function OnRemoveDevice(actor akActor)	
	Parent.OnRemoveDevice(akActor)
EndFunction