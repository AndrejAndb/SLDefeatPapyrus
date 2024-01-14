Scriptname dcur_slaveGagScript extends zadGagScript

Faction Property zadGagPanelFaction Auto
MiscObject Property zad_GagPanelPlug Auto
GlobalVariable Property dcur_slavegagplugged  Auto  
dcur_mcmconfig Property dcumenu  Auto  
Quest Property dcur_slavegagQuest  Auto  
dcur_mastercontrollerscript Property mcs Auto

bool Function RemoveDeviceWithKey(actor akActor = none, bool destroyDevice=false)
	if akActor == none
		akActor = libs.PlayerRef
	EndIf	
	if akActor.GetItemCount(deviceKey)>=1		
		libs.Notify("You insert the key and anxiously turn it in its lock. Your lips form a silent smile behind the panel when you hear the locking mechanism click open, releasing you from the hold of the gag's straps.", messageBox=true)
		RemoveDevice(akActor, destroyDevice = true)				
		return true
	else		
		libs.Notify("The " + deviceInventory.GetName() + " does not have an accessible lock.", messageBox=true)
		return false
	Endif
EndFunction

function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		if dcur_slavegagplugged.GetValueInt() == 1
			libs.Notify("This gag's lock has been designed to be inaccessible with the plug still in place. You will need to remove the plug first!", messageBox=true)
		else			
			RemoveDeviceWithKey()
			;DeviceMenuRemoveWithKey()
		endif		
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor != libs.PlayerRef || silent
		return 0 ; Proceed.
	EndIf
        int interaction = zad_GagPreEquipMsg.show()
        if interaction == 0 ; Equip Device		
			return 0 ; Proceed
		Else ;If interaction == 1 ; Put it away
			return 2
		EndIf
	libs.Error("Invalid menu option selected for Gag Script")
	return 0
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)
	libs.Log("Panel Gag: Setting faction rank.")
	akActor.AddToFaction(zadGagPanelFaction)
	akActor.SetFactionRank(zadGagPanelFaction, 1)		
	if akActor == libs.PlayerRef						
		dcur_slavegagplugged.SetValueInt(1)
		if !silent
			libs.NotifyPlayer("Unable to resist the urges of your aroused self any longer, you place the panel over your face. Your wide open mouth welcomes the huge ball plug as it inflates itself inside your mouth, filling it completely. You pull the straps as tight as you possibly can to take away any hope of being able to struggle out of the gag and then click the lock shut.", messagebox=true)				
		endif
	Elseif !silent
		libs.NotifyActor("You slip the gag into "+GetMessageName(akActor)+" mouth, and lock it securely in place behind "+GetMessageName(akActor)+" head.",  akActor, true)
	EndIf	
	(dcur_slavegagQuest As dcur_slavegagQuestScript).slavegagquestactive = true
EndFunction

Function OnRemoveDevice(actor akActor)
	libs.Log("Panel Gag: Resetting faction rank.")
	if akActor.GetFactionRank(zadGagPanelFaction) == 0
		akActor.RemoveItem(zad_GagPanelPlug, 1)
	EndIf
	akActor.SetFactionRank(zadGagPanelFaction, 0)
	akActor.RemoveFromFaction(zadGagPanelFaction)
	dcur_slavegagplugged.SetValueInt(1)		
	libs.playerRef.RemoveItem(dcumenu.dcur_headrestraintskey, 1, true)
	libs.playerRef.RemoveItem(dcumenu.dcur_slavegag, libs.playerRef.GetItemCount(dcumenu.dcur_slavegag), true)
	(dcur_slavegagQuest As dcur_slavegagQuestScript).slavegagquestactive = false	
	parent.OnRemoveDevice(akActor)
EndFunction

Function DeviceMenuExt(int msgChoice)
	Parent.DeviceMenuExt(msgChoice)
	if msgChoice == 4 ; Insert Plug
		libs.PlugPanelgag(libs.playerRef)
		dcur_slavegagplugged.SetValueInt(1)
		libs.NotifyPlayer("Eager to lock your partial freedom away once more, you insert the plug back into the panel gag and click it into its lock. The ball plug inflates inside your mouth, filling it completely once again and making speaking absolutely impossible.", messagebox=true)				
	ElseIf msgChoice == 5 ; Remove Plug
		libs.UnPlugPanelGag(libs.PlayerRef)
		dcur_slavegagplugged.SetValueInt(0)
		libs.NotifyPlayer("As soon as you insert the key into the plug lock and turn it, the huge ball plug deflates inside your mouth. For the first time in a while you are able to close your sore mouth again. You remove the plug from the panel and eagerly inhale a deep breath of fresh air.", messagebox=true)						
		libs.playerRef.RemoveItem(dcumenu.dcur_headrestraintskey,1, true)
		(dcur_slavegagQuest As dcur_slavegagQuestScript).RegisterForSingleUpdate(1)
		(dcur_slavegagQuest As dcur_slavegagQuestScript).firststart = true
	EndIf
EndFunction

