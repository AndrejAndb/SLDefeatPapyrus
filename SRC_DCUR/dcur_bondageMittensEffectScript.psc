Scriptname dcur_bondageMittensEffectScript extends activemagiceffect  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  

Keyword Property dcur_kw_bondagemittens Auto
FormList Property dcur_robbed_whitelist Auto

Armor Property zad_DeviceHider Auto

bool Function isDeviousDevice(Form device)
	if device.HasKeyword(libs.zad_InventoryDevice) || device.HasKeyword(libs.zad_Lockable) 
		return true
	endif
	return false
EndFunction

bool Function isValidItem(Form item)
	; If item.GetType() == 41 || item.GetType() == 26 || item.GetType() == 42 || item.GetType() == 27 || item.GetType() == 45 || item.GetType() == 46 || item.GetType() == 52
	; the device hider is not tagged with a DD keyword, so we need to explicitly rule it out.
	If item.GetType() == 41 || (item.GetType() == 26 && !isDeviousDevice(Item) && item != zad_DeviceHider) || item.GetType() == 45
		return true
	EndIf
	return false
EndFunction

Event OnEffectStart(Actor akTarget, Actor akCaster)
	if akTarget != libs.playerRef
		return
	EndIf
	while dclibs.hasAnyWeaponEquipped(akTarget)
		dclibs.stripweapons(akTarget)
	EndWhile
	;dclibs.dropweapons(libs.playerRef, unequiponly = true)
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	if GetTargetActor() != libs.playerRef
		return
	Endif
	If akBaseObject.GetType() == 22 || akBaseObject.GetType() == 41 || ((akBaseObject.GetType() == 26 && !isDeviousDevice(akBaseObject) && akBaseObject != zad_DeviceHider))	
		If UI.IsMenuOpen("InventoryMenu")
			libs.notify("You can't equip this while locked in bondage mittens!")	
		Endif
		;Utility.Wait(0.1)
		while dclibs.hasAnyWeaponEquipped(libs.playerRef)
			dclibs.stripweapons(libs.playerRef)
		EndWhile		
		;libs.Playerref.UnEquipItem(akBaseObject)
	Endif
EndEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If !akBaseItem || GetTargetActor() != libs.playerRef
		return
	Endif	
	If UI.IsMenuOpen("BarterMenu") || !isValidItem(akBaseItem)
		return
	Endif
	If Utility.RandomFloat(0.0, 99.9) < 80.0 ;&& !akBaseItem.GetType() == 45 ; key
		libs.notify("Locked in bondage mittens, you cannot hold on to the " + akBaseItem.GetName())		
		;if akSourceContainer
		;	GetTargetActor().RemoveItem(akBaseItem, aiItemCount, true, akSourceContainer)
		;else
			GetTargetActor().DropObject(akBaseItem, aiItemCount)
		;Endif
	Else
		libs.notify("Despite wearing bondage mittens, you manage to pick up the " + akBaseItem.GetName())		
	Endif
EndEvent