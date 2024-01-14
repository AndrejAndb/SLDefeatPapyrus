Scriptname dcur_tentaclesScript extends zadequipScript

Potion Property dcur_smellysalve Auto
Potion Property dcur_stinkybase Auto
Potion Property dcur_stinkypaste Auto

Keyword Property dcur_kw_QuestItem Auto

dcur_tentacleQuestScript Property tpqs Auto

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		; the dialogue option will be available only when the player has the smelly salve, so no need to check for a key.
		libs.Notify("You rub the salve on the tentacles, barely able to stand the disgusting stench. Apparently the parasite finds the smell every bit as disgusting as you do, for it suddenly lets go of you and vanishes quickly. You are finally free again!", messagebox = true)								
		libs.removeQuestDevice(libs.PlayerRef, tpqs.dcur_tentacles, tpqs.dcur_tentaclesRendered, libs.zad_DeviousSuit, RemovalToken = dcur_kw_QuestItem, destroyDevice = true, skipmutex = true)						
		libs.playerref.RemoveItem(dcur_smellysalve, libs.playerref.GetItemCount(dcur_smellysalve))
		libs.playerref.RemoveItem(dcur_stinkybase, libs.playerref.GetItemCount(dcur_stinkybase), abSilent = true)
		libs.playerref.RemoveItem(dcur_stinkypaste, libs.playerref.GetItemCount(dcur_stinkypaste), abSilent = true)
		;DeviceMenuRemoveWithKey()	
		
	elseif msgChoice == 2 ; Remove device, without key
		libs.Notify("You try to pry loose one of the tentacles, but they are embracing you with uncanny strength. You feel that attacking the parasite with a weapon would be not the smartest thing to do as it could easily squeeze you to death within seconds when threatened. There is nothing you can do to remove the parasite forcibly. You will have to think of something else...", messagebox = true)						
		;DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

Function OnRemoveDevice(actor akActor)		
	tpqs.SetObjectiveCompleted(0)
	tpqs.SetObjectiveDisplayed(10)
	tpqs.SetObjectiveCompleted(10)
	tpqs.SetStage(10)
	tpqs.Stop()
	Parent.OnRemoveDevice(akActor)
EndFunction

Function OnEquippedPost(actor akActor)
	tpqs.Start()
	tpqs.SetObjectiveDisplayed(0)
EndFunction