Scriptname dcur_hq_QuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto 

ReferenceAlias Property alias_ref_hq_startmarker  Auto 
ReferenceAlias Property alias_ref_hq_cagemarker  Auto 
ReferenceAlias Property alias_ref_hq_banditcagemarker  Auto 

ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaver Auto
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaver2 Auto
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaver3 Auto
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaver4 Auto
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaver5 Auto
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaverboss Auto
ReferenceAlias Property alias_ref_dcur_hq_bosschest Auto

ReferenceAlias Property ref_dcur_hq_shchest1 Auto
ReferenceAlias Property ref_dcur_hq_shchest2 Auto
ReferenceAlias Property ref_dcur_hq_shchest3 Auto
ReferenceAlias Property ref_dcur_hq_shchest4 Auto
ReferenceAlias Property ref_dcur_hq_shchest5 Auto
ReferenceAlias Property ref_dcur_hq_shchest6 Auto
ReferenceAlias Property ref_dcur_hq_slaverofficedoor Auto
ReferenceAlias Property ref_dcur_trapdoorriften Auto
ReferenceAlias Property alias_ref_dcur_hq_teleportRiften Auto
ReferenceAlias Property ref_hq_slavehideout_trapdoorexit Auto
ReferenceAlias Property ref_hq_slavehideout_trapdoorentrance Auto
ReferenceAlias Property ref_hq_slavehideout_trapdoortunnelexit Auto
ReferenceAlias Property ref_hq_littleluke Auto
ReferenceAlias Property ref_hq_customer Auto
ReferenceAlias Property ref_hq_teleportHelgen Auto
ReferenceAlias Property ref_hq_rewardsack Auto

Armor Property dcur_hq_HobbleDressLatexInventory Auto
Armor Property dcur_hq_HobbleDressLatexRendered Auto
Armor Property dcur_hq_gagInventory Auto
Armor Property dcur_hq_gagRendered Auto
Armor Property dcur_hq_armbinderInventory Auto
Armor Property dcur_hq_armbinderRendered Auto
Armor Property dcur_hq_slaverheelsInventory Auto
Armor Property dcur_hq_slaverheelsRendered Auto
Armor Property dcur_hq_chastityBeltInventory Auto
Armor Property dcur_hq_chastityBeltRendered Auto

Book Property dcur_hq_ledger Auto
Book Property dcur_hq_storybook Auto
Book Property dcur_hq_slaverbossnote Auto

Key Property dcur_hq_trapdoorkey Auto
Key Property dcur_hq_hobbleskirtkey Auto
Key Property dcur_hq_chastitykey Auto
Key Property dcur_hq_slaveofficekey Auto
Key Property dcur_hq_armbinderkey Auto

ActorBase Property dcur_hq_deadslaver3 Auto
Actor DLGslaver

ReferenceAlias Property alias_dcur_hq_telrav  Auto  

Bool StartUp = False

Function StartRestraints()	
	dclibs.Strip(libs.playerref,false)
	Debug.SendAnimationEvent(libs.playerRef, "OffsetStop")
	libs.equipDevice(libs.playerref, dcur_hq_HobbleDressLatexInventory, dcur_hq_HobbleDressLatexRendered, libs.zad_DeviousSuit, skipevents = false, skipmutex = true)		
	libs.equipDevice(libs.playerref, dcur_hq_gagInventory, dcur_hq_gagRendered, libs.zad_DeviousGag, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, dcur_hq_ChastityBeltInventory, dcur_hq_ChastityBeltRendered, libs.zad_DeviousBelt, skipevents = false, skipmutex = true)		
	libs.equipDevice(libs.playerref, dcur_hq_armbinderInventory, dcur_hq_armbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)		
	libs.equipDevice(libs.playerref, dcur_hq_slaverheelsInventory, dcur_hq_slaverheelsRendered, libs.zad_DeviousBoots, skipevents = false, skipmutex = true)			
EndFunction

