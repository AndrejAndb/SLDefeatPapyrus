Scriptname dcur_learningtheropesQuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto 
dcur_SupplyQuestScript Property sadqs Auto

ReferenceAlias Property alias_ltr_chloe Auto
ReferenceAlias Property alias_ltr_dollmaker Auto
ReferenceAlias Property alias_ltr_orcchief Auto
ReferenceAlias Property alias_markath_stablemaster Auto

ReferenceAlias Property Alias_alias_ltr_orcgirl1 Auto
ReferenceAlias Property Alias_alias_ltr_orcgirl2 Auto
ReferenceAlias Property Alias_alias_ltr_orcgirl3 Auto
ReferenceAlias Property Alias_alias_ltr_followplayer Auto
ReferenceAlias Property Alias_alias_ltr_redguardgirl Auto
ReferenceAlias Property Alias_alias_ltr_dibellapriestess Auto

ReferenceAlias Property dcur_ltr_dawnstarmarker Auto

Armor Property dcur_ltr_bindings_extreme_inventory Auto
Armor Property dcur_ltr_bindings_extreme_rendered Auto
Armor Property dcur_ltr_bindings_hard_inventory Auto
Armor Property dcur_ltr_bindings_hard_rendered Auto
Armor Property dcur_ltr_bindings_regular_inventory Auto
Armor Property dcur_ltr_bindings_regular_rendered Auto
Armor Property dcur_ltr_ropebinder_inventory Auto
Armor Property dcur_ltr_ropebinder_rendered Auto
Armor Property dcur_ltr_wristbindings_simple_Inventory Auto
Armor Property dcur_ltr_wristbindings_simple_rendered Auto

Armor Property dcur_ltr_ropebinder_inescapable_inventory Auto
Armor Property dcur_ltr_ropebinder_inescapable_rendered Auto

Armor Property dcur_dollmaker_slavecollar_inventory Auto
Armor Property dcur_dollmaker_slavecollar_rendered Auto

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

Armor Property dcur_ltr_templeoutfit Auto

Key Property dcur_chloe_restraintskey Auto
MiscObject Property dcur_ltr_rope_fine Auto
MiscObject Property dcur_ltr_lovepotion Auto
Outfit Property dcur_outfitnaked Auto
Outfit Property RedguardClothesOutfitNoHat Auto

Bool Property ChloeWasUnlocked = False Auto Hidden
GlobalVariable Property dcur_ltr_relockchloe Auto

Actor Function GetChloe()
	Return (alias_ltr_chloe.GetReference() As Actor)
EndFunction

Function StartQuest()
	SetStage(10)
	SetObjectiveDisplayed(10)
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
EndFunction

Function StopQuest()
	If ChloeWasUnlocked
		LockChloeDevices()
	EndIf
	UnRegisterForModEvent("AnimationEnd")		
EndFunction

Function Stage20_Bindher()
	dclibs.Strip(Libs.PlayerRef, false)
	libs.equipDevice(libs.PlayerRef, dcur_ltr_wristbindings_simple_Inventory, dcur_ltr_wristbindings_simple_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	SetObjectiveCompleted(20)
	SetStage(30)
	SetObjectiveDisplayed(30)
EndFunction

Function Stage60_BindHer()
	libs.PlayerRef.RemoveItem(dcur_ltr_rope_fine)
	dclibs.Strip(Libs.PlayerRef, false)
	libs.equipDevice(libs.PlayerRef, dcur_ltr_ropebinder_inventory, dcur_ltr_ropebinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(libs.PlayerRef, dcur_ltr_bindings_regular_inventory, dcur_ltr_bindings_regular_Rendered, libs.zad_DeviousHarness, skipmutex = true)
	SetObjectiveCompleted(50)
	SetStage(60)
	SetObjectiveDisplayed(60)
EndFunction

Function Stage70_GiveDress()
	SetObjectiveCompleted(60)
	SetStage(70)
	SetObjectiveDisplayed(70)
	libs.PlayerRef.AddItem(dcur_ltr_templeoutfit)
EndFunction

Event OnSexEnd(string eventName, string argString, float argNum, form sender)			
	sslThreadController SLcontroller = libs.SexLab.HookController(argString)	
	Actor[] actors = SLcontroller.Positions
	int numactors = actors.Length
	int i = 0	
	Bool Playerfound = false
	Bool Redguardfound = false
	; let's check if one participant is the player
	While i < numactors		
		If actors[i] == libs.PlayerRef
			Playerfound = true
		Endif
		If actors[i] == Alias_alias_ltr_redguardgirl.GetActorReference()
			Redguardfound = true
		Endif
		i += 1
	EndWhile
	; don't process scenes not involving the player or Kaleen
	if !Playerfound && !Redguardfound
		return
	endif
	If GetStage() == 70
		SetObjectiveCompleted(70)
		SetStage(80)
		SetObjectiveDisplayed(80)
		libs.PlayerRef.AddItem(dcur_ltr_lovepotion)
	EndIf
	If GetStage() == 140 && Libs.PlayerRef.GetParentCell() == Alias_alias_ltr_redguardgirl.GetActorReference().GetParentCell()
		; we let them have fun as long as the quest is in that stage and the player is there.		
		sslBaseAnimation[] Sanims
		Actor[] SceneSexActors
		SceneSexActors = new actor[2]
		SceneSexActors[0] = Alias_alias_ltr_redguardgirl.GetActorReference()		
		SceneSexActors[1] = alias_ltr_orcchief.GetActorReference()		
		Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "MF", "Aggressive,Bound,Futa", true)			
		If Sanims.Length == 0		
			Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "", "Aggressive,Bound,Futa", true)			
		EndIf
		dclibs.SexLab.StartSex(Positions = SceneSexActors, anims = Sanims, allowbed = false) 	
	EndIf
