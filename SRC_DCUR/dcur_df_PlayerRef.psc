Scriptname dcur_df_PlayerRef extends ReferenceAlias  

dcur_df_QuestScript Property dfs Auto

Event OnPlayerLoadGame()	
	If dfs.IsRunning()
		dfs.init()	
	EndIf
EndEvent
