Scriptname dcur_df_rule_wearrubber extends dcur_df_baserule  

Keyword Property dcur_kw_dollmaker_rubber Auto Hidden

Function SuspendRule()
	DisplayDescriptionEnd(True)
	Parent.SuspendRule()
EndFunction

Function Warn()
	; what happens if the player is considered in violation (warn level).
	DisplayWarning(False)
	Parent.Warn()
EndFunction

Bool Function EvaluateRule()
	; evalute the rule - return true if the player is found in compliance with the rule, false otherwise.
	return (dfs.libs.playerref.GetWornForm(0x00000004) && dfs.libs.playerref.GetWornForm(0x00000004).HasKeyword(dcur_kw_dollmaker_rubber)) || dfs.aplayer.WornHasKeyword(dfs.libs.zad_DeviousSuit)
EndFunction

Function Consequences()	
	If !dfs.aplayer.WornHasKeyword(dfs.libs.zad_DeviousSuit)
		dfs.libs.notify(dfs.GetMasterName() + " is tired of you not wearing a shiny rubber dress and orders you into one provided by " + dfs.GetMasterName() + " instead. You step into the dress and shudder when you notice how tight it is. You wonder if you shouldn't just have complied with the rule, when you hear the locks click shut, making it impossible for you to remove the dress...", messagebox = true)	
		dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_TimedHobbleSkirt_Inventory, dfs.dcur_df_TimedHobbleSkirt_Rendered, dfs.libs.zad_DeviousSuit, skipmutex = true)
	EndIf
	Parent.Consequences()
EndFunction

Function EnactRule()
	dfs.libs.notify(dfs.GetMasterName() + " wants to see you wearing a shiny, sexy rubber dress! You are not allowed to wear anything else.", messagebox = true)	
	Utility.Wait(0.5)
	If dfs.aplayer.GetItemCount(dfs.dcur_df_rubberdress) < 1
		dfs.aplayer.AddItem(dfs.dcur_df_rubberdress)
	EndIf
	Parent.EnactRule()
EndFunction