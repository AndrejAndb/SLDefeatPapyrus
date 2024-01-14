Scriptname dcur_chloeQuestScript extends Quest  

ReferenceAlias Property Chloe_ref Auto
ReferenceAlias Property dcur_chloequest_strongbox Auto
Key Property dcur_chloe_shackleskey Auto
Key Property dcur_chloequest_nazeemskey Auto
Key Property dcur_chloe_restraintskey Auto
Book Property dcur_chloequest_wrchest_note  Auto  
Book Property dcur_chloequest_nazeemnote2  Auto  
Book Property dcur_chloequest_nazeemletter Auto
ReferenceAlias Property Alias_dcur_chloequest_nazeem Auto
ReferenceAlias Property Alias_dcur_chloequesst_dr_marker Auto
ReferenceAlias Property Alias_dcur_chloequest_bm_marker Auto
ReferenceAlias Property Alias_dcur_chloequest_nazchest Auto
ReferenceAlias Property Alias_dcur_chloequest_unconcious Auto
ReferenceAlias Property Alias_dcur_falkreath_marker Auto
ReferenceAlias Property Alias_dcur_chloequest_dawnstar_marker Auto
Book Property dcur_chloequest_nazeem_note Auto

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

Armor Property ClothesPrisonerRags Auto 
Armor Property ClothesPrisonerShoes Auto 

Armor Property dcur_steelshackles Auto

Outfit Property dcur_outfit_chloe Auto
Outfit Property dcur_outfitnaked Auto

Weapon Property dcur_thedollmakerGS Auto

GlobalVariable Property dcur_bis_active Auto

zadlibs Property libs Auto
dcur_mcmconfig Property dcumenu Auto 
dcur_library Property dclibs Auto 
zadclibs Property zadc Auto


Int switch

; Chloe's restraints aren't tagged with the quest item tag, because the player gets to keep the devices in the end. It -should- not be an issue, because this quest is meant to be played super early in the game. If there will be reports of the usual suspects removing these items when they shouldn't, I can still change that...

Actor Function GetChloe()
	Return (Chloe_ref.GetReference() As Actor)
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

Function Kaboom()	
	libs.playerref.placeatme(dcumenu.TG08BShockwaveExplosion)	
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")
	Debug.SendAnimationEvent(GetChloe(), "BleedOutStart")
	Game.DisablePlayerControls()	
	libs.playerref.AddItem(dcur_chloequest_nazeem_note, 1)	
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
	Alias_dcur_chloequest_nazeem.GetReference().moveto(Alias_dcur_chloequest_bm_marker.GetReference())		
	; have to do that again, because NPCs requip stuff quickly.
	dclibs.Strip(GetChloe(), false)	
	Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")
	Debug.SendAnimationEvent(GetChloe(), "BleedOutStop")
	Game.EnablePlayerControls()
	SetObjectiveCompleted(80)
	SetStage(90)
	SetObjectiveDisplayed(90)
EndFunction

Function KnockHimOut()
	SetObjectiveCompleted(130)
	SetStage(140)
	Alias_dcur_chloequest_unconcious.ForceRefTo(Alias_dcur_chloequest_nazeem.GetReference())
	SetObjectiveDisplayed(140)
EndFunction

Function MoveNazeem()	
	switch = 1
	RegisterForSingleUpdate(15)
EndFunction

Function MoveNazeem2()	
	switch = 2
	RegisterForSingleUpdate(5)
EndFunction

Function Endquest()	
	SetObjectiveCompleted(230)
	SetStage(1000)
	SetObjectiveDisplayed(1000)
	switch = 3
	RegisterForSingleUpdate(3)	
EndFunction

Function Endquest221()	
	SetObjectiveCompleted(221)	
	dcLibs.LevelUp("", 3)
	dclibs.dcur_boundinskyrimQuest.SetStage(20)
	dclibs.dcur_boundinskyrimQuest.SetObjectiveDisplayed(20)
	stop()
	Utility.Wait(1)
	cicqs.Start()		
EndFunction

Function StopQuest()
	Alias_dcur_chloequest_unconcious.Clear()
	alias_chloe_deadimperial.GetReference().Disable()
EndFunction

Function TerminateQuest(Bool PlayerOnly = False)	
	Alias_dcur_chloequest_unconcious.Clear()
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
	If PlayerOnly
		Return
	EndIf
	Utility.Wait(0.5)
	Stop()
EndFunction

Event OnUpdate()
	If switch == 1
		SetStage(80)
		Alias_dcur_chloequest_nazeem.GetReference().moveto(Alias_dcur_chloequesst_dr_marker.GetReference())
	EndIf
	If switch == 2
		SetStage(130)
		Alias_dcur_chloequest_nazeem.GetReference().moveto(Alias_dcur_chloequesst_dr_marker.GetReference())
	EndIf
	If switch == 3		
		;dcur_chloequest_enddialog.Show()
		;Utility.Wait(1)
		;cicqs.Start()		
	EndIf
EndEvent

Message Property dcur_chloequest_enddialog  Auto  
dcur_cic_questscript Property cicqs Auto

ReferenceAlias Property alias_chloe_deadimperial  Auto  

ReferenceAlias Property alias_chloe_restrained  Auto  
