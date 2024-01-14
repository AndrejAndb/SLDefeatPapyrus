Scriptname dcur_prisonQuestScript extends Quest  

zadlibs Property libs Auto 
dcur_library Property dclibs Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_spankQuestScript Property spqs Auto

GlobalVariable Property dcur_prison_usevanilla Auto
GlobalVariable Property dcur_prison_wardensex Auto

Quest Property dcur_prisonquestOVRDlg Auto
Quest Property dcur_prisonquestOVRRandomDlg Auto

Faction Property dcur_prison_crimefaction Auto

GlobalVariable Property GameHour Auto
GlobalVariable Property dcur_dialogswitch Auto
GlobalVariable Property dcur_prison_hadDDatarrest Auto
GlobalVariable Property dcur_prison_nosex Auto
GlobalVariable Property dcur_prison_questcontrol Auto
GlobalVariable Property dcur_prison_questflowmode Auto
GlobalVariable Property dcur_prison_lastjailedat Auto

ReferenceAlias Property FrozenFollower1 Auto  
ReferenceAlias Property FrozenFollower2 Auto  
ReferenceAlias Property FrozenFollower3 Auto  
ReferenceAlias Property FrozenFollower4 Auto  
ReferenceAlias Property FrozenFollower5 Auto  

ReferenceAlias Property alias_dcur_storagecell  Auto  
ReferenceAlias Property EntranceMarker  Auto  
ReferenceAlias Property EntranceDoor  Auto  
ReferenceAlias Property PlayerChest  Auto  
ReferenceAlias Property PlayerCellDoor  Auto  
ReferenceAlias Property OrePickupChest  Auto  
ReferenceAlias Property OreDropOffChest  Auto  
ReferenceAlias Property minedoor  Auto  
ReferenceAlias Property trapDoor  Auto  
ReferenceAlias Property Quartermaster  Auto  
ReferenceAlias Property ShipmentChest  Auto  
ReferenceAlias Property GuardRoomDoor  Auto  
ReferenceAlias Property KitchenCupboard  Auto  
ReferenceAlias Property KitchenSack  Auto  
ReferenceAlias Property StockAreaBarrel1  Auto  
ReferenceAlias Property StockAreaBarrel2  Auto  
ReferenceAlias Property KitchenWardrobe	Auto  
ReferenceAlias Property KitchenWaterBarrel  Auto  
ReferenceAlias Property ArrestPositionMarker  Auto  
ReferenceAlias Property exitDoor  Auto  
ReferenceAlias Property EatingGirl  Auto  
ReferenceAlias Property SupervisorMarker  Auto  
ReferenceAlias Property Supervisor  Auto  
ReferenceAlias Property ForemanMarker  Auto  
ReferenceAlias Property Foreman  Auto  
ReferenceAlias Property ReceptionGuard  Auto  

MiscObject Property dcur_prison_orechunk Auto
MiscObject Property WineBottle01BEmpty Auto

Potion Property FoodWineAltoA Auto
Potion Property FoodCheeseWedge02 Auto

Potion Property FoodBread01A Auto
Potion Property FoodBread01B Auto
Potion Property FoodTomatoSoup Auto
Potion Property FoodMead Auto
Potion Property FoodCabbage Auto
Potion Property FoodPotato Auto
Potion Property dcur_prison_water Auto
Potion Property dcur_prison_stew Auto
MiscObject Property WoodenLadle01 Auto
MiscObject Property DwarvenSpoon Auto

Formlist Property dcur_prison_deviceswornatarrest Auto
Formlist Property dcur_temporaryuselist Auto
Formlist Property dcur_prison_containers Auto
Formlist Property dcur_prison_wares Auto
Formlist Property dcur_prison_ware_dumpedwares Auto
Formlist Property dcur_prison_mine_dumpedore Auto

Armor Property dcur_prison_ropebinder_Inventory Auto
Armor Property dcur_prison_ropebinder_Rendered Auto
Armor Property dcur_prison_prisonerchains_Inventory Auto
Armor Property dcur_prison_prisonerchains_Rendered Auto
Armor Property dcur_prison_BallGag_Inventory Auto
Armor Property dcur_prison_BallGag_Rendered Auto
Armor Property dcur_Prison_boots_Inventory Auto
Armor Property dcur_Prison_boots_Rendered Auto
Armor Property dcur_prison_sj_Inventory Auto
Armor Property dcur_prison_sj_Rendered Auto
Armor Property dcur_prison_maidsuit_Inventory Auto
Armor Property dcur_prison_maidsuit_Rendered Auto
Armor Property dcur_prison_rubberdress_Inventory Auto
Armor Property dcur_prison_rubberdress_Rendered Auto
Armor Property dcur_prison_shackles_Inventory Auto
Armor Property dcur_prison_shackles_Rendered Auto
Armor Property dcur_prison_belt_Inventory Auto
Armor Property dcur_prison_belt_Rendered Auto
Armor Property dcur_prison_bra_Inventory Auto
Armor Property dcur_prison_bra_Rendered Auto
Armor Property dcur_prison_elbowbinder_Inventory Auto
Armor Property dcur_prison_elbowbinder_Rendered Auto
Armor Property dcur_prison_hobbledress_Inventory Auto
Armor Property dcur_prison_hobbledress_Rendered Auto
Armor Property dcur_prison_yoke_Inventory Auto
Armor Property dcur_prison_yoke_Rendered Auto
Armor Property dcur_prison_petsuit_Inventory Auto
Armor Property dcur_prison_petsuit_Rendered Auto
Armor Property dcur_prison_ropeharness_Inventory Auto
Armor Property dcur_prison_ropeharness_Rendered Auto
Armor Property dcur_prison_catsuit_Inventory Auto
Armor Property dcur_prison_catsuit_Rendered Auto
Armor Property dcur_prison_legirons_Inventory Auto
Armor Property dcur_prison_legirons_Rendered Auto
Armor Property dcur_prison_elegantdress_Inventory Auto
Armor Property dcur_prison_elegantdress_Rendered Auto
Armor Property dcur_prison_blindfold_Inventory Auto
Armor Property dcur_prison_blindfold_Rendered Auto
Armor Property dcur_df_vibrator_Inventory Auto
Armor Property dcur_df_vibrator_Rendered Auto
Armor Property dcur_df_buttplug_Inventory Auto
Armor Property dcur_df_buttplug_Rendered Auto

Key Property dcur_prison_esc_guardkey Auto
Keyword Property dcur_kw_prison_nopickpocket Auto
Armor Property dcur_prison_esc_knife Auto

Message Property dcur_prison_bedroomdoorMSG Auto
Message Property dcur_prison_bedroomdoorPickMSG Auto
Message Property dcur_prison_esc_loosebrickHasKnife Auto
Message Property dcur_prison_esc_loosebrickKnifeInstalledMSG Auto
Message Property dcur_prison_esc_loosegrateMSG Auto
Message Property dcur_prison_minetoolboxMSG Auto
Message Property dcur_prison_toolbarrelMSG Auto
Message Property dcur_prison_esc_celllockpick Auto
Message Property dcur_prison_waterMSG Auto
Message Property dcur_prison_guardrapeMSG Auto
Message Property dcur_prison_guardrapeThreeMSG Auto
GlobalVariable Property dcur_prison_esc_UnconcealableFail Auto
MiscObject Property dcur_prison_esc_lockpick Auto
MiscObject Property dcur_prison_esc_crowbar Auto
MiscObject Property dcur_prison_esc_nails Auto
MiscObject Property dcur_prison_esc_rope Auto

Armor Property dcur_nosleepitem  Auto  

Activator Property dcur_prison_garbage Auto

Cell Property dcurprison Auto
Cell Property dcurprisonbasement Auto
Cell Property dcurprisonmine Auto

Float Property HoursToWork = 0.0 Auto
Float Property AllowedToSleepAt = 0.0 Auto

; inspection - don't change this!
Int InspectionStage = 0
Actor inspector

; Mining stuff
Int OreToCarry = 3 
Int OreCarried = 0 ; don't change this!

; Garbage stuff
Int GarbageToClean = 12
Int GarbageCleaned = 0 ; don't change this!

; Warehouse
Int WaresToCarry = 3
Int WaresCarried = 0 ; don't change this!

; DisplayModel
Int LapsToWalk = 3
Int LapsWalked = 0  ; don't change this!

; Pillory
Float TimeInPillory = 1.5 		; hours
Float TimeLockedinPillory = 0.0 ; don't change this - time when player got locked up

; sentence data  - don't change this!
Int DaysInPrison = 0
Int DaysSentence = 2 ; if this is set to one, the player will never be put to work. Can be used for really short sentences.

; Guard sex - don't change this!
Bool ForemanPillory = False
Bool HadGuardSex = False
Bool CellRape = False
Bool HasBeenRaped = False
Bool ConsentedToRape = False
Armor WornSuit = None
Armor WornBodyRestraint = None
Int OfferedSex = 0

; Random stuff
Int NoWorkTodayChance = 40		; controls the chance that the player can skip a day of work.
Int ParoleChance = 20			; controls the chance that the player will get released on parole after serving half her sentence.
Int ReduceSentenceChance = 15	; controls the chance that the player will have her sentence reduced for being a good girl (= no transgressions the previous day), and for offering sex to the guards (second roll)
Int ExtendSentenceChance = 7	; controls the chance that the player will have her sentence extended for being too hot for the Warden to let her go.
Int AccidentalReleaseChance = 5	; controls the chance that the player will get accidentally released.
Int RandomEscapeItemChance = 15	; controls the chance that the player will find a random escape tool.
Int RapeAtNightChance = 50		; controls the chance that the player will get raped in her cell during the night. Regardless of this setting she will always get raped in her first night in prison.

; Escape system
; When changing this keep in mind that ALL these rolls must to be passed for a successful escape. Failing any of these will usually result in the escape quest getting reset. If these chances are too low, the player will probably never escape.
; The average success chance should be between 85% and 95% to give her a reasonable overall chance (resulting in about 20% to 60% overall chance). If the total chance is lower than 35%, she's likely better off with just serving the sentence, so change these with caution!
Bool PickpocketSexAttempt = False
Int Escape_PickpocketChance = 80		; if she fails here, it's not so bad...
Int Escape_PickpocketChanceSex = 98		; sex is not available if guard rape is disabled!
Int Escape_AdditionalDaysOnFail = 2 	; additional sentence for rule breaches.
Int Escape_AdditionalDaysOnMajorFail = 3 ; for major transgressions
Int Escape_PickBedroomChance = 90
Int Escape_PickBedroomFailSpotChance = 33
Int Escape_CutSkirtChance = 90
Int Escape_CutSkirtFailSpotChance = 33	; there is only a 33% chance that this step will lead to detection, so the player as a MUCH better chance to escape the next day, because she doesn't have to pass previous steps again!
Int Escape_StruggleSJChance = 88  ; this gets applied twice - once for the hobble skirt, once for the straitjacket itself
Int Escape_LockpickChance = 95 ; this gets applied twice. Player cell and unoccupied cell
Int Escape_StealNails = 92
Int Escape_StealCrowbar = 92
Int Escape_BreakCrateChance = 98
Int Escape_GetRopeSpotChance = 15 ; this is the chance that this step will lead to detection. Getting the rope itself is a guaranteed success when taking to the correct person.
Bool Escape_HasKnifeInstalled = false
Bool Escape_HasDisplayedGrateHint = false

; Total escape success chance:  ~41% for all steps. If she completed the steps in the ideal order, she will have up to 60% the next day, if she fails and doesn't get spotted. This makes escape a viable choice, but not a total no-brainer.

; Internal variables - don't touch these!

Bool QuestAborted = False
Int MinorTransgressions = 0 		; if the player has been bad, we will increase this.
Int MajorTransgressions = 0
Int PastTransgressions	; We will calculate the total number of transgressions each day, so we can determine if the player has been a bad or good girl today.
Bool PassedLastWorkDay = False

Bool HasBreachedGuardRoom = False
Float GuardRoomOpenedAt = 0.0
Int HasResistedSex = 0
Bool isRepeatOffender = False

Float property onhitcooldown = 0.0 Auto
Bool WardenNeedsReset = False
Actor GirlWithRope

; for randomized workdays
int[] tasks
int tasksdone = 0
int taskstodo = 0

; consequences flag. Need to do it that way, because the punishment might have to go through USS.
Bool punish_flag_major = False
Bool punish_flag_minor = False
Bool punish_flag_belt = False

Function SetAllRandomChances()
	SetRandomChances()
	SetEscapeChances()
	SetWorkload()
EndFunction

Function SetWorkload()
	; the first day is a full day, to allow the player to collect escape items. Otherwise, there is a chance that she won't escape through most of her sentence.
	dcur_prison_questflowmode.SetValueInt(0)
	; we modify these values based on the MCM difficulty setting
	; difficulty values can go from 0 (highest) to 8 (lowest) 4 is default
	; this is getting called every morning, so we can use to randomize the workday.
	Int Diff = dcumenu.prison_Difficulty
	If Diff > 6 ; easy
		OreToCarry = 1
		GarbageToClean = 5
		WaresToCarry = 1
		LapsToWalk = 2
	ElseIf Diff > 5
		OreToCarry = 2 	
		GarbageToClean = 8
		WaresToCarry = 2
		LapsToWalk = 3
	ElseIf Diff > 2	; this is normal
		OreToCarry = 3 	
		GarbageToClean = 12	
		WaresToCarry = 3
		LapsToWalk = 4	
	Else ; hard
		OreToCarry = 4
		GarbageToClean = 18
		WaresToCarry = 5
		LapsToWalk = 5
	EndIf	
	if DaysInPrison > 0		
		; do randomized stuff here
		; Note to my future self: If new prison tasks are added to this system, make sure to a) update the array size in the startup function and b) add a condition to the Foreman override dialogue, and c) don't forget to update MarkTaskComplete() and ResetDailyObjectives()
		
		; mines start at stage 80
		; garbage cleaning 130
		; Warehouse 160
		; serve wine 200
		; cook your meal 260 - happens every day at the end of the work
		; display model: 300
		; pillory: 500
		; please the staff: 530
		; Go back to your cell: 60
		; report in the morning: 70
		dcur_prison_questflowmode.SetValueInt(1)
		tasks[0] = 80
		tasks[1] = 130
		tasks[2] = 160
		tasks[3] = 200
		tasks[4] = 300
		tasks[5] = 500
		tasks[6] = 530
		int numtasks = 7
		if dcur_prison_nosex.GetValueInt() == 1
			; don't use the naughty task(s) (need to make sure they're all at the end of the initial array, then truncate as needed)
			numtasks = 6
		EndIf		
		int i = 0
		int j
		int x
		; shuffle the tasks to keep it interesting.
		while i <= (numtasks - 2)
			j = Utility.RandomInt(i, (numtasks - 1))
			x = tasks[i]
			tasks[i] = tasks[j]
			tasks[j] = x			
			i += 1			
		endwhile	
		tasksdone = 0
		taskstodo = Utility.RandomInt(1, numtasks)
		; it's also easy to alter the workload parameters here, so let's do that! They will get overwritten the next day with their usual values, so it's all good.
		if taskstodo < 4
			OreToCarry += 3
			GarbageToClean += 5
			WaresToCarry += 3
			LapsToWalk += 2
		EndIf
		if taskstodo < 2
			OreToCarry += 3
			GarbageToClean += 5
			WaresToCarry += 3
			LapsToWalk += 2
		EndIf				
	endif
EndFunction

Function SetNextTask()	
	if dcur_prison_questflowmode.GetValueInt() == 260
		; cooking is the last task of a day, every day
		dcur_prison_questflowmode.SetValueInt(60)
		return
	EndIf
	if tasksdone > taskstodo
		dcur_prison_questflowmode.SetValueInt(260)
		; cook meal
	else
		dcur_prison_questflowmode.SetValueInt(tasks[tasksdone])		
		tasksdone += 1
	EndIf	
EndFunction

Function Rnd_StartMines()
	MarkTaskComplete()
	Lock_PrisonerChains()
	; the gag SHOULD be on anywhere but the cooking task, but there is little harm in calling it, just in case.
	Lock_Gag()
	minedoor.GetReference().Lock(False)			
	dcur_prison_questcontrol.SetValueInt(80)
	SetObjectiveDisplayed(80)
EndFunction

Function Rnd_StartGarbage()
	MarkTaskComplete()
	GuardRoomDoor.GetReference().Lock(False)
	GuardRoomDoor.GetReference().SetOpen(True)
	PlayerCellDoor.GetReference().Lock(False)
	PlayerCellDoor.GetReference().SetOpen(True)
	UnoccupiedCellDoor.GetReference().Lock(False)
	UnoccupiedCellDoor.GetReference().SetOpen(True)
	GarbageCleaned = 0
	Lock_MaidSuit()
	Lock_PrisonerChains()
	Lock_Gag()
	GarbageOnActivate(pile = none)	
	dcur_prison_questcontrol.SetValueInt(130)
	SetObjectiveDisplayed(130)
EndFunction

Function Rnd_StartWarehouse()
	MarkTaskComplete()
	Lock_HobbleSkirt()
	Lock_Elbowbinder()
	Lock_Gag()
	ShipmentChest.GetReference().RemoveAllItems(None)
	TrapDoor.GetReference().Lock(False)		
	dcur_prison_questcontrol.SetValueInt(160)
	SetObjectiveDisplayed(160)
