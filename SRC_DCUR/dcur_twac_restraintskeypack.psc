Scriptname dcur_twac_restraintskeypack extends ObjectReference  

Function GiveKeyRewards(int leverage = 1)		
	libs.playerref.Additem(libs.ChastityKey, Utility.RandomInt(1,2))
	libs.playerref.Additem(libs.RestraintsKey, Utility.RandomInt(2,3))
	libs.playerref.Additem(libs.PiercingKey, Utility.RandomInt(1,2))
	libs.playerref.Additem(dclibs.zadc.zadc_furnitureKey, Utility.RandomInt(1,2))
	if Utility.RandomInt() < 25
		libs.playerref.Additem(dclibs.dcumenu.dcur_luckycharm, 1)	
	EndIf
EndFunction

Event OnEquipped(Actor akActor)
	Actor Player = Game.GetPlayer()
	libs.notify("You open the keypack.")	
	Player.RemoveItem(dcur_twac_keypack_generic, 1, absilent = true)
	int icount = Libs.PlayerRef.GetItemCount(dcur_twac_keypack_generic)
	Libs.PlayerRef.removeitem(dcur_twac_keypack_generic, icount, true)
	if icount > 1
		icount -= 1
		Libs.PlayerRef.additem(dcur_twac_keypack_generic, icount, true)
	endif
	Utility.Wait(0.5)
	GiveKeyRewards()
EndEvent

dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto   
MiscObject Property Gold001 Auto

Armor Property dcur_twac_keypack_generic  Auto  
