scriptName dcur_df_baserule extends ReferenceAlias

dcur_df_QuestScript Property dfs Auto

; Public variables - configure these to your heart's content!
bool Property Active = False Auto 					; This rule is in effect and will get evaluted. Will usually be set by the handler when enacting the rule, but you can set this to make a rule enabled at quest start, without delay.
bool Property AutoEnforce = False Auto				; This rule will be automatically enforced, e.g. no warning. The Consequences() function will be called automatically when a violation is detected.
bool Property PermanentRule = False Auto			; When set to true, this rule will be always in effect. The timer will not be used.
bool Property IsChore = False Auto					; When set to true, this rule is a chore the player has to complete.
bool Property ManualRule = False Auto				; When set to true, this rule will not be automatically/randomly enacted by the manager. The only way to enact such a rule is calling EnactRule() by script.
bool Property FireEvents = False Auto				; When set to true, this rule with fire events to signal other mod features whether a certain rule was violated or complied with etc. Enable only when needed.
bool Property FireandForgetRule = False Auto		; When set to true, this rule's Consequences() routine will be executed as soon as it is enacted, and the rule will terminate right after. Useful for creating random and/or linked events.
bool Property ResetWarningsWhenViolate = False Auto	; When set to true, the number of warnings will be reset to zero after a violation is processed. Otherwise, any new warning will trigger the violation routine again.
Int Property NumberOfWarnings = 3 Auto				; After this many warnings, the Consequences() function will be called.
Int Property Probability = 100 Auto					; Probability for this rule to actually get enacted if picked by the handler. Can be used for e.g. making harsh rules less likely to get enacted.
Float Property EvaluateInterval = 0.0 Auto			; When this number is greater than zero, the event will only get evaluated when at least this number of hours has passed in game (the next time the check is performed). Otherwise the rule will get evalutaed every time the event handler processes them.
Float Property MinDaysinEffect = 1.0 Auto			; The rule will stay in effect for at least this many days (Non permantent rules only!)
Float Property MaxDaysinEffect = 1.0 Auto			; The rule will stay in effect for at maximum this many days. (Non permantent rules only!)
String Property Name Auto 							; Name of the rule.
String Property MessageDescription = "" Auto 		; This message will be used to describe the rule (e.g. when it's put in effect)
String Property MessageCompliance = "" Auto			; This message will be displayed when the master is happy with the player.
String Property MessageWarning = "" Auto  			; This message will be displayed when the player is violatng the rule, but just getting warned.
String Property MessageViolation = "" Auto 			; This message will be displayed when the player is violatng the rule, and getting punished for it.
String Property MessageDescriptionEnd = "" Auto 	; This message will be used when the rule is lifted.
String[] Property ConflictingRules Auto				; Rules listed here are considered incompatible. The handler will not enact this rule if one listed in the array is already active. Yes, using strings for this isn't ideal, but I can't see a better way to implement this.

; Internal variables - do not modify these.
Int WarningsSinceStart = 0
Float RuleInEffectSince = 0.0
Float LastEvaluatedAt = 0.0
Float UptimeDays = 0.0

; MECHANICS - Customize these as needed!

Function SuspendRule()
	; Called to deactivate a rule. Override as needed, but don't forget to fire Parent.
	Active = False
	If FireEvents
		SendModEvent("dcur_df_rule_ended_" + Name)
	EndIf
EndFunction

Function EnactRule()
	; Called to enact a rule. Override as needed, but don't forget to fire Parent.
	If FireandForgetRule
		Consequences()
		Active = False
		return
	elseIf !Active
		SetTimer()
		RuleInEffectSince = Utility.GetCurrentGameTime()
		WarningsSinceStart = 0		
		Active = True	
	EndIf		
	If FireEvents
		SendModEvent("dcur_df_rule_started_" + Name)
	EndIf
EndFunction

Bool Function EvaluateRule()
	; evalute the rule. Override this with any mechanics you want and return true if the player is found in compliance with the rule, false otherwise.
	Return True
EndFunction

Function Warn()
	; what happens if the player is considered in violation (warn level). Override as needed, but don't forget to fire Parent.Warn()
	If FireEvents
		SendModEvent("dcur_df_rule_warning_" + Name)
	EndIf
EndFunction

Function Compliance()
	; what happens if the player is considered in compliance. Override as needed, but don't forget to fire Parent.
	If FireEvents
		SendModEvent("dcur_df_rule_compliance_" + Name)
	EndIf
EndFunction

Function Consequences()
	; what happens if the player is considered in violation. Override as needed, but don't forget to fire Parent.
	If FireEvents
		SendModEvent("dcur_df_rule_consequence_" + Name)
	EndIf
EndFunction

Event OnSleep(string eventName, string strArg, float numArg, Form sender)
	; sleep processing goes here! numarg is the number of hours the player slept. Override as needed, but don't forget to fire Parent.
	; This function is called when the player starts sleeping.
	Float naplength = numArg	
	If !PermanentRule 
		; no cheat by sleep!
		UnregisterForUpdateGameTime()
		Float DaysElapsed = Utility.GetCurrentGameTime() - RuleInEffectSince
		UptimeDays += (naplength / 24)
		RegisterForSingleUpdateGameTime((UptimeDays - DaysElapsed) * 24)	
	EndIf
EndEvent

Event OnSlept(string eventName, string strArg, float numArg, Form sender)
	; sleep processing goes here! numarg is the number of hours the player slept. Override as needed, but don't forget to fire Parent.
	; This function is called when the player wakes up.
EndEvent

Event OnSexEnd(string eventName, string argString, float argNum, form sender)

EndEvent

Event OnSexStart(string eventName, string argString, float argNum, form sender)

EndEvent

Event OnSpankEnd(string eventName, string argString, float NumArg, form sender)
	; This will be called when a spanking event has ended. Keep in mind that this function can and will get triggered by ANY spanking, not only events triggered by XDFF. Additional checks may need to be performed!
	
EndEvent

; UTILITY FUNCTIONS

String Function GetMasterName()
	return dfs.GetMasterBase().GetName()
EndFunction

Function DisplayDescription(Bool useDialogue = False)
	If useDialogue
		dfs.libs.notify(MessageDescription, messagebox = true)
	Else
		dfs.libs.notify(MessageDescription, messagebox = false)
	EndIf
EndFunction

Function DisplayDescriptionEnd(Bool useDialogue = False)
	If useDialogue
		dfs.libs.notify(MessageDescriptionEnd, messagebox = true)
	Else
		dfs.libs.notify(MessageDescriptionEnd, messagebox = false)
	EndIf
EndFunction

Function DisplayCompliance(Bool useDialogue = False)
	If useDialogue
		dfs.libs.notify(MessageCompliance, messagebox = true)
	Else
		dfs.libs.notify(MessageCompliance, messagebox = false)
	EndIf
EndFunction

Function DisplayWarning(Bool useDialogue = False)
	If useDialogue
		dfs.libs.notify(MessageWarning, messagebox = true)
	Else
		dfs.libs.notify(MessageWarning, messagebox = false)
	EndIf
EndFunction

Function DisplayViolation(Bool useDialogue = False)
	If useDialogue
		dfs.libs.notify(MessageViolation, messagebox = true)
	Else
		dfs.libs.notify(MessageViolation, messagebox = false)
	EndIf
EndFunction


; INTERNAL FUNCTIONS

; this function is called by the event handler in the main quest. You normally shouldn't override this.
Function ProcessRule()
	If EvaluateInterval > 0.0 && (Utility.GetCurrentGameTime() - LastEvaluatedAt) * 24 < EvaluateInterval
		return
	EndIf
	If EvaluateRule()
		Compliance()
	Else
		If AutoEnforce
			Consequences()
		Else			
			If WarningsSinceStart >= NumberOfWarnings
				Consequences()
				If ResetWarningsWhenViolate
					WarningsSinceStart = 0
				EndIf
			Else
				Warn()
				WarningsSinceStart += 1
			EndIf			
		EndIf 
	EndIf
	LastEvaluatedAt = Utility.GetCurrentGameTime()
EndFunction

Function SetTimer()	
	If !PermanentRule && (MinDaysinEffect > 0.0) && (MinDaysinEffect <= MaxDaysinEffect)
		UptimeDays = Utility.RandomFloat(MinDaysinEffect, MaxDaysinEffect)
		RegisterForSingleUpdateGameTime(UptimeDays * 24)	
	EndIf
EndFunction

Event OnUpdateGameTime()
	SuspendRule()
EndEvent

Event OnPlayerLoadGame()
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	RegisterForModEvent("AnimationStart", "OnSexStart")	
	RegisterForModEvent("dcur_df_registerrules", "OnRegisterRule")	
	RegisterForModEvent("dcur_df_playersleeps", "OnSleep")		
	RegisterForModEvent("dcur_df_playerslept", "OnSlept")	
	RegisterForModEvent("dcur_USS_finished", "OnSpankEnd")	
EndEvent

Event OnInit()
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	RegisterForModEvent("AnimationStart", "OnSexStart")
	RegisterForModEvent("dcur_df_registerrules", "OnRegisterRule")	
	RegisterForModEvent("dcur_df_playersleeps", "OnSleep")		
	RegisterForModEvent("dcur_df_playerslept", "OnSlept")		
	RegisterForModEvent("dcur_USS_finished", "OnSpankEnd")
EndEvent

Event OnRegisterRule(string eventName, string strArg, float numArg, Form sender)	
	RegisterRule()
EndEvent

Function RegisterRule()
	int id = dfs.Register(name, self)		
EndFunction