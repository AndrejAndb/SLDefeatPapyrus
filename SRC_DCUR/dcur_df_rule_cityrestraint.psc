Scriptname dcur_df_rule_cityrestraint extends dcur_df_baserule  

Bool Function EvaluateRule()
	; evalute the rule - return true if the player is found in compliance with the rule, false otherwise.
	If dfs.dclibs.GetIsOutdoors() && dfs.aPlayer.IsEquipped(dfs.dcur_df_ElbowBinder_Rendered)
		dfs.libs.notify(dfs.GetMasterName() + " unlocks your restraint to enable you to defend yourself.")
		If dfs.aPlayer.IsEquipped(dfs.dcur_df_ElbowBinder_Rendered)
			dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_ElbowBinder_Inventory, dfs.dcur_df_ElbowBinder_Rendered, dfs.libs.zad_DeviousHeavyBondage, destroydevice = true, skipmutex = true)
		ElseIf dfs.aPlayer.IsEquipped(dfs.dcur_df_PrisonerChains_Rendered)
			dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_PrisonerChains_Inventory, dfs.dcur_df_PrisonerChains_Rendered, dfs.libs.zad_DeviousHeavyBondage, destroydevice = true, skipmutex = true)
		EndIf
	EndIf
	If !dfs.dclibs.GetIsOutdoors() && !dfs.aPlayer.IsEquipped(dfs.dcur_df_ElbowBinder_Rendered)		
		dfs.libs.notify(dfs.GetMasterName() + " locks a restraint on you because you are now in a safe area.")
		dfs.dclibs.Strip(dfs.aPlayer, False)
		Utility.Wait(0.5)
		If Utility.RandomInt(0,1) == 0
			dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_ElbowBinder_Inventory, dfs.dcur_df_ElbowBinder_Rendered, dfs.libs.zad_DeviousHeavyBondage, skipmutex = true)
		Else
			dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_PrisonerChains_Inventory, dfs.dcur_df_PrisonerChains_Rendered, dfs.libs.zad_DeviousHeavyBondage, skipmutex = true)
		EndIf
	EndIf
	Return True
EndFunction

Function EnactRule()
	dfs.libs.notify(dfs.GetMasterName() + " has decided to keep you bound tight in cities and towns, to keep you better under control. Since your master is generous, you will be allowed to remove your bindings in unsafe areas, so you can defend yourself.", messagebox = true)
	Parent.EnactRule()
EndFunction

Function SuspendRule()
	DisplayDescriptionEnd(True)
	Parent.SuspendRule()
EndFunction