Scriptname dcur_sadq_lostshipmentScript extends ObjectReference  

dcur_SupplyQuestScript Property sadqs Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if akNewContainer == Game.GetPlayer() && sadqs.GetStage() == 20
		sadqs.SetObjectiveCompleted(20)
		sadqs.SetStage(30)
		sadqs.SetObjectiveDisplayed(30)
	EndIf
EndEvent

Event OnEquipped(Actor akActor)
	If sadqs.GetStage() != 30
		return
	EndIf
	Actor Player = Game.GetPlayer()
	Player.placeatme(sadqs.dcumenu.TG08BShockwaveExplosion)
	Utility.Wait(1)
	sadqs.libs.equipDevice(sadqs.libs.PlayerRef, sadqs.dcur_sadq_gag_Inventory, sadqs.dcur_sadq_gag_Rendered, sadqs.libs.zad_DeviousGag, skipmutex = true)
	sadqs.GagForFollowers()
	Player.Additem(sadqs.dcur_sadq_lostshipmentmats)
	Player.RemoveItem(sadqs.dcur_sadq_LostShipment, 1, absilent = true)
	sadqs.SetObjectiveCompleted(30)
	sadqs.SetStage(40)
	sadqs.SetObjectiveDisplayed(40)
EndEvent