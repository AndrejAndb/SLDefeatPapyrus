Scriptname dcur_darepackbox extends ObjectReference  

Function GiveKeyRewards(int leverage = 1)	
	int i = Utility.RandomInt(1,100)
	If i >= 1 && i < 5
		libs.playerref.Additem(dclibs.dcumenu.dcur_handrestraintskey, 1)
	elseif i >= 5 && i < 10
		libs.playerref.Additem(dclibs.dcumenu.dcur_headrestraintskey, 1)
	elseif i >= 10 && i < 15
		libs.playerref.Additem(dclibs.dcumenu.dcur_bodyrestraintskey, 1)
	elseif i >= 15 && i < 20
		libs.playerref.Additem(dclibs.dcumenu.dcur_legrestraintskey, 1)
	elseif i >= 20 && i < 30
		libs.playerref.Additem(libs.ChastityKey, 1)
	elseif i >= 30 && i < 40
		libs.playerref.Additem(libs.RestraintsKey, 1)
	elseif i >= 40 && i < 50
		libs.playerref.Additem(libs.PiercingKey, 1)
	elseif i >= 50 && i < 60
		libs.playerref.Additem(dclibs.dcumenu.dcur_luckycharm, 1)
	else
		libs.playerref.addItem(gold001, 50 * leverage)
	Endif	
EndFunction

Function GiveItemRewards(int leverage = 1)
	int i = 0 		
	If leverage == 1
		; don't drop great stuff for low reward levels
		i = Utility.RandomInt(25,100)
	elseif leverage == 3
		; no boring stuff for high reward levels
		i = Utility.RandomInt(1,44)
	else
		i = Utility.RandomInt(1,100)
	Endif
	If i >= 1 && i < 5
		libs.playerref.Additem(dclibs.LItemEnchWeaponAnySpecial, 1)					
	elseif i >= 5 && i < 10
		libs.playerref.Additem(dclibs.LItemEnchArmorAllSpecial, 1)			
	elseif i >= 10 && i < 15
		libs.playerref.Additem(dclibs.LItemStaffsAll, 1)			
	elseif i >= 15 && i < 20
		libs.playerref.Additem(dclibs.LItemSpellTomesSpecial, 1)
	elseif i >= 20 && i < 25
		libs.playerref.Additem(dclibs.dcl_LL_all, 1)					
	elseif i >= 25 && i < 35
		libs.playerref.Additem(dclibs.dcumenu.dcur_luckycharm, leverage)
	elseif i >= 35 && i < 45
		libs.playerref.Additem(dclibs.LItemSoulGemFullSpecial, 1)
	elseif i >= 45 && i < 55
		libs.playerref.Additem(dclibs.LootFalmerOre100, 5)					
	elseif i >= 55 && i < 65
		libs.playerref.Additem(dclibs.LItemPotionRestoreHealthBest, 10)			
	elseif i >= 65 && i < 70
		libs.playerref.Additem(dclibs.LItemGems, 5)
	elseif i >= 70 && i < 75
		libs.playerref.Additem(dclibs.LItemPotionAllBest, 5)
	else
		libs.playerref.addItem(gold001, 250 * leverage)
	Endif	
EndFunction	

Function AddCosmeticItems(Actor Player)
	If !Player.WornHasKeyword(libs.zad_DeviousArmCuffs)
		dclibs.dcur_equiprandomarmcuffs(Player, dclibs.dcumenu.equiptheme)
	EndIf
	If !Player.WornHasKeyword(libs.zad_DeviousLegCuffs)
		dclibs.dcur_equiprandomLegcuffs(Player, dclibs.dcumenu.equiptheme)
	EndIf
	If !Player.WornHasKeyword(libs.zad_DeviousCollar)
		dclibs.dcur_equiprandomCollar(Player, dclibs.dcumenu.equiptheme)
	EndIf	
EndFunction

Function AddChastity(Actor Player)
	If !Player.WornHasKeyword(libs.zad_DeviousBelt)
		dclibs.dcur_equiprandomBelt(Player, dclibs.dcumenu.equiptheme)
	EndIf
	If !Player.WornHasKeyword(libs.zad_DeviousBra)
		dclibs.dcur_equiprandomBra(Player, dclibs.dcumenu.equiptheme)
	EndIf
EndFunction