EndFunction

Function Rnd_StartWine()
	MarkTaskComplete()
	GuardRoomDoor.GetReference().Lock(False)
	GuardRoomDoor.GetReference().SetOpen(True)
	TrapDoor.GetReference().Lock(False)		
	Lock_Yoke()
	Lock_RubberDress()
	Lock_Gag()
	KitchenCupboard.GetReference().RemoveAllItems(None)
	KitchenCupboard.GetReference().AddItem(WineBottle01BEmpty, 1, False)	
	dcur_prison_questcontrol.SetValueInt(200)
	SetObjectiveDisplayed(200)	
EndFunction

Function Rnd_DisplayModel()
	MarkTaskComplete()
	Lock_Gag()
	LapsWalked = 0
	dcur_prison_questcontrol.SetValueInt(300)
	SetObjectiveDisplayed(300)
EndFunction

Function Rnd_CookFood()
	MarkTaskComplete()
	GuardRoomDoor.GetReference().Lock(False)
	GuardRoomDoor.GetReference().SetOpen(True)
	KitchenCupboard.GetReference().RemoveAllItems(None)
	KitchenSack.GetReference().RemoveAllItems(None)
	StockAreaBarrel1.GetReference().RemoveAllItems(None)
	StockAreaBarrel2.GetReference().RemoveAllItems(None)
	KitchenWardrobe.GetReference().RemoveAllItems(None)
	KitchenWaterBarrel.GetReference().RemoveAllItems(None)	
	EatingGirl.GetReference().Enable()
	EatingGirl2.GetReference().Enable()	
	SetGirlWithRope()
	Utility.Wait(2)
	; we can keep things interesting by equipping random stuff here:
	Int i = Utility.RandomInt()
	If i < 33
		Lock_HobbleSkirt()
	ElseIf i < 66	
		Lock_Belt()
	Else
		Lock_ElegantDress()
	EndIf
	Lock_PrisonerChains()
	Lock_Gag()
	SetObjectiveCompleted(250)
	dcur_prison_questcontrol.SetValueInt(260)
	SetObjectiveDisplayed(260)	
	SetObjectiveDisplayed(261)	
	SetObjectiveDisplayed(262)	
	SetObjectiveDisplayed(263)	
	SetObjectiveDisplayed(264)	
	SetObjectiveDisplayed(265)	
	SetObjectiveDisplayed(266)	
	KitchenCupboard.GetReference().AddItem(WoodenLadle01, 1, False)
	KitchenSack.GetReference().AddItem(FoodBread01A, 1, False)
	StockAreaBarrel1.GetReference().AddItem(FoodCabbage, 1, False)
	StockAreaBarrel2.GetReference().AddItem(FoodPotato, 1, False)
	KitchenWardrobe.GetReference().AddItem(DwarvenSpoon, 1, False)
	KitchenWaterBarrel.GetReference().AddItem(dcur_prison_water, 1, False)
EndFunction

Function Rnd_GoHome()
	MarkTaskComplete()
	RemoveBodyDevices()
	RemoveSuits()
	RemoveChastity()
	Utility.Wait(2)
	Lock_Straitjacket()
	Lock_Gag()
	HoursToWork = CalcHoursToWork()
	;pqs.Libs.Notify("Hours until Work: " + pqs.HoursToWork)
	AllowedToSleepAt = Utility.GetCurrentGameTime()
	PlayerCellDoor.GetReference().Lock(False)
	PlayerCellDoor.GetReference().SetOpen(True)	
	dcur_prison_questcontrol.SetValueInt(60)
	SetObjectiveDisplayed(60)
EndFunction

Function Rnd_Pillory()
	MarkTaskComplete()
	RemoveBoots()
	dclibs.zadc.LockActor(libs.PlayerRef, ref_dcur_prison_pillory.GetReference())
	dcur_prison_questcontrol.SetValueInt(500)
	SetObjectiveDisplayed(500)
	if dcur_prison_nosex.GetValueInt() != 1
		Utility.Wait(3)
		ForemanPillory = True
		dclibs.zadc.PlaySexScene(libs.PlayerRef, Foreman.GetActorReference())
	EndIf
	TimeLockedinPillory = Utility.GetCurrentGameTime()
EndFunction
	
Function Rnd_PleaseStaff()
	MarkTaskComplete()
	RemoveGag()
	RemoveBoots()
	dcur_prison_questcontrol.SetValueInt(530)
	SetObjectiveDisplayed(530)	
EndFunction	
	
Function MarkTaskComplete()
	; This will automatically look for and mark the last stage of any active task as completed.
	if IsObjectiveDisplayed(70)		; report in the morning
		SetObjectiveCompleted(70)
	EndIf
	if IsObjectiveDisplayed(110)	; mining
		SetObjectiveCompleted(110)
	EndIf
	if IsObjectiveDisplayed(120)	; mining
		SetObjectiveCompleted(120)
	EndIf
	if IsObjectiveDisplayed(140)	; garbage
		SetObjectiveCompleted(140)
	EndIf
	if IsObjectiveDisplayed(150)	; garbage
		SetObjectiveCompleted(150)
	EndIf
	if IsObjectiveDisplayed(190)	; warehouse
		SetObjectiveCompleted(190)		
	EndIf
	if IsObjectiveDisplayed(250)	; wine
		SetObjectiveCompleted(250)		
	EndIf
	if IsObjectiveDisplayed(290)	; cook meal
		SetObjectiveCompleted(290)			
	EndIf
	if IsObjectiveDisplayed(320)	; display model
		SetObjectiveCompleted(320)		
	EndIf
	if IsObjectiveDisplayed(510)	; pillory
		SetObjectiveCompleted(510)		
	EndIf
	if IsObjectiveDisplayed(550)	; please staff
		SetObjectiveCompleted(550)		
	EndIf
EndFunction

Function ResetTask()
	; make sure to clean up EVERYTHING left behind by tasks. The random system assumes the prison to be in a clean state when it starts new tasks!
	; close any open doors
	minedoor.GetReference().Lock(True)
	minedoor.GetReference().SetLockLevel(255)
	trapDoor.GetReference().Lock(True)
	trapDoor.GetReference().SetLockLevel(255)
	GuardBedRoomDoor.GetReference().Lock(True)
	GuardBedRoomDoor.GetReference().SetLockLevel(255)
	GuardRoomDoor.GetReference().SetOpen(False)
	GuardRoomDoor.GetReference().Lock(True)
	GuardRoomDoor.GetReference().SetLockLevel(255)
	PlayerCellDoor.GetReference().SetOpen(False)
	PlayerCellDoor.GetReference().Lock(True)
	PlayerCellDoor.GetReference().SetLockLevel(255)
	; Disable NPCs
	EatingGirl.GetReference().Disable()
	EatingGirl2.GetReference().Disable()
	; Make sure everything is clean
	OrePickupChest.GetReference().RemoveAllItems(None)
	OreDropOffChest.GetReference().RemoveAllItems(None)			
EndFunction
	
Function SetRandomChances()
	; we modify these values based on the MCM difficulty setting
	; difficulty values can go from 0 (highest) to 8 (lowest) 4 is default
	Int Diff = dcumenu.prison_Difficulty
	NoWorkTodayChance = 35 + (Diff * 2)
	ParoleChance = 20 + Diff	
	ReduceSentenceChance = 10 + Diff
	ExtendSentenceChance = 12 - Diff
	AccidentalReleaseChance = 3	+ Diff
	RandomEscapeItemChance = 15 + Diff	
	RapeAtNightChance = 50 - (Diff * 2)
EndFunction

Function SetEscapeChances()
	; we modify these values based on the MCM difficulty setting
	; difficulty values can go from 0 (highest) to 8 (lowest) 4 is default
	Int Diff = dcumenu.prison_EscapeDifficulty
	Escape_PickpocketChance = 80 + Diff
	Escape_PickpocketChanceSex = 92	+ Diff
	If Diff > 6
		Escape_AdditionalDaysOnFail = 1
		Escape_AdditionalDaysOnMajorFail = 2
	ElseIf Diff > 2
		Escape_AdditionalDaysOnFail = 2 
		Escape_AdditionalDaysOnMajorFail = 3 
	Else
		Escape_AdditionalDaysOnFail = 4
		Escape_AdditionalDaysOnMajorFail = 5
	EndIf	
	Escape_PickBedroomChance = 85 + Diff
	Escape_PickBedroomFailSpotChance = 40 - (Diff * 2)
	Escape_CutSkirtChance = 85 + Diff
	Escape_CutSkirtFailSpotChance = 40 - (Diff * 2)
	Escape_StruggleSJChance = 83 + Diff
	Escape_LockpickChance = 90 + Diff
	Escape_StealNails = 85 + Diff
	Escape_StealCrowbar = 85 + Diff
	Escape_BreakCrateChance = 90 + Diff
	Escape_GetRopeSpotChance = 15 - Diff
EndFunction

Function OnGameLoad()
	onhitcooldown = 0.0
	RegisterForSingleUpdate(15)
	RegisterForSleep()	
EndFunction

Function StartQuest()	
	; Check if she's a repeat offender (= getting sent back to jail less than a week after her last release)
	If (dcur_prison_lastjailedat.GetValue() > 0.0) && ((Utility.GetCurrentGameTime() - dcur_prison_lastjailedat.GetValue()) < 7.0)
		isRepeatOffender = true
	Else	
		isRepeatOffender = False
	EndIf	
	; Okies, if we want to process bounty etc, we need to know who arrested her. All handovers from generic arrest dialogue or other features NEED to set this, or the prison quest won't be able to clear the correct bounty.
	Actor Guard = StorageUtil.GetFormValue(libs.playerRef, "dcur_prison_ArrestingActor") As Actor
	Faction CurrentCrimeFaction = None
	If Guard 
		CurrentCrimeFaction = Guard.GetCrimeFaction()
	Else
		; we also accept the faction directly, which can be used for bounty hunting etc.
		CurrentCrimeFaction = StorageUtil.GetFormValue(libs.playerRef, "dcur_prison_ArrestingFaction") As Faction
	EndIf
	
	StorageUtil.UnSetFormValue(libs.playerRef, "dcur_prison_ArrestingFaction")
	StorageUtil.UnSetFormValue(libs.playerRef, "dcur_prison_ArrestingActor")
	
	; Ok, let's get dirty. If we clear the bounty using the actual crime faction, the stolen goods will go to that prison's chest. Not good. So we instead clear stolen goods using our very own crime faction!
	dcur_prison_crimefaction.SetCrimeGold(1)
	dcur_prison_crimefaction.PlayerPayCrimeGold(abGoToJail = false)
	
	; calculate the sentence:	
	; Generally, the sentences given are rather long, but the quest has multiple features to shorten the actual time spent in prison, e.g. pardon or skip work days.
	If CurrentCrimeFaction
		Float BountyPetty = CurrentCrimeFaction.GetCrimeGold()
		Float BountyViolent = CurrentCrimeFaction.GetCrimeGoldViolent()
		If BountyViolent > 0
			; violent crime = harsher sentence.
			DaysSentence = 10 - dcumenu.prison_Difficulty
			; judge's discretion aka RNG. Like in real life!
			DaysSentence += Utility.RandomInt(-3,3)			
			; this was violent crime, so we lock her up for at least 3 days
			If DaysSentence < 3
				DaysSentence = 3
			EndIf
		Else
			; ok, it's a petty crime
			If BountyPetty < 40
				; very minor offense = make her spend just the night there. No work.
				DaysSentence = 1
				; except we're at high difficulty, then we WILL send her to work!
				If dcumenu.prison_Difficulty < 3
					DaysSentence = 2
				EndIf
			Else
				; regular petty crime
				DaysSentence = 9 - dcumenu.prison_Difficulty
				; judge's discretion aka RNG. Like in real life! We're starting with a high base, so we're trending downward.
				DaysSentence += Utility.RandomInt(-3,1)								
				; we lock her up for at least 2 days
				If DaysSentence < 2
					DaysSentence = 2
				EndIf				
			EndIf
		EndIf
	Else
		; ok we didn't get sent here via the vanilla crime system, so let's just roll some dice!
		DaysSentence = 10 - dcumenu.prison_Difficulty
		; judge's discretion aka RNG. Like in real life! We're starting with a high base, so we're trending downward.
		DaysSentence += Utility.RandomInt(-4,1)		
		; we lock her up for at least 3 days
		If DaysSentence < 3
			DaysSentence = 3
		EndIf
	EndIf	
	Game.IncrementStat("Times Jailed")
	Game.IncrementStat("Days Jailed", DaysSentence)
	; Ok, now that that's done, let's clear the actual bounty!
	If CurrentCrimeFaction
		If CurrentCrimeFaction.CanPayCrimeGold()
			; make her pay and remove stolen stuff
			CurrentCrimeFaction.PlayerPayCrimeGold(abGoToJail = false)
		Else
			; if she can't afford it, take whatever she's got
			CurrentCrimeFaction.SetCrimeGold(Libs.PlayerRef.GetItemCount(dcumenu.gold001))
			CurrentCrimeFaction.SetCrimeGoldViolent(0)
			CurrentCrimeFaction.PlayerPayCrimeGold(abGoToJail = false)
		EndIf
	Else
		; We arrested without a valid crime faction, so let's make something up!				
		Int Fine = Math.Floor(Libs.PlayerRef.GetItemCount(dcumenu.gold001) / 10) ; 10% of her gold sounds fair...
		Libs.PlayerRef.RemoveItem(dcumenu.gold001, Fine, False)
	EndIf
	dcur_prison_questflowmode.SetValueInt(0)
	MinorTransgressions = 0 
	MajorTransgressions = 0
	HasBreachedGuardRoom = False
	QuestAborted = False
	; inspect DD gear to see if we're a go:
	if Libs.PlayerRef.WornHasKeyword(libs.zad_QuestItem) || dclibs.isWearingUnsafeDDItem()  || dcLibs.UnsafePrisonQuestsActive()
		; since that is an indicator that we might break DD quests, we release the player right here. We -do- remove block generic ones, as modders shouldn't expect them not to be temporarily removable. They will go back on at release.
		; this is a last resort check. Features should branch to something else using a similar check BEFORE sending them here!
		QuestAborted = True
		Stop()
		return
	EndIf
	; ok, we're good to go:
	if Libs.PlayerRef.WornHasKeyword(libs.zad_Lockable)
		; Player is wearing DD items, but no quest ones. These are good to be removed. We will store them in a list and put them back on when the player is released (not when she escapes, though, that would make no sense)
		; However, we will not actually remove the items at this point, the guard will have fun doing that.
		StoreWornDevices()
	EndIf
	; This quest contains dialogue for the guards and fellow prisoners. I needed to put it in a separate quest, because the engine can't propery prioritize several branches of blocking dialogue in the same quest.
	dcur_prisonquestOVRDlg.Start()	
	dcur_prisonquestOVRRandomDlg.Start()
	ParkFollowers()
	dcur_prison_hadDDatarrest.SetValueInt(0)	
	ArrestPositionMarker.GetReference().MoveTo(Libs.PlayerRef)
	OrePickupChest.GetReference().RemoveAllItems(None)
	OreDropOffChest.GetReference().RemoveAllItems(None)
	KitchenCupboard.GetReference().RemoveAllItems(None)
	; reward box for escaping
	RewardChest.GetReference().RemoveAllItems(None)	
	PlayerChest.GetReference().Lock(False)	
	EntranceDoor.GetReference().Lock(True)
	EntranceDoor.GetReference().SetLockLevel(255)
	ExitDoor.GetReference().Lock(True)	
	ExitDoor.GetReference().SetLockLevel(255)	
	minedoor.GetReference().Lock(True)
	minedoor.GetReference().SetLockLevel(255)
	PlayerCellDoor.GetReference().SetOpen(True)
	PlayerCellDoor.GetReference().Lock(False)	
	; we also reset the guards here, just in case
	Supervisor.GetReference().MoveTo(SupervisorMarker.GetReference())
	Foreman.GetReference().MoveTo(ForemanMarker.GetReference())
	Warden.GetReference().MoveTo(WardenMarkerStart.GetReference())
	Supervisor.GetReference().Enable()
	Foreman.GetReference().Enable()	
	DisplayGirl.GetReference().Enable()			
	ReceptionGuard.GetReference().Enable()		
	EatingGirl.GetReference().Disable()
	EatingGirl2.GetReference().Disable()
	HadGuardSex = False
	WornSuit = None
	WornBodyRestraint = None
	ResetEscape(True)
	OfferedSex = 0
	HasResistedSex = 0
	; strip her naked
	dclibs.Strip(libs.PlayerRef, false)
	DaysInPrison = 0
	GarbageReset()	
	Lock_Shackles()	
	;Lock_LegIrons()
	SetAllRandomChances()
	tasks = new int[6]  ; Papyrus is too stupid to have dynamic arrays, so make sure to adjust this number if the number of tasks ever changes. Right now: Mines, Garbage, Warehouse, Wine, Display Model, Pillory, Please Staff
	Utility.Wait(0.1)
	If isRepeatOffender		
		libs.notify("You have been sentenced to a prison sentence of " + DaysSentence + " days in the infamous Dagonar Prison for Women.", messagebox = true)
		Utility.Wait(0.1)
		DaysSentence *= 2
		libs.notify("Since you are a repeat offender, your sentence has been doubled to " + DaysSentence + " days.", messagebox = true)
	Else
		libs.notify("You have been sentenced to a prison sentence of " + DaysSentence + " days in the infamous Dagonar Prison for Women.", messagebox = true)
	EndIf
	Game.DisablePlayerControls()	
	Utility.Wait(7)
	Game.EnablePlayerControls()
	Utility.Wait(1)
	libs.PlayerRef.MoveTo(EntranceMarker.GetReference())
	SetStage(10)
	dcur_prison_questcontrol.SetValueInt(10)
	SetObjectiveDisplayed(10)
	RegisterForSleep()
	; Ok, at first the warden flag was meant for players who -always- want F/F action, but why not just make the intro random and let either the Warden OR the orc do it?
	If dcur_prison_wardensex.GetValue() == 0 && Utility.RandomInt() < 50
		dcur_prison_wardensex.SetValue(1)
		WardenNeedsReset = True
	EndIf
