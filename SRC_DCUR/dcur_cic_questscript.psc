Scriptname dcur_cic_questscript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto 
dcur_learningtheropesQuestScript Property ltrqs Auto

MiscObject Property dcur_cic_delivery  Auto  
MiscObject Property dcur_cic_deliverytoken Auto

ReferenceAlias Property alias_yq_windhelm_stables Auto
ReferenceAlias Property alias_yc_riften_blacksmith Auto
ReferenceAlias Property alias_cic_chloe Auto
ReferenceAlias Property alias_cic_dollmaker Auto
ReferenceAlias Property alias_yc_morthal_innkeep Auto
ReferenceAlias Property alias_yq_winterhold_barkeep Auto
ReferenceAlias Property alias_yq_whiterun_belethor Auto
ReferenceAlias Property alias_yc_dawnstar_innkeep Auto
ReferenceAlias Property alias_yc_markath_stables Auto
ReferenceAlias Property alias_yq_solitude_barkeep Auto

ReferenceAlias Property alias_cic_whiteruntemple Auto
ReferenceAlias Property alias_cic_windhelminn Auto
ReferenceAlias Property alias_cic_rifteninn Auto


Armor Property dcur_chloe_prisonerchains_Inventory Auto
Armor Property dcur_chloe_prisonerchains_Rendered Auto
Armor Property dcur_chloe_belt_Inventory Auto
Armor Property dcur_chloe_belt_Rendered Auto
Armor Property dcur_chloe_boots_Inventory Auto
Armor Property dcur_chloe_boots_Rendered Auto
Armor Property dcur_chloe_catsuit_Inventory Auto
Armor Property dcur_chloe_catsuit_Rendered Auto
Armor Property dcur_chloe_BallGag_Inventory Auto
Armor Property dcur_chloe_BallGag_Rendered Auto
Armor Property dcur_chloe_gloves_Inventory Auto
Armor Property dcur_chloe_gloves_Rendered Auto
Armor Property dcur_chloe_chastitybra_Inventory Auto
Armor Property dcur_chloe_chastitybra_Rendered Auto
Armor Property dcur_chloe_vibrator_Inventory Auto
Armor Property dcur_chloe_vibrator_Rendered Auto
Armor Property dcur_chloe_yoke_Inventory Auto
Armor Property dcur_chloe_yoke_Rendered Auto

Armor Property dcur_dollmaker_slavecollar_inventory Auto
Armor Property dcur_dollmaker_slavecollar_rendered Auto

Key Property dcur_chloe_restraintskey Auto
Weapon Property dcur_thedollmakerGS Auto


Actor Function GetChloe()
	Return (alias_cic_chloe.GetReference() As Actor)
EndFunction

bool Function isDeviousDevice(Form device)
	if device.HasKeyword(libs.zad_InventoryDevice) || device.HasKeyword(libs.zad_Lockable)
		return true
	endif
	return false
EndFunction

Function TransferWeapons()	
	Actor pl = GetChloe()
	Int i = pl.GetNumItems()	
	While i > 0
		i -= 1
		Form kForm = pl.GetNthForm(i)		
		If (kForm As Weapon) || ((kForm As Armor) && !isDeviousDevice(kForm))
			Pl.RemoveItem(kForm, pl.GetItemCount(kForm), true, libs.PlayerRef)					
		EndIf
	EndWhile
EndFunction

