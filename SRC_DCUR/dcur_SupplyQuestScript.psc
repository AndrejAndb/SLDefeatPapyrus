Scriptname dcur_SupplyQuestScript extends Quest  

zadlibs Property libs Auto
dcur_mcmconfig Property dcumenu Auto 
dcur_library Property dclibs Auto 

Armor Property dcur_sadq_ChastityBelt_Inventory Auto
Armor Property dcur_sadq_ChastityBelt_Rendered Auto
Armor Property dcur_sadq_maidboots_Inventory Auto
Armor Property dcur_sadq_maidboots_Rendered Auto
Armor Property dcur_sadq_maidsuit_Inventory Auto
Armor Property dcur_sadq_maidsuit_Rendered Auto
Armor Property dcur_sadq_gag_Inventory Auto
Armor Property dcur_sadq_gag_Rendered Auto
Armor Property dcur_sadq_prisonerchains_Inventory Auto
Armor Property dcur_sadq_prisonerchains_Rendered Auto

Armor Property dcur_armor_slut_dress Auto

Activator Property dcur_sadq_garbage Auto

Armor Property dcur_sadq_LostShipment Auto
Book Property dcur_sadq_orderform Auto

MiscObject Property dcur_sadq_lostshipmentmats Auto

Cell[] Property RiftenCells Auto
Formlist Property dcur_sadq_garbageList Auto
Formlist Property dcur_sadq_followerstied Auto
GlobalVariable Property dcur_sadq_garbagecollected Auto
GlobalVariable Property dcur_supplyquest_isquestarc Auto

Actor[] FollowersTiedup