EndFunction

Function StopQuest()
	; remember when she got released to determine repeat offender status next time she gets imprisoned.
	dcur_prison_lastjailedat.SetValue(Utility.GetCurrentGameTime())
	If QuestAborted
		return
	EndIf
	ResetEscape(True)
	UnregisterForUpdate()
	Libs.PlayerRef.RemoveItem(dcur_nosleepitem, libs.PlayerRef.GetItemCount(dcur_nosleepitem), true)
	RemoveAllDevices()
	Utility.Wait(3)	
	StorageUtil.SetIntValue(libs.playerRef, "dcur_prison_WasReleased", 1)
	libs.PlayerRef.MoveTo(ArrestPositionMarker.GetReference())
	Utility.Wait(3)	
	ReleaseFollowers()
	dcur_prisonquestOVRDlg.Stop()
	dcur_prisonquestOVRRandomDlg.Stop()
EndFunction

Function OnPlayerHitGuard()
	if (Utility.GetCurrentRealTime() > onhitcooldown)	
		onhitcooldown = Utility.GetCurrentRealTime() + 2
	else
		return
	endif		
	if dcur_prison_questcontrol.GetValueInt() < 60
		; need to make sure to complete all necessary steps in case she punched the reception guard.
		if dcur_prison_questcontrol.GetValueInt() < 20
			; she's still wearing transport shackles
			RemoveBodyDevices()			
			Remove_LegIrons()
		EndIf
		if dcur_prison_questcontrol.GetValueInt() < 30
			; she still has her stuff
			StoreStuff()			
		EndIf
		; Also it could be that the update cycle didn't yet get started.
		RegisterForSingleUpdate(15)
	EndIf	
	Game.DisablePlayerControls()
	PlayerCellDoor.GetReference().SetOpen(False)
	PlayerCellDoor.GetReference().Lock(True)
	PlayerCellDoor.GetReference().SetLockLevel(255)				
	libs.notify("You attack the guard and even manage to get a hit in, but your violent outburst is quickly ended by a half dozen other guards charging you and wrestling you to the ground. You hear shackles clicking shut around your wrists and ankles, before you are getting dragged away to your cell", messagebox = true)
	RemoveAllDevices()
	Utility.Wait(1.5)
	Libs.PlayerRef.MoveTo(PlayerCellMarker.GetReference())
	ResetEscape(True)	
	Utility.Wait(1.0)
	If dcumenu.prison_Whipping
		punish_flag_belt = True
		punish_flag_major = True
		punish_flag_minor = False
		PunishByWarden()
	Else
		ReturnToCell()
	EndIf	
EndFunction

Function SetGirlWithRope()
	If Utility.RandomInt() < 50
		GirlWithRope = EatingGirl.GetActorReference()
	Else
		GirlWithRope = EatingGirl2.GetActorReference()
	EndIf
EndFunction

Function PlayerTalkPrisoner(Actor who)		
	If Utility.RandomInt() < 33		
		Game.DisablePlayerControls()
		PlayerCellDoor.GetReference().SetOpen(False)
		PlayerCellDoor.GetReference().Lock(True)
		PlayerCellDoor.GetReference().SetLockLevel(255)				
		libs.Notify("The guards have observed your attempt to communicate with other prisoners, which is strictly forbidden. Two strong guards grab you by the arms and drag you back to your cell...", messagebox = true)
		RemoveAllDevices()
		Utility.Wait(1.5)
		Libs.PlayerRef.MoveTo(PlayerCellMarker.GetReference())
		If dcumenu.prison_Whipping
			punish_flag_belt = False
			punish_flag_major = False
			punish_flag_minor = True
			PunishByWarden()
		Else
			ReturnToCell(MajorTransgression = False, MinorTransgression = True, BeltHer = False)
		EndIf
	ElseIf who == GirlWithRope
		; she's the one with the rope, so let's give it to the player!
		libs.Notify("Peeking over her shoulder to make sure you are alone, the girl smiles at you before she whispers a few hushed words into your ear and hands you a small pack of rope. There might be a way to escape this place, and you just came one step closer...", messagebox = true)
		Utility.Wait(0.1)
		Libs.PlayerRef.AddItem(dcur_prison_esc_rope, 1)
		If Utility.RandomInt() < Escape_GetRopeSpotChance
			libs.Notify("Except that you didn't check carefully enough. A guard is staring daggers at you, and the rope in your hand, which doesn't leave much room for coming up with a good excuse...", messagebox = true)
			Utility.Wait(0.1)
			EscapeFail()
		EndIf
	EndIf
EndFunction

Function ResetDailyObjectives()
	Int I = 60 
	While I <= 550
		SetObjectiveCompleted(I, False)
		SetObjectiveDisplayed(I, False)
		I += 10
	EndWhile
	I = 261
	While I <= 266
		SetObjectiveCompleted(I, False)
		SetObjectiveDisplayed(I, False)
		I += 1
	EndWhile
	I = 532
	While I <= 534
		SetObjectiveCompleted(I, False)
		SetObjectiveDisplayed(I, False)
		I += 2
	EndWhile
EndFunction

Function GuardSex(Actor who)
	HadGuardSex = True
	WornBodyRestraint = None
	WornSuit = None
	If Libs.PlayerRef.WornHasKeyword(libs.zad_DeviousSuit)
		WornSuit = libs.GetWornDevice(Libs.PlayerRef, libs.zad_DeviousSuit)
		RemoveSuits()
	EndIf
	If Libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		WornBodyRestraint = libs.GetWornDevice(Libs.PlayerRef,libs.zad_DeviousHeavyBondage)		
		RemoveBodyDevices()		
	EndIf	
	RemoveGag()
	RemoveBoots()
	OfferedSex += 1
	Sex(Who)
EndFunction

Function GuardSexOffer(Actor who)
	HadGuardSex = True
	WornBodyRestraint = None
	WornSuit = None
	If Libs.PlayerRef.WornHasKeyword(libs.zad_DeviousSuit)
		WornSuit = libs.GetWornDevice(Libs.PlayerRef, libs.zad_DeviousSuit)
		RemoveSuits()
	EndIf
	If Libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		WornBodyRestraint = libs.GetWornDevice(Libs.PlayerRef,libs.zad_DeviousHeavyBondage)		
		RemoveBodyDevices()		
	EndIf	
	RemoveGag()
	RemoveBoots()
	OfferedSex += 1
	SexConsensual(Who)
EndFunction

Function CellAttack(Actor who, Actor who2 = none, Bool consent)
	CellRape = True	
	WornBodyRestraint = None
	WornSuit = None
	If Libs.PlayerRef.WornHasKeyword(libs.zad_DeviousSuit)
		WornSuit = libs.GetWornDevice(Libs.PlayerRef, libs.zad_DeviousSuit)
		RemoveSuits()
	EndIf
	If Libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		WornBodyRestraint = libs.GetWornDevice(Libs.PlayerRef,libs.zad_DeviousHeavyBondage)		
		RemoveBodyDevices()		
	EndIf	
	RemoveGag()
	RemoveBoots()
	HasBeenRaped = True
	If who == Warden.GetActorReference()
		; Warden
		RegisterForModEvent("AnimationEnd", "OnSexEnd")	
		sslBaseAnimation[] Sanims
		Actor[] SceneSexActors
		SceneSexActors = new actor[2]
		SceneSexActors[0] = libs.PlayerRef
		SceneSexActors[1] = Warden.GetActorReference()		
		Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "FF", "Aggressive,Bound,Futa", true)			
		If Sanims.Length == 0
			; no proper FF anims, meh!
			Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "", "Aggressive,Bound,Futa", true)			
		EndIf
		dclibs.SexLab.StartSex(Positions = SceneSexActors, anims = Sanims, allowbed = false) 			
	elseIf who2 == None
		If !consent
			Sex(Who)
		Else
			OfferedSex += 1
			SexConsensual(Who)		
		EndIf
	Else
		; we got a threesome. We set it up all manually so we can filter MFF animations etc.
		RegisterForModEvent("AnimationEnd", "OnSexEnd")	
		sslBaseAnimation[] Sanims
		Actor[] SceneSexActors
		SceneSexActors = new actor[3]
		SceneSexActors[0] = libs.PlayerRef
		SceneSexActors[1] = who
		SceneSexActors[2] = who2
		If !consent			
			Sanims = dcLibs.SexLab.GetAnimationsByTags(3, "Aggressive,MMF", "Bound,Futa", true)			
			dcLibs.SexLab.StartSex(Positions = SceneSexActors, anims = Sanims, victim = libs.playerref, allowbed = false) 
			;dcLibs.sexwithplayer(who, who2, consensual = true)
		Else
			Sanims = dcLibs.SexLab.GetAnimationsByTags(3, "MMF", "Aggressive,Bound,Futa", true)			
			dclibs.SexLab.StartSex(Positions = SceneSexActors, anims = Sanims, allowbed = false) 
			;dcLibs.sexwithplayer(who, who2, consensual = false)
		EndIf		
	EndIf
EndFunction

function ParkFollowers()	
	int n = dclibs.dcur_followerlist.GetSize()
	if !dcumenu.enablefollowersupport || (n == 0)
		return
	Endif	
	Actor Follower		
	if n > 5 
		; sanity
		n = 5
	EndIf
	If n >= 1
		Follower = dclibs.dcur_followerlist.GetAt(0) As Actor	
		FrozenFollower1.ForceRefTo(Follower)	
		Follower.moveto(alias_dcur_storagecell.GetReference())
		Follower.SetRestrained(True)
		Follower.SetDontMove(True)	
	EndIf
	If n >= 2
		Follower = dclibs.dcur_followerlist.GetAt(1) As Actor	
		FrozenFollower2.ForceRefTo(Follower)	
		Follower.moveto(alias_dcur_storagecell.GetReference())
		Follower.SetRestrained(True)
		Follower.SetDontMove(True)	
	EndIf
	If n >= 3
		Follower = dclibs.dcur_followerlist.GetAt(2) As Actor	
		FrozenFollower3.ForceRefTo(Follower)	
		Follower.moveto(alias_dcur_storagecell.GetReference())
		Follower.SetRestrained(True)
		Follower.SetDontMove(True)	
	EndIf
	If n >= 4
		Follower = dclibs.dcur_followerlist.GetAt(3) As Actor	
		FrozenFollower4.ForceRefTo(Follower)	
		Follower.moveto(alias_dcur_storagecell.GetReference())
		Follower.SetRestrained(True)
		Follower.SetDontMove(True)	
	EndIf
	If n >= 5
		Follower = dclibs.dcur_followerlist.GetAt(4) As Actor	
		FrozenFollower5.ForceRefTo(Follower)	
		Follower.moveto(alias_dcur_storagecell.GetReference())
		Follower.SetRestrained(True)
		Follower.SetDontMove(True)	
	EndIf
endfunction

Function ReleaseFollowers()	
	Actor a
	if FrozenFollower1.GetReference()
		a = FrozenFollower1.GetActorReference()
		a.moveto(libs.playerref)
		a.SetRestrained(False)
		a.SetDontMove(False)		
		FrozenFollower1.Clear()		
	EndIf
	if FrozenFollower2.GetReference()
		a = FrozenFollower2.GetActorReference()
		a.moveto(libs.playerref)
		a.SetRestrained(False)
		a.SetDontMove(False)		
		FrozenFollower2.Clear()		
	EndIf
	if FrozenFollower3.GetReference()
		a = FrozenFollower3.GetActorReference()
		a.moveto(libs.playerref)
		a.SetRestrained(False)
		a.SetDontMove(False)		
		FrozenFollower3.Clear()		
	EndIf
	if FrozenFollower4.GetReference()
		a = FrozenFollower4.GetActorReference()
		a.moveto(libs.playerref)
		a.SetRestrained(False)
		a.SetDontMove(False)		
		FrozenFollower4.Clear()		
	EndIf
	if FrozenFollower5.GetReference()
		a = FrozenFollower5.GetActorReference()
		a.moveto(libs.playerref)
		a.SetRestrained(False)
		a.SetDontMove(False)		
		FrozenFollower5.Clear()		
	EndIf	
EndFunction

Function StoreWornDevices()
	dcur_prison_deviceswornatarrest.Revert()
	Int i = 0		
	while i < dcumenu.dcur_devicekeywords.GetSize()
		Keyword kw = dcumenu.dcur_devicekeywords.GetAt(i) As Keyword
		If libs.PlayerRef.WornHasKeyword(kw) 
			Armor a = Libs.GetWornDevice(libs.PlayerRef, kw)
			if a 
				dcur_prison_deviceswornatarrest.AddForm(a)
			EndIf
		EndIf
		i += 1
	endwhile
EndFunction

Function RemoveWornDevices()	
	dcur_prison_hadDDatarrest.SetValueInt(1)	
	; we don't have to check for quest devices. The quest wouldn't have started if there were any on the player.
	Int i = 0		
	while i < dcumenu.dcur_devicekeywords.GetSize()
		Keyword kw = dcumenu.dcur_devicekeywords.GetAt(i) As Keyword
		Armor idevice
		Armor rdevice
		If libs.PlayerRef.WornHasKeyword(kw) 
			idevice = libs.GetWornDevice(libs.PlayerRef, kw)
			if idevice
				rdevice = libs.GetWornRenderedDeviceByKeyword(libs.PlayerRef, kw)
			Endif
			if rdevice				
				libs.UnlockDevice(libs.PlayerRef, idevice, rdevice, kw, destroyDevice = true, genericonly = false)
			EndIf			
		EndIf
		i += 1
	endwhile
EndFunction

Function RestoreWornDevices()
	Int i = 0		
	while i < dcur_prison_deviceswornatarrest.GetSize()
		Armor a = dcur_prison_deviceswornatarrest.GetAt(i) As Armor
		If a
			libs.LockDevice(libs.PlayerRef, a)			
		EndIf
		i += 1
	endwhile
	dcur_prison_deviceswornatarrest.Revert()
EndFunction

Function ActivatePlayerChest()
	if dcur_prison_questcontrol.GetValueInt() == 20
		StoreStuff()
		SetObjectiveCompleted(20)
		dcur_prison_questcontrol.SetValueInt(30)
		SetObjectiveDisplayed(30)	
		; from here on, no sleep except when allowed
		Libs.PlayerRef.EquipItem(dcur_nosleepitem, 1, true)
		;also start the update cycle now:
		RegisterForSingleUpdate(5)
	EndIf
	if dcur_prison_questcontrol.GetValueInt() == 1010
		RestoreStuff()
		SetObjectiveCompleted(1010)
		dcur_prison_questcontrol.SetValueInt(1020)
		SetObjectiveDisplayed(1020)	
	EndIf
	if dcur_prison_questcontrol.GetValueInt() == 5000 ; escape
		libs.notify("You cannot believe your luck, as you realize that you can reach the box holding your gear through the broken grate. You manage to open the box and retrieve your belongings!", messagebox = true)
		RestoreStuff()
		SetObjectiveCompleted(5050)
		dcur_prison_questcontrol.SetValueInt(5100)
		If dcur_prison_deviceswornatarrest.GetSize() > 0
			; we unlocked DD Devices when the player got arrested. While it's a bit silly, but I have to put back on the BlockGeneric tagged ones at least, in order to comply with my own DD rules. :D
			; actually let's put them all back on. A prison sentence is not meant to let you escape your restraints! Haha!
			Libs.Notify("As you take your belongings from the chest, you sense a strange magic touching you. It must be a ward spell of sorts. At least you suddenly get locked in the same restraints you wore when you were arrested...", messagebox = true)
			RestoreWornDevices()
			Utility.Wait(0.1)
			Libs.Notify("Since the spell isn't going to accept no for an answer, you patiently wait until you are properly restrained once more, and then take the ladder to freedom!", messagebox = true)
		EndIf
	EndIf
EndFunction

Function StoreStuff()	
	debug.notification("You put your gear into the chest.")
	Game.DisablePlayerControls()
	ObjectReference chest = PlayerChest.GetReference()
	chest.lock()
	chest.SetLockLevel(255)
	Actor player = libs.playerref
	player.RemoveAllItems(akTransferTo = chest, abKeepOwnership = false, abRemoveQuestItems = true)
	Game.EnablePlayerControls()
EndFunction

Function RestoreStuff()	
	debug.notification("You gather your belongings from the locker.")
	Game.DisablePlayerControls()
	ObjectReference chest = PlayerChest.GetReference()
	chest.lock()
	chest.SetLockLevel(255)
	Actor player = libs.playerref
	chest.RemoveAllItems(akTransferTo = libs.PlayerRef, abKeepOwnership = false, abRemoveQuestItems = true)
	Game.EnablePlayerControls()