Function CheckDevices()
	; This is just a safety measure to make sure they have the devices on. Normally this quest is started right at the end of the Chloe quest, so they should wear them already.	
	If GetChloe().IsEquipped(dcur_chloe_prisonerchains_Rendered) && libs.PlayerRef.IsEquipped(dcur_chloe_prisonerchains_Rendered)
		return
	EndIf	
	; give her weapons to the player to prevent the AI from equipping them.
	TransferWeapons()
	dclibs.Strip(libs.playerRef, false)
	dclibs.Strip(GetChloe(), false)
	Utility.Wait(0.5)
	libs.equipDevice(libs.PlayerRef, dcur_chloe_catsuit_Inventory, dcur_chloe_catsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)
	libs.equipDevice(GetChloe(), dcur_chloe_catsuit_Inventory, dcur_chloe_catsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(libs.PlayerRef, dcur_chloe_prisonerchains_Inventory, dcur_chloe_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	libs.equipDevice(GetChloe(), dcur_chloe_prisonerchains_Inventory, dcur_chloe_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(libs.PlayerRef, dcur_chloe_vibrator_Inventory, dcur_chloe_vibrator_Rendered, libs.zad_DeviousPlugVaginal, skipmutex = true)
	libs.equipDevice(GetChloe(), dcur_chloe_vibrator_Inventory, dcur_chloe_vibrator_Rendered, libs.zad_DeviousPlugVaginal, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(libs.PlayerRef, dcur_chloe_belt_Inventory, dcur_chloe_belt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
	libs.equipDevice(GetChloe(), dcur_chloe_belt_Inventory, dcur_chloe_belt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(libs.PlayerRef, dcur_chloe_boots_Inventory, dcur_chloe_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	libs.equipDevice(GetChloe(), dcur_chloe_boots_Inventory, dcur_chloe_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(libs.PlayerRef, dcur_chloe_gloves_Inventory, dcur_chloe_gloves_Rendered, libs.zad_DeviousGloves, skipmutex = true)
	libs.equipDevice(GetChloe(), dcur_chloe_gloves_Inventory, dcur_chloe_gloves_Rendered, libs.zad_DeviousGloves, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(libs.PlayerRef, dcur_chloe_chastitybra_Inventory, dcur_chloe_chastitybra_Rendered, libs.zad_DeviousBra, skipmutex = true)
	libs.equipDevice(GetChloe(), dcur_chloe_chastitybra_Inventory, dcur_chloe_chastitybra_Rendered, libs.zad_DeviousBra, skipmutex = true)
	Utility.Wait(0.5)	
	; have to do that again, because NPCs requip stuff quickly.
	dclibs.Strip(GetChloe(), false)	
EndFunction
	
Function StartQuest()
	NextStage()
	CheckDevices()
	libs.equipDevice(libs.PlayerRef, dcur_chloe_BallGag_Inventory, dcur_chloe_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	libs.equipDevice(GetChloe(), dcur_chloe_BallGag_Inventory, dcur_chloe_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	Game.EnableFastTravel(False)	
EndFunction

Function StopQuest()
	if GetStage() == 10
		alias_yq_whiterun_belethor.GetReference().removeitem(dcur_cic_deliverytoken)
	elseif GetStage() == 20
		alias_yq_winterhold_barkeep.GetReference().removeitem(dcur_cic_deliverytoken)
	elseif GetStage() == 30
		alias_yq_windhelm_stables.GetReference().removeitem(dcur_cic_deliverytoken)
	elseif GetStage() == 40
		alias_yq_solitude_barkeep.GetReference().removeitem(dcur_cic_deliverytoken)
	elseif GetStage() == 50
		alias_yc_riften_blacksmith.GetReference().removeitem(dcur_cic_deliverytoken)
	elseif GetStage() == 60
		alias_yc_morthal_innkeep.GetReference().removeitem(dcur_cic_deliverytoken)
	elseif GetStage() == 70
		alias_yc_markath_stables.GetReference().removeitem(dcur_cic_deliverytoken)
	elseif GetStage() == 80
		alias_yc_dawnstar_innkeep.GetReference().removeitem(dcur_cic_deliverytoken)
	endif	
	Game.EnableFastTravel(True)	
EndFunction

Function EndRegularQuest()
	stop()	
	dcLibs.LevelUp("", 3)
	dclibs.dcur_boundinskyrimQuest.SetStage(30)
	dclibs.dcur_boundinskyrimQuest.SetObjectiveDisplayed(30)
	ltrqs.Start()
EndFunction

Function LockCollar()
	libs.equipDevice(libs.PlayerRef, dcur_dollmaker_slavecollar_inventory, dcur_dollmaker_slavecollar_rendered, libs.zad_DeviousCollar, skipmutex = true)
EndFunction

Function RewardsandEnd()
	Game.GetPlayer().AddItem(dcur_chloe_restraintskey)	
	Game.GetPlayer().AddItem(dclibs.dcur_dq_damnbox, 3)
	Game.GetPlayer().AddItem(dcur_thedollmakerGS, 1)
	SetObjectiveCompleted(1000)		
	SetObjectiveDisplayed(1010)
	SetStage(1010)	
	; let's take the gag off her, otherwise it might be hard to talk to her.
	libs.RemoveDevice(GetChloe(), dcur_chloe_BallGag_Inventory, dcur_chloe_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true, destroydevice = true)
	;Game.GetPlayer().AddItem(dcur_chloe_BallGag_Inventory, 1)	
	RemoveDevices(PlayerOnly = True)			
EndFunction

Function NextStage()
	if GetStage() == 0
		SetObjectiveDisplayed(10)
		SetStage(10)					
		alias_yq_whiterun_belethor.GetReference().additem(dcur_cic_deliverytoken)
	elseif GetStage() == 10
		SetObjectiveCompleted(10)
		alias_yq_whiterun_belethor.GetReference().removeitem(dcur_cic_deliverytoken)
		SetStage(20)					
		SetObjectiveDisplayed(20)		
		alias_cic_whiteruntemple.GetReference().additem(dcur_cic_deliverytoken)
	elseif GetStage() == 20
		SetObjectiveCompleted(20)
		alias_cic_whiteruntemple.GetReference().removeitem(dcur_cic_deliverytoken)
		SetObjectiveDisplayed(30)
		SetStage(30)					
		alias_yq_windhelm_stables.GetReference().additem(dcur_cic_deliverytoken)
	elseif GetStage() == 30
		SetObjectiveCompleted(30)
		alias_yq_windhelm_stables.GetReference().removeitem(dcur_cic_deliverytoken)
		SetObjectiveDisplayed(40)
		SetStage(40)					
		alias_cic_windhelminn.GetReference().additem(dcur_cic_deliverytoken)
	elseif GetStage() == 40
		SetObjectiveCompleted(40)
		alias_cic_windhelminn.GetReference().removeitem(dcur_cic_deliverytoken)
		SetObjectiveDisplayed(50)
		SetStage(50)					
		alias_yc_riften_blacksmith.GetReference().additem(dcur_cic_deliverytoken)
	elseif GetStage() == 50
		SetObjectiveCompleted(50)
		alias_yc_riften_blacksmith.GetReference().removeitem(dcur_cic_deliverytoken)
		SetObjectiveDisplayed(60)
		SetStage(60)					
		alias_cic_rifteninn.GetReference().additem(dcur_cic_deliverytoken)
	elseif GetStage() == 60
		SetObjectiveCompleted(60)
		alias_cic_rifteninn.GetReference().removeitem(dcur_cic_deliverytoken)
		SetObjectiveDisplayed(70)
		SetStage(70)					
		alias_yc_markath_stables.GetReference().additem(dcur_cic_deliverytoken)
	elseif GetStage() == 70
		SetObjectiveCompleted(70)
		alias_yc_markath_stables.GetReference().removeitem(dcur_cic_deliverytoken)
		SetObjectiveDisplayed(80)
		SetStage(80)					
		alias_yc_dawnstar_innkeep.GetReference().additem(dcur_cic_deliverytoken)
	elseif GetStage() == 80
		SetObjectiveCompleted(80)
		alias_yc_dawnstar_innkeep.GetReference().removeitem(dcur_cic_deliverytoken)
		SetObjectiveDisplayed(1000)
		SetStage(1000)							
	endif
EndFunction

Function RemoveDevices(Bool PlayerOnly = False)		
	libs.RemoveDevice(libs.PlayerRef, dcur_chloe_catsuit_Inventory, dcur_chloe_catsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)
	If !PlayerOnly
		libs.RemoveDevice(GetChloe(), dcur_chloe_catsuit_Inventory, dcur_chloe_catsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)
	EndIf
	Utility.Wait(0.5)
	libs.RemoveDevice(libs.PlayerRef, dcur_chloe_prisonerchains_Inventory, dcur_chloe_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	If !PlayerOnly
		libs.RemoveDevice(GetChloe(), dcur_chloe_prisonerchains_Inventory, dcur_chloe_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	EndIf
	Utility.Wait(0.5)
	libs.RemoveDevice(libs.PlayerRef, dcur_chloe_belt_Inventory, dcur_chloe_belt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
	If !PlayerOnly
		libs.RemoveDevice(GetChloe(), dcur_chloe_belt_Inventory, dcur_chloe_belt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
	EndIf
	Utility.Wait(0.5)
	libs.RemoveDevice(libs.PlayerRef, dcur_chloe_boots_Inventory, dcur_chloe_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	If !PlayerOnly
		libs.RemoveDevice(GetChloe(), dcur_chloe_boots_Inventory, dcur_chloe_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	EndIf
	Utility.Wait(0.5)
	libs.RemoveDevice(libs.PlayerRef, dcur_chloe_gloves_Inventory, dcur_chloe_gloves_Rendered, libs.zad_DeviousGloves, skipmutex = true)
	If !PlayerOnly
		libs.RemoveDevice(GetChloe(), dcur_chloe_gloves_Inventory, dcur_chloe_gloves_Rendered, libs.zad_DeviousGloves, skipmutex = true)
	EndIf
	Utility.Wait(0.5)
	libs.RemoveDevice(libs.PlayerRef, dcur_chloe_chastitybra_Inventory, dcur_chloe_chastitybra_Rendered, libs.zad_DeviousBra, skipmutex = true)
	If !PlayerOnly
		libs.RemoveDevice(GetChloe(), dcur_chloe_chastitybra_Inventory, dcur_chloe_chastitybra_Rendered, libs.zad_DeviousBra, skipmutex = true)
	EndIf	
	Utility.Wait(0.5)
	libs.RemoveDevice(libs.PlayerRef, dcur_chloe_vibrator_Inventory, dcur_chloe_vibrator_Rendered, libs.zad_DeviousPlugVaginal, skipmutex = true)
	If !PlayerOnly
		libs.RemoveDevice(GetChloe(), dcur_chloe_vibrator_Inventory, dcur_chloe_vibrator_Rendered, libs.zad_DeviousPlugVaginal, skipmutex = true)
	EndIf	
	Utility.Wait(0.5)
	libs.RemoveDevice(libs.PlayerRef, dcur_chloe_BallGag_Inventory, dcur_chloe_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	If !PlayerOnly
		libs.RemoveDevice(GetChloe(), dcur_chloe_BallGag_Inventory, dcur_chloe_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	EndIf	
	If PlayerOnly
		Return
	EndIf
	;Utility.Wait(0.5)
	;Stop()
EndFunction
