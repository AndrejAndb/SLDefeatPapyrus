Scriptname dcur_tieme_ddtransfer extends ReferenceAlias

zadlibs Property libs  Auto  

bool Function isDeviousDevice(Form device)
	if device.HasKeyword(libs.zad_InventoryDevice)
		return true
	endif
	return false
EndFunction

Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)	
	If !isDeviousDevice(akBaseItem) && akDestContainer == Game.GetPlayer()
		libs.notify("Only Devious Devices may be transferred!")
		libs.playerref.RemoveItem(akBaseItem, aiItemCount, absilent = true)
		GetReference().AddItem(akBaseItem, aiItemCount, absilent = true)
	EndIf
EndEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)	
	If !isDeviousDevice(akBaseItem) && akSourceContainer == Game.GetPlayer()
		libs.notify("Only Devious Devices may be transferred!")
		GetReference().RemoveItem(akBaseItem, aiItemCount, absilent = true)
		libs.PlayerRef.AddItem(akBaseItem, aiItemCount, absilent = true)
	EndIf
EndEvent
