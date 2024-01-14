Scriptname dcur_df_rule_randomrestraint extends dcur_df_baserule  

Armor CurrentRandomRestraint
FormList Property dcur_df_rule_randomrestraintslist Auto
Float LastChangeAt

Function EnactRule()		
	dfs.libs.notify(dfs.GetMasterName() + " will equip random restraints on you every now and then, to keep things interesting and fun!", messagebox = true)
	Parent.EnactRule()
EndFunction

Function SuspendRule()
	DisplayDescriptionEnd(True)
	Parent.SuspendRule()
EndFunction

Bool Function EvaluateRule()	
	If (Utility.GetCurrentGameTime() - LastChangeAt) * 24 < 3.0
		Return True
	EndIf
	LastChangeAt = Utility.GetCurrentGameTime()
	If CurrentRandomRestraint 		
		dfs.libs.UnlockDevice(dfs.libs.PlayerRef, CurrentRandomRestraint, zad_DeviousDevice = dfs.libs.GetDeviceKeyword(CurrentRandomRestraint), destroydevice = true)		
	EndIf
	Armor newRandomDevice
	While !newRandomDevice
		newRandomDevice = dcur_df_rule_randomrestraintslist.GetAt(Utility.RandomInt(0, dcur_df_rule_randomrestraintslist.GetSize() - 1)) As Armor
		if CurrentRandomRestraint && newRandomDevice == CurrentRandomRestraint
			newRandomDevice = None
		EndIf
	EndWhile
	dfs.libs.notify(dfs.GetMasterName() + " unlocks your " + dfs.libs.GetDeviceName(CurrentRandomRestraint) + " and replaces it with a " + dfs.libs.GetDeviceName(newRandomDevice), messagebox = false)
	dfs.libs.LockDevice(dfs.libs.PlayerRef, newRandomDevice)
	CurrentRandomRestraint = newRandomDevice
	Return True
EndFunction
