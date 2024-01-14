Scriptname dcur_royalchastity_CollarScript extends dcur_nonremovablegenericitemScript  

int Function OnEquippedFilter(actor akActor, bool silent=false)	
	if silent
		return 0 ; Proceed.
	EndIf
        int interaction = zad_DeviceMsg.Show()
        if interaction == 0 ; Equip Device		
			if deviceKey != none && akActor.GetItemCount(deviceKey) < 1
				libs.Notify("Queen Sarah's collar is a masterpiece and made of the finest material available. Despite its age, its locks are in a pristine condition and would still lock the collar securely on a woman's neck. You do not possess a key and no blacksmith was ever able to pick the locks in many decades. Locking the collar on yourself would be foolish, unless you want to wear it for the rest of your life, like Queen Sarah.", messagebox = true)						
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