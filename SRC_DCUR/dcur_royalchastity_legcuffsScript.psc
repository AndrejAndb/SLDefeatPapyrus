Scriptname dcur_royalchastity_legcuffsScript extends dcur_nonremovablegenericitemScript  

int Function OnEquippedFilter(actor akActor, bool silent=false)	
	if silent
		return 0 ; Proceed.
	EndIf
        int interaction = zad_DeviceMsg.Show()
        if interaction == 0 ; Equip Device		
			if deviceKey != none && akActor.GetItemCount(deviceKey) < 1
				libs.Notify("Queen Sarah's leg cuffs are a masterpiece and made of the finest material available. Despite their age, its locks are in a pristine condition and would still lock the cuffs securely on a woman's legs. You do not possess a key and no blacksmith was ever able to pick the locks in many decades. Locking yourself into the cuffs would be foolish, unless you want to wear them for the rest of your life, like Queen Sarah.", messagebox = true)						
				return 2
			Endif
			return 0
		else ; If interaction == 2 ; Put it away
			return 2
		EndIf	
	return 0
EndFunction

Function OnRemoveDevice(actor akActor)	
	If libs.Config.destroyKey && rcqs.GetStage() == 400
		libs.PlayerRef.AddItem(deviceKey, 1, true)
	EndIf
	Parent.OnRemoveDevice(akActor)
EndFunction

dcur_royalchastityQuestScript Property rcqs Auto