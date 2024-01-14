Scriptname dcur_df_rule_sleep extends dcur_df_baserule  

Bool hasViolated = False
GlobalVariable Property dcur_df_sleepallowed Auto
GlobalVariable Property dcur_df_sleepruleactive Auto
GlobalVariable Property dcur_df_sleepcanask Auto

Armor Property dcur_sleepdeprivationitem  Auto  
Armor Property dcur_nosleepitem  Auto  

Function EnactRule()
	dfs.libs.notify(dfs.GetMasterName() + " requires you to ask for permission before resting. You will be punished if you don't!", messagebox = true)
	dcur_df_sleepruleactive.SetValueInt(1)
	hasViolated = False
	RegisterForSingleUpdate(30)
	Parent.EnactRule()
EndFunction

Function SuspendRule()	
	hasViolated = False
	UnregisterForUpdate()
	dfs.libs.notify(dfs.GetMasterName() + " no longer requires you to ask for permission before resting. You can rest whenever you wish, and you will no longer have to be bound during sleep.", messagebox = true)
	dcur_df_sleepruleactive.SetValueInt(0)
	Parent.SuspendRule()
EndFunction

Bool Function EvaluateRule()
	If !hasViolated
		Return True
	EndIf
	Return False
EndFunction

Function Warn()
	; what happens if the player is considered in violation (warn level).
	hasViolated = False
	DisplayWarning(False)
	Parent.Warn()
EndFunction

Function Consequences()
	; what happens if the player is considered in violation (punish level).
	DisplayViolation(true)
	dfs.PunishTimedItems(MinSeverity = 0, MaxSeverity = 100)
	hasViolated = False
	Parent.Consequences()
EndFunction

Event OnSleep(string eventName, string strArg, float numArg, Form sender)
	If dcur_df_sleepallowed.GetValueInt() == 0
		hasViolated = True
	EndIf
	; sleep was permitted, reset permission.
	dcur_df_sleepallowed.SetValueInt(0)	
	Parent.OnSleep(eventName, strArg, numArg, sender)
EndEvent

Event OnSlept(string eventName, string strArg, float numArg, Form sender)
	If dfs.aPlayer.IsEquipped(dfs.dcur_df_Straitjacket_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_Straitjacket_Inventory, dfs.dcur_df_Straitjacket_Rendered, dfs.libs.zad_DeviousHeavyBondage, destroydevice = true, skipmutex = true)
	EndIf
	If dfs.aPlayer.IsEquipped(dfs.dcur_df_BallGag_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_BallGag_Inventory, dfs.dcur_df_BallGag_Rendered, dfs.libs.zad_DeviousGag, destroydevice = true, skipmutex = true)
	EndIf
	If dfs.aPlayer.IsEquipped(dfs.dcur_df_Blindfold_Rendered)
		dfs.libs.RemoveDevice(dfs.aPlayer, dfs.dcur_df_Blindfold_Inventory, dfs.dcur_df_Blindfold_Rendered, dfs.libs.zad_DeviousBlindfold, destroydevice = true, skipmutex = true)
	EndIf
	Parent.OnSlept(eventName, strArg, numArg, sender)
EndEvent

Event OnUpdate()
	RegisterForSingleUpdate(30)			
	; see if the player can ask for sleep
	if (Utility.GetCurrentGameTime() - dfs.lastsleep) * 24.0 > 12 ; can sleep every 12 hours.
		dcur_df_sleepcanask.SetValueInt(1)		
	Else
		dcur_df_sleepcanask.SetValueInt(0)		
	Endif		
EndEvent

	