function ChastityForFollowers()
	if !dcumenu.enablefollowersupport
		return
	Endif
	Actor Follower	
	int i = dclibs.dcur_followerlist.GetSize() - 1	
	while i >= 0
		Follower = dclibs.dcur_followerlist.GetAt(i) As Actor				
		If (Follower.GetDistance(libs.playerref) < 1000.0) && dclibs.isValidFollower(Follower) && !Follower.WornHasKeyword(libs.zad_DeviousBelt)
			dclibs.Strip(Follower, false)
			libs.equipDevice(Follower, dcur_sadq_ChastityBelt_Inventory, dcur_sadq_ChastityBelt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
			dcur_sadq_followerstied.AddForm(Follower)
		endif
		i -= 1
	EndWhile
endfunction

function GagForFollowers()
	if !dcumenu.enablefollowersupport
		return
	Endif
	Actor Follower	
	int i = dcur_sadq_followerstied.GetSize() - 1	
	while i >= 0
		Follower = dcur_sadq_followerstied.GetAt(i) As Actor				
		If (Follower.GetDistance(libs.playerref) < 1000.0) && !Follower.WornHasKeyword(libs.zad_DeviousGag)
			dclibs.Strip(Follower, false)
			libs.equipDevice(Follower, dcur_sadq_gag_Inventory, dcur_sadq_gag_Rendered, libs.zad_DeviousGag, skipmutex = true)
		endif
		i -= 1
	EndWhile
endfunction

function SuitForFollowers()
	if !dcumenu.enablefollowersupport
		return
	Endif
	Actor Follower	
	int i = dcur_sadq_followerstied.GetSize() - 1	
	while i >= 0
		Follower = dcur_sadq_followerstied.GetAt(i) As Actor				
		If (Follower.GetDistance(libs.playerref) < 1000.0) && !Follower.WornHasKeyword(libs.zad_DeviousSuit)
			dclibs.Strip(Follower, false)
			libs.equipDevice(Follower, dcur_sadq_maidsuit_Inventory, dcur_sadq_maidsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)
			libs.equipDevice(Follower, dcur_sadq_maidboots_Inventory, dcur_sadq_maidboots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
		endif
		i -= 1
	EndWhile
endfunction

function ChainsForFollowers()
	if !dcumenu.enablefollowersupport
		return
	Endif
	Actor Follower	
	int i = dcur_sadq_followerstied.GetSize() - 1	
	while i >= 0
		Follower = dcur_sadq_followerstied.GetAt(i) As Actor				
		If (Follower.GetDistance(libs.playerref) < 1000.0) && !Follower.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			dclibs.Strip(Follower, false)
			libs.equipDevice(Follower, dcur_sadq_prisonerchains_Inventory, dcur_sadq_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)			
		endif
		i -= 1
	EndWhile
endfunction

function ReleaseFollowers()	
	Actor Follower	
	int i = dcur_sadq_followerstied.GetSize() - 1	
	while i >= 0
		Follower = dcur_sadq_followerstied.GetAt(i) As Actor						
		libs.RemoveQuestDevice(Follower, dcur_sadq_maidsuit_Inventory, dcur_sadq_maidsuit_Rendered, libs.zad_DeviousSuit, dclibs.dcur_kw_questitem, destroydevice = true, skipmutex = true)
		Utility.Wait(1.5)
		libs.RemoveQuestDevice(Follower, dcur_sadq_maidboots_Inventory, dcur_sadq_maidboots_Rendered, libs.zad_DeviousBoots, dclibs.dcur_kw_questitem, destroydevice = true, skipmutex = true)
		Utility.Wait(1.5)
		libs.RemoveQuestDevice(Follower, dcur_sadq_gag_Inventory, dcur_sadq_gag_Rendered, libs.zad_DeviousGag, dclibs.dcur_kw_questitem, destroydevice = true, skipmutex = true)
		Utility.Wait(1.5)
		libs.RemoveQuestDevice(Follower, dcur_sadq_prisonerchains_Inventory, dcur_sadq_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, dclibs.dcur_kw_questitem, destroydevice = true, skipmutex = true)
		Utility.Wait(1.5)
		libs.RemoveQuestDevice(Follower, dcur_sadq_ChastityBelt_Inventory, dcur_sadq_ChastityBelt_Rendered, libs.zad_DeviousBelt, dclibs.dcur_kw_questitem, destroydevice = true, skipmutex = true)		
		i -= 1
	EndWhile
endfunction

Function StartQuest()
	dclibs.Strip(libs.playerref, false)
	Utility.Wait(1)
	libs.equipDevice(libs.PlayerRef, dcur_sadq_ChastityBelt_Inventory, dcur_sadq_ChastityBelt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
	ChastityForFollowers()
	Libs.PlayerRef.AddItem(dcur_sadq_orderform)
EndFunction

Function SetupMineStage()
	Libs.PlayerRef.RemoveItem(dcur_sadq_orderform)
	libs.equipDevice(libs.PlayerRef, dcur_sadq_maidsuit_Inventory, dcur_sadq_maidsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)
	libs.equipDevice(libs.PlayerRef, dcur_sadq_maidboots_Inventory, dcur_sadq_maidboots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	SuitForFollowers()
	SetObjectiveCompleted(10)
	SetStage(20)
	SetObjectiveDisplayed(20)
EndFunction

Function DistributeGarbage()
	SetObjectiveCompleted(40)
	SetStage(50)
	SetObjectiveDisplayed(50)
	libs.equipDevice(libs.PlayerRef, dcur_sadq_prisonerchains_Inventory, dcur_sadq_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	ChainsForFollowers()
	dcur_sadq_garbageList.Revert()
	dcur_sadq_garbagecollected.SetValueInt(0)
	Actor currenttest	
	Int NumRefs
	Int GarbageToDump = 30
	ObjectReference garb
	Cell c 	
	; we drop garbage at random people's feet. That should distribute it quite nicely, and without having to add a megaton of markers. We also drop more than needed for the quest, in case some end up inaccessible.
	While GarbageToDump > 0		
		c = RiftenCells[Utility.RandomInt(0, RiftenCells.Length - 1)]	
		NumRefs = c.GetNumRefs(43)
		currenttest = c.GetNthRef(Utility.RandomInt(0, NumRefs - 1), 43) as Actor	
		If !currenttest.IsDisabled() && !currenttest.IsDead() && currenttest.HasKeyword(dcumenu.ActorTypeNPC) && !currenttest.IsGhost() && currenttest.GetActorBase().GetRace() != dcumenu.ManakinRace
			garb = currenttest.PlaceAtMe(dcur_sadq_garbage)
			garb.SetPosition(garb.GetPositionX() + Utility.RandomInt(-200,200), garb.GetPositionY() + Utility.RandomInt(-200,200), garb.GetPositionZ())
			dcur_sadq_garbageList.AddForm(garb)
			GarbageToDump -= 1
		endif		
	endwhile	
EndFunction

; I really had to name that function like that! :D
Function GarbageCollection()	
	int i = dcur_sadq_garbageList.GetSize()
	ObjectReference a
	while i > 0
		i -= 1
		a = dcur_sadq_garbageList.GetAt(i) As ObjectReference
		if a
			a.Delete()			
		EndIf
	endwhile	
EndFunction

Function SetCookingStage()
	GarbageCollection()	
	SetObjectiveCompleted(60)
	SetStage(70)
	SetObjectiveDisplayed(70)	
	SetObjectiveDisplayed(71)	
	SetObjectiveDisplayed(72)	
	SetObjectiveDisplayed(73)
	SetObjectiveDisplayed(74)	
	SetObjectiveDisplayed(75)	
	SetObjectiveDisplayed(76)	
EndFunction

Function EndQuest()
	SetObjectiveCompleted(90)
	SetStage(1000)
	libs.PlayerRef.AddItem(dclibs.dcur_dq_damnbox, 3)
	libs.PlayerRef.AddItem(dcur_armor_slut_dress, 1)
	dcur_supplyquest_isquestarc.SetValueInt(0)
	libs.RemoveQuestDevice(libs.PlayerRef, dcur_sadq_maidsuit_Inventory, dcur_sadq_maidsuit_Rendered, libs.zad_DeviousSuit, dclibs.dcur_kw_questitem, destroydevice = true, skipmutex = true)
	Utility.Wait(1.5)
	libs.RemoveQuestDevice(libs.PlayerRef, dcur_sadq_maidboots_Inventory, dcur_sadq_maidboots_Rendered, libs.zad_DeviousBoots, dclibs.dcur_kw_questitem, destroydevice = true, skipmutex = true)
	Utility.Wait(1.5)
	libs.RemoveQuestDevice(libs.PlayerRef, dcur_sadq_gag_Inventory, dcur_sadq_gag_Rendered, libs.zad_DeviousGag, dclibs.dcur_kw_questitem, destroydevice = true, skipmutex = true)
	Utility.Wait(1.5)
	libs.RemoveQuestDevice(libs.PlayerRef, dcur_sadq_prisonerchains_Inventory, dcur_sadq_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, dclibs.dcur_kw_questitem, destroydevice = true, skipmutex = true)
	Utility.Wait(1.5)
	libs.RemoveQuestDevice(libs.PlayerRef, dcur_sadq_ChastityBelt_Inventory, dcur_sadq_ChastityBelt_Rendered, libs.zad_DeviousBelt, dclibs.dcur_kw_questitem, destroydevice = true, skipmutex = true)
	Utility.Wait(2)
	ReleaseFollowers()	
EndFunction