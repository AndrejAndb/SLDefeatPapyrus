Scriptname dcur_df_rule_nokeys extends dcur_df_baserule  

Bool Function EvaluateRule()
	; evalute the rule - return true if the player is found in compliance with the rule, false otherwise.
	return !dfs.dclibs.actorhaskeys(dfs.aPlayer)	
EndFunction

Function Consequences()
	dfs.libs.notify(dfs.GetMasterName() + " searches your possessions and finds restraints keys you are not supposed to have! Your master is not impressed!", messagebox = true)
	dfs.dclibs.dcur_removekeys(dfs.aPlayer)
	dfs.PunishTimedItems(MinSeverity = 0, MaxSeverity = 100)	
	Parent.Consequences()
EndFunction

Function EnactRule()
	dfs.libs.notify(dfs.GetMasterName() + " will not tolerate you possessing any restraints keys. If you will be caught with any, you will be punished!", messagebox = true)	
	Parent.EnactRule()
EndFunction