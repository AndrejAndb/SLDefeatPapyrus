Scriptname dcur_stunSlaveBootsScript extends zadRestraintScript  

dcur_mcmconfig Property dcumenu  Auto  
dcur_shockbootsquestscript Property sbqs Auto
dcur_mastercontrollerscript Property mcs Auto

Event OnEquipped(Actor akActor)
	if !zad_DeviousDevice
	; Fix duplicate keyword baked in to savegames
	zad_DeviousDevice = (Game.GetFormFromFile(0x00027f29, "Devious Devices - Assets.esm") as Keyword)
	EndIf
	Parent.OnEquipped(akActor)
EndEvent

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You sit down to slip your feet into the steel boots and lock them shut. They raise your heels by almost seven inches and when you push yourself up to stand on the thin metal rings, you need all your concentration not to fall. But with the steel boots now securely locked on you, you know that you will get ample time to practice walking in them. The tickling sensation on your feet also reminds you what the boots will do to you should you try to run..."		
	Else
		msg = "You place the steel 'boots' onto "+GetMessageName(akActor)+" feet, and they lock in place with a soft click."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if SKSE.GetPluginVersion("NiOverride") < 5 && SKSE.GetPluginVersion("skee") < 1 || NiOverride.GetScriptVersion() < 5
    		libs.NotifyPlayer("This device ("+deviceName+") requires NetImmerse Override, which you do not have installed.", true)
		return 2
	EndIf
	return 0
EndFunction

bool Function RemoveDeviceWithKey(actor akActor = none, bool destroyDevice=false)
	if akActor == none
		akActor = libs.PlayerRef
	EndIf	
	if akActor.GetItemCount(deviceKey)>=1						
		libs.removeDevice(Libs.PlayerRef, dcumenu.dcur_shockboots, dcumenu.dcur_shockbootsRendered, Libs.zad_DeviousBoots, destroyDevice = true, skipevents = false, skipmutex = true)
		Libs.playerref.RemoveItem(dcumenu.dcur_legrestraintskey, 1, true)		
		libs.Notify("Shock Boots Effect ended.")
		sbqs.UnRegisterForUpdate()	
		sbqs.shockbootsquestactive = false		
		return true
	else		
		libs.Notify("You cannot unlock the shock boots at this time.", messageBox=true)
		return false
	Endif
EndFunction

Function OnEquippedPost(actor akActor)
	libs.Log("RestraintScript OnEquippedPost Boots")	
	libs.Notify("Shock Boots Effect started.")	
	sbqs.shockbootsquestactive = true
	sbqs.RegisterForSingleUpdate(1)	
EndFunction

Function OnRemoveDevice(actor akActor)	
	sbqs.shockbootsquestactive = false
	sbqs.UnRegisterForUpdate()	
EndFunction
