Scriptname dcur_df_rule_nosex extends dcur_df_baserule  

GlobalVariable Property dcur_solicitationacts Auto
int solicitationatstart = 0

Function EnactRule()		
	dfs.libs.notify(dfs.GetMasterName() + " orders you to no longer have sex with anyone but " + dfs.GetMasterHerHim() + " .", messagebox = true)
	Parent.EnactRule()
EndFunction

Function SuspendRule()
	DisplayDescriptionEnd(True)
	Parent.SuspendRule()
EndFunction

Bool Function EvaluateRule()	
	; no need to do anything here, as we process everything in OnSexEnd
	Return True
EndFunction
	
Event OnSexStart(string eventName, string argString, float argNum, form sender)
	solicitationatstart = dcur_solicitationacts.GetValueInt()
	Parent.OnSexStart(eventName, argString, argNum, sender)
EndEvent

Event OnSexEnd(string eventName, string argString, float argNum, form sender)
	sslThreadController SLcontroller = dfs.SexLab.HookController(argString)	
	Actor[] actors = SLcontroller.Positions
	int numactors = actors.Length
	int i = 0
	Bool MasterFound = false
	Bool Playerfound = false
	; let's check if one participant is master or the player
	While i < numactors
		If actors[i] == dfs.aMaster
			Masterfound = true
		Endif
		If actors[i] == dfs.aPlayer
			Playerfound = true
		Endif
		i += 1
	EndWhile
	; don't process scenes not involving the player
	if !Playerfound
		return
	endif	
	; ok, the player had sex, let's see if master was involved. It's ok, if s/he was.
	if !MasterFound 
		if numactors == 1 && !dfs.aPlayer.WornHasKeyword(dfs.libs.zad_DeviousBelt)			
			; player has masturbated while not belted
			dfs.libs.notify(dfs.GetMasterName() + "  is not amused to catch you with your fingers in your pussy. You are not supposed to play with yourself!", messagebox = true)
			dfs.libs.notify("You let your head hang in shame as " + dfs.GetMasterName() + " reaches for your chastity belt and locks it tight on you. There will be no way for you to touch yourself again anytime soon.", messagebox = true)
			Utility.Wait(1)
			dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_TimedBelt_Inventory, dfs.dcur_df_TimedBelt_Rendered, dfs.libs.zad_DeviousBelt, skipmutex = true)
			If !dfs.aPlayer.WornHasKeyword(dfs.libs.zad_DeviousBra)
				dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_TimedBra_Inventory, dfs.dcur_df_TimedBra_Rendered, dfs.libs.zad_DeviousBra, skipmutex = true)				
			EndIf
			return
		Endif
		; if player was whoring herself out, we're not punishing her (yet)
		if dcur_solicitationacts.GetValueInt() > solicitationatstart			
			return
		Endif
		; if player got raped we're not punishing her
		Actor victim = dfs.SexLab.HookVictim(argString)
		if (victim && victim == dfs.libs.playerref) || dfs.dclibs.gangbangmutex
			; do nothing for now
		Else			
			dfs.libs.notify("Your master is not amused to catch you in the act. You are not allowed to have sex with anyone but your master!", messagebox = true)
			if !dfs.aPlayer.WornHasKeyword(dfs.libs.zad_DeviousBelt)						
				dfs.libs.notify("You let your head hang in shame as " + dfs.GetMasterName() + " reaches for your chastity belt and locks it tight on you. There will be no way for you to touch yourself again anytime soon.", messagebox = true)
				Utility.Wait(1)
				dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_TimedBelt_Inventory, dfs.dcur_df_TimedBelt_Rendered, dfs.libs.zad_DeviousBelt, skipmutex = true)
				Utility.Wait(1)
				If !dfs.aPlayer.WornHasKeyword(dfs.libs.zad_DeviousBra)
					dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_TimedBra_Inventory, dfs.dcur_df_TimedBra_Rendered, dfs.libs.zad_DeviousBra, skipmutex = true)				
				EndIf
			Else
				dfs.PunishTimedItems(MinSeverity = 20, MaxSeverity = 80)	
			endif
			; gag her in any case, if we can.
			If !dfs.aPlayer.WornHasKeyword(dfs.libs.zad_DeviousGag)
				Utility.Wait(1)
				dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_TimedGag_Inventory, dfs.dcur_df_TimedGag_Rendered, dfs.libs.zad_DeviousGag, skipmutex = true)				
			EndIf
		Endif	
		return
	Endif	
	Parent.OnSexEnd(eventName, argString, argNum, sender)
EndEvent
