Scriptname dcur_df_rule_chastity extends dcur_df_baserule  

Bool Function EvaluateRule()
	; evalute the rule - return true if the player is found in compliance with the rule, false otherwise.	
	CheckItems()
	Return True
EndFunction

Function CheckItems()
	If !dfs.aPlayer.IsEquipped(dfs.dcur_df_ChastityBelt_Rendered)
		dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_ChastityBelt_Inventory, dfs.dcur_df_ChastityBelt_Rendered, dfs.libs.zad_DeviousBelt, skipmutex = true)
	EndIf
	Utility.Wait(0.5)
	If !dfs.aPlayer.IsEquipped(dfs.dcur_df_ChastityBra_Rendered)
		dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_ChastityBra_Inventory, dfs.dcur_df_ChastityBra_Rendered, dfs.libs.zad_DeviousBra, skipmutex = true)
	EndIf
	Utility.Wait(0.5)
	If !dfs.aPlayer.IsEquipped(dfs.dcur_df_ArmCuffs_Rendered)
		dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_Armcuffs_Inventory, dfs.dcur_df_ArmCuffs_Rendered, dfs.libs.zad_DeviousArmCuffs, skipmutex = true)
	EndIf
	If !dfs.aPlayer.IsEquipped(dfs.dcur_df_LegCuffs_Rendered)
		dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_Legcuffs_Inventory, dfs.dcur_df_LegCuffs_Rendered, dfs.libs.zad_DeviousLegCuffs, skipmutex = true)
	EndIf
EndFunction

Function RemoveItems()
	If dfs.aPlayer.IsEquipped(dfs.dcur_df_ChastityBelt_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_ChastityBelt_Inventory, dfs.dcur_df_ChastityBelt_Rendered, dfs.libs.zad_DeviousBelt, destroydevice = true, skipmutex = true)
	EndIf
	Utility.Wait(0.5)
	If dfs.aPlayer.IsEquipped(dfs.dcur_df_ChastityBra_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_ChastityBra_Inventory, dfs.dcur_df_ChastityBra_Rendered, dfs.libs.zad_DeviousBra, destroydevice = true, skipmutex = true)
	EndIf
	Utility.Wait(0.5)
	If dfs.aPlayer.IsEquipped(dfs.dcur_df_ArmCuffs_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_Armcuffs_Inventory, dfs.dcur_df_ArmCuffs_Rendered, dfs.libs.zad_DeviousArmCuffs, destroydevice = true, skipmutex = true)
	EndIf
	If dfs.aPlayer.IsEquipped(dfs.dcur_df_LegCuffs_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_Legcuffs_Inventory, dfs.dcur_df_LegCuffs_Rendered, dfs.libs.zad_DeviousLegCuffs, destroydevice = true, skipmutex = true)
	EndIf
	If dfs.aPlayer.IsEquipped(dfs.dcur_df_vibrator_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_vibrator_Inventory, dfs.dcur_df_vibrator_Rendered, dfs.libs.zad_DeviousPlugVaginal, destroydevice = true, skipmutex = true)
	EndIf
	Utility.Wait(0.5)
	If dfs.aPlayer.IsEquipped(dfs.dcur_df_ButtPlug_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_ButtPlug_Inventory, dfs.dcur_df_ButtPlug_Rendered, dfs.libs.zad_DeviousPlugAnal, destroydevice = true, skipmutex = true)
	EndIf
EndFunction

Function EnactRule()	
	If Utility.RandomInt() < 33
		; let's make this more fun and plug her as well!
		If !dfs.aPlayer.IsEquipped(dfs.dcur_df_vibrator_Rendered)
			dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_vibrator_Inventory, dfs.dcur_df_vibrator_Rendered, dfs.libs.zad_DeviousPlugVaginal, skipmutex = true)
		EndIf
		Utility.Wait(0.5)
		If !dfs.aPlayer.IsEquipped(dfs.dcur_df_ButtPlug_Rendered)
			dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_ButtPlug_Inventory, dfs.dcur_df_ButtPlug_Rendered, dfs.libs.zad_DeviousPlugAnal, skipmutex = true)
		EndIf
		dfs.libs.notify(dfs.GetMasterName() + " has decided to deny you any fun for the time being and locks a heavy and very secure chastity belt on you, together with a matching steel bra and cuffs.", messagebox = true)	
		Utility.Wait(0.5)
		dfs.libs.notify("To your ultimate horror you notice the two extremely large plugs fitted to the belt. You know that your torment will know no limits as the plugs enter your holes and fill them completely - sealed inside of you by the chastity belt.", messagebox = true)	
	Else
		dfs.libs.notify(dfs.GetMasterName() + " has decided to deny you any fun for the time being and locks a heavy and very secure chastity belt on you, together with a matching steel bra and cuffs.", messagebox = true)	
	EndIf
	CheckItems()
	Parent.EnactRule()
EndFunction

Function SuspendRule()
	DisplayDescriptionEnd(True)
	RemoveItems()
	Parent.SuspendRule()
EndFunction