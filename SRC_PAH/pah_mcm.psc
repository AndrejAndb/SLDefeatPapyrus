Scriptname PAH_MCM extends SKI_ConfigBase

PAHCore Property PAH Auto
PAHBootstrapScript Property Reboot Auto

Int maxSub_OID

Int fleeToggle_OID
Int CaptiveToggle_OID
Int healthToggle_OID
Int bleedOutToggle_OID
Int sleepToggle_OID
Int paralyzeToggle_OID
Int slaveToggle_OID
Int EnslaveFollowerToggle_OID
Int EnslaveFalmerToggle_OID
Int EnslaveAutomatonToggle_OID
Int EnslaveTrollToggle_OID
Int EnslaveFlameAtronachToggle_OID

bool Property fleeToggle = false Auto Hidden
bool Property CaptiveToggle = false Auto Hidden
bool Property healthToggle = false Auto Hidden
bool Property bleedOutToggle = true Auto Hidden
bool Property sleepToggle = false Auto Hidden
bool Property paralyzeToggle = false Auto Hidden
bool Property slaveToggle = false Auto Hidden
bool Property EnslaveFollowerToggle = false Auto Hidden
bool Property EnslaveFalmerToggle = false Auto Hidden
bool Property EnslaveAutomatonToggle = false Auto Hidden
bool Property EnslaveFlameAtronachToggle = false Auto Hidden
bool Property EnslaveTrollToggle = false Auto Hidden

Int leashToggle_OID
Int rebootToggle_OID
Int statSpellToggle_OID
Int slaverRankSetting_OID
Int debugToggle_OID

Int resetSlaveList_OID
Int teleportSlave_OID
Int resetSlave_OID
Int reCloneSlave_OID
Int hotKey_OID
Int modifierKey_OID
Int whistleKey_OID
Int rename_OID
Int Release_Slave_OID
Int ExportSettings_OID
Int ImportSettings_OID

Int renameToggle_OID
Int recheck_Player_Gender_Toggle_OID
Int use_sexlab_gender_Toggle_OID
Int mixed_race_Toggle_OID

Int NakedOutfitDisabled_OID
Int NakedOutfit_Uniques_Only_OID
Int MandateNudityToggle_OID
Int VampireCattleToggle_OID

Int alwaysAggroToggle_OID
Int alwaysAggro_Punish_Toggle_OID
Int showSlaveCountToggle_OID
Actor Property player Auto

Int _hotkey = -1
Int Property hotkey Hidden
	Int Function Get()
		return _hotkey
	EndFunction
EndProperty
Int _whistleKey = -1
Int Property whistleKey Hidden
	Int Function Get()
		return _whistleKey
	EndFunction
EndProperty
Int _modifierKey = -1
Int Property modifierKey Hidden
	Int Function Get()
		return _modifierKey
	EndFunction
EndProperty

Int[] slave_OID

int Property runAwayValue = 60 Auto Hidden
int Property severity = 100 Auto Hidden
int Property followerTrainingEfficiency = 50 Auto Hidden

float Property postRapeDelay = 15.0 Auto Hidden

;leave the LeveledActorBaseToggle in for aygas-false is ok as long as its there
bool Property LeveledActorBaseToggle = false Auto Hidden

bool Property NakedOutfitDisabled = false Auto Hidden
bool Property NakedOutfit_Uniques_Only = true Auto Hidden
bool Property MandateNudityToggle = false Auto Hidden
bool Property VampireCattleToggle = true Auto Hidden

bool Property leashToggle = true Auto Hidden
bool Property renameToggle = false Auto Hidden
bool Property recheck_Player_Gender_Toggle = false Auto Hidden
bool Property mixed_race_Toggle = false Auto Hidden

bool Property statSpellToggle = true Auto Hidden
bool Property showSlaveCountToggle = true Auto Hidden
bool _debugToggle = true
bool Property debugToggle
	bool Function Get()
		return _debugToggle
	endFunction
endProperty

GlobalVariable Property globalHealthPerc Auto Hidden

Spell Property statSpell Auto

PAHSlave currentSlave = None
int currentSlave_OID = -1

int forcedReset = -1
string[] pageNames

int disableFlag

Event OnGameReload()
	parent.OnGameReload()
EndEvent

Event OnConfigOpen()
	disableFlag = OPTION_FLAG_DISABLED
	String version = "pahe lives on 8.2.0 Wip"
	String testVersion = "test3"
	pageNames = new String[5]
	pageNames[0] = "pahe lives on 8.2.0 Options"
	pageNames[1] = "$Pahe_Enslavement_page"	;	"Enslavement"
	pageNames[2] = "$Pahe_Slaves_page"	;	"first 43 Slaves"
	pageNames[3] = "$Pahe_Slaves_page_2"	;	"more Slaves"
	pageNames[4] = "$Pahe_Slaves_page_3"	;	"more Slaves"
;	pageNames[5] = version + testVersion

	Pages = pageNames
EndEvent

event OnPageReset(string page)
	if PageNames.length <= 0
		OnConfigOpen()
		OnPageReset(page)
	endif
	if page == pageNames[0]
		UpdateOptionsPage()
	elseIf page == pageNames[1]
		UpdateSettings()
	elseIf page == pageNames[2]
		UpdateSlavesPage()
	elseIf page == pageNames[3]
		UpdateSlavesPage2()
	elseIf page == pageNames[4]
		UpdateSlavesPage3()
	else
		OnPageReset(pageNames[0])
	EndIf
EndEvent

Function UpdateSettings()
	SetCursorFillMode(TOP_TO_BOTTOM)
	if !player
		player = Game.GetPlayer()
	EndIf
	If PAH.modStatus == "$PAHE_SettingName_RebootToggle_running"
		fleeToggle_OID = AddToggleOption("$PAHE_SettingName_FleeToggle", player.hasPerk(PAH.PAHEnslaveFleeingPerk))
		CaptiveToggle_OID = AddToggleOption("$PAHE_SettingName_CaptiveToggle", player.hasPerk(PAH.PAHEnslaveCaptivePerk))
		healthToggle_OID = AddToggleOption("$PAHE_SettingName_HealthToggle", player.hasPerk(PAH.EnslavePerks[1]))
		bleedOutToggle_OID = AddToggleOption("$PAHE_SettingName_BleedOutToggle", player.hasPerk(PAH.EnslavePerks[2]), disableFlag)
		sleepToggle_OID = AddToggleOption("$PAHE_SettingName_SleepToggle", player.hasPerk(PAH.EnslavePerks[3]))
		paralyzeToggle_OID = AddToggleOption("$PAHE_SettingName_ParalyzeToggle", player.hasPerk(PAH.EnslavePerks[4]))
		EnslaveFollowerToggle_OID = AddToggleOption("$PAHE_SettingName_EnslaveFollowerToggle", player.hasPerk(PAH.EnslavePerks[5]))
		slaveToggle_OID = AddToggleOption("$PAHE_SettingName_SlaveToggle", player.hasPerk(PAH.EnslavePerks[6]))
		EnslaveFalmerToggle_OID = AddToggleOption("$PAHE_SettingName_EnslaveFalmerToggle", player.hasPerk(PAH.EnslavePerks[7]))
		EnslaveAutomatonToggle_OID = AddToggleOption("$PAHE_SettingName_EnslaveAutomatonToggle", player.hasPerk(PAH.EnslavePerks[8]))
		EnslaveFlameAtronachToggle_OID = AddToggleOption("$PAHE_SettingName_EnslaveFlameAtronachToggle", player.hasPerk(PAH.EnslavePerks[9]))
		EnslaveTrollToggle_OID = AddToggleOption("$PAHE_SettingName_EnslaveTrollToggle", player.hasPerk(PAH.EnslavePerks[10])) ;Enslave Troll

		SetCursorPosition(1)
		AddSliderOptionST("CAP_health", "$PAHE_SettingName_HealthPerc", globalHealthPerc.getValue() * 100)
	EndIf

