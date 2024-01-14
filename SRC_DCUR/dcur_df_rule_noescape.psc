Scriptname dcur_df_rule_noescape extends dcur_df_baserule  

Bool Function EvaluateRule()
	; evalute the rule - return true if the player is found in compliance with the rule, false otherwise.	
	; We punish when a violation is detected, so need to use this function here.
	Return True
EndFunction

Function EnactRule()		
	RegisterForModEvent("DDI_DeviceEscapeAttempt", "OnDeviceEscapeAttempt")	
	RegisterForModEvent("DDI_DeviceRemoved", "OnDeviceRemoved")		
	Parent.EnactRule()
EndFunction

Event OnDeviceEscapeAttempt(armor inventoryDevice, keyword deviceKeyword, bool successful)				
	If Successful
		; we cover only failed attempts here. Successful unlocks are covered in OnDeviceRemoved.
		Return
	EndIf
	Int Chance
	If deviceKeyword == dfs.libs.zad_DeviousHeavyBondage || deviceKeyword == dfs.libs.zad_DeviousGag || deviceKeyword == dfs.libs.zad_DeviousSuit || deviceKeyword == dfs.libs.zad_DeviousBlindfold
		; escaping more punishing items carries a higher risk.
		Chance = 7
	Else
		Chance = 5
	EndIf
	If Utility.RandomInt() < chance
		dfs.libs.notify(dfs.GetMasterName() + " saw you trying to escape your restraints. This insubordination is not acceptable! Slaves need to welcome their restraints!", messagebox = true)			
		dfs.PunishTimedItems(0, 50)
	EndIf
EndEvent

Event OnDeviceRemoved(armor inventoryDevice, keyword deviceKeyword, actor akActor)
	; This shouldn't be called when devices are getting removed by script, so we can assume the player used the unlock dialogue:
	If Utility.RandomInt() < 20
		dfs.libs.notify(dfs.GetMasterName() + " saw you unlocking one of your restraints. This insubordination is not acceptable! Slaves need to welcome their restraints!", messagebox = true)
		dfs.libs.LockDevice(dfs.libs.PlayerRef, inventoryDevice)
		dfs.PunishTimedItems(50, 100)
	EndIf
EndEvent

Event OnPlayerLoadGame()	
	RegisterForModEvent("DDI_DeviceEscapeAttempt", "OnDeviceEscapeAttempt")	
	RegisterForModEvent("DDI_DeviceRemoved", "OnDeviceRemoved")		
	Parent.OnPlayerLoadGame()
EndEvent
