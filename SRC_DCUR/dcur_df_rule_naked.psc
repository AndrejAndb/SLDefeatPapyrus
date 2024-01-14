Scriptname dcur_df_rule_naked extends dcur_df_baserule

Function EnactRule()
	dfs.libs.notify(dfs.GetMasterName() + " has decided to disallow you covering yourself. You will have to be naked at all times while this rule is in effect, and show your privates to anyone who wants to look at them!", messagebox = true)
	Parent.EnactRule()
EndFunction

Function SuspendRule()
	DisplayDescriptionEnd(True)
	Parent.SuspendRule()
EndFunction

Bool Function EvaluateRule()
	; evalute the rule - return true if the player is found in compliance with the rule, false otherwise.
	bool isnaked = (dfs.libs.playerref.GetWornForm(0x00000004) == None || dfs.libs.playerref.WornHasKeyword(dfs.libs.zad_DeviousSuit))
	If isnaked || dfs.libs.playerref.WornHasKeyword(dfs.libs.zad_DeviousHeavyBondage) ;poor tied up people can't undress, so let's let that one go...
		Return True
	EndIf
	Return False
EndFunction

Function Warn()
	; what happens if the player is considered in violation (warn level).
	DisplayWarning(False)
	Parent.Warn()
EndFunction

Function Consequences()
	; what happens if the player is considered in violation (punish level).
	DisplayViolation(true)
	dfs.PunishTimedItems(MinSeverity = 0, MaxSeverity = 70)
	Parent.Consequences()
EndFunction


