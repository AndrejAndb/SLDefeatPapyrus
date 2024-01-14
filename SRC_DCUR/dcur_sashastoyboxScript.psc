Scriptname dcur_sashastoyboxScript extends ObjectReference  

Event OnEquipped(Actor akActor)
	Actor Player = Game.GetPlayer()
	Actor Sasha = saqs.GetSasha()
	If (Player.GetItemCount(saqs.dcur_SashaChastityBra) < 1) && (Sasha.GetItemCount(saqs.dcur_SashaChastityBra) < 1)
		Player.Additem(saqs.dcur_SashaChastityBra)
	Endif
	If (Player.GetItemCount(saqs.dcur_SashaChastityBelt) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaChastityBelt) < 1)
		Player.Additem(saqs.dcur_SashaChastityBelt)
	Endif
	If (Player.GetItemCount(saqs.dcur_SashaCollar) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaCollar) < 1)
		Player.Additem(saqs.dcur_SashaCollar)
	Endif
	If (Player.GetItemCount(saqs.dcur_SashaArmcuffs) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaArmcuffs) < 1)
		Player.Additem(saqs.dcur_SashaArmcuffs)
	Endif
	If (Player.GetItemCount(saqs.dcur_SashaLegcuffs) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaLegcuffs) < 1)
		Player.Additem(saqs.dcur_SashaLegcuffs)
	Endif
	If (Player.GetItemCount(saqs.dcur_SashaBallGag) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaBallGag) < 1)
		Player.Additem(saqs.dcur_SashaBallGag)
	Endif
	If (Player.GetItemCount(saqs.dcur_SashaPenisGag) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaPenisGag) < 1)
		Player.Additem(saqs.dcur_SashaPenisGag)
	Endif
	If (Player.GetItemCount(saqs.dcur_SashaAnkleChains) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaAnkleChains) < 1)
		Player.Additem(saqs.dcur_SashaAnkleChains)
	Endif
	If (Player.GetItemCount(saqs.dcur_SashaArmbinder) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaArmbinder) < 1)
		Player.Additem(saqs.dcur_SashaArmbinder)
	Endif
	If (Player.GetItemCount(saqs.dcur_SashaBoots) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaBoots) < 1)
		Player.Additem(saqs.dcur_SashaBoots)
	Endif
	If (Player.GetItemCount(saqs.dcur_SashaHarness) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaHarness) < 1)
		Player.Additem(saqs.dcur_SashaHarness)
	Endif
	If (Player.GetItemCount(saqs.dcur_sashaBlindfold) < 1)  && (Sasha.GetItemCount(saqs.dcur_SashaBlindfold) < 1)
		Player.Additem(saqs.dcur_sashaBlindfold)
	Endif
	If (Player.GetItemCount(saqs.dcur_sasha_prisonerchains_Inventory) < 1)  && (Sasha.GetItemCount(saqs.dcur_sasha_prisonerchains_Inventory) < 1)
		Player.Additem(saqs.dcur_sasha_prisonerchains_Inventory)
	Endif
	If (Player.GetItemCount(saqs.dcur_Sashasremotecontrol) < 1) 
		Player.Additem(saqs.dcur_Sashasremotecontrol)
	Endif
	Player.RemoveItem(dcur_sashastoybox, 1, absilent = true)
EndEvent

dcur_SashaQuestScript Property saqs  Auto  
Armor Property dcur_sashastoybox  Auto  
