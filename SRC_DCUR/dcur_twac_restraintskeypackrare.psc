Scriptname dcur_twac_restraintskeypackrare extends ObjectReference  

Function GiveKeyRewards(int leverage = 1)		
	libs.playerref.Additem(dclibs.dcumenu.dcur_handrestraintskey, Utility.RandomInt(1,2))
	libs.playerref.Additem(dclibs.dcumenu.dcur_headrestraintskey, Utility.RandomInt(1,2))
	libs.playerref.Additem(dclibs.dcumenu.dcur_bodyrestraintskey, Utility.RandomInt(1,2))
	libs.playerref.Additem(dclibs.dcumenu.dcur_legrestraintskey, Utility.RandomInt(1,2))
	if Utility.RandomInt() < 25
		libs.playerref.Additem(dclibs.dcumenu.dcur_luckycharm, 1)	
	EndIf
EndFunction

Event OnEquipped(Actor akActor)
	Actor Player = Game.GetPlayer()
	libs.notify("You open the keypack.")	
	Player.RemoveItem(dcur_twac_keypack_rare, 1, absilent = true)
	int icount = Libs.PlayerRef.GetItemCount(dcur_twac_keypack_rare)
	Libs.PlayerRef.removeitem(dcur_twac_keypack_rare, icount, true)
	if icount > 1
		icount -= 1
		Libs.PlayerRef.additem(dcur_twac_keypack_rare, icount, true)
	endif
	Utility.Wait(0.5)
	GiveKeyRewards()
EndEvent

dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto   
Armor Property dcur_twac_keypack_rare  Auto  

