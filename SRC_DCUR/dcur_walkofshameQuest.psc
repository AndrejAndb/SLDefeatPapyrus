Scriptname dcur_walkofshameQuest extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  

Armor Property dcur_wos_sj_inventory Auto
Armor Property dcur_wos_sj_Rendered Auto
Armor Property dcur_wos_gag_Inventory Auto
Armor Property dcur_wos_gag_Rendered Auto

GlobalVariable Property dcur_dialogswitch  Auto  
FormList Property dcur_talkedtolist  Auto  
FormList Property dcur_temporaryuselist Auto  
FormList Property dcur_robbed_whitelist Auto

Int AttemptsDone = 0
int Basechance = 5  ; very low chance to succeed at start. We want her to talk to at least a few people.

Function StartQuest()
	dcLibs.Strip(Libs.PlayerRef, animate = false)
	if !libs.ForceEquipDevice(libs.PlayerRef, dcur_wos_sj_inventory, dcur_wos_sj_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
		Stop()
	EndIf
	libs.ForceEquipDevice(libs.PlayerRef, dcur_wos_gag_Inventory, dcur_wos_gag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	AttemptsDone = 0
	RegisterForModEvent("AnimationEnd", "OnSexEnd")		
	SetStage(10)
	SetObjectiveDisplayed(10)
EndFunction

Function EndQuest()
	libs.RemoveDevice(libs.PlayerRef, dcur_wos_sj_inventory, dcur_wos_sj_Rendered, libs.zad_DeviousHeavyBondage, destroydevice = true, skipmutex = true)	
	Utility.Wait(1.5)
	libs.RemoveDevice(libs.PlayerRef, dcur_wos_gag_Inventory, dcur_wos_gag_Rendered, libs.zad_DeviousGag, destroydevice = true, skipmutex = true)	
	UnRegisterForModEvent("AnimationEnd")	
	SetStage(1000)
	SetObjectiveDisplayed(1000)
	Stop()
EndFunction

Function RapeHer(Actor a)
	; remove the gag, otherwise there is nothing to do with her:
	libs.RemoveDevice(libs.PlayerRef, dcur_wos_gag_Inventory, dcur_wos_gag_Rendered, libs.zad_DeviousGag, destroydevice = true, skipmutex = true)	
	Utility.Wait(1.5)
	dcLibs.SexWithPlayer(a)
EndFunction

Function TieHer()
	dclibs.progressivebondage(libs.PlayerRef, dcumenu.equiptheme, Utility.RandomInt(1,2))
EndFunction

Function RobHer(Actor thief)
	; we don't steal items, as the code might catch too valuable stuff even when using the whitelist.
	libs.playerRef.RemoveItem(dcumenu.gold001, Math.Floor(libs.PlayerRef.GetItemCount(dcumenu.gold001) / 10), false, thief)	
EndFunction

Function RemoveRestraint()
	dcur_temporaryuselist.Revert()
	Int i = 0		
	while i < dcumenu.dcur_devicekeywords.GetSize()
		Keyword kw = dcumenu.dcur_devicekeywords.GetAt(i) As Keyword
		If libs.PlayerRef.WornHasKeyword(kw) && kw != libs.zad_DeviousGag && kw != libs.zad_DeviousHeavyBondage && kw != libs.zad_DeviousSuit
			dcur_temporaryuselist.AddForm(kw)
		EndIf
		i += 1
	endwhile	
	Keyword k = dcur_temporaryuselist.GetAt(Utility.RandomInt(0, dcur_temporaryuselist.GetSize() - 1)) As Keyword
	If !libs.UnlockDeviceByKeyword(libs.playerref, k)
		; didn't work. Let's try one more time, because this function is expensive.
		Keyword o = k
		i = 0
		While (i < dcur_temporaryuselist.GetSize()) && o == k
			; let's limit the additional attempts to the size of the list, to give us a good chance to find another keyword
			k = dcur_temporaryuselist.GetAt(Utility.RandomInt(0, dcur_temporaryuselist.GetSize() - 1)) As Keyword
			i += 1
		EndWhile		
		If k != o
			libs.UnlockDeviceByKeyword(libs.playerref, k)
			; no need to check if it worked, we're going to abort anyway
		EndIf
	EndIf
EndFunction

Event OnSexEnd(string eventName, string argString, float argNum, form sender)
	; sanity check
	If GetStage() != 10
		return
	EndIf
	sslThreadController SLcontroller = libs.SexLab.HookController(argString)	
	Actor[] actors = SLcontroller.Positions
	int numactors = actors.Length
	int i = 0	
	Bool Playerfound = false
	; let's check if one participant is the player
	While i < numactors		
		If actors[i] == libs.PlayerRef
			Playerfound = true
		Endif
		i += 1
	EndWhile
	; don't process scenes not involving the player
	if !Playerfound
		return
	endif
	; Put the stuff back on:
	If !libs.PlayerRef.IsEquipped(dcur_wos_sj_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_wos_sj_inventory, dcur_wos_sj_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	EndIf
	If !libs.PlayerRef.IsEquipped(dcur_wos_gag_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_wos_gag_Inventory, dcur_wos_gag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	EndIf
EndEvent

Function CalcSuccess(Actor TalkedTo)
	if dcur_talkedtolist.GetSize() > 9 
		dcur_talkedtolist.revert()
		; Seems RemoveAddedForm is bugged, so we just wipe the list after adding the 10th person. Every other solution would take a lot of time.
		;dcur_talkedtolist.RemoveAddedForm(dcur_talkedtolist.GetAt(10))
	endif
	dcur_talkedtolist.addform(TalkedTo.GetBaseObject())	
	dcur_dialogswitch.SetValueInt(0)	
		
	; outcomes:
	; 1 - has key, unlocks her
	; 2 - doesn't have key, does nothing
	; 3 - doesn't have key, rapes her
	; 4 - doesn't have key, adds a device (does nothing if no more slots)
	; 5 - doesn't have key, removes a device (does nothing if nothing else is worn)
	; 6 - doesn't have key, steals her stuff
	
	Int Chance = Basechance + (AttemptsDone * 7)
	; Increase success chance with every attempt, but cap it to keep it interesting
	If Chance > 75
		Chance = 75
	EndIf
	
	If Utility.RandomInt() < Chance
		; success
		dcur_dialogswitch.SetValueInt(1)
		return
	EndIf
	
	; no success, pick one of the other outcomes
	Int x = Utility.RandomInt()
	If x < 25
		dcur_dialogswitch.SetValueInt(2)
	ElseIf x < 40
		dcur_dialogswitch.SetValueInt(3)
	ElseIf x < 65
		dcur_dialogswitch.SetValueInt(4)
	ElseIf x < 85
		dcur_dialogswitch.SetValueInt(5)
	Else
		dcur_dialogswitch.SetValueInt(6)
	EndIf
	
	AttemptsDone += 1
EndFunction