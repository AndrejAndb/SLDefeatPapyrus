Scriptname dcur_workinggirlcollarEffScript extends activemagiceffect  

dcur_WorkingGirlQuestScript Property wgs Auto

MiscObject Property Gold001 Auto
Int AmountAbsorbed = 0
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto  
Keyword Property dcur_kw_dollmaker_rubber Auto

Armor Property dcur_workinggirlcollar_Inventory Auto
Armor Property dcur_workinggirlcollar_Rendered Auto

Int Warnings = 0

Event OnEffectStart(Actor akTarget, Actor akCaster)	
	RegisterForModEvent("DCL_SOLICITATIONPAYMENT", "On_SOLICITATIONPAYMENT")			
	; calculate the average solicitation base reward the player is getting at her level
	int lmargin = dclibs.dcumenu.solicitationmintip * (1 + (libs.playerref.GetLevel() / 2) As Int)
	int hmargin = dclibs.dcumenu.solicitationmaxtip * (1 + (libs.playerref.GetLevel() / 2) As Int)
	If lmargin > hmargin
		lmargin = hmargin		
	EndIf
	Int AverageReward = ((hmargin + lmargin) / 2) As Int		
	AverageReward *= Utility.RandomInt(5, 12)
	wgs.AmountNeeded = AverageReward
	libs.Notify("To fulfil your contract, you will need to earn " + wgs.AmountNeeded + " gold with selling your body. You will also need to be naked or wear rubber dresses and you cannot leave the inn until your work is done.", messagebox = true)	
	RegisterForSingleUpdate(30)
	Warnings = 0
EndEvent

Event On_SOLICITATIONPAYMENT(int amount)
	libs.Notify("The innkeep takes your whoring revenue.")
	libs.playerref.RemoveItem(Gold001, amount)	
	wgs.AmountEarned += amount	
	AmountAbsorbed += amount
	If AmountAbsorbed >= wgs.AmountNeeded		
		libs.Notify("You fulfilled your contract! Good job!")	
		wgs.DoneWorking()
		;libs.RemoveDevice(libs.playerref, dcur_WhoreCollar_Inventory, dcur_WhoreCollar_Rendered, libs.zad_DeviousCollar, skipmutex = true, destroydevice = true)
	Else
		Int amountleft = wgs.AmountNeeded - AmountAbsorbed
		libs.Notify("You need to earn " +  amountleft + " more gold to fulfil your contract.")
	EndIf
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	UnregisterForModEvent("DCL_SOLICITATIONPAYMENT")		
	UnregisterForUpdate()
EndEvent

Event OnUpdate()
	if !(dclibs.checknaked() || libs.playerref.GetWornForm(0x00000004).HasKeyword(dcur_kw_dollmaker_rubber))
		libs.Notify("You need to wear rubber or be naked!")
		libs.playerref.RemoveItem(Gold001, dclibs.dcumenu.solicitationmaxtip)
		;dclibs.collar_punish()	
		wgs.AmountNeeded += dclibs.dcumenu.solicitationmaxtip
	endif	
	if !libs.PlayerRef.GetCurrentLocation().haskeyword(dclibs.dglib.loctypeinn)	&& !libs.PlayerRef.IsEquipped(wgs.dcur_workinggirl_hobbledress_Rendered)		
		Warnings += 1
		If Warnings < 3
			libs.Notify("You cannot leave the inn while collared!")
			dclibs.collar_punish()
		Else		
			libs.Notify("You failed to return to work. The collar's magic triggers and you find yourself locked in a very tight and very inescapable hobble dress! The innkeep is probably the only one who can free you...", messagebox = true)
			libs.EquipDevice(libs.playerref, wgs.dcur_workinggirl_hobbledress_Inventory, wgs.dcur_workinggirl_hobbledress_Rendered, libs.zad_DeviousSuit, skipmutex = true)			
			libs.LockDevice(libs.playerref, wgs.dcur_workinggirl_armbinder_Inventory, force = true)
		EndIf
	endif	
	RegisterForSingleUpdate(20)
EndEvent

