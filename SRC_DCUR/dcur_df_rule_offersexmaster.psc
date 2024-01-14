Scriptname dcur_df_rule_offersexmaster extends dcur_df_baserule  

Float SexInterval = 6.0 	; Player needs to offer sex to master at least once in 6 hours.

Bool Function EvaluateRule()
	; evalute the rule - return true if the player is found in compliance with the rule, false otherwise.	
	If dfs.aplayer.WornHasKeyword(dfs.libs.zad_DeviousGag) && dfs.aplayer.WornHasKeyword(dfs.libs.zad_DeviousBelt)
		; can't really offer sex when bound like that. Let it go!
		Return True
	EndIf
	Return ((Utility.GetCurrentGameTime() - dfs.LastSexWithMaster) * 24) < SexInterval
EndFunction

Function EnactRule()			
	Parent.EnactRule()
EndFunction

Function Warn()
	DisplayWarning(False)
	Parent.Warn()
EndFunction

Function Consequences()
	dfs.libs.notify(dfs.GetMasterName() + " is unhappy with you, because you failed to offer " + dfs.GetMasterHerHim() + " your body! A slave is responsible for keeping their master happy and satisfied. " + dfs.GetMasterName() + " is going to punish you!", messagebox = true)			
	dfs.PunishTimedItems(0, 75)
	Parent.Consequences()
EndFunction