EndFunction

Function Lock_PrisonerChains()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_prisonerchains_Inventory, dcur_prison_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	If !libs.PlayerRef.IsEquipped(dcur_prison_BallGag_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_BallGag_Inventory, dcur_prison_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	EndIf
	If !libs.PlayerRef.IsEquipped(dcur_Prison_boots_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_Prison_boots_Inventory, dcur_Prison_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	EndIf
EndFunction

Function Lock_Straitjacket()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_sj_Inventory, dcur_prison_sj_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	If !libs.PlayerRef.IsEquipped(dcur_prison_BallGag_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_BallGag_Inventory, dcur_prison_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	EndIf
	If !libs.PlayerRef.IsEquipped(dcur_Prison_boots_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_Prison_boots_Inventory, dcur_Prison_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	EndIf
EndFunction

Function Lock_Elbowbinder()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_elbowbinder_Inventory, dcur_prison_elbowbinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	If !libs.PlayerRef.IsEquipped(dcur_prison_BallGag_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_BallGag_Inventory, dcur_prison_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	EndIf
	If !libs.PlayerRef.IsEquipped(dcur_Prison_boots_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_Prison_boots_Inventory, dcur_Prison_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	EndIf
EndFunction

Function Lock_Yoke()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_yoke_Inventory, dcur_prison_yoke_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	If !libs.PlayerRef.IsEquipped(dcur_prison_BallGag_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_BallGag_Inventory, dcur_prison_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	EndIf
	If !libs.PlayerRef.IsEquipped(dcur_Prison_boots_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_Prison_boots_Inventory, dcur_Prison_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	EndIf
EndFunction

Function Lock_MaidSuit()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_maidsuit_Inventory, dcur_prison_maidsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)
EndFunction

Function Lock_Catsuit()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_catsuit_Inventory, dcur_prison_catsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)
EndFunction

Function Lock_RubberDress()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_rubberdress_Inventory, dcur_prison_rubberdress_Rendered, libs.zad_DeviousSuit, skipmutex = true)
EndFunction

Function Lock_HobbleSkirt()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_hobbledress_Inventory, dcur_prison_hobbledress_Rendered, libs.zad_DeviousSuit, skipmutex = true)
EndFunction

Function Lock_ElegantDress()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_elegantdress_Inventory, dcur_prison_elegantdress_Rendered, libs.zad_DeviousSuit, skipmutex = true)
EndFunction

Function Lock_Petsuit()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_petsuit_Inventory, dcur_prison_petsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true)
EndFunction

Function Lock_RopeHarness()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_ropeharness_Inventory, dcur_prison_ropeharness_Rendered, libs.zad_DeviousSuit, skipmutex = true)
EndFunction

Function Lock_RopeBinder()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_ropebinder_Inventory, dcur_prison_ropebinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
EndFunction

Function Lock_Shackles()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_shackles_Inventory, dcur_prison_shackles_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
EndFunction

Function Lock_Belt()
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_belt_Inventory, dcur_prison_belt_Rendered, libs.zad_DeviousBelt, skipmutex = true)
	libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_bra_Inventory, dcur_prison_bra_Rendered, libs.zad_DeviousBra, skipmutex = true)
	Utility.Wait(1.5)
	libs.ForceEquipDevice(libs.PlayerRef, dcur_df_buttplug_Inventory, dcur_df_buttplug_Rendered, libs.zad_DeviousPlugAnal, skipmutex = true)
	libs.ForceEquipDevice(libs.PlayerRef, dcur_df_vibrator_Inventory, dcur_df_vibrator_Rendered, libs.zad_DeviousPlugVaginal, skipmutex = true)
EndFunction

Function Lock_Gag()
	If !libs.PlayerRef.IsEquipped(dcur_prison_BallGag_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_BallGag_Inventory, dcur_prison_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true)
	EndIf
EndFunction

Function Lock_Blindfold()
	If !libs.PlayerRef.IsEquipped(dcur_prison_blindfold_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_blindfold_Inventory, dcur_prison_blindfold_Rendered, libs.zad_DeviousBlindfold, skipmutex = true)
	EndIf	
EndFunction
	
Function Lock_Boots()
	If !libs.PlayerRef.IsEquipped(dcur_Prison_boots_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_Prison_boots_Inventory, dcur_Prison_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true)
	EndIf
EndFunction

Function Lock_LegIrons()
	If !libs.PlayerRef.IsEquipped(dcur_prison_legirons_Rendered)
		libs.ForceEquipDevice(libs.PlayerRef, dcur_prison_legirons_Inventory, dcur_prison_legirons_Rendered, libs.zad_DeviousLegCuffs, skipmutex = true)
	EndIf
EndFunction

Function Sex(Actor who)
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	dcLibs.SexWithPlayer(who, consensual = false, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "", playerisvictim = true)	
EndFunction

Function SexConsensual(Actor who)
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	dcLibs.SexWithPlayer(who, consensual = true, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "")	
EndFunction

Function Inspection(Actor who)
	inspector = who
	InspectionStage = 1
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	dcLibs.SexWithPlayer(who, consensual = false, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "oral", playerisvictim = true)	
EndFunction

Function WardenGreeting()
	SetObjectiveCompleted(30)
	dcur_prison_questcontrol.SetValueInt(32)
	SetObjectiveDisplayed(32)	
EndFunction

Function WardenSex()
	; We set it up manually so we can filter MF animations
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	sslBaseAnimation[] Sanims
	Actor[] SceneSexActors
	SceneSexActors = new actor[2]
	SceneSexActors[0] = libs.PlayerRef
	SceneSexActors[1] = Warden.GetActorReference()		
	Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "FF", "Aggressive,Bound,Futa", true)			
	If Sanims.Length == 0
		; no proper FF anims, meh!
		Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "", "Aggressive,Bound,Futa", true)			
	EndIf
	dclibs.SexLab.StartSex(Positions = SceneSexActors, anims = Sanims, allowbed = false) 		
EndFunction

Function Warden_SendIn()
	If WardenNeedsReset
		; we NEED to be here if we changed that value, so can reset it here, if needed
		dcur_prison_wardensex.SetValue(0)
		WardenNeedsReset = False
	EndIf
	SetObjectiveCompleted(35)
	dcur_prison_questcontrol.SetValueInt(50)
	SetObjectiveDisplayed(50)	
	EntranceDoor.GetReference().Lock(False)
	EntranceDoor.GetReference().SetOpen(true)
	Lock_Straitjacket()
EndFunction

Function EndCellAttack()
	RapistGuard.GetActorReference().moveto(RapistGuardMarker.GetReference())
	GuardRapist2.GetActorReference().moveto(GuardRapistMarker2.GetReference())
	; this can happen only during the night, so we can port her to the night marker
	Warden.GetActorReference().moveto(WardenMarkerNight.GetReference())
	CellRape = False
	ConsentedToRape = False			
EndFunction

Event OnUSSFinished(string eventName, string strArg, float numArg, Form sender)
	UnRegisterForModEvent("dcur_USS_finished")
	ReturnToCell(punish_flag_major, punish_flag_minor, punish_flag_belt)
EndEvent

Function Please_Staff(Actor who)
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	dcLibs.SexWithPlayer(who, consensual = true, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "", playerisvictim = false)		
EndFunction

Event OnSexEnd(string eventName, string argString, float argNum, form sender)		
	sslThreadController SLcontroller = libs.SexLab.HookController(argString)	
	Actor[] actors = SLcontroller.Positions
	int numactors = actors.Length
	int i = 0	
	Bool Playerfound = false
	; let's check if one participant is the player
	While i < numactors		
		If actors[i] == libs.PlayerRef
			Playerfound = true
		Endif
		i += 1
	EndWhile
	; don't process scenes not involving the player
	if !Playerfound
		return
	endif
	If ForemanPillory
		; the foreman needs to go back to his post
		Foreman.GetReference().MoveTo(ForemanMarker.GetReference())
		ForemanPillory = False
	EndIf
	
	If HadGuardSex || CellRape
		If WornBodyRestraint
			Libs.LockDevice(libs.PlayerRef, WornBodyRestraint)			
		EndIf
		If WornSuit
			Libs.LockDevice(libs.PlayerRef, WornSuit)			
		EndIf
		Lock_Boots()
		Lock_Gag()
		HadGuardSex = False		
		If CellRape
			EndCellAttack()
		EndIf
		return
	EndIf		
	If PickpocketSexAttempt
		If WornBodyRestraint
			Libs.LockDevice(libs.PlayerRef, WornBodyRestraint)			
		EndIf
		If WornSuit
			Libs.LockDevice(libs.PlayerRef, WornSuit)			
		EndIf
		Lock_Boots()
		Lock_Gag()
		PickpocketSexAttempt = False		
		Libs.Notify("While the guard is busy with you, you slip your fingers into this discarded clothing...", messagebox = true)
		Int x = Utility.RandomInt()
		If x < Escape_PickpocketChanceSex
			Libs.Notify("Success! Your fingers manage to get hold of a small item and pull it out of the guard's pocket without him noticing!", messagebox = true)
			Utility.Wait(0.1)
			Libs.Notify("You walk away from the guard and look at the object. It's a key, but to your great disappointment it does not seem to be able to open either any cell door or your restraints.", messagebox = true)
			Utility.Wait(0.1)
			Libs.Notify("The key is crude and quite bulky. It looks like the guard's private house key and seems to fit generic door locks.", messagebox = true)
			Libs.PlayerRef.AddItem(dcur_prison_esc_guardkey)
		Else
			Libs.Notify("On no! The guard has caught you with your fingers in his pocket. For your violation of prison rules, your sentence has been extended by " + Escape_AdditionalDaysOnFail + " days.", messagebox = true)
			DaysSentence += Escape_AdditionalDaysOnFail	
			MinorTransgressions += 1
		EndIf		
		return
	EndIf
	If dcur_prison_questcontrol.GetValueInt() == 30
		if InspectionStage == 1
			InspectionStage = 2
			RegisterForModEvent("AnimationEnd", "OnSexEnd")	
			dcLibs.SexWithPlayer(inspector, consensual = false, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "anal", playerisvictim = true)	
			return
		Elseif InspectionStage == 2		
			InspectionStage = 3
			RegisterForModEvent("AnimationEnd", "OnSexEnd")	
			dcLibs.SexWithPlayer(inspector, consensual = false, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "vaginal", playerisvictim = true)	
			return
		Elseif InspectionStage == 3
			SetObjectiveCompleted(30)
			dcur_prison_questcontrol.SetValueInt(40)
			SetObjectiveDisplayed(40)
		EndIf
	EndIf
	If dcur_prison_questcontrol.GetValueInt() == 32
		SetObjectiveCompleted(32)
		dcur_prison_questcontrol.SetValueInt(35)
		SetObjectiveDisplayed(35)
	EndIf
	If dcur_prison_questcontrol.GetValueInt() == 70
		Lock_PrisonerChains()
		minedoor.GetReference().Lock(False)		
		SetObjectiveCompleted(70)
		dcur_prison_questcontrol.SetValueInt(80)
		SetObjectiveDisplayed(80)
	EndIf
	If dcur_prison_questcontrol.GetValueInt() == 110		
		SetObjectiveCompleted(110)
		dcur_prison_questcontrol.SetValueInt(120)
		SetObjectiveDisplayed(120)
	EndIf
	If dcur_prison_questcontrol.GetValueInt() == 140
		SetObjectiveCompleted(140)
		dcur_prison_questcontrol.SetValueInt(150)
		SetObjectiveDisplayed(150)
	EndIf
	If dcur_prison_questcontrol.GetValueInt() == 210
		SetObjectiveCompleted(210)
		dcur_prison_questcontrol.SetValueInt(220)
		SetObjectiveDisplayed(220)
		Libs.PlayerRef.RemoveItem(WineBottle01BEmpty)
		Libs.PlayerRef.AddItem(FoodWineAltoA)
		Lock_RubberDress()
	EndIf
	If dcur_prison_questcontrol.GetValueInt() == 240	
		SetObjectiveCompleted(240)
		dcur_prison_questcontrol.SetValueInt(250)
		SetObjectiveDisplayed(250)
		Lock_Gag()
	EndIf	
	If dcur_prison_questcontrol.GetValueInt() == 530	
		SetObjectiveCompleted(530)
		dcur_prison_questcontrol.SetValueInt(532)
		SetObjectiveDisplayed(532)			
	ElseIf dcur_prison_questcontrol.GetValueInt() == 532
		SetObjectiveCompleted(532)
		dcur_prison_questcontrol.SetValueInt(534)
		SetObjectiveDisplayed(534)	
	Elseif dcur_prison_questcontrol.GetValueInt() == 534
		SetObjectiveCompleted(534)
		dcur_prison_questcontrol.SetValueInt(550)
		SetObjectiveDisplayed(550)
	EndIf	
	UnRegisterForModEvent("AnimationEnd")	
EndEvent

Function SpawnFood()
	; yeah, I know it's called Drink Marker, but there is no water in silly vanilla Skyrin, so we use the water bowl to drink...
	DrinkMarker.GetReference().PlaceAtMe(FoodBread01B)
	FoodMarker.GetReference().PlaceAtMe(FoodTomatoSoup)
EndFunction

Function EnterCellEvent()
	If dcur_prison_questcontrol.GetValueInt() == 60
		PlayerCellDoor.GetReference().SetOpen(False)
		PlayerCellDoor.GetReference().Lock(True)
		PlayerCellDoor.GetReference().SetLockLevel(255)		
		SpawnFood()
		; she can nap now
		Libs.PlayerRef.RemoveItem(dcur_nosleepitem, libs.PlayerRef.GetItemCount(dcur_nosleepitem), true)
		; send guards to "sleep"
		Foreman.GetReference().MoveTo(ForemanMarker.GetReference())
		Supervisor.GetReference().MoveTo(SupervisorMarker.GetReference())
		Utility.Wait(1)
		Supervisor.GetReference().Disable()
		Foreman.GetReference().Disable()	
		DisplayGirl.GetReference().Disable()
		Warden.GetReference().MoveTo(WardenMarkerNight.GetReference())
		; we need to prevent this from firing again in case the player gets sleep interrupted
		dcur_prison_questcontrol.SetValueInt(61)
	EndIf
EndFunction

Float Function CalcHoursToWork()
	float currentgamehour = GameHour.GetValue()
	float HoursCanSleep = 0
	If currentgamehour < 8.0
		HoursCanSleep = (8.0 - currentgamehour)
	Else
		; it's past 8 already, so she can sleep the rest of the day plus 8 hours
		HoursCanSleep = 8.0 + (24.0 - currentgamehour)
	EndIf
	Return HoursCanSleep
EndFunction

Function UseWaterBowl()
EndFunction

