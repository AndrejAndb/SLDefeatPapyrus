Scriptname dcur_df_rule_MasterFollower extends dcur_df_baserule  

Function EnactRule()	
	dfs.libs.notify(dfs.GetMasterName() + " is now your master and in complete control of you. You will need to keep " + dfs.GetMasterPronoun() + " as a follower at all times, and will have to remain close to " + dfs.GetMasterPronoun() + ", or be punished.", messagebox = true)
	Parent.EnactRule()
EndFunction

Bool Function EvaluateRule()
	; evalute the rule - return true if the player is found in compliance with the rule, false otherwise.
	Return (dfs.aMaster.GetFactionRank(dfs.CurrentFollowerFaction) >= 0) && (dfs.aMaster.GetDistance(dfs.aPlayer) < 1.500)
EndFunction

Function Warn()
	; what happens if the player is considered in violation (warn level).
	DisplayWarning(False)
	Parent.Warn()
EndFunction

Function Compliance()
	If dfs.aPlayer.IsEquipped(dfs.dcur_df_SlaveCollarStrict_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_SlaveCollarStrict_Inventory, dfs.dcur_df_SlaveCollarStrict_Rendered, dfs.libs.zad_DeviousCollar, destroydevice = true, skipmutex = true)
		DisplayCompliance(True)
		dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_SlaveCollar_Inventory, dfs.dcur_df_SlaveCollar_Rendered, dfs.libs.zad_DeviousCollar, skipmutex = true)		
	Else
	EndIf
EndFunction

Function Consequences()
	; what happens if the player is considered in violation (punish level).
	If !dfs.aPlayer.IsEquipped(dfs.dcur_df_SlaveCollarStrict_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_SlaveCollar_Inventory, dfs.dcur_df_SlaveCollar_Rendered, dfs.libs.zad_DeviousCollar, destroydevice = true, skipmutex = true)
		DisplayViolation(true)
		dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_SlaveCollarStrict_Inventory, dfs.dcur_df_SlaveCollarStrict_Rendered, dfs.libs.zad_DeviousCollar, skipmutex = true)		
	Else
		;DisplayWarning(False)
	EndIf
	Parent.Consequences()
EndFunction