EndFunction

Function UpdateOptionsPage()
	if !Reboot
		Reboot = Game.GetFormFromFile(0x000CF32, "paradise_halls.esm") As PAHBootstrapScript
	EndIf

	SetCursorFillMode(TOP_TO_BOTTOM)
	AddHeaderOption("Toggles")
	If PAH.modStatus == "$PAHE_SettingName_RebootToggle_running"
		leashToggle_OID = AddToggleOption("$PAHE_SettingName_LeashToggle", leashToggle)
		use_sexlab_gender_Toggle_OID = AddToggleOption("$PAHE_SettingName_sexlab_genderToggle", PAH.sexlab_gender)
		alwaysAggroToggle_OID = AddToggleOption("$PAHE_SettingName_alwaysAggroToggle", PAH.bAlwaysAggressive)
		alwaysAggro_Punish_Toggle_OID = AddToggleOption("$PAHE_SettingName_alwaysAggro_Punish_Toggle", PAH.bAlways_Punish_Aggressive)
		showSlaveCountToggle_OID = AddToggleOption("$PAHE_SettingName_showSlaveCountToggle", showSlaveCountToggle)
		If PAH.jcInstalled
			renameToggle_OID = AddToggleOption("$PAHE_SettingName_RenameToggle", renameToggle)
			mixed_race_Toggle_OID = AddToggleOption("$PAHE_SettingName_mixed_race_Toggle", mixed_race_Toggle)
		EndIf
		recheck_Player_Gender_Toggle_OID = AddToggleOption("$PAHE_SettingName_recheck_Player_Gender_Toggle", recheck_Player_Gender_Toggle)
		MandateNudityToggle_OID = AddToggleOption("$PAHE_SettingName_MandateNudityToggle", MandateNudityToggle)
		NakedOutfitDisabled_OID = AddToggleOption("$PAHE_SettingName_NakedOutfitDisabled", NakedOutfitDisabled)
		NakedOutfit_Uniques_Only_OID = AddToggleOption("$PAHE_SettingName_NakedOutfit_Uniques_Only", NakedOutfit_Uniques_Only)
		VampireCattleToggle_OID = AddToggleOption("$PAHE_SettingName_VampireCattleToggle", VampireCattleToggle)

		AddHeaderOption("Sliders")
		AddSliderOptionST("SLAVE_runaway", "$PAHE_SettingName_RunAway", runAwayValue)
		AddSliderOptionST("RAPE_time", "$PAHE_SettingName_RapeTimer", postRapeDelay)
		AddSliderOptionST("PUN_severity", "$PAHE_SettingName_Severity", severity)
;		AddSliderOptionST("FOL_efficiency", "$PAHE_SettingName_Follower", followerTrainingEfficiency)

	EndIf

;===============================================================================
	SetCursorPosition(1)
	AddHeaderOption("Debug")

	string status = "Stopped"
	int flag = OPTION_FLAG_NONE
	if PAH.IsRunning()
		status = PAH.modStatus
		If status == "$PAHE_SettingName_RebootToggle_restarting"
			flag = OPTION_FLAG_DISABLED
		Else
			flag = OPTION_FLAG_NONE
		EndIf
	elseIf PAH.IsStarting()
		status = "$PAHE_Starting"
		flag = OPTION_FLAG_DISABLED
	endIf
	rebootToggle_OID = AddTextOption("$PAHE_SettingName_Status", status, flag)

	
	AddEmptyOption()
	If PAH.modStatus == "$PAHE_SettingName_RebootToggle_running"
;		slaverRankSetting_OID = AddTextOption("$PAHE_SettingName_SlaverRankSetting", "$PAHE_SlaverSetting_" + PAH.slaverSetting)
;		AddTextOption("$PAHE_SettingName_SlaverRank", PAH.slaverRank, OPTION_FLAG_DISABLED)
		resetSlaveList_OID = AddTextOption("$PAHE_SettingName_SlaveCount", PAH.GetSlaveCount() + "/" + PAH.GetMaxSlaveCount())
	
		AddEmptyOption()
		statSpellToggle_OID = AddToggleOption("$PAHE_SettingName_StatSpellToggle", statSpellToggle)
		debugToggle_OID = AddToggleOption("$PAHE_SettingName_debugToggle", _debugToggle)
	
		AddHeaderOption("$PAHE_Keys_Header")
		whistleKey_OID = AddKeyMapOption("$PAHE_SettingName_WhistleKey", whistleKey)
		hotKey_OID = AddKeyMapOption("$PAHE_SettingName_Hotkey", hotkey)
	;	modifierKey_OID = AddKeyMapOption("$PAHE_SettingName_modifierKey", modifierKey)

		AddHeaderOption("$PAHE_ImportExportSettings_Header")
		ExportSettings_OID = AddTextOption("$PAHE_SettingName_ExportSettings", "")
		ImportSettings_OID = AddTextOption("$PAHE_SettingName_ImportSettings", "")
	EndIf
EndFunction

Function UpdateSlavesPage()
	SetCursorFillMode(TOP_TO_BOTTOM)
	int slaveCount = PAH.GetSlaveCount()
	int displayedSlaveIndex = -1

	If PAH.modStatus == "$PAHE_SettingName_RebootToggle_running"

		If forcedReset != -1
			int j = 0
			while (j < slaveCount)
				if forcedReset == slave_OID[j]
					forcedReset = -1
					displayedSlaveIndex = j
					PAH.setSlaveName(j)
					List43SlaveStats(j)
					j = slaveCount
				EndIf
			j += 1
			EndWhile
		EndIf
		slave_OID = PAH.GetIntArrayLength(PAH.GetSlaveCount())
		;slave_OID = PAH.GetIntArrayLength(slaveCount)
		int i = 0

		SetCursorPosition(0)
		AddHeaderOption("$Pahe_Slaves_page")
		;while (i < PAH.GetSlaveCount()) && (i < 43)
		;changing this to use pah.getslavecount is what slows the mcm to a crawl
		while (i < PAH.slaveArray.length) && (i < 43)
		;try changing this to use the slavecount as an integer instead
		;while (i < slaveCount) && (i < 43)
			slave_OID[i] = AddTextOption(i+1 + ": " + PAH.getSlaveName(i), "")
			If i == displayedSlaveIndex
				currentSlave_OID = slave_OID[i]
			EndIf
			i += 1
		endWhile

	EndIf
EndFunction

Function UpdateSlavesPage2()
	SetCursorFillMode(TOP_TO_BOTTOM)
	int slaveCount = PAH.GetSlaveCount()
	int displayedSlaveIndex = -1
	If PAH.modStatus == "$PAHE_SettingName_RebootToggle_running"

		If forcedReset != -1
		int j = 0
			while (j < slaveCount)
				if forcedReset == slave_OID[j]
					forcedReset = -1
					displayedSlaveIndex = j
					PAH.setSlaveName(j)
					ListMoreSlaveStat(j)
					j = slaveCount
				EndIf
				j += 1
			EndWhile
		EndIf

		SetCursorPosition(0)
		AddHeaderOption("$Pahe_Slaves_page_2")
		slave_OID = PAH.GetIntArrayLength(PAH.GetSlaveCount())
		;slave_OID = PAH.GetIntArrayLength(slaveCount)
		int i = 43
		while (i < PAH.slaveArray.length) && (i < 86)
		;while (i < slaveCount) && (i < 86)
			slave_OID[i] = AddTextOption(i+1 + ": " + PAH.getSlaveName(i), "")
			If i == displayedSlaveIndex
				currentSlave_OID = slave_OID[i]
			EndIf
			i += 1
		endWhile
		;EndIf
	EndIf