Function DistributeKeys()		
	if alias_ref_dcur_hq_bosschest.GetReference().GetItemCount(dcur_hq_ledger) < 1
		alias_ref_dcur_hq_bosschest.GetReference().AddItem(dcur_hq_ledger)
	EndIf
	if ref_hq_littleluke.GetReference().GetItemCount(dcur_hq_armbinderkey) < 1
		ref_hq_littleluke.GetReference().AddItem(dcur_hq_armbinderkey)
	EndIf
	int i = Utility.RandomInt(1,5)	
	debug.trace("[DCUR] HQ: Setting trapdoor key drop to bandit no. " + i)	
	(GetAlias(i) As ReferenceAlias).GetActorReference().AddItem(dcur_hq_trapdoorkey, 1)	
	ref_hq_slavehideout_trapdoorentrance.GetReference().Lock()
	ref_hq_slavehideout_trapdoorentrance.GetReference().SetLockLevel(255)
	ref_dcur_hq_slaverofficedoor.GetReference().Lock()
	ref_dcur_hq_slaverofficedoor.GetReference().SetLockLevel(255)
	ref_hq_slavehideout_trapdoortunnelexit.GetReference().Lock()
	ref_hq_slavehideout_trapdoortunnelexit.GetReference().SetLockLevel(255)	
	(GetAlias(6) As ReferenceAlias).GetReference().AddItem(dcur_hq_slaverbossnote, 1) ; slaver boss	
	ref_hq_slavehideout_trapdoorexit.GetReference().Enable()
	ref_dcur_trapdoorriften.GetReference().Enable()
	ref_hq_rewardsack.GetReference().Enable()
	Utility.Wait(1)
	libs.playerref.moveto(alias_ref_hq_startmarker.GetReference())	
	Utility.Wait(3)
	DLGslaver.Kill()
	; libs.notify("I used to be a princess. I lived in excessive luxury. I had status. Servants. Money. Influence. I was also gifted with unusual beauty. The common folk looked up to me, and men desired me.\nI had it all.\nAnd then I lost it all.", true)
	; Utility.Wait(0.1)
	; libs.notify("On that day, my family got wiped out by a rival noblehouse. Everyone but me. When their hordes took our estate and plundered our castle, they took me prisoner.\nI wish they had killed me.\nI am no longer a princess. I am a thing. I was sold to a slaver ring and hauled to a far away land. Instead of jewelry, I am wearing chains. I am bound and gagged all the time, except for a short break once a day when they allow me to wash and eat. I will have to get used to that, because it will be the only life I will ever know.", true)
	; Utility.Wait(0.1)
	; libs.notify("In a small cell in an underground hideout, I was waiting to get sold to the highest bidder to start my new life as a sex slave. This morning, they came to get me. They bound me tight and gagged me. There is no chance for me to escape.", true)
	Utility.Wait(0.1)	
	libs.notify("When the slavers ushered me out of their hideout, something unexpected happened. My captors got attacked and everything went to hell. I managed to roll off from the cart and hide while the battle raged. I am bound and gagged. I don't even want to know what they'd do to me if they'd find me. But everything is quiet now...", true)	
	SetStage(10)
	SetObjectiveDisplayed(10)
EndFunction

Function RemoveItems(bool forceremove = false)
	If libs.playerref.GetItemCount(dcur_hq_ledger) > 0
		libs.playerref.RemoveItem(dcur_hq_ledger, libs.playerref.GetItemCount(dcur_hq_ledger), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_slaverbossnote) > 0
		libs.playerref.RemoveItem(dcur_hq_slaverbossnote, libs.playerref.GetItemCount(dcur_hq_slaverbossnote), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_slaveofficekey) > 0
		libs.playerref.RemoveItem(dcur_hq_slaveofficekey, libs.playerref.GetItemCount(dcur_hq_slaveofficekey), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_trapdoorkey) > 0
		libs.playerref.RemoveItem(dcur_hq_trapdoorkey, libs.playerref.GetItemCount(dcur_hq_trapdoorkey), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_chastitykey) > 0
		libs.playerref.RemoveItem(dcur_hq_chastitykey, libs.playerref.GetItemCount(dcur_hq_chastitykey), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_hobbleskirtkey) > 0
		libs.playerref.RemoveItem(dcur_hq_hobbleskirtkey, libs.playerref.GetItemCount(dcur_hq_hobbleskirtkey), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_armbinderkey) > 0
		libs.playerref.RemoveItem(dcur_hq_armbinderkey, libs.playerref.GetItemCount(dcur_hq_armbinderkey), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_HobbleDressLatexInventory) > 0
		libs.playerref.RemoveItem(dcur_hq_HobbleDressLatexInventory, libs.playerref.GetItemCount(dcur_hq_HobbleDressLatexInventory), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_gagInventory) > 0
		libs.playerref.RemoveItem(dcur_hq_gagInventory, libs.playerref.GetItemCount(dcur_hq_gagInventory), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_ChastityBeltInventory) > 0
		libs.playerref.RemoveItem(dcur_hq_ChastityBeltInventory, libs.playerref.GetItemCount(dcur_hq_ChastityBeltInventory), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_armbinderInventory) > 0
		libs.playerref.RemoveItem(dcur_hq_armbinderInventory, libs.playerref.GetItemCount(dcur_hq_armbinderInventory), true)
	EndIf
	If libs.playerref.GetItemCount(dcur_hq_slaverheelsInventory) > 0
		libs.playerref.RemoveItem(dcur_hq_slaverheelsInventory, libs.playerref.GetItemCount(dcur_hq_slaverheelsInventory), true)
	EndIf
	If !forceremove
		return
	EndIf
	Utility.Wait(1)
	If libs.playerref.IsEquipped(dcur_hq_HobbleDressLatexRendered)
		libs.RemoveQuestDevice(libs.playerref, dcur_hq_HobbleDressLatexInventory, dcur_hq_HobbleDressLatexRendered, libs.zad_DeviousSuit, RemovalToken = dclibs.dcur_kw_QuestItem, destroyDevice = true, skipmutex = true)
	EndIf	
	Utility.Wait(1)
	If libs.playerref.IsEquipped(dcur_hq_gagRendered)
		libs.RemoveQuestDevice(libs.playerref, dcur_hq_gagInventory, dcur_hq_gagRendered, libs.zad_DeviousGag, RemovalToken = dclibs.dcur_kw_QuestItem, destroyDevice = true, skipmutex = true)
	EndIf	
	Utility.Wait(1)
	If libs.playerref.IsEquipped(dcur_hq_ChastityBeltRendered)
		libs.RemoveQuestDevice(libs.playerref, dcur_hq_ChastityBeltInventory, dcur_hq_ChastityBeltRendered, libs.zad_DeviousBelt, RemovalToken = dclibs.dcur_kw_QuestItem, destroyDevice = true, skipmutex = true)
	EndIf
	Utility.Wait(1)
	If libs.playerref.IsEquipped(dcur_hq_armbinderRendered)
		libs.RemoveQuestDevice(libs.playerref, dcur_hq_armbinderInventory, dcur_hq_armbinderRendered, libs.zad_DeviousHeavyBondage, RemovalToken = dclibs.dcur_kw_QuestItem, destroyDevice = true, skipmutex = true)
	EndIf
	Utility.Wait(1)
	If libs.playerref.IsEquipped(dcur_hq_slaverheelsRendered)
		libs.RemoveQuestDevice(libs.playerref, dcur_hq_slaverheelsInventory, dcur_hq_slaverheelsRendered, libs.zad_DeviousBoots, RemovalToken = dclibs.dcur_kw_QuestItem, destroyDevice = true, skipmutex = true)
	EndIf
	