Event OnSleepStart(float afSleepStartTime, float afDesiredSleepEndTime)		
	float naplength = afDesiredSleepEndTime - afSleepStartTime
	float naplengthhours = (naplength * 24.0)			
	float HoursCanSleep = CalcHoursToWork()	
	Actor Rapist = RapistGuard.GetActorReference()	
	Actor Rapist2 = GuardRapist2.GetActorReference()	
	; let's see if she's getting raped at night
	Bool isGettingRaped = (dcur_prison_nosex.GetValueInt() != 1) && (naplengthhours > 6) && ((Utility.RandomInt() < RapeAtNightChance) || DaysInPrison == 0) && !HasBeenRaped && !libs.PlayerRef.IsEquipped(dcur_prison_belt_Rendered)	; prevent two rape scenes in the same night and when wearing a belt
	ConsentedToRape = False
	; The character will be untied, so that's a rare chance to play threesome animations in DCL. Let's use it!
	Bool Threesome = (Utility.RandomInt() < 50)
	If (naplengthhours > HoursCanSleep) || (naplengthhours > 23.0)	|| (libs.PlayerRef.IsEquipped(dcur_prison_belt_Rendered) && naplengthhours > 3.0)
		; she wants to sleep too long or is belted, so let's kick her butt out of the bed!
		Float WakeupIn
		if isGettingRaped
			; we still need to roll the rape chance, otherwise asking for too much sleep would bypass it 100% of the time.
			WakeupIn = Utility.RandomFloat(1, (naplengthhours - 3))								
		Elseif libs.PlayerRef.IsEquipped(dcur_prison_belt_Rendered)
			; can't sleep long with vibrators inside of you!
			WakeupIn = Utility.RandomFloat(1, 3)
		Else
			WakeupIn = HoursCanSleep
		EndIf				
		Utility.WaitMenuMode(WakeupIn)		
		If isGettingRaped
			If dcur_prison_wardensex.GetValueInt() == 1 || Utility.RandomInt() < 33
				; we're using the warden for the cell rape scene
				Rapist = Warden.GetActorReference()
				Threesome = false
			EndIf
			Rapist.MoveTo(PlayerCellMarker.GetReference())			
			Rapist.EvaluatePackage()
			If Threesome
				Rapist2.MoveTo(PlayerCellMarker.GetReference())			
				Rapist2.EvaluatePackage()
			EndIf
		EndIf
		Game.DisablePlayerControls(ablooking = True, abCamSwitch = True)
		Game.ForceFirstPerson()
		Actor PlayerRef = Game.GetPlayer()
		Game.GetPlayer().MoveTo(PlayerRef)		
		Utility.Wait(1)
		Game.ForceThirdPerson()
		Game.EnablePlayerControls()			
		Utility.Wait(1)
		If isGettingRaped
			If Rapist == Warden.GetActorReference()
				; warden sex
				libs.notify("The Warden stands next to you, smiling at you. In her hand, she is holding the key for your restraints. It is time to serve your master, and you know better than to say no...", messagebox = true)
				ConsentedToRape = True
			Else
				int m = 0
				If !Threesome
					m = dcur_prison_guardrapeMSG.Show()
				Else
					m = dcur_prison_guardrapeThreeMSG.Show()
				EndIf
				if m == 0 			
					ConsentedToRape = True
					If Threesome
						libs.notify("It's not rape when you said yes! To the delight of the guards, you lay down and open your legs for them, inviting them with a seductive smile. This prison might be a harsh place, but at least your lady parts can't complain about lack of attention!", messagebox = true)
					Else
						libs.notify("It's not rape when you said yes! To the delight of the guard, you lay down and open your legs for him, inviting him with a seductive smile. This prison might be a harsh place, but at least your lady parts can't complain about lack of attention!", messagebox = true)
					Endif
				Elseif m == 1
					HasResistedSex += 1
					If Utility.RandomInt() < 65
						libs.notify("You struggle as hard as you can and throw your weight around and at your attacker. Eventually they seem to realize that there is easier prey available than you and leave...", messagebox = true)
						Utility.Wait(0.1)
						HasBeenRaped = True
						EndCellAttack()
						return
					EndIf
					If Threesome
						libs.notify("You try to fend the guard off, as he is forcing himself on you, but it is a futile attempt. You close your eyes as you are getting pushed down and feel a hard cock entering you...", messagebox = true)
					Else
						libs.notify("You try to fend the guards off, as they are forcing themselves on you, but it is a futile attempt. You close your eyes as you are getting pushed down and feel two hard cocks entering you...", messagebox = true)			
					Endif				
				else 
					libs.notify("You realize how futile resistance would be, and choose to endure whatever is going to happen to you. Offering no restistance, you are getting pushed to the ground, at least somewhat gently so. You close your eyes as you feel a hard cock entering you...", messagebox = true)			
				EndIf
			EndIf
			Utility.Wait(0.1)
			If Threesome
				CellAttack(Rapist, Rapist2, ConsentedToRape)
			Else
				CellAttack(Rapist, None, ConsentedToRape)
			EndIf			
		Elseif libs.PlayerRef.IsEquipped(dcur_prison_belt_Rendered) && (HoursCanSleep > 4)
			Libs.Notify("It's impossible to find decent sleep with these vibrators inside of you!", messagebox = true)	
			Utility.Wait(0.1)
			libs.VibrateEffect(libs.PlayerRef, 2, 20, teaseOnly = true)
		Else
			Libs.Notify("You need to report for work and cannot sleep past that time!", messagebox = true)		
		EndIf		
	ElseIf isGettingRaped
		; cell rape
		float pullouthours = 0.0		
		pullouthours = Utility.RandomFloat(1, (naplengthhours - 3))				
		Utility.WaitMenuMode(pullouthours)		
		If dcur_prison_wardensex.GetValueInt() == 1 || (Utility.RandomInt() < 33)
			; we're using the warden for cell rape scenes
			Rapist = Warden.GetActorReference()
			Threesome = false
		EndIf
		Rapist.MoveTo(PlayerCellMarker.GetReference())			
		Rapist.EvaluatePackage()
		If Threesome
			Rapist2.MoveTo(PlayerCellMarker.GetReference())			
			Rapist2.EvaluatePackage()
		EndIf
		Game.DisablePlayerControls(ablooking = True, abCamSwitch = True)
		Game.ForceFirstPerson()
		Actor PlayerRef = Game.GetPlayer()
		Game.GetPlayer().MoveTo(PlayerRef)		
		Utility.Wait(1)
		Game.ForceThirdPerson()
		Game.EnablePlayerControls()		
		Utility.Wait(1)
		If Rapist == Warden.GetActorReference()
			; warden sex
			libs.notify("The Warden stands next to you, smiling at you. In her hand, she is holding the key for your restraints. It is time to serve your master, and you know better than to say no...", messagebox = true)
			ConsentedToRape = True
		Else
			int m = 0
			If !Threesome
				m = dcur_prison_guardrapeMSG.Show()
			Else
				m = dcur_prison_guardrapeThreeMSG.Show()
			EndIf
			if m == 0 			
				ConsentedToRape = True
				If Threesome
					libs.notify("It's not rape when you said yes! To the delight of the guards, you lay down and open your legs for them, inviting them with a seductive smile. This prison might be a harsh place, but at least your lady parts can't complain about lack of attention!", messagebox = true)
				Else
					libs.notify("It's not rape when you said yes! To the delight of the guard, you lay down and open your legs for him, inviting him with a seductive smile. This prison might be a harsh place, but at least your lady parts can't complain about lack of attention!", messagebox = true)
				Endif
			Elseif m == 1
				HasResistedSex += 1
				If Utility.RandomInt() < 65
					libs.notify("You struggle as hard as you can and throw your weight around and at your attacker. Eventually they seem to realize that there is easier prey available than you and leave...", messagebox = true)
					Utility.Wait(0.1)
					HasBeenRaped = True
					EndCellAttack()
					return
				EndIf
				If Threesome
					libs.notify("You try to fend the guards off, as they are forcing themselves on you, but it is a futile attempt. You close your eyes as you are getting pushed down and feel two hard cocks entering you...", messagebox = true)			
				Else
					libs.notify("You try to fend the guard off, as he is forcing himself on you, but it is a futile attempt. You close your eyes as you are getting pushed down and feel a hard cock entering you...", messagebox = true)					
				Endif				
			else 
				libs.notify("You realize how futile resistance would be, and choose to endure whatever is going to happen to you. Offering no restistance, you are getting pushed to the ground, at least somewhat gently so. You close your eyes as you feel a hard cock entering you...", messagebox = true)			
			EndIf
		EndIf
		Utility.Wait(0.1)
		If Threesome
			CellAttack(Rapist, Rapist2, ConsentedToRape)
		Else
			CellAttack(Rapist, None, ConsentedToRape)
		EndIf
	EndIf
EndEvent

Event OnSleepStop(Bool abInterrupted)
EndEvent

Bool Function CheckParole(Bool BadGirl = False)
	Int DaysRemaining = DaysSentence - DaysInPrison
	Int MinSentence
	;If MajorTransgressions > 0
	;	MinSentence = Math.Ceiling(DaysSentence / 4)
	;Else
		MinSentence = Math.Ceiling(DaysSentence / 2)
	;EndIf
	If DaysRemaining <= MinSentence && !(DaysInPrison < 2)	; can't get parole on your first day!
		; she's eligible for parole
		libs.notify("After serving a substantial part of your sentence, you are eligible for parole. The parole board is hearing your case...", messagebox = true)
		Utility.Wait(0.1)
		If (Utility.RandomInt() < ParoleChance) && !BadGirl		; no, bad girls don't get parole!
			; granted
			libs.notify("The parole board has been reviewing your case and determined that you have been punished enough and deserve another chance to become a better person. You have been granted parole and will be released from prison immediately!", messagebox = true)
			Return True
		Else
			If !BadGirl
				libs.notify("The parole board has decided the deny your request for parole. Your debt to society has not yet been paid in full, and you will have to remain in prison for now.", messagebox = true)
			Else
				libs.notify("The parole board has decided the deny your request for parole due to your poor behavior record and high likelihood to reoffend. You will need to improve and become a well-behaved prisoner before you can be considered for early release.", messagebox = true)
			EndIf
		EndIf				
	EndIf
	Return False
EndFunction

Function RandomStuff(Bool HasBeenBad)
	; Life isn't fair, particularly not prison life! So let's make random stuff happen to spice things up!	
	Int DaysRemaining = DaysSentence - DaysInPrison
	If Utility.RandomInt() < ExtendSentenceChance
		DaysSentence += 1
		DaysRemaining = DaysSentence - DaysInPrison
		Libs.Notify("The Warden thinks you are smoking hot and she can't stand the idea of not being able to stare at your curves anymore. So she falsified your records and extended your sentence by one day! Ugh!", messagebox = true)
		Utility.Wait(1)
		; we don't roll the other chances if we did this.
		return
	EndIf 	
	If DaysInPrison > 2 && DaysRemaining >= 2 && Utility.RandomInt() < AccidentalReleaseChance
		DaysRemaining = 0
		Libs.Notify("You don't know what happened, but the Warden must have seriously confused her paperwork. Your sentence is not yet over, but the Warden has ordered your release for today. Not that you would complain...", messagebox = true)
		Utility.Wait(1)
		; we don't roll the other chances if we did this.
		return
	EndIf 	
	If Utility.RandomInt() < (HasResistedSex * 10) && !libs.PlayerRef.IsEquipped(dcur_prison_belt_Rendered)
		; chance that the guards are getting mad at her for resisting all the time!
		Libs.Notify("Refusing to satisfy the guard's sexual needs has convinced them that you need to be taught to spread your legs when it is expected of you!", messagebox = true)
		Utility.Wait(0.1)		
		Libs.Notify("You shudder as the guards slide two large plugs into your pussy and rear end and set them to full strength before they seal you in a tight-fitting chastity belt. You have no idea how you're supposed to work like that...", messagebox = true)		
		Utility.Wait(0.1)
		Lock_Belt()		
		HasResistedSex = 0
		; we don't roll the other chances if we did this.
		return
	EndIf
	If DaysInPrison > 1 && !HasBeenBad && DaysRemaining >= 2
		If Utility.RandomInt() < ReduceSentenceChance
			; she was nice, so she gets a reduced sentence					
			DaysSentence -= 1
			DaysRemaining = DaysSentence - DaysInPrison
			Libs.Notify("You have been a model prisoner the previous day, so the Warden decided to reduce your sentence by one day!", messagebox = true)
			Utility.Wait(1)
		EndIf
	EndIf			
	If DaysInPrison > 1 && !HasBeenBad && DaysRemaining >= 2
		If OfferedSex > 2 && Utility.RandomInt() < ReduceSentenceChance
			; she offered herselves to guards.
			DaysSentence -= 1
			DaysRemaining = DaysSentence - DaysInPrison
			Libs.Notify("Providing the guards with sexual favors has paid off. Your 'good behavior' has earned you a reduced sentence!", messagebox = true)
			Utility.Wait(1)
		EndIf
	EndIf	
	If DaysInPrison > 1 && DaysRemaining >= 2
		If Utility.RandomInt() < RandomEscapeItemChance
			; we're nice and prioritize the most useful items.
			Form FoundItem = None			
			If !FoundItem && !Escape_HasKnifeInstalled && Libs.PlayerRef.GetItemCount(dcur_prison_esc_knife) < 1
				Libs.PlayerRef.AddItem(dcur_prison_esc_knife, 1, True)
				FoundItem = dcur_prison_esc_knife
			EndIf
			If !FoundItem && Libs.PlayerRef.GetItemCount(dcur_prison_esc_rope) < 1
				Libs.PlayerRef.AddItem(dcur_prison_esc_rope, 1, True)
				FoundItem = dcur_prison_esc_rope
			EndIf
			If !FoundItem && Libs.PlayerRef.GetItemCount(dcur_prison_esc_lockpick) < 1
				Libs.PlayerRef.AddItem(dcur_prison_esc_lockpick, 1, True)
				FoundItem = dcur_prison_esc_lockpick
			EndIf
			If !FoundItem && Libs.PlayerRef.GetItemCount(dcur_prison_esc_crowbar) < 1
				Libs.PlayerRef.AddItem(dcur_prison_esc_crowbar, 1, True)
				FoundItem = dcur_prison_esc_crowbar
			EndIf
			If !FoundItem && Libs.PlayerRef.GetItemCount(dcur_prison_esc_nails) < 1 && Libs.PlayerRef.GetItemCount(dcur_prison_esc_lockpick) < 1
				Libs.PlayerRef.AddItem(dcur_prison_esc_nails, 1, True)
				FoundItem = dcur_prison_esc_nails
			EndIf
			If !FoundItem && !Escape_HasKnifeInstalled && Libs.PlayerRef.GetItemCount(dcur_prison_esc_guardkey) < 1 && Libs.PlayerRef.GetItemCount(dcur_prison_esc_knife) < 1
				Libs.PlayerRef.AddItem(dcur_prison_esc_guardkey, 1, True)
				FoundItem = dcur_prison_esc_guardkey
			EndIf
			If FoundItem
				Libs.Notify("You have no idea how the " + FoundItem.GetName() + " ended up on the floor, but you are quick to pick it up and hide it. It might be useful later!", messagebox = true)
			EndIf
		Endif
	EndIf	
EndFunction

Function GoRelease()
	SetObjectiveCompleted(60)
	dcur_prison_questcontrol.SetValueInt(1000)
	SetObjectiveDisplayed(1000)				
	ReceptionGuard.GetReference().Enable()		
	PlayerCellDoor.GetReference().Lock(False)
	PlayerCellDoor.GetReference().SetOpen(True)
	EntranceDoor.GetReference().Lock(False)
	EntranceDoor.GetReference().SetOpen(True)
EndFunction

Function EscapeDetected()
	dcur_prison_esc_UnconcealableFail.SetValueInt(0)
	EscapeFail()
EndFunction

Event OnUpdate()	
	RegisterForSingleUpdate(15)	
	; check if she cheated by COCing out - which is a bad idea because it leaves the quest in a broken state. If people -really- want to chicken out, they can terminate the quest cleanly using the console, too.
	If libs.PlayerRef.GetParentCell() != dcurprison && libs.PlayerRef.GetParentCell() != dcurprisonbasement && libs.PlayerRef.GetParentCell() != dcurprisonmine
		; port her back to her cell and add time for the "escape attempt"
		RemoveAllDevices()
		Utility.Wait(2)
		EscapeFail()
	EndIf
	If dcur_prison_questcontrol.GetValueInt() == 500
		If (((Utility.GetCurrentGameTime() - TimeLockedinPillory) * 24.0) > TimeInPillory ) && !dcLibs.zadc.IsAnimating(libs.PlayerRef)
			dclibs.zadc.UnLockActor(libs.PlayerRef)
			SetObjectiveCompleted(500)
			dcur_prison_questcontrol.SetValueInt(510)
			SetObjectiveDisplayed(510)
			;Foreman.GetReference().MoveTo(ForemanMarker.GetReference())
		EndIf
	EndIf	
	If HasBreachedGuardRoom && ((Utility.GetCurrentGameTime() - GuardRoomOpenedAt) * 24.0) > 2.0
		; Guards will detect the opened guard room after two hours and the escape attempt fails.
		Libs.Notify("The guards have detected the opened door to their ready room...", messagebox = true)
		Utility.Wait(0.1)
		EscapeFail()
	EndIf
	; we have set the stage to 61 after entering the cell, to prevent the trigger from firing more than once.
	If dcur_prison_questcontrol.GetValueInt() == 61  		
		;we're in the sleeping stage
		if ((Utility.GetCurrentGameTime() - AllowedToSleepAt) * 24.0) > HoursToWork					
			; update RNG values in case the player changed the MCM
			SetAllRandomChances()
			HasBeenRaped = False
			DaysInPrison += 1
			Int DaysRemaining = DaysSentence - DaysInPrison
			; let's check if she has been a good girl yesterday:
			Bool HasBeenBad = (MinorTransgressions + MajorTransgressions) > PastTransgressions
			PastTransgressions = MinorTransgressions + MajorTransgressions
			RandomStuff(HasBeenBad)			
			OfferedSex = 0
			If DaysRemaining > 0			
				If CheckParole(HasBeenBad)
					GoRelease()
					Return
				Else
					Libs.Notify("A new day in your prison life has started! You have spent " + DaysInPrison + " days in prison, and have " + DaysRemaining + " days left to serve for your crimes.", messagebox = true)
				EndIf
				Utility.Wait(0.5)
				ResetDailyObjectives()
				If !PassedLastWorkDay && (Utility.RandomInt() < NoWorkTodayChance) && (DaysInPrison > 1)  ; she always has to work on the first day!
					; it's her lucky day. She can skip work! Read - sleep through the day if she wants to. This is to control tedium from very long prison sentences and hopefully prevent users getting angry at me... :D 
					HoursToWork = CalcHoursToWork()
					libs.notify("It's your lucky day. You will have no work assignments today and can spend the entire day relaxing in your cell and playing with your restraints! Food has been served to your cell.", messagebox = true)
					SpawnFood()
					Utility.Wait(1)
					;Libs.Notify("Hours until Work: " + HoursToWork)
					AllowedToSleepAt = Utility.GetCurrentGameTime()
					; reset escape items, in case a previous attempt failed.
					ResetEscape()
					PassedLastWorkDay = True
				Else
					PassedLastWorkDay = False
					Supervisor.GetReference().Enable()
					Foreman.GetReference().Enable()	
					Supervisor.GetReference().MoveTo(SupervisorMarker.GetReference())
					Foreman.GetReference().MoveTo(ForemanMarker.GetReference())				
					Warden.GetReference().MoveTo(WardenMarkerDay.GetReference())					
					DisplayGirl.GetReference().Enable()
					libs.BoundCombat.EvaluateAA(DisplayGirl.GetActorReference())
					Libs.Notify("It's time to work! Report to the Foreman!")
					SetObjectiveCompleted(60)
					dcur_prison_questcontrol.SetValueInt(70)
					SetObjectiveDisplayed(70)
					OrePickupChest.GetReference().RemoveAllItems(None)
					OreDropOffChest.GetReference().RemoveAllItems(None)			
					PlayerCellDoor.GetReference().Lock(False)
					PlayerCellDoor.GetReference().SetOpen(True)
					Libs.PlayerRef.EquipItem(dcur_nosleepitem, 1, true)
					; reset escape items, in case a previous attempt failed. So she can steal them again etc.
					ResetEscape()					
				EndIf
			Else
				Supervisor.GetReference().Enable()
				Foreman.GetReference().Enable()	
				Supervisor.GetReference().MoveTo(SupervisorMarker.GetReference())
				Foreman.GetReference().MoveTo(ForemanMarker.GetReference())
				Warden.GetReference().MoveTo(WardenMarkerDay.GetReference())
				DisplayGirl.GetReference().Enable()						
				Libs.Notify("Today is the day! You have served your sentence in full and are due for release today! Whatever happens next is your own history to write, but at least a bit of it will not be written inside a prison cell.", messagebox = true)
				Utility.Wait(0.5)				
				GoRelease()
			EndIf
		EndIf
	EndIf
