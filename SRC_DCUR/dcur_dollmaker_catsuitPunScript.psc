Scriptname dcur_dollmaker_catsuitPunScript extends zadEquipScript

dcur_publicindecencyQuestScript Property piqs Auto
dcur_library Property dclibs  Auto 

Function OnEquippedPost(actor akActor)
	piqs.LockCatsuit()
EndFunction

Function DeviceMenu(Int msgChoice = 0)
	msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuRemoveWithoutKey()
	elseif msgChoice == 1	; do nothing
		
	elseif msgChoice == 2 ; Remove device
		libs.Notify("With the timer released, you can freely access the catsuit's locking mechanism and open it.", messageBox = true)		
		RemoveDevice(libs.playerref)
	endif
	DeviceMenuExt(msgChoice)		
EndFunction
