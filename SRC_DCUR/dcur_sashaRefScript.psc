Scriptname dcur_SashaRefScript extends ReferenceAlias

dcur_SashaQuestScript Property saqs  Auto 
zadlibs Property libs Auto
dcur_library Property dclibs Auto

FormList Property dcur_sasha_DDitemstoRemove Auto

Keyword Property dcur_kw_dollmaker_rubber Auto

bool Function isDeviousDevice(Form device)
	if device.HasKeyword(libs.zad_InventoryDevice)
		return true
	endif
	return false
EndFunction

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	;return
	If !akBaseItem || !akSourceContainer		
		;debug.trace("[DCUR] - Error: Sasha received an item with null pointer reference.")
		return
	Endif
	;debug.trace("[DCUR] Sasha received item: " + akBaseItem.GetName())
	If akBaseItem.GetType() == 26 && akSourceContainer == Game.GetPlayer()
		if isDeviousDevice(akBaseItem)			
			; unfortunately the item will already be worn at this point, so we need to force it off her			
			; even more unfortunately, the item events will not be completed at this point, so we need to do it like this:		
			dcur_sasha_DDitemstoRemove.AddForm(akBaseItem)			
			 RegisterForSingleUpdate(0.1)
		elseif !akBaseItem.HasKeyword(dclibs.dglib.ArmorJewelry) && !akBaseItem.HasKeyword(dcur_kw_dollmaker_rubber)		
			debug.messagebox("'Sorry, I know it's meant well, but I don't want to have this. I only ever wear rubber and nothing else. And I mean the nothing else part, in case you wonder what I am wearing under my rubber dresses.'")
			GetReference().RemoveItem(akBaseItem, aiItemCount, true, akSourceContainer)		
		endif	
	Endif
EndEvent

Event OnUpdate()
	Int i = dcur_sasha_DDitemstoRemove.GetSize()
	if i < 1
		Return
	Endif
	debug.messagebox("'Please, use my custom restraints if you want to tie me up. At least they are made for me!'")			
	Armor IDevice
	Armor Rdevice
	Keyword kw 
	While i > 0
		i -= 1
		IDevice = dcur_sasha_DDitemstoRemove.GetAt(i) As Armor
		Rdevice = libs.GetRenderedDevice(IDevice)
		kw = libs.GetDeviceKeyword(IDevice)
		if Rdevice != None 
			libs.removeDevice(saqs.GetSasha(), Idevice, Rdevice, kw, destroyDevice = true, skipevents = false, skipmutex = true)
		endif
		libs.playerref.additem(IDevice, 1)	
		Utility.Wait(0.5)
	EndWhile
	dcur_sasha_DDitemstoRemove.Revert()
EndEvent
