Scriptname dcur_nonremovablecorsetscript extends dcur_nonremovablegenericitemScript

Armor Property stateDefault Auto
Armor Property stateBeltedFull Auto 
Armor Property stateBeltedOpen Auto 

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		libs.NotifyActor("You pull the corset around "+GetMessageName(akActor)+" waist, and lock it in the back.", akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor == none
		akActor == libs.PlayerRef
	EndIf
	if !akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Corset).")
			return 0
		EndIf
		if akActor.WornHasKeyword(libs.zad_DeviousHarness)
			MultipleItemFailMessage("Harness")
			return 2
		Endif
	Endif
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
