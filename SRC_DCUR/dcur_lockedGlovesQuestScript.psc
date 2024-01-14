Scriptname dcur_lockedGlovesQuestScript extends dcurArmbinderQuestScript

dcur_mcmconfig Property dcumenu  Auto  
dcur_mastercontrollerscript Property mcs Auto

Bool Property SimpleGloves = False Auto
Bool Property LeonsGloves = False Auto

; This is here, instead of in zadArmbinderQuestScript.psc, to facilitate the tween menu override in zadArmbinderEffect
int Function ShowDeviceMenu(int MsgChoice=0)
	if MenuMutex ; Don't stack menu's
		return 0
	EndIf
	MenuMutex = True    
	msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Struggle
		If !SimpleGloves
			if libs.PlayerRef.GetAv("Stamina")<=35
				libs.NotifyPlayer("You are far too tired to struggle with the gloves.", true)
			Elseif libs.playerref.GetItemCount(dcumenu.dcur_handrestraintskey) < 2
				libs.PlayerRef.DamageAV("Stamina", 35)			
				StruggleScene(libs.PlayerRef)			
				if libs.playerref.GetItemCount(dcumenu.dcur_handrestraintskey) > 0
					libs.NotifyPlayer("You need a second key to unlock both the padlocks locking your gloves together.", true)
				else
					libs.NotifyPlayer("You desperately struggle against the gloves until you run out of energy, to no avail. The steel bands sit too tight on your wrists and elbows to be able to slip out of them and you will not be able to break open the padlocks linking your gloves either. You will need to find a pair of fitting rubber restraints keys.", true)
					;zad_ArmBinderStruggleMsg.Show()
				endif
			else
				StruggleScene(libs.PlayerRef)			
				if Utility.RandomInt(1,5) == 1	
					zad_ArmBinderRemoveUnlockedMsg.Show()	
					mcs.unlockRubberGloves = True
					mcs.RegisterForSingleUpdate(0.1)
				else
					libs.NotifyPlayer("You desperately try to insert the key into the padlock, but with your hands and elbows being bound tight, you fail to slide the key into the lock", true)
				endif
			EndIf
		else
			if libs.PlayerRef.GetAv("Stamina")<=35
				libs.NotifyPlayer("You are far too tired to struggle with the gloves.", true)
			Elseif libs.playerref.GetItemCount(libs.RestraintsKey) < 2
				libs.PlayerRef.DamageAV("Stamina", 35)			
				StruggleScene(libs.PlayerRef)			
				if libs.playerref.GetItemCount(libs.RestraintsKey) > 0
					libs.NotifyPlayer("You need a second key to unlock both the padlocks locking your gloves together.", true)
				else				
					libs.NotifyPlayer("You desperately struggle against the gloves until you run out of energy, to no avail. The steel bands sit too tight on your wrists and elbows to be able to slip out of them and you will not be able to break open the padlocks linking your gloves either. You will need to find the proper keys. Luckily for you, the locks are keyed to use standard keys.", true)
					;zad_ArmBinderStruggleMsg.Show()
				endif
			else
				StruggleScene(libs.PlayerRef)			
				if Utility.RandomInt(1,5) == 1	
					zad_ArmBinderRemoveUnlockedMsg.Show()	
					mcs.unlockRubberGloves = True
					mcs.RegisterForSingleUpdate(0.1)
				else
					libs.NotifyPlayer("You desperately try to insert the key into the padlock, but with your hands and elbows being bound tight, you fail to slide the key into the lock", true)
				endif
			EndIf
		Endif
	elseif msgChoice == 1 ; Endure Bonds
	endif
	MenuMutex = False
	return MsgChoice
EndFunction