EndEvent

Function Stage80_GivePotion()	
	dclibs.Strip(Libs.PlayerRef, true)
	; We set it up manually so we can filter MF animations
	;RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	sslBaseAnimation[] Sanims
	Actor[] SceneSexActors
	SceneSexActors = new actor[2]
	SceneSexActors[0] = libs.PlayerRef
	SceneSexActors[1] = Alias_alias_ltr_dibellapriestess.GetActorReference()		
	Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "FF", "Aggressive,Bound,Futa", true)			
	If Sanims.Length == 0
		; no proper FF anims, meh!
		Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "", "Aggressive,Bound,Futa", true)			
	EndIf
	dclibs.SexLab.StartSex(Positions = SceneSexActors, anims = Sanims, allowbed = false) 		
EndFunction

Function Stage90_BindHer()
	libs.PlayerRef.RemoveItem(dcur_ltr_lovepotion)
	dclibs.Strip(Libs.PlayerRef, false)
	libs.equipDevice(libs.PlayerRef, dcur_ltr_ropebinder_inventory, dcur_ltr_ropebinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(libs.PlayerRef, dcur_ltr_bindings_hard_inventory, dcur_ltr_bindings_hard_Rendered, libs.zad_DeviousHarness, skipmutex = true)
	SetObjectiveCompleted(80)
	SetStage(90)
	SetObjectiveDisplayed(90)
EndFunction

Function Stage100_TieWives()
	SetObjectiveCompleted(90)
	SetStage(100)
	SetObjectiveDisplayed(100)
	SetObjectiveDisplayed(101)
	SetObjectiveDisplayed(102)
	SetObjectiveDisplayed(103)
EndFunction

Function Stage100_TieWive(Actor who)
	who.SetOutfit(dcur_outfitnaked)
	dclibs.Strip(who, false)	
	libs.equipDevice(who, dcur_ltr_ropebinder_inventory, dcur_ltr_ropebinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(who, dcur_ltr_bindings_hard_inventory, dcur_ltr_bindings_hard_Rendered, libs.zad_DeviousHarness, skipmutex = true)
	If who == Alias_alias_ltr_orcgirl1.GetActorReference()		
		SetObjectiveCompleted(101)		
	EndIf
	If who == Alias_alias_ltr_orcgirl2.GetActorReference()
		SetObjectiveCompleted(102)
	EndIf
	If who == Alias_alias_ltr_orcgirl3.GetActorReference()
		SetObjectiveCompleted(103)
	EndIf
	If IsObjectiveCompleted(101) && IsObjectiveCompleted(102) && IsObjectiveCompleted(103)
		SetObjectiveCompleted(100)
		SetStage(110)
		SetObjectiveDisplayed(110)	
	EndIf
EndFunction

Function Stage120()
	SetObjectiveCompleted(110)
	SetStage(120)
	SetObjectiveDisplayed(120)
	; Don't need the orc wives anymore
	Alias_alias_ltr_orcgirl1.GetActorReference().Disable()
	Alias_alias_ltr_orcgirl2.GetActorReference().Disable()
	Alias_alias_ltr_orcgirl3.GetActorReference().Disable()	
EndFunction

Function Stage130()	
	Actor who = Alias_alias_ltr_redguardgirl.GetActorReference()
	Alias_alias_ltr_followplayer.ForceRefTo(who)
	who.SetOutfit(dcur_outfitnaked)
	dclibs.Strip(who, true)	
	libs.equipDevice(who, dcur_ltr_ropebinder_inventory, dcur_ltr_ropebinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(who, dcur_ltr_bindings_hard_inventory, dcur_ltr_bindings_hard_Rendered, libs.zad_DeviousHarness, skipmutex = true)	
EndFunction

Function Stage130a()		
	SetObjectiveCompleted(120)
	SetStage(130)
	SetObjectiveDisplayed(130)	
EndFunction

Function Stage140_BindHer()
	dclibs.Strip(Libs.PlayerRef, false)
	libs.equipDevice(libs.PlayerRef, dcur_ltr_ropebinder_inescapable_inventory, dcur_ltr_ropebinder_inescapable_rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(libs.PlayerRef, dcur_ltr_bindings_extreme_inventory, dcur_ltr_bindings_extreme_Rendered, libs.zad_DeviousSuit, skipmutex = true)
	
	if !GetChloe().WornHasKeyword(libs.zad_DeviousHeavyBondage)
		dclibs.Strip(GetChloe(), false)	
		libs.equipDevice(GetChloe(), dcur_ltr_ropebinder_inescapable_inventory, dcur_ltr_ropebinder_inescapable_rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
		Utility.Wait(0.5)
		libs.equipDevice(GetChloe(), dcur_ltr_bindings_extreme_inventory, dcur_ltr_bindings_extreme_Rendered, libs.zad_DeviousSuit, skipmutex = true)
	EndIf
		
	SetObjectiveCompleted(130)
	SetStage(135)
	SetObjectiveDisplayed(135)
	
	Actor who = Alias_alias_ltr_redguardgirl.GetActorReference()
	libs.RemoveDevice(who, dcur_ltr_ropebinder_inventory, dcur_ltr_ropebinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = true)
	Utility.Wait(0.5)
	libs.RemoveDevice(who, dcur_ltr_bindings_hard_inventory, dcur_ltr_bindings_hard_Rendered, libs.zad_DeviousHarness, skipmutex = true, destroydevice = true)
	Utility.Wait(0.5)
	who.SetOutfit(RedguardClothesOutfitNoHat)
	Alias_alias_ltr_followplayer.Clear()
	
	sslBaseAnimation[] Sanims
	Actor[] SceneSexActors
	SceneSexActors = new actor[2]
	SceneSexActors[0] = Alias_alias_ltr_redguardgirl.GetActorReference()		
	SceneSexActors[1] = alias_ltr_orcchief.GetActorReference()		
	Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "MF,Oral", "Aggressive,Bound,Futa", true)			
	If Sanims.Length == 0		
		Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "", "Aggressive,Bound,Futa", true)			
	EndIf
	dclibs.SexLab.StartSex(Positions = SceneSexActors, anims = Sanims, allowbed = false) 	
	if ChloeWasUnlocked
		dcur_ltr_relockchloe.SetValueInt(1)
	else
		dcur_ltr_relockchloe.SetValueInt(0)
	EndIf
EndFunction

Function Stage135_ToDawnstar()	
	SetObjectiveCompleted(135)
	SetStage(140)
	SetObjectiveDisplayed(140)
	libs.PlayerRef.MoveTo(dcur_ltr_dawnstarmarker.GetReference())
EndFunction

Function Stage140_Untie()	
	libs.RemoveDevice(libs.PlayerRef, dcur_ltr_ropebinder_inescapable_inventory, dcur_ltr_ropebinder_inescapable_rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = true)
	Utility.Wait(0.5)
	libs.RemoveDevice(libs.PlayerRef, dcur_ltr_bindings_extreme_inventory, dcur_ltr_bindings_extreme_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroydevice = true)
	Utility.Wait(0.5)
	libs.RemoveDevice(libs.PlayerRef, dcur_dollmaker_slavecollar_inventory, dcur_dollmaker_slavecollar_rendered, libs.zad_DeviousCollar, skipmutex = true, destroydevice = true)
	
	if GetChloe().IsEquipped(dcur_ltr_ropebinder_inescapable_rendered)
		libs.RemoveDevice(GetChloe(), dcur_ltr_ropebinder_inescapable_inventory, dcur_ltr_ropebinder_inescapable_rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = true)
		Utility.Wait(0.5)
		libs.RemoveDevice(GetChloe(), dcur_ltr_bindings_extreme_inventory, dcur_ltr_bindings_extreme_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroydevice = true)
	EndIf	
EndFunction

Function RewardandEnd()
	Game.GetPlayer().AddItem(dclibs.dcur_dq_damnbox, 3)
	stop()
	Utility.Wait(1)
	sadqs.Start()
	dcLibs.LevelUp("", 3)
	dclibs.dcur_boundinskyrimQuest.SetStage(40)
	dclibs.dcur_boundinskyrimQuest.SetObjectiveDisplayed(40)
	sadqs.dcur_supplyquest_isquestarc.SetValueInt(1)
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

Function RemoveChloeDevices(Bool PutBack = False)
	If PutBack
		ChloeWasUnlocked = True
	EndIf
	TransferWeapons()
	libs.RemoveDevice(GetChloe(), dcur_chloe_catsuit_Inventory, dcur_chloe_catsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)	
	Utility.Wait(0.5)	
	libs.RemoveDevice(GetChloe(), dcur_chloe_prisonerchains_Inventory, dcur_chloe_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)	
	Utility.Wait(0.5)		
	libs.RemoveDevice(GetChloe(), dcur_chloe_belt_Inventory, dcur_chloe_belt_Rendered, libs.zad_DeviousBelt, skipmutex = true)	
	Utility.Wait(0.5)		
	libs.RemoveDevice(GetChloe(), dcur_chloe_boots_Inventory, dcur_chloe_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)	
	Utility.Wait(0.5)
	libs.RemoveDevice(GetChloe(), dcur_chloe_gloves_Inventory, dcur_chloe_gloves_Rendered, libs.zad_DeviousGloves, skipmutex = true)	
	Utility.Wait(0.5)	
	libs.RemoveDevice(GetChloe(), dcur_chloe_chastitybra_Inventory, dcur_chloe_chastitybra_Rendered, libs.zad_DeviousBra, skipmutex = true)	
	Utility.Wait(0.5)	
	libs.RemoveDevice(GetChloe(), dcur_chloe_vibrator_Inventory, dcur_chloe_vibrator_Rendered, libs.zad_DeviousPlugVaginal, skipmutex = true)	
	Utility.Wait(0.5)	
	libs.RemoveDevice(GetChloe(), dcur_chloe_BallGag_Inventory, dcur_chloe_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
EndFunction

Function LockChloeDevices()		
	dclibs.Strip(GetChloe(), false)
	Utility.Wait(0.5)	
	libs.equipDevice(GetChloe(), dcur_chloe_catsuit_Inventory, dcur_chloe_catsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)
	Utility.Wait(0.5)	
	libs.equipDevice(GetChloe(), dcur_chloe_prisonerchains_Inventory, dcur_chloe_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	Utility.Wait(0.5)	
	libs.equipDevice(GetChloe(), dcur_chloe_vibrator_Inventory, dcur_chloe_vibrator_Rendered, libs.zad_DeviousPlugVaginal, skipmutex = true)
	Utility.Wait(0.5)
	libs.equipDevice(GetChloe(), dcur_chloe_belt_Inventory, dcur_chloe_belt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
	Utility.Wait(0.5)	
	libs.equipDevice(GetChloe(), dcur_chloe_boots_Inventory, dcur_chloe_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	Utility.Wait(0.5)	
	libs.equipDevice(GetChloe(), dcur_chloe_gloves_Inventory, dcur_chloe_gloves_Rendered, libs.zad_DeviousGloves, skipmutex = true)
	Utility.Wait(0.5)	
	libs.equipDevice(GetChloe(), dcur_chloe_chastitybra_Inventory, dcur_chloe_chastitybra_Rendered, libs.zad_DeviousBra, skipmutex = true)
	Utility.Wait(0.5)	
	; have to do that again, because NPCs requip stuff quickly.
	dclibs.Strip(GetChloe(), false)	
EndFunction
