Scriptname dcur_WhoreCollarEffScript extends activemagiceffect  

MiscObject Property Gold001 Auto
Int AmountAbsorbed = 0
Int AmountNeeded = 0
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto  
Armor Property dcur_WhoreCollar_Inventory Auto
Armor Property dcur_WhoreCollar_Rendered Auto
Keyword Property dcur_kw_dollmaker_rubber Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)	
	RegisterForModEvent("DCL_SOLICITATIONPAYMENT", "On_SOLICITATIONPAYMENT")		
	libs.Notify("You have been locked into a whore collar.")
	; calculate the average solicitation base reward the player is getting at her level
	int lmargin = dclibs.dcumenu.solicitationmintip * (1 + (libs.playerref.GetLevel() / 2) As Int)
	int hmargin = dclibs.dcumenu.solicitationmaxtip * (1 + (libs.playerref.GetLevel() / 2) As Int)
	If lmargin > hmargin
		lmargin = hmargin		
	EndIf
	Int AverageReward = ((hmargin + lmargin) / 2) As Int
	; charge her 20 times her average reward
	AverageReward *= 20
	AmountNeeded = AverageReward
	; and remove half her gold right there, because we're mean
	Int r = (Libs.PlayerRef.GetItemCount(Gold001) / 2) As Int
	Libs.PlayerRef.RemoveItem(Gold001, r)	
	libs.Notify("You will need to earn " + AmountNeeded + " with selling your body. You will also need to be naked or wear rubber dresses.", messagebox = true)	
	RegisterForSingleUpdate(30)
EndEvent

Event On_SOLICITATIONPAYMENT(int amount)
	libs.Notify("The whore collar absorbs your whoring revenue.")
	libs.playerref.RemoveItem(Gold001, amount)
	AmountAbsorbed += amount
	If AmountAbsorbed >= AmountNeeded		
		libs.Notify("The whore collar is satisfied and unlocks.")	
		libs.RemoveDevice(libs.playerref, dcur_WhoreCollar_Inventory, dcur_WhoreCollar_Rendered, libs.zad_DeviousCollar, skipmutex = true, destroydevice = true)
	Else
		Int amountleft = AmountNeeded - AmountAbsorbed
		libs.Notify("You need to earn " +  amountleft + " more gold to unlock the whore collar.")
	EndIf
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	UnregisterForModEvent("DCL_SOLICITATIONPAYMENT")		
	UnregisterForUpdate()
EndEvent

Event OnUpdate()
	if !(dclibs.checknaked() || libs.playerref.GetWornForm(0x00000004).HasKeyword(dcur_kw_dollmaker_rubber))  && !libs.isAnimating(libs.playerref)
		dclibs.collar_punish()	
		; we also increase the amount she needs to pay the collar
		AmountNeeded += dclibs.dcumenu.solicitationmaxtip
	endif	
	RegisterForSingleUpdate(15)
EndEvent