EndFunction

Function UpdateSlavesPage3()
	SetCursorFillMode(TOP_TO_BOTTOM)
	int slaveCount = PAH.GetSlaveCount()
	int displayedSlaveIndex = -1
	If PAH.modStatus == "$PAHE_SettingName_RebootToggle_running"

		If forcedReset != -1
		int j = 0
			while (j < slaveCount)
				if forcedReset == slave_OID[j]
					forcedReset = -1
					displayedSlaveIndex = j
					PAH.setSlaveName(j)
					ListMoreSlaveStats(j)
					j = slaveCount
				EndIf
				j += 1
			EndWhile
		EndIf

		SetCursorPosition(0)
		AddHeaderOption("$Pahe_Slaves_page_3")
		slave_OID = PAH.GetIntArrayLength(PAH.GetSlaveCount())
		;slave_OID = PAH.GetIntArrayLength(slaveCount)
		int i = 86
		while (i < PAH.slaveArray.length)
		;while (i < slaveCount)
			slave_OID[i] = AddTextOption(i+1 + ": " + PAH.getSlaveName(i), "")
			If i == displayedSlaveIndex
				currentSlave_OID = slave_OID[i]
			EndIf
			i += 1
		endWhile
	EndIf
EndFunction

Function List43SlaveStats(int index)
	int magicNumber = 15 ;min number of colums
	SetCursorPosition(PAH.getMax(((index * 2) - magicNumber), 1) as Int)

	currentSlave = PAH.slaveArray[index]
	AddHeaderOption(index + 1 + ": " + currentSlave.GetActorRef().GetDisplayName())

	String occupation = "Slave"
	If currentSlave.GetActorRef().IsInFaction(currentSlave.PAHShouldFightForPlayer)
		If currentSlave.GetActorRef().IsInFaction(currentSlave.PAHBEFollowing)
			If PAH.isCaster(currentSlave)
				occupation = "$PAHE_Mage"
			Else
				occupation = "$PAHE_Fighter"
			EndIf
		else
			occupation = "$PAHE_Guard"
		endIf
	endIf
	AddTextOption("$PAHE_Occupation", occupation, OPTION_FLAG_DISABLED)

	string gender
	;if currentSlave.GetActorRef().GetLeveledActorBase().GetSex() == 0
	if !currentSlave.GetActorRef().IsInFaction(PAH.PAH_gender)
		PAH.CheckGender(currentSlave.GetActorRef())
	EndIf
	if (currentSlave.GetActorRef().GetFactionRank(PAH.PAH_gender) == 0)
		gender = "$PAHE_Male"
	else
		gender = "$PAHE_Female"
	endIf
	AddTextOption("$PAHE_Gender", gender, OPTION_FLAG_DISABLED)

	String currentLoc
	If currentSlave.GetRef().GetParentCell()
		currentLoc = currentSlave.GetRef().GetParentCell().GetName()
	elseIf currentSlave.GetRef().GetCurrentLocation()
		currentLoc = currentSlave.GetRef().GetCurrentLocation().GetName()
	EndIf
	If currentLoc == ""
		if !player
			player = Game.GetPlayer()
		EndIf
		float angle = player.GetAngleZ() + player.GetHeadingAngle(currentSlave.GetRef())
		while angle < 0
			angle = 360 - angle
		endWhile
		while angle > 360
			angle = angle - 360
		endWhile
		string direction
		if angle <= 22.5
			direction = "to your north."
		elseIf angle <= 67.5
			direction = "to your northeast."
		elseIf angle <= 112.5
			direction = "to your east."
		elseIf angle <= 157.5
			direction = "to your southeast"
		elseIf angle <= 202.5
			direction = "to your south."
		elseIf angle <= 247.5
			direction = "to your southwest."
		elseIf angle <= 292.5
			direction = "to your west."
		elseIf angle <= 337.5
			direction = "to your northwest."
		elseIf angle <= 360
			direction = "to your north."
		else
			direction = "in an unknown direction."
		EndIf

		float distance = currentSlave.GetRef().GetDistance(player)
		string units = " metres "
		distance = currentSlave.GetRef().GetDistance(player) * 1.428 / 100
		if distance > 1000
			distance = distance / 1000
			units = " kilometres "
		endIf
		AddTextOption("$PAHE_Location", "Tamriel", OPTION_FLAG_DISABLED)
		AddTextOption("", (distance as int) + units + direction, OPTION_FLAG_DISABLED)
	Else
		AddTextOption("$PAHE_Location", currentLoc, OPTION_FLAG_DISABLED)
	EndIf

;	AddEmptyOption()
	AddTextOption("$PAHE_Health", (currentSlave.GetActorRef().GetAV("Health") / currentSlave.GetActorRef().GetAVPercentage("Health")) as Int, OPTION_FLAG_DISABLED)
	If occupation == "Mage" || occupation == "Guard"
		AddTextOption("$PAHE_Magicka", (currentSlave.GetActorRef().GetAV("Magicka") / currentSlave.GetActorRef().GetAVPercentage("Magicka")) as Int, OPTION_FLAG_DISABLED)
	EndIf


	AddHeaderOption("$Slave_Stats_header")	;	"Slave Stats"
	AddTextOption("$PAHE_Submission", currentSlave.submission as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Anger", currentSlave.anger_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Combat", currentSlave.combat_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Respect", currentSlave.respect_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Pose", currentSlave.Pose_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Sex", currentSlave.sex_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Fear", currentSlave.fear_training as Int, OPTION_FLAG_DISABLED)
	If (Game.GetModByName("DiaryOfMine.esp") != 255)
		AddTextOption("$PahD_Humiliation", currentSlave.humiliation as Int, OPTION_FLAG_DISABLED)
		AddTextOption("$PahD_Resignation", currentSlave.resignation as Int, OPTION_FLAG_DISABLED)
	EndIf

	If debugToggle
		AddTextOption("$PAHE_Morality", currentSlave.getActorRef().GetAV("Morality"), OPTION_FLAG_DISABLED)
		AddTextOption("$PAHE_Current_mood", currentSlave.mind.mood, OPTION_FLAG_DISABLED)
		AddTextOption("$PAHE_Current_state", currentSlave.behaviour, OPTION_FLAG_DISABLED)
	EndIf
;	rename_OID = AddTextOption("", "Rename " + currentSlave.GetActorRef().getDisplayName())
	rename_OID = AddTextOption("$PAHE_Rename_", currentSlave.GetActorRef().getDisplayName())
	if !player
		player = Game.GetPlayer()
	EndIf

	If debugToggle
		AddEmptyOption()
		teleportSlave_OID = AddTextOption("$PAHE_teleport_Slave_to_player", currentSlave.GetActorRef().GetDisplayName())
		resetSlave_OID = AddTextOption("$PAHE_Reset_Slave", currentSlave.GetActorRef().GetDisplayName())
		AddTextOption("Voice Type:" + StringUtil.Substring(currentSlave.GetActorRef().getVoiceType() + "", 12, StringUtil.Find(currentSlave.GetActorRef().getVoiceType() + "", " ", 12) - 12), "", OPTION_FLAG_DISABLED)
		reCloneSlave_OID = AddTextOption("$PAHE_reClone_Slave", currentSlave.GetActorRef().GetDisplayName())

		Release_Slave_OID = AddTextOption("$PAHE_Release_Slave", currentSlave.GetActorRef().getDisplayName())
	EndIf
EndFunction