EndEvent

Function RemoveBodyDevices()
	If libs.PlayerRef.IsEquipped(dcur_prison_sj_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_sj_Inventory, dcur_prison_sj_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_prisonerchains_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_prisonerchains_Inventory, dcur_prison_prisonerchains_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_elbowbinder_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_elbowbinder_Inventory, dcur_prison_elbowbinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_yoke_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_yoke_Inventory, dcur_prison_yoke_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_shackles_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_shackles_Inventory, dcur_prison_shackles_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_ropebinder_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_ropebinder_Inventory, dcur_prison_ropebinder_Rendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroydevice = true)
	EndIf	
EndFunction

Function RemoveSuits()
	If libs.PlayerRef.IsEquipped(dcur_prison_rubberdress_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_rubberdress_Inventory, dcur_prison_rubberdress_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_maidsuit_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_maidsuit_Inventory, dcur_prison_maidsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_hobbledress_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_hobbledress_Inventory, dcur_prison_hobbledress_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_petsuit_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_petsuit_Inventory, dcur_prison_petsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_ropeharness_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_ropeharness_Inventory, dcur_prison_ropeharness_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_catsuit_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_catsuit_Inventory, dcur_prison_catsuit_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_elegantdress_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_elegantdress_Inventory, dcur_prison_elegantdress_Rendered, libs.zad_DeviousSuit, skipmutex = true, destroydevice = true)
	EndIf	
EndFunction

Function RemoveChastity()
	If libs.PlayerRef.IsEquipped(dcur_prison_belt_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_belt_Inventory, dcur_prison_belt_Rendered, libs.zad_DeviousBelt, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_prison_bra_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_bra_Inventory, dcur_prison_bra_Rendered, libs.zad_DeviousBra, skipmutex = true, destroydevice = true)
		Utility.Wait(1)
	EndIf		
	If libs.PlayerRef.IsEquipped(dcur_df_buttplug_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_df_buttplug_Inventory, dcur_df_buttplug_Rendered, libs.zad_DeviousPlugAnal, skipmutex = true, destroydevice = true)
	EndIf	
	If libs.PlayerRef.IsEquipped(dcur_df_vibrator_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_df_vibrator_Inventory, dcur_df_vibrator_Rendered, libs.zad_DeviousPlugVaginal, skipmutex = true, destroydevice = true)
		Utility.Wait(1.5)
	EndIf		
EndFunction

Function RemoveGag()
	If libs.PlayerRef.IsEquipped(dcur_prison_BallGag_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_BallGag_Inventory, dcur_prison_BallGag_Rendered, libs.zad_DeviousGag, skipmutex = true, destroydevice = true)
		Utility.Wait(1)
	EndIf
EndFunction

Function RemoveBoots()
	If libs.PlayerRef.IsEquipped(dcur_Prison_boots_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_Prison_boots_Inventory, dcur_Prison_boots_Rendered, libs.zad_DeviousBoots, skipmutex = true, destroydevice = true)
		Utility.Wait(1)
	EndIf
EndFunction

Function RemoveBlindfold()
	If libs.PlayerRef.IsEquipped(dcur_prison_blindfold_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_blindfold_Inventory, dcur_prison_blindfold_Rendered, libs.zad_DeviousBlindfold, skipmutex = true, destroydevice = true)
		Utility.Wait(1)
	EndIf
EndFunction

Function Remove_LegIrons()
	If libs.PlayerRef.IsEquipped(dcur_prison_legirons_Rendered)
		libs.RemoveDevice(libs.PlayerRef, dcur_prison_legirons_Inventory, dcur_prison_legirons_Rendered, libs.zad_DeviousLegCuffs, skipmutex = true, destroydevice = true)
		Utility.Wait(1)
	EndIf
EndFunction

Function RemoveAllDevices()
	RemoveBodyDevices()	
	RemoveGag()
	RemoveBoots()	
	RemoveChastity()	
	RemoveSuits()	
	RemoveBlindfold()
EndFunction

Function StartMining()
	SetObjectiveCompleted(80)
	dcur_prison_questcontrol.SetValueInt(90)
	SetObjectiveDisplayed(90)
	OreCarried = 0
	OrePickupChest.GetReference().AddItem(dcur_prison_orechunk, 1, absilent = true)
	dcur_prison_mine_dumpedore.Revert()
EndFunction

Function ActivateOreChest(Bool ItemAdded = False)	
	If ItemAdded
		If Libs.PlayerRef.IsEquipped(dcur_prison_belt_Rendered) && Utility.RandomInt() < 33
			libs.Notify("The moment you try to put the ore chunk into the chest, the vibrators inside of you send waves of pleasure through your body, making you lose focus. You drop the ore, and lose track of where it fell...", messagebox = true)
			Utility.Wait(0.1)
			libs.VibrateEffect(libs.PlayerRef, 2, 20, teaseOnly = true)
		Else
			OreCarried += 1
		EndIf
		If OreCarried < OreToCarry
			libs.Notify("You need to carry another ore chunk!")
			OrePickupChest.GetReference().AddItem(dcur_prison_orechunk, 1, absilent = true)
			OreDropOffChest.GetReference().RemoveItem(dcur_prison_orechunk, 1, absilent = true)
		EndIf
	EndIf	
	If OreCarried >= OreToCarry && dcur_prison_questcontrol.GetValueInt() == 90
		SetObjectiveCompleted(90)
		dcur_prison_questcontrol.SetValueInt(100)
		SetObjectiveDisplayed(100)			
	EndIf
EndFunction

Function ActivateOrePickupChest()
	; nothing to do right now	
EndFunction

Function DoneMining()
	GagMoanPlayer()
	OrePickupChest.GetReference().RemoveAllItems(None)
	OreDropOffChest.GetReference().RemoveAllItems(None)			
	minedoor.GetReference().Lock(True)			
	minedoor.GetReference().SetLockLevel(255)			
EndFunction

Function ForemanReward(Actor who)
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	dcLibs.SexWithPlayer(who, consensual = false, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "anal", playerisvictim = true)		
EndFunction

Function ForemanReward2(Actor who)
	RemoveSuits()
	RemoveBodyDevices()
	GuardRoomDoor.GetReference().SetOpen(False)
	GuardRoomDoor.GetReference().Lock(True)
	GuardRoomDoor.GetReference().SetLockLevel(255)
	PlayerCellDoor.GetReference().Lock(True)
	PlayerCellDoor.GetReference().SetOpen(False)
	PlayerCellDoor.GetReference().SetLockLevel(255)
	UnoccupiedCellDoor.GetReference().Lock(True)
	UnoccupiedCellDoor.GetReference().SetOpen(False)
	UnoccupiedCellDoor.GetReference().SetLockLevel(255)
	Utility.Wait(2)
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	dcLibs.SexWithPlayer(who, consensual = false, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "vaginal", playerisvictim = true)	
EndFunction

Function ForemanSS160ns(Actor who)
	RemoveSuits()
	RemoveBodyDevices()
	GuardRoomDoor.GetReference().SetOpen(False)
	GuardRoomDoor.GetReference().Lock(True)
	GuardRoomDoor.GetReference().SetLockLevel(255)
	PlayerCellDoor.GetReference().Lock(True)
	PlayerCellDoor.GetReference().SetOpen(False)
	PlayerCellDoor.GetReference().SetLockLevel(255)
	UnoccupiedCellDoor.GetReference().Lock(True)
	UnoccupiedCellDoor.GetReference().SetOpen(False)
	UnoccupiedCellDoor.GetReference().SetLockLevel(255)
	Utility.Wait(2)
	GoToWareHouse()
EndFunction

Function StartGarbageCollection()
	GuardRoomDoor.GetReference().Lock(False)
	GuardRoomDoor.GetReference().SetOpen(True)
	PlayerCellDoor.GetReference().Lock(False)
	PlayerCellDoor.GetReference().SetOpen(True)
	UnoccupiedCellDoor.GetReference().Lock(False)
	UnoccupiedCellDoor.GetReference().SetOpen(True)
	GarbageCleaned = 0
	Lock_MaidSuit()
	GarbageOnActivate(pile = none)
	SetObjectiveCompleted(120)
	dcur_prison_questcontrol.SetValueInt(130)
	SetObjectiveDisplayed(130)
EndFunction

Function StartGarbageCollectionNS()
	GuardRoomDoor.GetReference().Lock(False)
	GuardRoomDoor.GetReference().SetOpen(True)
	PlayerCellDoor.GetReference().Lock(False)
	PlayerCellDoor.GetReference().SetOpen(True)
	UnoccupiedCellDoor.GetReference().Lock(False)
	UnoccupiedCellDoor.GetReference().SetOpen(True)
	GarbageCleaned = 0
	Lock_MaidSuit()
	GarbageOnActivate(pile = none)
	SetObjectiveCompleted(110)
	dcur_prison_questcontrol.SetValueInt(130)
	SetObjectiveDisplayed(130)
EndFunction

Function GarbageReset()
	; yes, I know that that's a cell scan and people think they are baaaad. This cell is super small though, and barely features any activators, so this method means I can just dump garbage in there without having to think about how to manipulate it. If this code crashes anyone's machine, they got way bigger issues that this cell scan.
	Cell c = dcurprison
	Int iIndex = c.GetNumRefs(24) ; kActivator
	While iIndex
		iIndex -= 1
		ObjectReference o = c.GetNthRef(iIndex, 24)
		If o.GetBaseObject() == dcur_prison_garbage
			o.Disable()
		EndIf
	EndWhile
EndFunction

Function GarbageOnActivate(ObjectReference pile = none)
	if pile
		If Libs.PlayerRef.IsEquipped(dcur_prison_belt_Rendered) && Utility.RandomInt() < 33
			libs.Notify("The moment you try to clean the dirt pile, the vibrators inside of you send waves of pleasure through your body, making you lose focus. You accidentally swipe the dust somewhere else, instead of cleaning it...", messagebox = true)
			Utility.Wait(0.1)
			libs.VibrateEffect(libs.PlayerRef, 2, 20, teaseOnly = true)
		Else
			GarbageCleaned += 1
		EndIf
		pile.Disable()
	Else
		libs.Notify("There are garbage piles all over the main floor. Look for them and clean them up, until you got all of them!", messagebox = true)
	EndIf
	If GarbageCleaned >= GarbageToClean
		libs.Notify("That seems to be all! You cannot see any more dirt piles to clean up.", messagebox = true)
		Utility.Wait(0.1)
		SetObjectiveCompleted(130)
		dcur_prison_questcontrol.SetValueInt(140)
		SetObjectiveDisplayed(140)
		return
	Else
		libs.Notify("Another dirt pile has appeared!")
	EndIf	
	; pick a new one
	dcur_temporaryuselist.Revert()	
	Cell c = dcurprison	
	Int iIndex = c.GetNumRefs(24) ; kActivator	
	While iIndex
		iIndex -= 1
		ObjectReference o = c.GetNthRef(iIndex, 24)
		If o.GetBaseObject() == dcur_prison_garbage
			dcur_temporaryuselist.AddForm(o)
		EndIf
	EndWhile
	Int s = dcur_temporaryuselist.GetSize() - 1 	
	ObjectReference p = dcur_temporaryuselist.GetAt(Utility.RandomInt(0,s)) As ObjectReference
	p.Enable()
EndFunction

Function GagMoanPlayer()
	libs.Moan(libs.PlayerRef)
EndFunction

Function GoToWareHouse()
	Lock_HobbleSkirt()
	Lock_Elbowbinder()
	ShipmentChest.GetReference().RemoveAllItems(None)
	TrapDoor.GetReference().Lock(False)	
	SetObjectiveCompleted(150)
	dcur_prison_questcontrol.SetValueInt(160)
	SetObjectiveDisplayed(160)
EndFunction

Function WareHouseFillContainer()
	; pick a new container and put a random warehouse item in there.
	dcur_temporaryuselist.Revert()	
	Cell c = dcurprisonbasement	
	Int iIndex = c.GetNumRefs(28) ; Container
	While iIndex
		iIndex -= 1
		ObjectReference o = c.GetNthRef(iIndex, 28)
		If dcur_prison_containers.HasForm(o.GetBaseObject())
			dcur_temporaryuselist.AddForm(o)
		EndIf
	EndWhile
	Int s = dcur_temporaryuselist.GetSize() - 1 	
	ObjectReference p = dcur_temporaryuselist.GetAt(Utility.RandomInt(0,s)) As ObjectReference
	Int i = dcur_prison_wares.GetSize() - 1
	MiscObject m = dcur_prison_wares.GetAt(Utility.RandomInt(0, i)) As MiscObject
	p.AddItem(m, 1, absilent = true)
	libs.Notify("You need to find a " + m.GetName())
EndFunction

Function StartWarehouse()
	RemoveBodyDevices()
	dcur_prison_ware_dumpedwares.Revert()
	WaresCarried = 0
	SetObjectiveCompleted(160)
	dcur_prison_questcontrol.SetValueInt(170)
	SetObjectiveDisplayed(170)
	WareHouseFillContainer()
EndFunction

Function ActivateShipmentChest(Bool ItemAdded = False)	
	If ItemAdded
		If Libs.PlayerRef.IsEquipped(dcur_prison_belt_Rendered) && Utility.RandomInt() < 33
			libs.Notify("The moment you try to put the item into the chest, the vibrators inside of you send waves of pleasure through your body, making you lose focus. You drop the item, and lose track of where it fell...", messagebox = true)
			Utility.Wait(0.1)
			libs.VibrateEffect(libs.PlayerRef, 2, 20, teaseOnly = true)
		Else
			WaresCarried += 1
		EndIf
		If WaresCarried < WaresToCarry
			WareHouseFillContainer()
		EndIf
	EndIf	
	If WaresCarried >= WaresToCarry && dcur_prison_questcontrol.GetValueInt() == 170
		SetObjectiveCompleted(170)
		dcur_prison_questcontrol.SetValueInt(180)
		SetObjectiveDisplayed(180)			
	EndIf
EndFunction

Function StartWine()
	GuardRoomDoor.GetReference().Lock(False)
	GuardRoomDoor.GetReference().SetOpen(True)
	TrapDoor.GetReference().Lock(False)	
	RemoveBodyDevices()
	RemoveSuits()
	Utility.Wait(2)
	Lock_Yoke()
	Lock_RubberDress()
	KitchenCupboard.GetReference().RemoveAllItems(None)
	KitchenCupboard.GetReference().AddItem(WineBottle01BEmpty, 1, False)
	SetObjectiveCompleted(190)
	dcur_prison_questcontrol.SetValueInt(200)
	SetObjectiveDisplayed(200)			
EndFunction

Function QuartermasterReward(Actor who)
	RemoveSuits()
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	dcLibs.SexWithPlayer(who, consensual = false, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "vaginal", playerisvictim = true)	
EndFunction

Function Quartermaster220NS(Actor who)
	SetObjectiveCompleted(210)
	dcur_prison_questcontrol.SetValueInt(220)
	SetObjectiveDisplayed(220)
	Libs.PlayerRef.RemoveItem(WineBottle01BEmpty)
	Libs.PlayerRef.AddItem(FoodWineAltoA)
EndFunction

Function GetCheese()
	KitchenCupboard.GetReference().AddItem(FoodCheeseWedge02, 1, False)
	SetObjectiveCompleted(220)
	dcur_prison_questcontrol.SetValueInt(230)
	SetObjectiveDisplayed(230)			
EndFunction

Function SupervisorReward(Actor who)
	RemoveGag()
	Libs.PlayerRef.RemoveItem(FoodWineAltoA)
	Libs.PlayerRef.RemoveItem(FoodCheeseWedge02)
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	dcLibs.SexWithPlayer(who, consensual = true, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "Blowjob", playerisvictim = true)	
EndFunction

Function Supervisor250ns()
	Libs.PlayerRef.RemoveItem(FoodWineAltoA)
	Libs.PlayerRef.RemoveItem(FoodCheeseWedge02)
	SetObjectiveCompleted(240)
	dcur_prison_questcontrol.SetValueInt(250)
	SetObjectiveDisplayed(250)
EndFunction