EndFunction

Function StartQuestLAL()		
	;libs.playerref.moveto(alias_ref_hq_startmarker.GetReference())
	libs.playerref.moveto(alias_ref_hq_cagemarker.GetReference())
	While !alias_ref_hq_cagemarker.GetReference().GetParentCell().IsAttached()
		Utility.Wait(1)
	EndWhile
	dcumenu.black.Apply(100)
	RemoveItems()
	If libs.playerref.GetItemCount(dcur_hq_storybook) < 0
		libs.playerref.AddItem(dcur_hq_storybook, 1, true)
	EndIf			
	StartUp = True
	RegisterForSingleUpdate(1)
	Quest ARTHLALRumorsOfWarQuest = Game.GetFormFromFile(0x0007A334, "Alternate Start - Live Another Life.esp") As Quest
	If ARTHLALRumorsOfWarQuest 
		ARTHLALRumorsOfWarQuest.RegisterForSingleUpdate(0.25)
	Else
		Debug.Trace("[DCUR] WARNING: Live Another Life plugin is used, but LAL cannot be found!")
		libs.notify("DCUR WARNING: Live Another Life main quest not found!")
	EndIf
EndFunction

Function StartQuest()		
	;libs.playerref.moveto(alias_ref_hq_startmarker.GetReference())
	libs.playerref.moveto(alias_ref_hq_cagemarker.GetReference())	
	dcumenu.black.Apply(100)
	RemoveItems()
	If libs.playerref.GetItemCount(dcur_hq_storybook) < 0
		libs.playerref.AddItem(dcur_hq_storybook, 1, true)
	EndIf			
	; Delay some operations because the quest aliases are not filled at this time.
	StartUp = True
	RegisterForSingleUpdate(3)
EndFunction

Function TerminateQuest()
	DLGslaver.Delete()
	DLGslaver.SetCriticalStage(DLGslaver.CritStage_DisintegrateEnd)	
	RemoveItems(forceremove = true)
	ref_dcur_trapdoorriften.GetReference().Disable()
	ref_hq_slavehideout_trapdoorexit.GetReference().Disable()
	ref_hq_customer.GetReference().Disable()
	ref_hq_littleluke.GetReference().Disable()
	alias_dcur_hq_telrav.GetReference().enable()
	Stop()
EndFunction

Event OnUpdate()
	If StartUp
		StartRestraints()
		DLGslaver = alias_ref_hq_banditcagemarker.GetReference().PlaceAtMe(dcur_hq_deadslaver3) As Actor
		alias_dcur_hq_telrav.GetReference().Disable()
		ImageSpaceModifier.Removecrossfade(1)
		dclibs.dcur_boundinskyrimQuest.Start()
		dclibs.dcur_boundinskyrimQuest.SetObjectiveDisplayed(1)
		dclibs.dcur_boundinskyrimQuest.SetStage(1)
		;dclibs.dcur_boundinskyrimQuest.SetObjectiveCompleted(1)
		StartUp = False
	Else		
		DistributeKeys()
	EndIf
EndEvent

