Scriptname dcur_lb_lockedGlovesQuestScript extends dcurArmbinderQuestScript

dcur_mcmconfig Property dcumenu  Auto  
dcur_lbquestScript Property lbqs Auto

Key property dcur_handrestraintskey Auto

; This is here, instead of in zadArmbinderQuestScript.psc, to facilitate the tween menu override in zadArmbinderEffect
int Function ShowDeviceMenu(int MsgChoice=0)
	if MenuMutex ; Don't stack menu's
		return 0
	EndIf
	MenuMutex = True
        msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Struggle
		if libs.PlayerRef.GetAv("Stamina")<=35
			libs.NotifyPlayer("You are far too tired to struggle with the gloves.", true)
		Elseif libs.playerref.GetItemCount(dcur_handrestraintskey) < 2
			libs.PlayerRef.DamageAV("Stamina", 35)			
			StruggleScene(libs.PlayerRef)			
			if libs.playerref.GetItemCount(dcur_handrestraintskey) > 0
				libs.NotifyPlayer("You need a second key to unlock both the padlocks locking your gloves together.", true)
			else				
				zad_ArmBinderStruggleMsg.Show()
			endif
		else
			StruggleScene(libs.PlayerRef)			
			if Utility.RandomInt(1,5) == 1	
				zad_ArmBinderRemoveUnlockedMsg.Show()
				lbqs.removed_lockedGloves = True
				lbqs.RegisterForSingleUpdate(0.1)
			else
				libs.NotifyPlayer("You desperately try to insert the key into the padlock, but with your hands and elbows being bound tight, you fail to slide the key into the lock", true)
			endif
		EndIf
	elseif msgChoice == 1 ; Endure Bonds
	endif
	MenuMutex = False
	return MsgChoice
EndFunction