Function StartFood()
	KitchenCupboard.GetReference().RemoveAllItems(None)
	KitchenSack.GetReference().RemoveAllItems(None)
	StockAreaBarrel1.GetReference().RemoveAllItems(None)
	StockAreaBarrel2.GetReference().RemoveAllItems(None)
	KitchenWardrobe.GetReference().RemoveAllItems(None)
	KitchenWaterBarrel.GetReference().RemoveAllItems(None)	
	EatingGirl.GetReference().Enable()
	EatingGirl2.GetReference().Enable()
	RemoveSuits()
	RemoveBodyDevices()
	SetGirlWithRope()
	Utility.Wait(2)
	; we can keep things interesting by equipping random stuff here:
	Int i = Utility.RandomInt()
	If i < 33
		Lock_HobbleSkirt()
	ElseIf i < 66	
		Lock_Belt()
	Else
		Lock_ElegantDress()
	EndIf
	Lock_PrisonerChains()
	SetObjectiveCompleted(250)
	dcur_prison_questcontrol.SetValueInt(260)
	SetObjectiveDisplayed(260)	
	SetObjectiveDisplayed(261)	
	SetObjectiveDisplayed(262)	
	SetObjectiveDisplayed(263)	
	SetObjectiveDisplayed(264)	
	SetObjectiveDisplayed(265)	
	SetObjectiveDisplayed(266)	
	KitchenCupboard.GetReference().AddItem(WoodenLadle01, 1, False)
	KitchenSack.GetReference().AddItem(FoodBread01A, 1, False)
	StockAreaBarrel1.GetReference().AddItem(FoodCabbage, 1, False)
	StockAreaBarrel2.GetReference().AddItem(FoodPotato, 1, False)
	KitchenWardrobe.GetReference().AddItem(DwarvenSpoon, 1, False)
	KitchenWaterBarrel.GetReference().AddItem(dcur_prison_water, 1, False)
EndFunction

Function DoneFood()	
	GuardRoomDoor.GetReference().SetOpen(False)
	GuardRoomDoor.GetReference().Lock(True)
	GuardRoomDoor.GetReference().SetLockLevel(255)
	TrapDoor.GetReference().Lock(True)
	TrapDoor.GetReference().SetLockLevel(255)
	EatingGirl.GetReference().Disable()
	EatingGirl2.GetReference().Disable()
	SetObjectiveCompleted(290)
EndFunction

Function StartDisplayModel()
	LapsWalked = 0
	dcur_prison_questcontrol.SetValueInt(300)
	SetObjectiveDisplayed(300)
EndFunction

Function DisplayModelSwapGear()	
	RemoveSuits()
	RemoveBodyDevices()
	RemoveChastity()
	Utility.Wait(2)	
	Bool done = False
	While !Done
		Int i = Utility.RandomInt(0, 99)
		if i < 15 && !Libs.PlayerRef.IsEquipped(dcur_prison_hobbledress_Rendered)
			Done = True
			Lock_HobbleSkirt()
			int x = Utility.RandomInt(0, 99)
			If x < 33
				Lock_PrisonerChains()
			ElseIf x < 66
				Lock_Elbowbinder()
			Else
				Lock_Yoke()
			EndIf
		Elseif i < 30 && !Libs.PlayerRef.IsEquipped(dcur_prison_elegantdress_Rendered)
			Done = True
			Lock_ElegantDress()
			int x = Utility.RandomInt(0, 99)
			If x < 33
				Lock_PrisonerChains()
			ElseIf x < 66
				Lock_Elbowbinder()
			Else
				Lock_Yoke()
			EndIf
		elseif i < 45 && !Libs.PlayerRef.IsEquipped(dcur_prison_sj_Rendered)
			Done = True
			Lock_Straitjacket()
		elseif i < 60 && !Libs.PlayerRef.IsEquipped(dcur_prison_catsuit_Rendered)
			Done = True
			RemoveBoots()
			Utility.Wait(1)
			Lock_Catsuit()
			Utility.Wait(1)
			Lock_Petsuit()
		elseif i < 75 && !Libs.PlayerRef.IsEquipped(dcur_prison_ropebinder_Rendered)
			Done = True
			Lock_RopeBinder()
			Lock_RopeHarness()
		elseif !Libs.PlayerRef.IsEquipped(dcur_prison_belt_Rendered)
			Done = True
			Lock_Belt()
			int x = Utility.RandomInt(0, 99)
			If x < 33
				Lock_PrisonerChains()
			ElseIf x < 66
				Lock_Elbowbinder()
			Else
				Lock_Yoke()
			EndIf
		EndIf
	EndWhile
EndFunction

Function DisplayModelNextStage()
	If IsObjectiveDisplayed(300)		
		LapsWalked += 1
		; supervisor		
		If LapsWalked >= LapsToWalk
			SetObjectiveCompleted(300)
			SetObjectiveCompleted(310)
			dcur_prison_questcontrol.SetValueInt(320)
			SetObjectiveDisplayed(320)					
		else
			DisplayModelSwapGear()				
			SetObjectiveDisplayed(300, false)
			dcur_prison_questcontrol.SetValueInt(310)
			dcur_prison_questcontrol.SetValueInt(310)
			SetObjectiveDisplayed(310)		
			return
		EndIf
	ElseIf IsObjectiveDisplayed(310)		
		; foreman				
		SetObjectiveDisplayed(310, false)			
		dcur_prison_questcontrol.SetValueInt(300)
		SetObjectiveDisplayed(300)				
	EndIf	
EndFunction

Function DayDone()
	RemoveBodyDevices()
	RemoveSuits()
	RemoveChastity()	
	Utility.Wait(2)
	Lock_Straitjacket()
	HoursToWork = CalcHoursToWork()
	;pqs.Libs.Notify("Hours until Work: " + pqs.HoursToWork)
	AllowedToSleepAt = Utility.GetCurrentGameTime()
	PlayerCellDoor.GetReference().Lock(False)
	PlayerCellDoor.GetReference().SetOpen(True)
	SetObjectiveCompleted(320)
	dcur_prison_questcontrol.SetValueInt(60)
	SetObjectiveDisplayed(60)
EndFunction

Function ReleaseGetStuff()
	RemoveAllDevices()
	PlayerChest.GetReference().Lock(False)	
	EntranceDoor.GetReference().Lock(True)
	EntranceDoor.GetReference().SetLockLevel(255)
	SetObjectiveCompleted(1000)
	dcur_prison_questcontrol.SetValueInt(1010)
	SetObjectiveDisplayed(1010)
EndFunction

Function UnlockExitDoor()
	ExitDoor.GetReference().Lock(False)	
	SetObjectiveCompleted(1020)
	dcur_prison_questcontrol.SetValueInt(1030)
	SetObjectiveDisplayed(1030)
EndFunction

Function ActivateExitDoor()
	;libs.notify("Activated")
	If dcur_prison_questcontrol.GetValueInt() == 1030
		Stop()
	EndIf
EndFunction

;; ESCAPE STUFF BELOW

Function ResetEscape(Bool Full = False)	
	GuardRoomCabinet.GetReference().RemoveAllItems(None)
	GuardBedRoomDoor.GetReference().SetOpen(False)
	GuardBedRoomDoor.GetReference().Lock(True)				
	GuardBedRoomDoor.GetReference().SetLockLevel(255)
	If libs.playerref.GetItemCount(dcur_prison_esc_knife) < 1 && !Escape_HasKnifeInstalled
		GuardRoomCabinet.GetReference().AddItem(dcur_prison_esc_knife)
	EndIf
	MineToolbox.GetReference().RemoveAllItems(None)
	ToolBarrel.GetReference().RemoveAllItems(None)
	If Full
		dcur_prison_esc_UnconcealableFail.SetValueInt(0)
		; that will also clean stages the player has completed, e.g. when she got caught, or when the quest starts.
		Escape_HasKnifeInstalled = false
		Escape_HasDisplayedGrateHint = false
		HasBreachedGuardRoom = False
		libs.playerref.RemoveItem(dcur_prison_esc_guardkey, libs.playerref.GetItemCount(dcur_prison_esc_guardkey), absilent = true)
		libs.playerref.RemoveItem(dcur_prison_esc_knife, libs.playerref.GetItemCount(dcur_prison_esc_knife), absilent = true)
		libs.playerref.RemoveItem(dcur_prison_esc_lockpick, libs.playerref.GetItemCount(dcur_prison_esc_lockpick), absilent = true)
		libs.playerref.RemoveItem(dcur_prison_esc_crowbar, libs.playerref.GetItemCount(dcur_prison_esc_crowbar), absilent = true)		
		libs.playerref.RemoveItem(dcur_prison_esc_nails, libs.playerref.GetItemCount(dcur_prison_esc_nails), absilent = true)		
		libs.playerref.RemoveItem(dcur_prison_esc_rope, libs.playerref.GetItemCount(dcur_prison_esc_rope), absilent = true)		
	EndIf
EndFunction

Function PickpocketGuard()
	Libs.Notify("For a very brief moment you slip your fingers into the guard's pocket...", messagebox = true)
	Int i = Utility.RandomInt()
	If i < Escape_PickpocketChance
		Libs.Notify("Success! Your fingers manage to get hold of a small item and pull it out of the guard's pocket without him noticing!", messagebox = true)
		Utility.Wait(0.1)
		Libs.Notify("You walk away from the guard and look at the object. It's a key, but to your great disappointment it does not seem to be able to open either any cell door or your restraints.", messagebox = true)
		Utility.Wait(0.1)
		Libs.Notify("The key is crude and quite bulky. It looks like the guard's private house key and seems to fit generic door locks.", messagebox = true)
		Libs.PlayerRef.AddItem(dcur_prison_esc_guardkey)
	Else
		Libs.Notify("On no! The guard has caught you with your fingers in his pocket. For your violation of prison rules, your sentence has been extended by " + Escape_AdditionalDaysOnFail + " days.", messagebox = true)
		DaysSentence += Escape_AdditionalDaysOnFail	
		MinorTransgressions += 1
	EndIf
EndFunction

Function PickpocketGuardSex(Actor who)
	PickpocketSexAttempt = True
	WornBodyRestraint = None
	WornSuit = None
	If Libs.PlayerRef.WornHasKeyword(libs.zad_DeviousSuit)
		WornSuit = libs.GetWornDevice(Libs.PlayerRef, libs.zad_DeviousSuit)
		RemoveSuits()
	EndIf
	If Libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		WornBodyRestraint = libs.GetWornDevice(Libs.PlayerRef,libs.zad_DeviousHeavyBondage)		
		RemoveBodyDevices()		
	EndIf	
	RemoveGag()
	RemoveBoots()
	Sex(Who)
EndFunction

Bool Function IsDDRestrained()	
	return libs.PlayerRef.WornHasKeyword(dcur_kw_prison_nopickpocket)
EndFunction

Bool Function CanUnlock()
	return (libs.PlayerRef.GetItemCount(dcur_prison_esc_guardkey) > 0)
EndFunction

Bool Function isNight()
	; the player is locked into her cell and the guards are sleeping
	return (dcur_prison_questcontrol.GetValue() == 61)
EndFunction

Function GuardBedRoomDoorOnActivate()
	If GuardBedRoomDoor.GetReference().IsLocked()
		If isNight()
			libs.Notify("This is the door to the guard ready room. The guards are sleeping and you really don't want to burst into their room, when you should be in your cell...", messagebox = true)
			return
		EndIf
		If IsDDRestrained()
			libs.Notify("Even if this door wouldn't be locked - restrained as you are, there is no way for you to open it.", messagebox = true)
			return
		EndIf
		If !CanUnlock()
			libs.Notify("This door is locked. While it seems to be fitted with a fairly crude lock that could be opened with most generic keys, you don't think you have any suitable tools to open it.", messagebox = true)
			return
		EndIf		
		if dcur_prison_bedroomdoorPickMSG.Show() == 0
			; she tries to pick the lock
			If Utility.RandomInt() < Escape_PickBedroomChance			
				libs.Notify("Success! You manage to use the guard's house key to unlock the guard ready room and nobody spotted you. As the guards should all be at their station now, you have an opportunity to search it!", messagebox = true)
				GuardBedRoomDoor.GetReference().Lock(False)
				GuardBedRoomDoor.GetReference().SetOpen(True)
				GuardRoomOpenedAt = Utility.GetCurrentGameTime()
				HasBreachedGuardRoom = True				
			else
				libs.Notify("Oh no! You manage to insert the key into the lock, but when you try to turn it, it breaks with a loud crack and jams the lock...", messagebox = true)
				If Utility.RandomInt() < Escape_PickBedroomFailSpotChance
					libs.Notify("...and when you turn around a guard stands there, staring daggers at you. He must have been alerted by the noise the breaking key made.", messagebox = true)
					EscapeFailByNotice()
				Else
					libs.Notify("When you turn around, everything is quiet. No guard shouts, no alerts. Your attempt to break into the guard room as failed, but at least you didn't get caught, and while the guards will inevitably discover the failed attempt, they will probably never find out that it was you. Phew!", messagebox = true)
					libs.playerref.RemoveItem(dcur_prison_esc_guardkey, libs.playerref.GetItemCount(dcur_prison_esc_guardkey), absilent = true)
				EndIf								
			EndIf
		Else
			libs.Notify("You decide not to try to break into the guard room and risk punishment...", messagebox = true)
		EndIf		
	Else
		; we're not locked
		If CanUnlock()
			if dcur_prison_bedroomdoorMSG.Show() == 0
				GuardBedRoomDoor.GetReference().SetOpen(False)
				GuardBedRoomDoor.GetReference().Lock(True)				
				GuardBedRoomDoor.GetReference().SetLockLevel(255)
				libs.PlayerRef.RemoveItem(dcur_prison_esc_guardkey, libs.PlayerRef.GetItemCount(dcur_prison_esc_guardkey))
				HasBreachedGuardRoom = False
			EndIf
		EndIf
	EndIf
EndFunction

Function KnifeOnActivate()
	; the knife is armor...haha! It actually cannot be USED for anything useful, but we're displaying a few hopefully useful hints...
	libs.PlayerRef.UnEquipItem(dcur_prison_esc_knife, absilent = True)
	If IsDDRestrained()
		libs.Notify("There is no way to use the knife when your hands are tied like this.", messagebox = true)
		return
	EndIf
	If libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		; all other devices used in the prison are metal...
		libs.Notify("You cannot use the knife to cut your metal restraints. There must be another use for the knife?", messagebox = true)
		return
	EndIf
	If libs.PlayerRef.WornHasKeyword(libs.zad_DeviousSuit)
		; She is wearing a suit and has her hands free, but what good would it do?
		libs.Notify("While you could use the knife to cut your leather restraints, the guards would immediately notice. There must be another use for the knife?", messagebox = true)
		return
	EndIf
	libs.Notify("You have no idea what good using the knife would do now. Maybe there is something else you can do with it?", messagebox = true)
EndFunction

Function OnPlayerCellDoorActive()		
	If !PlayerCellDoor.GetReference().IsLocked()
		return
	EndIf
	If IsDDRestrained()
		libs.Notify("Even if your cell door wouldn't be locked - restrained as you are, there is no way for you to open it or trying to pick the lock.", messagebox = true)
		return
	EndIf		
	If libs.PlayerRef.GetItemCount(dcur_prison_esc_lockpick) > 0
		If !IsNight()
			libs.Notify("While you could try to pick the cell door's lock with your makeshift tool, the guards would certainly notice. Maybe try later?", messagebox = true)
			return
		EndIf	
		If dcur_prison_esc_celllockpick.Show() == 0
			If Utility.RandomInt() < Escape_LockpickChance
				libs.Notify("Success! You insert the lockpick into your cell door's lock and probe it. With a bit of patience and a bit of luck you hear the lock click open...", messagebox = true)
				PlayerCellDoor.GetReference().Lock(False)
				PlayerCellDoor.GetReference().SetOpen(True)
				Utility.Wait(0.1)
				libs.Notify("Now confident to use your makeshift lockpick, you also quickly pick the much simpler lock of your metal boots.", messagebox = true)
				RemoveBoots()
			Else
				libs.Notify("You insert the lockpick into your cell door's lock and probe it. But when trying to move the lock pins a bit too hard, you hear a crack inside the lock and realize that you just broke your lockpick...", messagebox = true)
				libs.PlayerRef.RemoveItem(dcur_prison_esc_lockpick, libs.PlayerRef.GetItemCount(dcur_prison_esc_lockpick))			
			EndIf
		EndIf
	Else
	
	EndIf
EndFunction

Function OnUnoccupiedCellDoorActive()
	If !UnoccupiedCellDoor.GetReference().IsLocked()
		return
	EndIf
	If IsDDRestrained()
		libs.Notify("Even if the cell door wouldn't be locked - restrained as you are, there is no way for you to open it. Inspecting the lock, you are confident you could pick it with a lockpick. If you just had one!", messagebox = true)
		return
	EndIf	
	If libs.PlayerRef.GetItemCount(dcur_prison_esc_lockpick) > 0
		If !IsNight()
			libs.Notify("While you could try to pick the cell door's lock with your makeshift tool, the guards would certainly notice. Maybe try later?", messagebox = true)
			return
		EndIf	
		If dcur_prison_esc_celllockpick.Show() == 0
			If Utility.RandomInt() < Escape_LockpickChance
				libs.Notify("Success! You insert the lockpick into the cell door's lock and probe it. With a bit of patience and a bit of luck you hear the lock click open...", messagebox = true)
				UnoccupiedCellDoor.GetReference().Lock(False)
				UnoccupiedCellDoor.GetReference().SetOpen(True)
			Else
				libs.Notify("You insert the lockpick into the cell door's lock and probe it. But when trying to move the lock pins a bit too hard, you hear a crack inside the lock and realize that you just broke your lockpick...", messagebox = true)
				libs.PlayerRef.RemoveItem(dcur_prison_esc_lockpick, libs.PlayerRef.GetItemCount(dcur_prison_esc_lockpick))			
			EndIf
		EndIf
	Else
		
	EndIf