Function ListMoreSlaveStat(int index)
	int magicNumber = 15 ;min number of colums
	SetCursorPosition(PAH.getMax((((index - 43) * 2) - magicNumber), 1) as Int)

	currentSlave = PAH.slaveArray[index]
	AddHeaderOption(index + 1 + ": " + currentSlave.GetActorRef().GetDisplayName())

	String occupation = "Slave"
	If currentSlave.GetActorRef().IsInFaction(currentSlave.PAHShouldFightForPlayer)
		If currentSlave.GetActorRef().IsInFaction(currentSlave.PAHBEFollowing)
			If PAH.isCaster(currentSlave)
				occupation = "$PAHE_Mage"
			Else
				occupation = "$PAHE_Fighter"
			EndIf
		else
			occupation = "$PAHE_Guard"
		endIf
	endIf
	AddTextOption("$PAHE_Occupation", occupation, OPTION_FLAG_DISABLED)

	string gender
	;if currentSlave.GetActorRef().GetLeveledActorBase().GetSex() == 0
	if !currentSlave.GetActorRef().IsInFaction(PAH.PAH_gender)
		PAH.CheckGender(currentSlave.GetActorRef())
	EndIf
	if (currentSlave.GetActorRef().GetFactionRank(PAH.PAH_gender) == 0)
		gender = "$PAHE_Male"
	else
		gender = "$PAHE_Female"
	endIf
	AddTextOption("$PAHE_Gender", gender, OPTION_FLAG_DISABLED)

	String currentLoc
	If currentSlave.GetRef().GetParentCell()
		currentLoc = currentSlave.GetRef().GetParentCell().GetName()
	elseIf currentSlave.GetRef().GetCurrentLocation()
		currentLoc = currentSlave.GetRef().GetCurrentLocation().GetName()
	EndIf
	If currentLoc == ""
		if !player
			player = Game.GetPlayer()
		EndIf
		float angle = player.GetAngleZ() + player.GetHeadingAngle(currentSlave.GetRef())
		while angle < 0
			angle = 360 - angle
		endWhile
		while angle > 360
			angle = angle - 360
		endWhile
		string direction
		if angle <= 22.5
			direction = "to your north."
		elseIf angle <= 67.5
			direction = "to your northeast."
		elseIf angle <= 112.5
			direction = "to your east."
		elseIf angle <= 157.5
			direction = "to your southeast"
		elseIf angle <= 202.5
			direction = "to your south."
		elseIf angle <= 247.5
			direction = "to your southwest."
		elseIf angle <= 292.5
			direction = "to your west."
		elseIf angle <= 337.5
			direction = "to your northwest."
		elseIf angle <= 360
			direction = "to your north."
		else
			direction = "in an unknown direction."
		EndIf

		float distance = currentSlave.GetRef().GetDistance(player)
		string units = " metres "
		distance = currentSlave.GetRef().GetDistance(player) * 1.428 / 100
		if distance > 1000
			distance = distance / 1000
			units = " kilometres "
		endIf
		AddTextOption("$PAHE_Location", "Tamriel", OPTION_FLAG_DISABLED)
		AddTextOption("", (distance as int) + units + direction, OPTION_FLAG_DISABLED)
	Else
		AddTextOption("$PAHE_Location", currentLoc, OPTION_FLAG_DISABLED)
	EndIf

;	AddEmptyOption()
	AddTextOption("$PAHE_Health", (currentSlave.GetActorRef().GetAV("Health") / currentSlave.GetActorRef().GetAVPercentage("Health")) as Int, OPTION_FLAG_DISABLED)
	If occupation == "Mage" || occupation == "Guard"
		AddTextOption("$PAHE_Magicka", (currentSlave.GetActorRef().GetAV("Magicka") / currentSlave.GetActorRef().GetAVPercentage("Magicka")) as Int, OPTION_FLAG_DISABLED)
	EndIf


	AddHeaderOption("$Slave_Stats_header")	;	"Slave Stats"
	AddTextOption("$PAHE_Submission", currentSlave.submission as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Anger", currentSlave.anger_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Combat", currentSlave.combat_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Respect", currentSlave.respect_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Pose", currentSlave.Pose_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Sex", currentSlave.sex_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Fear", currentSlave.fear_training as Int, OPTION_FLAG_DISABLED)
	If (Game.GetModByName("DiaryOfMine.esp") != 255)
		AddTextOption("$PahD_Humiliation", currentSlave.humiliation as Int, OPTION_FLAG_DISABLED)
		AddTextOption("$PahD_Resignation", currentSlave.resignation as Int, OPTION_FLAG_DISABLED)
	EndIf

	If debugToggle
		AddTextOption("$PAHE_Morality", currentSlave.getActorRef().GetAV("Morality"), OPTION_FLAG_DISABLED)
		AddTextOption("$PAHE_Current_mood", currentSlave.mind.mood, OPTION_FLAG_DISABLED)
		AddTextOption("$PAHE_Current_state", currentSlave.behaviour, OPTION_FLAG_DISABLED)
	EndIf
;	rename_OID = AddTextOption("", "Rename " + currentSlave.GetActorRef().getDisplayName())
	rename_OID = AddTextOption("$PAHE_Rename_", currentSlave.GetActorRef().getDisplayName())
	if !player
		player = Game.GetPlayer()
	EndIf

	If debugToggle
		AddEmptyOption()
		teleportSlave_OID = AddTextOption("$PAHE_teleport_Slave_to_player", currentSlave.GetActorRef().GetDisplayName())
		resetSlave_OID = AddTextOption("$PAHE_Reset_Slave", currentSlave.GetActorRef().GetDisplayName())
		AddTextOption("Voice Type:" + StringUtil.Substring(currentSlave.GetActorRef().getVoiceType() + "", 12, StringUtil.Find(currentSlave.GetActorRef().getVoiceType() + "", " ", 12) - 12), "", OPTION_FLAG_DISABLED)
		reCloneSlave_OID = AddTextOption("$PAHE_reClone_Slave", currentSlave.GetActorRef().GetDisplayName())
		Release_Slave_OID = AddTextOption("$PAHE_Release_Slave", currentSlave.GetActorRef().getDisplayName())
	EndIf
EndFunction

Function ListMoreSlaveStats(int index)
	int magicNumber = 15 ;min number of colums
	SetCursorPosition(PAH.getMax((((index - 86) * 2) - magicNumber), 1) as Int)

	currentSlave = PAH.slaveArray[index]
	AddHeaderOption(index + 1 + ": " + currentSlave.GetActorRef().GetDisplayName())

	String occupation = "Slave"
	If currentSlave.GetActorRef().IsInFaction(currentSlave.PAHShouldFightForPlayer)
		If currentSlave.GetActorRef().IsInFaction(currentSlave.PAHBEFollowing)
			If PAH.isCaster(currentSlave)
				occupation = "$PAHE_Mage"
			Else
				occupation = "$PAHE_Fighter"
			EndIf
		else
			occupation = "$PAHE_Guard"
		endIf
	endIf
	AddTextOption("$PAHE_Occupation", occupation, OPTION_FLAG_DISABLED)

	string gender
	;if currentSlave.GetActorRef().GetLeveledActorBase().GetSex() == 0
	if !currentSlave.GetActorRef().IsInFaction(PAH.PAH_gender)
		PAH.CheckGender(currentSlave.GetActorRef())
	EndIf
	if (currentSlave.GetActorRef().GetFactionRank(PAH.PAH_gender) == 0)
		gender = "$PAHE_Male"
	else
		gender = "$PAHE_Female"
	endIf
	AddTextOption("$PAHE_Gender", gender, OPTION_FLAG_DISABLED)

	String currentLoc
	If currentSlave.GetRef().GetParentCell()
		currentLoc = currentSlave.GetRef().GetParentCell().GetName()
	elseIf currentSlave.GetRef().GetCurrentLocation()
		currentLoc = currentSlave.GetRef().GetCurrentLocation().GetName()
	EndIf
	If currentLoc == ""
		if !player
			player = Game.GetPlayer()
		EndIf
		float angle = player.GetAngleZ() + player.GetHeadingAngle(currentSlave.GetRef())
		while angle < 0
			angle = 360 - angle
		endWhile
		while angle > 360
			angle = angle - 360
		endWhile
		string direction
		if angle <= 22.5
			direction = "to your north."
		elseIf angle <= 67.5
			direction = "to your northeast."
		elseIf angle <= 112.5
			direction = "to your east."
		elseIf angle <= 157.5
			direction = "to your southeast"
		elseIf angle <= 202.5
			direction = "to your south."
		elseIf angle <= 247.5
			direction = "to your southwest."
		elseIf angle <= 292.5
			direction = "to your west."
		elseIf angle <= 337.5
			direction = "to your northwest."
		elseIf angle <= 360
			direction = "to your north."
		else
			direction = "in an unknown direction."
		EndIf

		float distance = currentSlave.GetRef().GetDistance(player)
		string units = " metres "
		distance = currentSlave.GetRef().GetDistance(player) * 1.428 / 100
		if distance > 1000
			distance = distance / 1000
			units = " kilometres "
		endIf
		AddTextOption("$PAHE_Location", "Tamriel", OPTION_FLAG_DISABLED)
		AddTextOption("", (distance as int) + units + direction, OPTION_FLAG_DISABLED)
	Else
		AddTextOption("$PAHE_Location", currentLoc, OPTION_FLAG_DISABLED)
	EndIf

