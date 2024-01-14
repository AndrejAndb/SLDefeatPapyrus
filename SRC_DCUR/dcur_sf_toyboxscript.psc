Scriptname dcur_sf_toyboxscript extends ObjectReference  

Event OnEquipped(Actor akActor)
	Actor Player = Game.GetPlayer()
	Actor Follower = sfqs.GetFollower()
	If (Player.GetItemCount(sfqs.dcur_sf_AnkleChains_Inventory) < 1) && (Follower.GetItemCount(sfqs.dcur_sf_AnkleChains_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_AnkleChains_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_Armbinder_Inventory) < 1) && (Follower.GetItemCount(sfqs.dcur_sf_Armbinder_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_Armbinder_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_ArmCuffs_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_ArmCuffs_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_ArmCuffs_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_BallGag_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_BallGag_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_BallGag_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_Blindfold_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_Blindfold_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_Blindfold_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_Boots_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_Boots_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_Boots_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_buttplug_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_buttplug_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_buttplug_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_ChastityBelt_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_ChastityBelt_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_ChastityBelt_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_ChastityBra_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_ChastityBra_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_ChastityBra_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_Collar_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_Collar_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_Collar_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_Harness_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_Harness_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_Harness_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_LegCuffs_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_LegCuffs_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_LegCuffs_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_prisonerchains_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_prisonerchains_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_prisonerchains_Inventory)
	Endif
	If (Player.GetItemCount(sfqs.dcur_sf_vibrator_Inventory) < 1)  && (Follower.GetItemCount(sfqs.dcur_sf_vibrator_Inventory) < 1)
		Player.Additem(sfqs.dcur_sf_vibrator_Inventory)
	Endif
	;If (Player.GetItemCount(sfqs.dcur_Followersremotecontrol) < 1) 
	;	Player.Additem(sfqs.dcur_Followersremotecontrol)
	;Endif
	Player.RemoveItem(dcur_sf_toybox, 1, absilent = true)
EndEvent

dcur_submissivefollowerQuestScript Property sfqs Auto
Armor Property dcur_sf_toybox  Auto  