EndFunction

Function OnUnoccupiedCellEnterTrigger()	
	If !Escape_HasDisplayedGrateHint && libs.PlayerRef.GetItemCount(dcur_prison_esc_crowbar) < 1
		libs.Notify("You notice that the grate in this cell is fairly loose and could probably be broken open quite easily with a crowbar or similar tool. Perhaps that's the reason why this cell isn't used? However, you would still need a rope to rappel down to the tunnels below, or risk breaking some limbs.", messagebox = true)
		Escape_HasDisplayedGrateHint = True
		return
	EndIf
	If libs.PlayerRef.GetItemCount(dcur_prison_esc_crowbar) > 0
		; she got the tool
		If IsDDRestrained()
			libs.Notify("While you have the right tool to break open the crate, your restaints prevent you from using it.", messagebox = true)
			return
		EndIf
		If !isNight()
			libs.Notify("You can't break open the crate right now. You won't be able to avoid some noise trying to force it open, which the nearby guards would notice with absolute certainty. Maybe try later?", messagebox = true)
			return
		EndIf
		If libs.PlayerRef.GetItemCount(dcur_prison_esc_rope) > 0		
			; we're a go!
			If dcur_prison_esc_loosegrateMSG.Show() == 0
				If Utility.RandomInt() < Escape_BreakCrateChance
					libs.Notify("You wedge the crowbar into the crate's weakest spot and throw all your weight against it. With a crack, the crate comes off - opening a way down to the sewers. That was easy!", messagebox = true)
					Utility.Wait(0.1)
					libs.Notify("Legs first, you squeeze your body through the opening and use the rope to rappel down into the sewers. While the stench is almost unbearable, you already hear freedom calling you!", messagebox = true)
					Libs.PlayerRef.MoveTo(SewerMarker.GetReference())
					Utility.Wait(2)
					libs.PlayerRef.RemoveItem(dcur_prison_esc_crowbar, libs.PlayerRef.GetItemCount(dcur_prison_esc_crowbar))			
					libs.PlayerRef.RemoveItem(dcur_prison_esc_rope, libs.PlayerRef.GetItemCount(dcur_prison_esc_rope))			
					; ok, we're in actual escape mode now - no turning back!
					RewardChest.GetReference().AddItem(dcLibs.dcur_dq_damnbox, 5)
					SetObjectiveCompleted(60)
					dcur_prison_questcontrol.SetValueInt(5000)
					SetObjectiveDisplayed(5000)
					SetObjectiveDisplayed(5050)
				Else
					; fail
					libs.Notify("You wedge the crowbar into the weakest spot and throw all your weight against it. And indeed something gives in, but not what you hoped for. Your crowbar wasn't strong enough after all, and you are now holding its broken pieces in your hands.", messagebox = true)
					Utility.Wait(0.1)
					libs.Notify("Without a tool to open the grate, you have no choice but to give up and return to your cell.", messagebox = true)
					libs.PlayerRef.RemoveItem(dcur_prison_esc_crowbar, libs.PlayerRef.GetItemCount(dcur_prison_esc_crowbar))			
				EndIf
			EndIf
		Else
			libs.Notify("You could break open the crate, but without a rope there is no way to climb down without seriously injuring yourself. Maybe try later?", messagebox = true)
			return
		EndIf
	EndIf
EndFunction

Function OnLooseBricksActivate()
	If Escape_HasKnifeInstalled
		; ok, the spot is prepared already!
		If isNight() && libs.PlayerRef.IsEquipped(dcur_prison_sj_Rendered)
			if dcur_prison_esc_loosebrickKnifeInstalledMSG.Show() == 0
				If Utility.RandomInt() < Escape_CutSkirtChance
					libs.Notify("Rubbing your hobble skirt's hem against the blade, you manage to cut a foot-long vertical slit into the leather, widening the skirt's hem opening enough that you could try to pull it over your hips, using the environment!", messagebox = true)
					; next step - pull the skirt
					Utility.Wait(0.1)
					libs.Notify("You use your bed to try lifting the skirt above your waist...", messagebox = true)
					Utility.Wait(0.1)
					If Utility.RandomInt() < Escape_StruggleSJChance					
						libs.Notify("You have managed to pull the hobble skirt all the way up to your wait, freeing your legs. Your arms are still sealed away in the straitjacket and very much useless, but you can now try to struggle out of the straitjacket by pulling it over your head.", messagebox = true)
						Utility.Wait(0.1)
						; final step - escape the SJ
						libs.Notify("You take in a deep breath before you attempt to struggle out of the straitjacket...", messagebox = true)
						Utility.Wait(0.1)
						If Utility.RandomInt() < Escape_StruggleSJChance
							libs.Notify("Using every bit of wiggle room the tight straitjacket still allows you, you eventually manage to pull the dress completely over your head. The tight grip the restaint dress had on your body suddenly loosens. You pull out your arms and the dress falls off you. Breathing heavily, you enjoy your regained freedom!", messagebox = true)
							Utility.Wait(0.1)
							RemoveBodyDevices()
							libs.Notify("Your hands now free, you use the knife to cut your gag as well! You spit out the huge ball gag and rub your aching jaw.", messagebox = true)
							dcur_prison_esc_UnconcealableFail.SetValueInt(1)
							RemoveGag()							
						Else
							libs.Notify("You try for hours to pull the straitjacket over your head, without success. The restraint is sitting just too tight on you, and you have not enough wiggle room to struggle out of it. Exhausted, you accept defeat and prepare for your inevitable punishment next morning...", messagebox = true)														
							ResetEscape(Full = True)
							dcur_prison_esc_UnconcealableFail.SetValueInt(1)
						EndIf
					Else
						; fail
						libs.Notify("You try to use the environment to pull up your hobble skirt, but even after hours of trying hard, you don't manage to pull the hem over your hips. Exhausted, you have no choice but to give up. You're still stuck in the restraint dress, and there is no way the guard will not notice next morning...", messagebox = true)						
						ResetEscape(Full = True)
						dcur_prison_esc_UnconcealableFail.SetValueInt(1)
					EndIf
				Else
					; epic fail!
					libs.Notify("You start cutting a slit into your hobble skirt, but when you press against the blade just a bit too hard, the knife falls out of the its place and onto the floor. With your hands tightly bound in the straitjacket, and no way to pick up the knife, there is no chance for you to continue your escape attempt.", messagebox = true)
					Utility.Wait(0.1)
					Escape_HasKnifeInstalled = False					
					If Utility.RandomInt() < Escape_CutSkirtFailSpotChance
						libs.Notify("At least the cut in your skirt is barely noticeable, so the guards probably won't notice. You manage to hide the knife, so the guards won't find it, giving you a chance to try again the next day!", messagebox = true)
						Libs.PlayerRef.AddItem(dcur_prison_esc_knife)
						dcur_prison_esc_UnconcealableFail.SetValueInt(0)
					Else
						libs.Notify("You look at your restraint dress and there is no way the guards will not notice the cut attempt next morning. But the slit is nowhere near wide enough to pull the skirt over your hips either, so you're bound just as tight as before...", messagebox = true)
						dcur_prison_esc_UnconcealableFail.SetValueInt(1)
					EndIf					
				EndIf
			EndIf
			return
		Elseif isNight()
			libs.Notify("You have no use for the knife right now.", messagebox = true)
			return
		ElseIf !isNight() && IsDDRestrained()
			libs.Notify("You could use the knife to escape your bindings, but guards are stationed everywhere and would immediately notice once you leave the cell. Maybe try later?", messagebox = true)
			return
		ElseIf !isNight() && libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			libs.Notify("The knife won't help you escaping metal restraints.", messagebox = true)
			return
		Else
			libs.Notify("You have no use for the knife right now.", messagebox = true)
		EndIf
		return
	EndIf
	If IsDDRestrained()
		libs.Notify("These bricks seem to be fairly loose. There is a noticable gap between two of them. This doesn't mean you will be able to dig a tunnel here, even if you had proper equipment. But it would be fairly easy to wedge a small item into the gap and make it stuck there. If you weren't restrained so tight, that is.", messagebox = true)
		return
	EndIf
	If libs.PlayerRef.GetItemCount(dcur_prison_esc_knife) > 0
		If dcur_prison_esc_loosebrickHasKnife.Show() == 0
			libs.Notify("You wedge the knife into the gap and make it stuck hard enough that it won't come off, even if some degree of force is applied against the blade.", messagebox = true)	
			Escape_HasKnifeInstalled = True
			Libs.PlayerRef.RemoveItem(dcur_prison_esc_knife)
		EndIf
		return
	EndIf	
	libs.Notify("These bricks seem to be fairly loose. There is a noticable gap between two of them. This doesn't mean you will be able to dig a tunnel here, even if you had proper equipment. But it would be fairly easy to wedge a small item into the gap and make it stuck there.", messagebox = true)	
EndFunction

Function MineToolBoxActivate()
	If libs.PlayerRef.GetItemCount(dcur_prison_esc_nails) > 0
		return
	EndIf
	If dcur_prison_minetoolboxMSG.Show() == 0
		libs.Notify("You position your body between the table and the shiftleader, and snatch a few nails from the box...", messagebox = true)
		If Utility.RandomInt() < Escape_StealNails
			libs.Notify("Phew! The shiftleader didn't seem to notice. You walk off and slide the nails inside your metal restraint boots where they cannot be spotted easily.", messagebox = true)
			libs.playerref.AddItem(dcur_prison_esc_nails)
		Else
			libs.Notify("...and realize that you got spotted when you hear the shiftleader barking at you. He grabs you from behind and takes the nails out of your hand.", messagebox = true)
			Utility.Wait(0.1)
			libs.Notify("After a throrogh body search, the shiftleader lets you go, but not after reporting the incident to the guards. Your prison sentence has been extended by " + Escape_AdditionalDaysOnFail + " days.", messagebox = true)
			EscapeFailByNotice()
		EndIf
	EndIf
EndFunction

Function ToolBarrelActivate()
	If libs.PlayerRef.GetItemCount(dcur_prison_esc_crowbar) > 0
		return
	EndIf
	If dcur_prison_toolbarrelMSG.Show() == 0
		libs.Notify("You position your body between the tool barrel and the quartermaster, and reach into the container...", messagebox = true)
		If Utility.RandomInt() < Escape_StealCrowbar
			libs.Notify("Phew! The quartermaster didn't seem to notice. You walk off and slide the crowbar inside your hobble skirt, where it cannot be spotted easily.", messagebox = true)
			libs.playerref.AddItem(dcur_prison_esc_crowbar)
		Else
			libs.Notify("...and realize that you got spotted when the quartermaster grabs you by the shoulders from behind. He snatches the crowbar from your hand before he calls the guards...", messagebox = true)
			Utility.Wait(0.1)
			libs.Notify("After a throrogh body search, you are let go, but your prison sentence has been extended by " + Escape_AdditionalDaysOnFail + " days.", messagebox = true)
			EscapeFailByNotice()
		EndIf
	EndIf
EndFunction

Function ReturnToCell(Bool MajorTransgression = True, Bool MinorTransgression = False, Bool BeltHer = True)
	If BeltHer
		libs.Notify("You shudder as the guards slide two large plugs into your openings and set them to full strength before they seal you in a tight-fitting chastity belt. Last, they put you in a restraint dress once more, except that they tighten the straps until they hurt. You will also have to wear a blindfold.", messagebox = true)	
		Lock_Belt()
		Utility.Wait(1.5)
	Else
		libs.Notify("The guards put you in a restraint dress once more, except that they tighten the straps until they hurt. You will also have to wear a blindfold.", messagebox = true)	
		Utility.Wait(0.1)
	EndIf
	Lock_Straitjacket()
	Lock_Blindfold()		
	If MajorTransgression
		libs.Notify("For your serious breach of prison rules, you will also have to spend " + Escape_AdditionalDaysOnMajorFail + " more days in prison.", messagebox = true)
		DaysSentence += Escape_AdditionalDaysOnMajorFail
		MajorTransgressions += 1
	ElseIf MinorTransgression
		libs.Notify("For your breach of prison rules, you will also have to spend " + Escape_AdditionalDaysOnFail + " more days in prison.", messagebox = true)
		DaysSentence += Escape_AdditionalDaysOnFail
		MinorTransgressions += 1
	EndIf
	HoursToWork = CalcHoursToWork()	
	AllowedToSleepAt = Utility.GetCurrentGameTime()
	dcur_prison_questcontrol.SetValueInt(60)
	Libs.PlayerRef.MoveTo(PlayerCellMarker.GetReference())
	; close any open doors
	minedoor.GetReference().Lock(True)
	minedoor.GetReference().SetLockLevel(255)
	trapDoor.GetReference().Lock(True)
	trapDoor.GetReference().SetLockLevel(255)
	GuardBedRoomDoor.GetReference().Lock(True)
	GuardBedRoomDoor.GetReference().SetLockLevel(255)
	GuardRoomDoor.GetReference().Lock(True)
	GuardRoomDoor.GetReference().SetLockLevel(255)
	Utility.Wait(1)
	EnterCellEvent() ;Fallback in case the trigger doesn't trigger. Will not do anything if it triggered...
	SetObjectiveDisplayed(5000, False)
	SetObjectiveDisplayed(5050, False)
	SetObjectiveCompleted(60, False)
	SetObjectiveDisplayed(60)		
EndFunction

Function PunishByWarden()
	libs.Notify("The Warden is going to punish you for your transgressions...", messagebox = true)	
	RegisterForModEvent("dcur_USS_finished", "OnUSSFinished")
	Utility.Wait(1)
	StorageUtil.SetFormValue(libs.PlayerRef, "dcur_uss_whipper", Warden.GetReference())
	StorageUtil.SetIntValue(libs.PlayerRef, "dcur_uss_nosubmit", 1)
	spqs.Start()	
EndFunction

Function EscapeFail()
	; use this function when the player fails during the actual escape stages (after trying to cut her dress)
	ResetEscape(True)
	PlayerCellDoor.GetReference().SetOpen(False)
	PlayerCellDoor.GetReference().Lock(True)
	PlayerCellDoor.GetReference().SetLockLevel(255)
	Game.DisablePlayerControls()
	;ok, the guards caught her. Let's take her back to her cell and tie her up	
	libs.Notify("Your escape attempt has failed. You are getting dragged back to your cell by two bulky guards...", messagebox = true)	
	Libs.PlayerRef.MoveTo(PlayerCellMarker.GetReference())
	RemoveAllDevices()
	Utility.Wait(1.5)
	Game.EnablePlayerControls()
	If dcumenu.prison_Whipping
		punish_flag_belt = True
		punish_flag_major = True
		punish_flag_minor = False
		PunishByWarden()
	Else
		ReturnToCell()
	EndIf
EndFunction

Function EscapeFailByNotice()
	; this function is used when the guards notice a failed attempt to steal tools etc.
	DaysSentence += Escape_AdditionalDaysOnFail
	MinorTransgressions += 1
	ResetEscape(True)							
EndFunction

Function EscapeLadderActivate()
	If dcur_prison_questcontrol.GetValueInt() < 5100
		Libs.Notify("This ladder will lead out of the prison, but you should retrieve your belongings first!", messagebox = true)
		return
	EndIf
	If dcur_prison_questcontrol.GetValueInt() == 5200
		; she double clicked the ladder while the stop script was still working.
		return
	EndIf
	Libs.Notify("You have made it! This ladder will take you to the surface and to freedom!", messagebox = true)
	Utility.Wait(1)
	Game.IncrementStat("Jail Escapes")	
	dcur_prison_questcontrol.SetValueInt(5200)
	Stop()	
EndFunction

ReferenceAlias Property EatingGirl2  Auto  

ReferenceAlias Property UnoccupiedCellDoor  Auto  

ReferenceAlias Property GuardRoomCabinet  Auto  

ReferenceAlias Property guardbedroomdoor  Auto  

ReferenceAlias Property SewerMarker  Auto  

ReferenceAlias Property PlayerCellMarker  Auto  

ReferenceAlias Property MineToolbox  Auto  

ReferenceAlias Property ToolBarrel  Auto  

ReferenceAlias Property DisplayGirl  Auto  

ReferenceAlias Property RewardChest  Auto  

ReferenceAlias Property RapistGuard  Auto  

ReferenceAlias Property RapistGuardMarker  Auto  

ReferenceAlias Property GuardRapist2  Auto  

ReferenceAlias Property GuardRapistMarker2  Auto  

ReferenceAlias Property Warden  Auto  

ReferenceAlias Property WardenMarkerDay  Auto  

ReferenceAlias Property WardenMarkerNight  Auto  

ReferenceAlias Property WardenMarkerStart  Auto  

ReferenceAlias Property FoodMarker  Auto  

ReferenceAlias Property DrinkMarker  Auto  

ReferenceAlias Property ref_dcur_prison_pillory  Auto  
