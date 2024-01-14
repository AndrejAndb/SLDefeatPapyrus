Scriptname dcur_robbed_QuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto 
zadlibs Property libs  Auto  

ReferenceAlias Property dcur_alias_robber  Auto  
FormList Property dcur_robbed_stolenstuff Auto
FormList Property dcur_robbed_whitelist Auto
Int Property MoneyStolen Auto

Float Property robbedat Auto

Bool Function isStealable(Form item)
	If !item
		return false
	EndIf
	; everything in the whitelist is fine (soul gems, heal potions, gems, some jewelry)
	If dcur_robbed_whitelist.HasForm(item)
		return true
	Endif
	; steal armor that's not DD or jewelry
	If (Item As Armor) && !item.HasKeyword(dclibs.SexLabNoStrip) && !item.HasKeyword(dclibs.dglib.ArmorJewelry) 
		return true
	EndIf
	; steal weapons
	If (Item As Weapon)
		return true
	Endif
	return false
EndFunction

Function StealEquippedStuff(Actor Thief)
	Actor a = libs.playerref
	Form kForm
	int i = 31	
	while i >= 0
		kForm = a.GetWornForm(Armor.GetMaskForSlot(i + 30))
		if kForm && isStealable(kForm)
			If a.IsEquipped(kForm)
				dcur_robbed_stolenstuff.AddForm(kForm)
				a.RemoveItem(kForm, 1, true, thief)		
			Endif
		endIf
		i -= 1
	endWhile
	kForm = a.GetEquippedWeapon(true)
	if !kForm && isStealable(kForm)
		dcur_robbed_stolenstuff.AddForm(kForm)
		a.RemoveItem(kForm, 1, true, thief)		
	Endif
	kForm = a.GetEquippedWeapon(false)
	if !kForm && isStealable(kForm)
		dcur_robbed_stolenstuff.AddForm(kForm)
		a.RemoveItem(kForm, 1, true, thief)		
	Endif
EndFunction

Function StealStuff(Actor Thief)
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")
	dcur_robbed_stolenstuff.Revert()
	Int MaxItemsToSteal = 30 ;sanity limit for packrat-sized inventories
	Actor Pl = libs.playerref
	robbedat = Utility.GetCurrentGameTime()
	dcur_alias_robber.ForceRefTo(Thief)	
	Int i = pl.GetNumItems()	
	While i > 0 && MaxItemsToSteal > 0
		i -= 1
		Form kForm = pl.GetNthForm(i)		
		If isStealable(kForm)
			dcur_robbed_stolenstuff.AddForm(kForm)
			Pl.RemoveItem(kForm, pl.GetItemCount(kForm), true, thief)		
			MaxItemsToSteal -= 1
		EndIf
	EndWhile	
	; always steal her equipped stuff and her gold
	MoneyStolen = pl.GetItemCount(dcumenu.gold001)		
	Pl.RemoveItem(dcumenu.gold001, pl.GetItemCount(dcumenu.gold001), true, thief)		
	StealEquippedStuff(Thief)
	self.SetObjectiveDisplayed(10)
	self.SetStage(10)
	RegisterForSingleUpdateGameTime(24*3) ; Three days of game time to get her stuff back
EndFunction

Function FoundThief()
	; no need to give her back her stuff - she can loot it from the body.
	UnregisterForUpdateGameTime()
	dcur_alias_robber.Clear()
	self.SetObjectiveCompleted(10)
	self.SetObjectiveDisplayed(100)
	self.SetObjectiveCompleted(100)
	self.SetStage(100)
	self.Stop()	
EndFunction

Function TimeExpired()
	; remove items from the thief, so that the player cannot get them back anymore. Since the Formlist doesn't keep track of the number of items stolen, the thief will lose any identical ones. Bad luck.
	Actor t = dcur_alias_robber.GetActorReference()
	If t 	
		int i = dcur_robbed_stolenstuff.GetSize()
		While i > 0
			i -= 1
			Form frm = dcur_robbed_stolenstuff.GetAt(i)
			t.RemoveItem(frm, t.GetItemCount(frm))		
		EndWhile
		t.RemoveItem(dcumenu.gold001, MoneyStolen)		
	EndIf
	dcur_alias_robber.Clear()
	if self.GetStage() == 10
		self.SetObjectiveCompleted(10)
		self.SetObjectiveDisplayed(200)
		self.SetObjectiveCompleted(200)
		self.SetStage(200)
		self.Stop()	
	Endif
EndFunction

Event OnUpdateGameTime()
	TimeExpired()
EndEvent