Function BindAndGag(Actor Player)
	If !Player.WornHasKeyword(libs.zad_DeviousGag)
		dclibs.dcur_equiprandomGag(Player, dclibs.dcumenu.equiptheme)
	EndIf
	If !Player.WornHasKeyword(libs.zad_DeviousBoots)
		dclibs.dcur_equiprandomBoots(Player, dclibs.dcumenu.equiptheme)
	EndIf
	If !Player.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		dclibs.dcur_equiprandomArmbinder(Player, dclibs.dcumenu.equiptheme)
	EndIf		
EndFunction

Function BindHerTight(Actor Player)
	If !Player.WornHasKeyword(libs.zad_DeviousGag)
		dclibs.dcur_equiprandomGag(Player, dclibs.dcumenu.equiptheme)
	EndIf
	If !Player.WornHasKeyword(libs.zad_DeviousBoots)
		dclibs.dcur_equiprandomBoots(Player, dclibs.dcumenu.equiptheme)
	EndIf
	If !Player.WornHasKeyword(libs.zad_DeviousBlindfold)
		dclibs.dcur_equiprandomBlindfold(Player, dclibs.dcumenu.equiptheme)
	EndIf
	; let's equip the most serious stuff we can
	If !Player.WornHasKeyword(libs.zad_DeviousSuit) && !Player.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		dclibs.dcur_equiprandomStraitJacket(Player, dclibs.dcumenu.equiptheme)
	Else
		If !Player.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			dclibs.dcur_equiprandomArmbinder(Player, dclibs.dcumenu.equiptheme)
		EndIf		
		If !Player.WornHasKeyword(libs.zad_DeviousSuit)
			dclibs.dcur_equiprandomHobbleDress(Player, dclibs.dcumenu.equiptheme)
		EndIf		
	EndIf	
	If !Player.WornHasKeyword(libs.zad_DeviousGloves)
		dclibs.dcur_equiprandombondagemittens(Player, dclibs.dcumenu.equiptheme)
	EndIf
EndFunction

Function TieHerUp()
	Actor Player = Game.GetPlayer()	
	Utility.Wait(1)
	Int rnd = Utility.RandomInt()
	dclibs.dcur_removekeys(Player, standardkeysonly = false)
	If rnd < 25
		; do nothing (just steal keys)
	Elseif rnd < 33
		; just cosmetic stuff
		AddCosmeticItems(Player)
	Elseif rnd < 50
		; chastity
		AddChastity(Player)
	Elseif rnd < 65
		; a bit more serious stuff
		BindAndGag(Player)
	Elseif rnd < 75
		; serious stuff
		BindAndGag(Player)
		AddChastity(Player)
	Elseif rnd < 90
		; really serious stuff
		BindHerTight(Player)
	Else
		; everything!
		BindHerTight(Player)
		AddChastity(Player)
		AddCosmeticItems(Player)
	EndIf
EndFunction

Event OnEquipped(Actor akActor)
	libs.notify("You open the box and hope for the best...")	
	Actor Player = Game.GetPlayer()	
	; always reward some small stuff
	GiveItemRewards(1)
	Int rnd = Utility.RandomInt()
	If rnd < 10
		GiveItemRewards(1)
		If Utility.RandomInt() < 40
			TieHerUp()
		EndIf
	Elseif rnd < 20
		GiveItemRewards(2)
		If Utility.RandomInt() < 50
			TieHerUp()
		EndIf
	Elseif rnd < 35
		GiveItemRewards(3)
		If Utility.RandomInt() < 60
			TieHerUp()
		EndIf
	Elseif rnd < 50
		; keys
		GiveKeyRewards(1)
	Elseif rnd < 75
		; rubber item
		libs.playerref.Additem(dclibs.dcl_LL_all, 1)
		If Utility.RandomInt() < 50
			TieHerUp()
		EndIf
	Elseif rnd < 90
		; many rubber item
		libs.playerref.Additem(dclibs.dcl_LL_all, 3)
		If Utility.RandomInt() < 60
			TieHerUp()
		EndIf
	Else 
		; grand gold prize
		libs.playerref.addItem(gold001, 100 * Player.GetLevel())
		If Utility.RandomInt() < 70
			TieHerUp()
		EndIf
	EndIf
	int icount = Libs.PlayerRef.GetItemCount(dcur_darepack)
	Libs.PlayerRef.removeitem(dcur_darepack, icount, true)
	if icount > 1
		icount -= 1
		Libs.PlayerRef.additem(dcur_darepack, icount, true)
	endif	
EndEvent

Armor Property dcur_darepack  Auto 
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto   
MiscObject Property Gold001 Auto