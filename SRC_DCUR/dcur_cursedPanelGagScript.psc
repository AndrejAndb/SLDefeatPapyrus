Scriptname dcur_cursedPanelGagScript extends dcur_cursedgagscript

Faction Property zadGagPanelFaction Auto
MiscObject Property zad_GagPanelPlug Auto

Function OnEquippedPre(actor akActor, bool silent=false)
	libs.Log("Panel Gag: Setting faction rank.")
	akActor.AddToFaction(zadGagPanelFaction)
	akActor.SetFactionRank(zadGagPanelFaction, 1)	
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You let your fingers run over the smooth rubber, before you reluctantly place the panel over your mouth. The large panel covers your mouth completely. You wrap the straps around your head and pull them tight before you click the lock shut."		
	Else
		msg = "You slip the gag into "+GetMessageName(akActor)+" mouth, and lock it securely in place behind "+GetMessageName(akActor)+" head."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf
	
	;Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnRemoveDevice(actor akActor)
	libs.Log("Panel Gag: Resetting faction rank.")
	if akActor.GetFactionRank(zadGagPanelFaction) == 0
		akActor.RemoveItem(zad_GagPanelPlug, 1)
	EndIf
	akActor.SetFactionRank(zadGagPanelFaction, 0)
	akActor.RemoveFromFaction(zadGagPanelFaction)
	parent.OnRemoveDevice(akActor)
EndFunction


Function DeviceMenuExt(int msgChoice)
	Parent.DeviceMenuExt(msgChoice)
	if msgChoice == 4 ; Insert Plug
		libs.PlugPanelgag(libs.playerRef)
		libs.NotifyPlayer("You insert the plug in to the panel gag.")
	ElseIf msgChoice == 5 ; Remove Plug
		libs.UnPlugPanelGag(libs.PlayerRef)
		libs.NotifyPlayer("You remove the plug from the panel gag.")
	EndIf
EndFunction
