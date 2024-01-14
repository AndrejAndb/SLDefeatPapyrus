Scriptname dcur_df_rule_nogold extends dcur_df_baserule  

Int AllowedGold = 500

GlobalVariable Property dcur_df_allowedgold Auto Hidden

Bool Function EvaluateRule()
	; evalute the rule - return true if the player is found in compliance with the rule, false otherwise.		
	Return (dfs.libs.PlayerRef.GetItemCount(dfs.gold001) < AllowedGold)
EndFunction

Function EnactRule()		
	dfs.libs.notify(dfs.GetMasterName() + " prohibits your from possessing more than " + AllowedGold + " gold. You will need to surrender any excess wealth to your master.", messagebox = true)	
	dcur_df_allowedgold.SetValueInt(AllowedGold)
	Parent.EnactRule()
EndFunction

Function SuspendRule()
	DisplayDescriptionEnd(True)
	Parent.SuspendRule()
EndFunction

Function Warn()
	; what happens if the player is considered in violation (warn level).
	DisplayWarning(False)
	Parent.Warn()
EndFunction

Function Consequences()		
	dfs.libs.notify(dfs.GetMasterName() + " is tired of you having more gold than allowed. Slaves are not allowed to possess wealth!", messagebox = true)
	dfs.TransferMoney(Minimum = Math.Floor(AllowedGold / 2), Destroy = False)	
	dfs.PunishTimedItems()
	Parent.Consequences()
EndFunction