;	AddEmptyOption()
	AddTextOption("$PAHE_Health", (currentSlave.GetActorRef().GetAV("Health") / currentSlave.GetActorRef().GetAVPercentage("Health")) as Int, OPTION_FLAG_DISABLED)
	If occupation == "Mage" || occupation == "Guard"
		AddTextOption("$PAHE_Magicka", (currentSlave.GetActorRef().GetAV("Magicka") / currentSlave.GetActorRef().GetAVPercentage("Magicka")) as Int, OPTION_FLAG_DISABLED)
	EndIf


	AddHeaderOption("$Slave_Stats_header")	;	"Slave Stats"
	AddTextOption("$PAHE_Submission", currentSlave.submission as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Anger", currentSlave.anger_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Combat", currentSlave.combat_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Respect", currentSlave.respect_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Pose", currentSlave.Pose_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Sex", currentSlave.sex_training as Int, OPTION_FLAG_DISABLED)
	AddTextOption("$PAHE_Fear", currentSlave.fear_training as Int, OPTION_FLAG_DISABLED)
	If (Game.GetModByName("DiaryOfMine.esp") != 255)
		AddTextOption("$PahD_Humiliation", currentSlave.humiliation as Int, OPTION_FLAG_DISABLED)
		AddTextOption("$PahD_Resignation", currentSlave.resignation as Int, OPTION_FLAG_DISABLED)
	EndIf

	If debugToggle
		AddTextOption("$PAHE_Morality", currentSlave.getActorRef().GetAV("Morality"), OPTION_FLAG_DISABLED)
		AddTextOption("$PAHE_Current_mood", currentSlave.mind.mood, OPTION_FLAG_DISABLED)
		AddTextOption("$PAHE_Current_state", currentSlave.behaviour, OPTION_FLAG_DISABLED)
	EndIf
;	rename_OID = AddTextOption("", "Rename " + currentSlave.GetActorRef().getDisplayName())
	rename_OID = AddTextOption("$PAHE_Rename_", currentSlave.GetActorRef().getDisplayName())
	if !player
		player = Game.GetPlayer()
	EndIf

	If debugToggle
		AddEmptyOption()
		teleportSlave_OID = AddTextOption("$PAHE_teleport_Slave_to_player", currentSlave.GetActorRef().GetDisplayName())
		resetSlave_OID = AddTextOption("$PAHE_Reset_Slave", currentSlave.GetActorRef().GetDisplayName())
		AddTextOption("Voice Type:" + StringUtil.Substring(currentSlave.GetActorRef().getVoiceType() + "", 12, StringUtil.Find(currentSlave.GetActorRef().getVoiceType() + "", " ", 12) - 12), "", OPTION_FLAG_DISABLED)
		reCloneSlave_OID = AddTextOption("$PAHE_reClone_Slave", currentSlave.GetActorRef().GetDisplayName())
		Release_Slave_OID = AddTextOption("$PAHE_Release_Slave", currentSlave.GetActorRef().getDisplayName())
	EndIf
EndFunction

Event OnOptionHighLight(Int option)
	If (option == fleeToggle_OID)
		SetInfoText("$PAHE_SettingInfo_FleeToggle")
	ElseIf (option == CaptiveToggle_OID)
		SetInfoText("$PAHE_SettingInfo_CaptiveToggle")
	ElseIf (option == healthToggle_OID)
		SetInfoText("$PAHE_SettingInfo_HealthToggle")
	ElseIf (option == bleedOutToggle_OID)
		SetInfoText("$PAHE_SettingInfo_BleedOutToggle")
	ElseIf (option == sleepToggle_OID)
		SetInfoText("$PAHE_SettingInfo_SleepToggle")
	ElseIf (option == paralyzeToggle_OID)
		SetInfoText("$PAHE_SettingInfo_ParalyzeToggle")
	ElseIf (option == EnslaveFollowerToggle_OID)
		SetInfoText("$PAHE_SettingInfo_EnslaveFollowerToggle")
	ElseIf (option == slaveToggle_OID)
		SetInfoText("$PAHE_SettingInfo_SlaveToggle")
	ElseIf (option == EnslaveFalmerToggle_OID)
		SetInfoText("$PAHE_SettingInfo_EnslaveFalmerToggle")
	ElseIf (option == EnslaveAutomatonToggle_OID)
		SetInfoText("$PAHE_SettingInfo_EnslaveAutomatonToggle")
	ElseIf (option == EnslaveTrollToggle_OID)
		SetInfoText("$PAHE_SettingInfo_EnslaveTrollToggle")
	ElseIf (option == EnslaveFlameAtronachToggle_OID)
		SetInfoText("$PAHE_SettingInfo_EnslaveFlameAtronachToggle")
	ElseIf (option == leashToggle_OID)
		SetInfoText("$PAHE_SettingInfo_LeashToggle")
	ElseIf (option == rebootToggle_OID)
		SetInfoText("$PAHE_SettingInfo_RebootToggle")
	ElseIf (option == statSpellToggle_OID)
		SetInfoText("$PAHE_SettingInfo_StatSpellToggle")
	ElseIf (option == slaverRankSetting_OID)
		SetInfoText("$PAHE_SlaverInfo_" + PAH.slaverSetting)
	ElseIf (option == debugToggle_OID)
		SetInfoText("$PAHE_SettingInfo_debugToggle")
	ElseIf (option == hotKey_OID)
		SetInfoText("$PAHE_SettingInfo_Hotkey")
	;ElseIf (option == modifierKey_OID)
	;	SetInfoText("$PAHE_SettingInfo_modifierKey")
	ElseIf (option == whistleKey_OID)
		SetInfoText("$PAHE_SettingInfo_WhistleKey")
	ElseIf (option == renameToggle_OID)
		SetInfoText("$PAHE_SettingInfo_RenameToggle")
	ElseIf (option == recheck_Player_Gender_Toggle_OID)
		SetInfoText("$PAHE_SettingInfo_recheck_Player_Gender_Toggle")
	ElseIf (option == mixed_race_Toggle_OID)
		SetInfoText("$PAHE_SettingInfo_mixed_race_Toggle")
	ElseIf (option == ExportSettings_OID)
		SetInfoText("$PAHE_SettingInfo_ExportSettings")
	ElseIf (option == ImportSettings_OID)
		SetInfoText("$PAHE_SettingInfo_ImportSettings")
	ElseIf (option == VampireCattleToggle_OID)
		SetInfoText("$PAHE_SettingInfo_VampireCattleToggle")
	ElseIf (option == MandateNudityToggle_OID)
		SetInfoText("$PAHE_SettingInfo_MandateNudityToggle")
	ElseIf (option == NakedOutfitDisabled_OID)
		SetInfoText("$PAHE_SettingInfo_NakedOutfitDisabled")
	ElseIf (option == NakedOutfit_Uniques_Only_OID)
		SetInfoText("$PAHE_SettingInfo_NakedOutfit_Uniques_Only")
	ElseIf (option == alwaysAggro_Punish_Toggle_OID)
		SetInfoText("$PAHE_SettingInfo_alwaysAggro_Punish_Toggle")
	ElseIf (option == use_sexlab_gender_Toggle_OID)
		SetInfoText("$PAHE_SettingInfo_sexlab_genderToggle")
	ElseIf (option == alwaysAggroToggle_OID)
		SetInfoText("$PAHE_SettingInfo_alwaysAggroToggle")
	ElseIf (option == showSlaveCountToggle_OID)
		SetInfoText("$PAHE_SettingInfo_showSlaveCountToggle")
	EndIf
EndEvent

Event OnOptionSelect(Int option)
	If CurrentPage == pageNames[2]
		if !player
			player = Game.GetPlayer()
		EndIf
		If (option == rename_OID)
			UILIB_1 UILib = ((Self as Form) as UILIB_1)
			String suggestedName = currentSlave.GetActorRef().getDisplayName()
			If PAH.jcInstalled
				string gender
				If currentSlave.GetActorRef().GetLeveledActorBase().getSex() == 0
					gender = "Male"
				Else
					gender = "Female"
				EndIf

				string sRace = currentSlave.GetActorRef().getRace().getName()
				string filename = gender + sRace

				int jNames = JValue.readFromFile("Data/PAHE/" + filename + ".txt")
				int rInt = Utility.RandomInt(0, JArray.count(jNames) - 1)
				String name = JArray.getStr(jNames, rInt)

				If name != ""
					suggestedName = name
				EndIf
			EndIf

			String sResult = UILib.ShowTextInput("Rename Slave", suggestedName)
			If sResult != ""
				;ShowMessage("please wait for slave list menus to update before exiting slave list", false)
				currentSlave.SetDisplayName(sResult)
				forcedReset = currentSlave_OID
				ForcePageReset()
			EndIf
		ElseIf (option == teleportSlave_OID)
			CloseMessage()
			currentSlave.getActorRef().MoveTo(player)
		ElseIf (option == resetSlave_OID)
			CloseMessage()
			currentSlave.resetSlave()
		ElseIf (option == reCloneSlave_OID)
			CloseMessage()
			currentSlave.reCloneSlave()
		ElseIf (option == Release_Slave_OID)
			CloseMessage()
			currentSlave.Release()
		Else
			forcedReset = option
			ForcePageReset()
		EndIf
	ElseIf CurrentPage == pageNames[3]
		if !player
			player = Game.GetPlayer()
		EndIf
		If (option == rename_OID)
			UILIB_1 UILib = ((Self as Form) as UILIB_1)
			String suggestedName = currentSlave.GetActorRef().getDisplayName()
			If PAH.jcInstalled
				string gender
				If currentSlave.GetActorRef().GetLeveledActorBase().getSex() == 0
					gender = "Male"
				Else
					gender = "Female"
				EndIf

				string sRace = currentSlave.GetActorRef().getRace().getName()
				string filename = gender + sRace

				int jNames = JValue.readFromFile("Data/PAHE/" + filename + ".txt")
				int rInt = Utility.RandomInt(0, JArray.count(jNames) - 1)
				String name = JArray.getStr(jNames, rInt)

				If name != ""
					suggestedName = name
				EndIf
			EndIf

			String sResult = UILib.ShowTextInput("Rename Slave", suggestedName)
			If sResult != ""
			;	ShowMessage("please wait for slave list menus to update before exiting slave list", false)
				currentSlave.SetDisplayName(sResult)
				forcedReset = currentSlave_OID
				ForcePageReset()
			EndIf
		ElseIf (option == teleportSlave_OID)
			CloseMessage()
			currentSlave.getActorRef().MoveTo(player)
		ElseIf (option == resetSlave_OID)
			CloseMessage()
			currentSlave.resetSlave()
		ElseIf (option == reCloneSlave_OID)
			CloseMessage()
			currentSlave.reCloneSlave()
		ElseIf (option == Release_Slave_OID)
			CloseMessage()
			currentSlave.Release()
		Else
			forcedReset = option
			ForcePageReset()
		EndIf
	ElseIf CurrentPage == pageNames[4]
		if !player
			player = Game.GetPlayer()
		EndIf
		If (option == rename_OID)
			UILIB_1 UILib = ((Self as Form) as UILIB_1)
			String suggestedName = currentSlave.GetActorRef().getDisplayName()
			If PAH.jcInstalled
				string gender
				If currentSlave.GetActorRef().GetLeveledActorBase().getSex() == 0
					gender = "Male"
				Else
					gender = "Female"
				EndIf

				string sRace = currentSlave.GetActorRef().getRace().getName()
				string filename = gender + sRace

				int jNames = JValue.readFromFile("Data/PAHE/" + filename + ".txt")
				int rInt = Utility.RandomInt(0, JArray.count(jNames) - 1)
				String name = JArray.getStr(jNames, rInt)

				If name != ""
					suggestedName = name
				EndIf
			EndIf

			String sResult = UILib.ShowTextInput("Rename Slave", suggestedName)
			If sResult != ""
				;ShowMessage("please wait for slave list menus to update before exiting slave list", false)
				currentSlave.SetDisplayName(sResult)
				forcedReset = currentSlave_OID
				ForcePageReset()
			EndIf
		ElseIf (option == teleportSlave_OID)
			CloseMessage()
			currentSlave.getActorRef().MoveTo(player)
		ElseIf (option == resetSlave_OID)
			CloseMessage()
			currentSlave.resetSlave()
		ElseIf (option == reCloneSlave_OID)
			CloseMessage()
			currentSlave.reCloneSlave()
		ElseIf (option == Release_Slave_OID)
			CloseMessage()
			currentSlave.Release()
		Else
			forcedReset = option
			ForcePageReset()
		EndIf
	ElseIf CurrentPage == pageNames[1]
		if !player
			player = Game.GetPlayer()
		EndIf
		If (option == fleeToggle_OID)
			If player.hasPerk(PAH.PAHEnslaveFleeingPerk)
				player.removePerk(PAH.PAHEnslaveFleeingPerk)
			Else
				player.AddPerk(PAH.PAHEnslaveFleeingPerk)
			EndIf
			SetToggleOptionValue(fleeToggle_OID, player.hasPerk(PAH.PAHEnslaveFleeingPerk))
		ElseIf (option == CaptiveToggle_OID)
			If player.hasPerk(PAH.PAHEnslaveCaptivePerk)
				player.removePerk(PAH.PAHEnslaveCaptivePerk)
			Else
				player.AddPerk(PAH.PAHEnslaveCaptivePerk)
			EndIf
			SetToggleOptionValue(CaptiveToggle_OID, player.hasPerk(PAH.PAHEnslaveCaptivePerk))
		ElseIf (option == healthToggle_OID)
			setPerk(1)
			SetToggleOptionValue(healthToggle_OID, player.hasPerk(PAH.EnslavePerks[1]))
		ElseIf (option == bleedOutToggle_OID)
			setPerk(2)
			SetToggleOptionValue(bleedOutToggle_OID, player.hasPerk(PAH.EnslavePerks[2]), disableFlag)
		ElseIf (option == sleepToggle_OID)
			setPerk(3)
			SetToggleOptionValue(sleepToggle_OID, player.hasPerk(PAH.EnslavePerks[3]))
		ElseIf (option == paralyzeToggle_OID)
			setPerk(4)
			SetToggleOptionValue(paralyzeToggle_OID, player.hasPerk(PAH.EnslavePerks[4]))
		ElseIf (option == EnslaveFollowerToggle_OID)
			setPerk(5)			
			SetToggleOptionValue(EnslaveFollowerToggle_OID, player.hasPerk(PAH.EnslavePerks[5]))
		ElseIf (option == slaveToggle_OID)
			setPerk(6)
			SetToggleOptionValue(slaveToggle_OID, player.hasPerk(PAH.EnslavePerks[6]))
		ElseIf (option == EnslaveFalmerToggle_OID)
			setPerk(7)
			SetToggleOptionValue(EnslaveFalmerToggle_OID, player.hasPerk(PAH.EnslavePerks[7]))
		ElseIf (option == EnslaveAutomatonToggle_OID)
			setPerk(8)
			SetToggleOptionValue(EnslaveAutomatonToggle_OID, player.hasPerk(PAH.EnslavePerks[8]))
		ElseIf (option == EnslaveFlameAtronachToggle_OID)
			setPerk(9)
			SetToggleOptionValue(EnslaveFlameAtronachToggle_OID, player.hasPerk(PAH.EnslavePerks[9]))
		ElseIf (option == EnslaveTrollToggle_OID)
			setPerk(10)
			SetToggleOptionValue(EnslaveTrollToggle_OID, player.hasPerk(PAH.EnslavePerks[10]))
		EndIf
	Else
		if !player
			player = Game.GetPlayer()
		EndIf
		If (option == renameToggle_OID)
			renameToggle = !renameToggle
			SetToggleOptionValue(renameToggle_OID, renameToggle)
		ElseIf (option == recheck_Player_Gender_Toggle_OID)
			recheck_Player_Gender_Toggle = !recheck_Player_Gender_Toggle
			SetToggleOptionValue(recheck_Player_Gender_Toggle_OID, recheck_Player_Gender_Toggle)
		ElseIf (option == mixed_race_Toggle_OID)
			mixed_race_Toggle = !mixed_race_Toggle
			SetToggleOptionValue(mixed_race_Toggle_OID, mixed_race_Toggle)
		ElseIf (option == VampireCattleToggle_OID)
			VampireCattleToggle = !VampireCattleToggle
			SetToggleOptionValue(VampireCattleToggle_OID, VampireCattleToggle)
		ElseIf (option == MandateNudityToggle_OID)
			MandateNudityToggle = !MandateNudityToggle
			SetToggleOptionValue(MandateNudityToggle_OID, MandateNudityToggle)
		ElseIf (option == NakedOutfitDisabled_OID)
			NakedOutfitDisabled = !NakedOutfitDisabled
			SetToggleOptionValue(NakedOutfitDisabled_OID, NakedOutfitDisabled)
		ElseIf (option == NakedOutfit_Uniques_Only_OID)
			NakedOutfit_Uniques_Only = !NakedOutfit_Uniques_Only
			SetToggleOptionValue(NakedOutfit_Uniques_Only_OID, NakedOutfit_Uniques_Only)
		ElseIf (option == leashToggle_OID)
			leashToggle = !leashToggle
			SetToggleOptionValue(leashToggle_OID, leashToggle)
		ElseIf (option == showSlaveCountToggle_OID)
			showSlaveCountToggle = !showSlaveCountToggle
			SetToggleOptionValue(showSlaveCountToggle_OID, showSlaveCountToggle)
		ElseIf (option == rebootToggle_OID)
			SetTextOptionValue(rebootToggle_OID, "$PAHE_SettingName_RebootToggle_restarting")
			SetOptionFlags(rebootToggle_OID, OPTION_FLAG_DISABLED)
			CloseMessage()
			Reboot.Boot()
		ElseIf (option == statSpellToggle_OID)
			statSpellToggle = !statSpellToggle
			If statSpellToggle
				player.AddSpell(statSpell)
			else
				player.RemoveSpell(statSpell)
			endIf
			SetToggleOptionValue(statSpellToggle_OID, statSpellToggle)
		ElseIf (option == slaverRankSetting_OID)
			PAH.slaverSetting += 1
			SetTextOptionValue(slaverRankSetting_OID, "$PAHE_SlaverSetting_" + PAH.slaverSetting)
		ElseIf (option == debugToggle_OID)
			_debugToggle = !_debugToggle
			SetToggleOptionValue(debugToggle_OID, _debugToggle)
		ElseIf (option == resetSlaveList_OID)
			PAH.updateSlaveArray()
		ElseIf (option == ExportSettings_OID)
			If ShowMessage("$PAHE_Overwrite_settings_file")
				SetTextOptionValue(ExportSettings_OID, "$PAHE_Exporting_Settings")
				SaveSettings()
				SetTextOptionValue(ExportSettings_OID, "$PAHE_Done! ", false)
			Endif
		ElseIf (option == ImportSettings_OID)
			If ShowMessage("$PAHE_Overwrite_current_settings")
				SetTextOptionValue(ImportSettings_OID, "$PAHE_Importing_Settings ", false)
				LoadSettings()
				SetTextOptionValue(ImportSettings_OID, "$PAHE_Done! ", false)
			Endif
		ElseIf (option == use_sexlab_gender_Toggle_OID)
			PAH.sexlab_gender = !PAH.sexlab_gender
			SetToggleOptionValue(use_sexlab_gender_Toggle_OID, PAH.sexlab_gender)
		ElseIf (option == alwaysAggro_Punish_Toggle_OID)
			PAH.bAlways_Punish_Aggressive = !PAH.bAlways_Punish_Aggressive
			SetToggleOptionValue(alwaysAggro_Punish_Toggle_OID, PAH.bAlways_Punish_Aggressive)
		ElseIf (option == alwaysAggroToggle_OID)
			PAH.bAlwaysAggressive = !PAH.bAlwaysAggressive
			SetToggleOptionValue(alwaysAggroToggle_OID, PAH.bAlwaysAggressive)
		EndIf
	EndIf
EndEvent

Event OnOptionKeyMapChange(int option, int keyCode, string conflictControl, string conflictName)
	If (option == hotKey_OID)
		_hotKey = keyCode
		SetKeyMapOptionValue(hotKey_OID, hotkey)
		PAH.RegisterForKey(hotKey)
	ElseIf (option == whistleKey_OID)
		_whistleKey = keyCode
		SetKeyMapOptionValue(whistleKey_OID, whistleKey)
		PAH.RegisterForKey(whistleKey)
	;ElseIf (option == modifierKey_OID)
	;	_modifierKey = keyCode
	;	SetKeyMapOptionValue(modifierKey_OID, modifierKey)
	;	PAH.RegisterForKey(modifierKey)
	EndIf
EndEvent

event OnOptionDefault(int option)
	If (option == hotKey_OID)
		PAH.UnregisterForKey(_hotKey)
		_hotkey = -1
		SetKeyMapOptionValue(hotKey_OID, hotkey)
	ElseIf (option == whistleKey_OID)
		PAH.UnregisterForKey(_whistleKey)
		_whistleKey = -1
		SetKeyMapOptionValue(whistleKey_OID, whistleKey)
	;ElseIf (option == modifierKey_OID)
	;	PAH.UnregisterForKey(_modifierKey)
	;	_modifierKey = -1
	;	SetKeyMapOptionValue(modifierKey_OID, modifierKey)
	EndIf
EndEvent

State SLAVE_runaway
	Event OnSliderOpenST()
		SetSliderDialogStartValue(runAwayValue)
		SetSliderDialogDefaultValue(60)
		SetSliderDialogRange(40, 100)
		SetSliderDialogInterval(1)
	EndEvent
	Event OnSliderAcceptST(float value)
		runAwayValue = value As int
		SetSliderOptionValueST(runAwayValue)
	EndEvent
	Event OnDefaultST()
		runAwayValue = 60
		SetSliderOptionValueST(runAwayValue)
	EndEvent
	Event OnHighlightST()
		SetInfoText("$PAHE_SettingInfo_RunAway")
	EndEvent
EndState

State CAP_health
	Event OnSliderOpenST()
		SetSliderDialogStartValue(globalHealthPerc.getValue() * 100)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(1, 75)
		SetSliderDialogInterval(1)
	EndEvent
	Event OnSliderAcceptST(float value)
		globalHealthPerc.setValue((value/100))
		SetSliderOptionValueST(globalHealthPerc.getValue() * 100)
	EndEvent
	Event OnDefaultST()
		globalHealthPerc.setValue(50 / 100)
		SetSliderOptionValueST(globalHealthPerc.getValue() * 100)
	EndEvent
	Event OnHighlightST()
		SetInfoText("$PAHE_SettingInfo_HealthPerc")
	EndEvent
EndState

State RAPE_time
	Event OnSliderOpenST()
		SetSliderDialogStartValue(postRapeDelay)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(5, 120)
		SetSliderDialogInterval(0.5)
	EndEvent
	Event OnSliderAcceptST(float value)
		postRapeDelay = value
		SetSliderOptionValueST(postRapeDelay)
	EndEvent
	Event OnDefaultST()
		postRapeDelay = 15
		SetSliderOptionValueST(postRapeDelay)
	EndEvent
	Event OnHighlightST()
		SetInfoText("$PAHE_SettingInfo_RapeTimer")
	EndEvent
EndState

State PUN_severity
	Event OnSliderOpenST()
		SetSliderDialogStartValue(severity)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(10, 100)
		SetSliderDialogInterval(1)
	EndEvent
	Event OnSliderAcceptST(float value)
		severity = value as Int
		SetSliderOptionValueST(severity)
	EndEvent
	Event OnDefaultST()
		severity = 100
		SetSliderOptionValueST(severity)
	EndEvent
	Event OnHighlightST()
		SetInfoText("$PAHE_SettingInfo_Severity")
	EndEvent
EndState

State FOL_efficiency
	Event OnSliderOpenST()
		SetSliderDialogStartValue(followerTrainingEfficiency)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(10, 100)
		SetSliderDialogInterval(1)
	EndEvent
	Event OnSliderAcceptST(float value)
		followerTrainingEfficiency = value as Int
		SetSliderOptionValueST(followerTrainingEfficiency)
	EndEvent
	Event OnDefaultST()
		followerTrainingEfficiency = 50
		SetSliderOptionValueST(followerTrainingEfficiency)
	EndEvent
	Event OnHighlightST()
		SetInfoText("$PAHE_SettingInfo_Follower")
	EndEvent
EndState
Function CloseMessage()
	ShowMessage("Close all menus to continue...", false)
	Utility.wait(0.1)
EndFunction

Function setPerk(int index)
	if !player
		player = Game.GetPlayer()
	EndIf
	If player.hasPerk(PAH.EnslavePerks[index])
		player.removePerk(PAH.EnslavePerks[index])
		PAH.EnslavePerksToggle[index] = 0
	Else
		player.AddPerk(PAH.EnslavePerks[index])
		PAH.EnslavePerksToggle[index] = 1
	EndIf
EndFunction

Function SaveSettings()
	;PAH_MCM PAHMenu = Game.GetFormFromFile(0x06009157, "paradise_halls_SLExtension.esp") As PAH_MCM
	zbfSexLab ZAZ   = Game.GetFormFromFile(0x0200CD14, "ZaZAnimationPack.esm") As zbfSexLab

	;	SetKeyMapOptionValue(hotKey_OID, hotkey)
	; Ints
	JsonUtil.SetIntValue("pahe/Settings.json", "markkey",       hotkey)
	
	; Floats
	JsonUtil.SetFloatValue("pahe/Settings.json", "PostDelay", postRapeDelay)
	
	; Bools
	JsonUtil.SetIntValue("pahe/Settings.json", "renametoggle", renameToggle as Int)
	JsonUtil.SetIntValue("pahe/Settings.json", "recheck_Player_Gender_Toggle", recheck_Player_Gender_Toggle as Int)
	JsonUtil.SetIntValue("pahe/Settings.json", "sexlab_gender", PAH.sexlab_gender as Int)
	JsonUtil.SetIntValue("pahe/Settings.json", "allwaysaggressive", PAH.bAlwaysAggressive as Int)
	JsonUtil.SetIntValue("pahe/Settings.json", "allways_Punish_aggressive", PAH.bAlways_Punish_Aggressive as Int)
	JsonUtil.SetIntValue("pahe/Settings.json", "leashtoggle", leashToggle as Int)
	JsonUtil.SetIntValue("pahe/Settings.json", "NudityToggle", MandateNudityToggle as Int)
	JsonUtil.SetIntValue("pahe/Settings.json", "outfittoggle", NakedOutfitDisabled as Int)
	JsonUtil.SetIntValue("pahe/Settings.json", "outfit_Uniques_Only_toggle", NakedOutfit_Uniques_Only as Int)
	JsonUtil.SetIntValue("pahe/Settings.json", "zazoverride", ZAZ.bOverrideSexLabAnimation as Int)
	JsonUtil.SetIntValue("pahe/Settings.json", "CattleToggle", VampireCattleToggle as Int)
	 
	JsonUtil.Save("pahe/Settings.json")
EndFunction

Function LoadSettings()
	;PAH_MCM PAHMenu = Game.GetFormFromFile(0x06009157, "paradise_halls_SLExtension.esp") As PAH_MCM
	zbfSexLab ZAZ   = Game.GetFormFromFile(0x0200CD14, "ZaZAnimationPack.esm") As zbfSexLab

	; Ints
	_hotKey   = JsonUtil.GetIntValue("pahe/Settings.json", "markkey", -1)

	; Floats
	postRapeDelay= JsonUtil.GetFloatValue("pahe/Settings.json", "PostDelay", 15.0)	

	; Bools
	renameToggle = JsonUtil.GetIntValue("pahe/Settings.json", "renametoggle", 1)
	recheck_Player_Gender_Toggle = JsonUtil.GetIntValue("pahe/Settings.json", "recheck_Player_Gender_Toggle", 1)
	PAH.sexlab_gender = JsonUtil.GetIntValue("pahe/Settings.json", "sexlab_gender", 0)
	PAH.bAlwaysAggressive = JsonUtil.GetIntValue("pahe/Settings.json", "allwaysaggressive", 0)
	PAH.bAlways_Punish_Aggressive = JsonUtil.GetIntValue("pahe/Settings.json", "allways_Punish_aggressive", 0)
	leashToggle = JsonUtil.GetIntValue("pahe/Settings.json", "leashtoggle", 1)
	MandateNudityToggle = JsonUtil.GetIntValue("pahe/Settings.json", "NudityToggle", 0)
	NakedOutfitDisabled = JsonUtil.GetIntValue("pahe/Settings.json", "outfittoggle", 0)
	NakedOutfit_Uniques_Only = JsonUtil.GetIntValue("pahe/Settings.json", "outfit_Uniques_Only_toggle", 0)
	ZAZ.bOverrideSexLabAnimation = JsonUtil.GetIntValue("pahe/Settings.json", "zazoverride", 0)
	VampireCattleToggle = JsonUtil.GetIntValue("pahe/Settings.json", "CattleToggle", 0)

	ForcePageReset()
EndFunction

