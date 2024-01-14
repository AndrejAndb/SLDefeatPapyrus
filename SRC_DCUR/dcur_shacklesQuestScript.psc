Scriptname dcur_shacklesQuestScript extends zadArmbinderQuestScript

dcur_mcmconfig Property dcumenu  Auto  

; This is here, instead of in zadArmbinderQuestScript.psc, to facilitate the tween menu override in zadArmbinderEffect
int Function ShowDeviceMenu(int MsgChoice=0)
	if MenuMutex ; Don't stack menu's
		return 0
	EndIf
	MenuMutex = True
        msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Struggle
		if libs.PlayerRef.GetAv("Stamina")<=35
			libs.NotifyPlayer("You are far too tired to struggle with the shackles.", true)
		Elseif libs.playerref.GetItemCount(libs.restraintskey) < 1
			libs.PlayerRef.DamageAV("Stamina", 35)			
			StruggleScene(libs.PlayerRef)
			zad_ArmBinderStruggleMsg.Show()
		else
			zad_ArmBinderRemoveUnlockedMsg.Show()
			libs.RemoveDevice(libs.PlayerRef, dcumenu.dcur_shackles, dcumenu.dcur_shacklesRendered, libs.zad_DeviousHeavyBondage, false, false)			
			if libs.Config.DestroyKey
				libs.PlayerRef.RemoveItem(libs.restraintskey, 1, true)
			endif
			libs.SendDeviceRemovalEvent("Armbinder", libs.PlayerRef)		
		EndIf
	elseif msgChoice == 1 ; Endure Bonds
	endif
	MenuMutex = False
	return MsgChoice
EndFunction