Scriptname PAHSlave extends ReferenceAlias
Import Utility

;### Constants ###
PAHCore Property PAH Auto
SexLabFramework Property SexLab Auto
ReferenceAlias Property pah_stub Auto	Hidden
ReferenceAlias Property ReleaseMarker  Auto	Hidden

Faction Property zbfFactionSlave Auto
Faction Property zbfFactionGagAllowTalk Auto

Faction Property PlayerFaction Auto
Faction Property PlayerFollowerFaction Auto
Faction Property CurrentFollowerFaction Auto ;CurrentFollowerFaction [FACT:0005C84E]

Faction Property PotentialFollowerFaction Auto
Faction Property DunPlayerAllyFaction Auto

Faction Property PAHPlayerSlaveFaction Auto
Faction Property PAHPersEvenToned Auto
Faction Property PAHPersYoungEager Auto
Faction Property PAHPersCondescending Auto
Faction Property PAHPersNord Auto
Faction Property PAHPersFemaleArgonian Auto
Faction Property PAHPersFemaleSultry Auto

Faction Property PAHCaged auto
Faction Property PAHBEFollowing Auto
Faction Property PAHBEWaiting Auto
Faction Property PAHBECleaning Auto

Faction Property PAHMoodNeutral Auto
Faction Property PAHMoodAngry Auto
Faction Property PAHMoodAfraid Auto
Faction Property PAHMoodJustCaptured Auto

Faction Property PAHBEFleeingAndCowering Auto
Faction Property PAHBERunningAway Auto
Faction Property PAHBEWaitingAtLeashPoint Auto
Faction Property PAHBETied Auto
Faction Property PAHBECalm Auto

Faction Property PAHSubmission Auto
Faction Property PAHTrainCombat Auto
Faction Property PAHTrainAnger Auto
Faction Property PAHTrainRespect Auto
Faction Property PAHTrainPose Auto

Faction Property PAHShouldBeRespectful Auto
Faction Property PAHShouldFightForPlayer Auto
Faction Property PAHShouldPose Auto

Faction Property PAHRespectful Auto
Faction Property PAHPosing Auto

Faction Property PAHSDMadeNaked Auto
Faction Property PAHSDClothedFromNaked Auto
Faction Property PAHSDArmorAdded Auto
Faction Property PAHSDWeaponAdded Auto
Faction Property PAHSDWeaponRemoved Auto
Faction Property PAHSDRestraintAdded Auto
Faction Property PAHSDRestraintRemoved Auto
Faction Property PAHSDFailedToFight Auto
Faction Property PAHSDFailedToPose Auto

EncounterZone Property PAH0to9Zone Auto
EncounterZone Property PAH10to19Zone Auto
EncounterZone Property PAH20to29Zone Auto
EncounterZone Property PAH30to39Zone Auto
EncounterZone Property PAH40to49Zone Auto
EncounterZone Property PAH50to59Zone Auto
EncounterZone Property PAH60to69Zone Auto
EncounterZone Property PAH70to79Zone Auto
EncounterZone Property PAH80to89Zone Auto
EncounterZone Property PAH90to99Zone Auto
EncounterZone Property PAH100to109Zone Auto
EncounterZone Property PAH110to119Zone Auto
EncounterZone Property PAH120to129Zone Auto
EncounterZone Property PAH130to139Zone Auto
EncounterZone Property PAH140to149Zone Auto
EncounterZone Property PAH150to159Zone Auto
EncounterZone Property PAH160to169Zone Auto
EncounterZone Property PAH170to179Zone Auto
EncounterZone Property PAH180to189Zone Auto
EncounterZone Property PAH190to199Zone Auto
EncounterZone Property PAH200PlusZone Auto

Outfit Property PAHNothingOutfit Auto

Keyword Property PAHRestraint Auto
Keyword Property PAHPaingiver Auto
Keyword Property Pah_Dwarven_Device Auto

Package Property DoNothing Auto
Package Property PAHDoNothing Auto
Package Property PAHCleanerPackage Auto

Spell Property PAHLeashToSpell Auto
; Message Property slaveName Auto

String name

;### Properties ###
PAHActorAlias __actor_alias
PAHActorAlias Property actor_alias
	PAHActorAlias Function get()
		if manual_control_mode
			UnregisterForModEvent(GetID() + "PAHEUpdateStrength")
			return pah_stub as PAHActorAlias
		endif

		if __actor_alias == None
			__actor_alias = (self as ReferenceAlias) as PAHActorAlias
			if __actor_alias == None
				return pah_stub as PAHActorAlias
			endif
		endif
		return __actor_alias
	EndFunction
EndProperty

PAHSlaveMind __mind
PAHSlaveMind Property mind
	PAHSlaveMind Function get()
		if __mind == None
			__mind = (self as ReferenceAlias) as PAHSlaveMind
			if __mind == None
				return pah_stub as PAHSlaveMind
			endif
		endif
		return __mind
	EndFunction
EndProperty

;Actor Property backpack_mule Auto	Hidden
Bool manual_control_mode = false
Actor Property PlayerRef Auto

Function DisableAutomaticBehaviour(Bool value = true)
	if value
		EndBehaviour()
		actor_alias.StandStill()
	endif
	manual_control_mode = value
	if !value
		StartBehaviour()
	endif
EndFunction

; ### Setup and teardown ###

Event OnBootstrap(string eventName = "", string strArg = "", float numArg = 0.0, Form sender = None)
	UnregisterForModEvent("PAHBootstrap")
	if GetActorRef() != None
		AfterAssign()
	endif
EndEvent

Event AfterAssign()
										If PAH.enableDebug
											debug.trace("[PAHESlave] After Assign")
										EndIf
	__actor_alias = (self as ReferenceAlias) as PAHActorAlias
	__mind = None
	manual_control_mode = false
	GetActorRef().AddToFaction(PAHPlayerSlaveFaction)
	GetActorRef().RemoveFromFaction(PAH.PAHHasBeenPlayerSlaveFaction)
	GetActorRef().AddToFaction(PAH.PAHSlaveFaction)
	actor_alias.UnblockDialogue()
	If (zbfFactionSlave == None)
        	zbfFactionSlave = Game.GetFormFromFile(0x000096AE, "ZaZAnimationPack.esm") As Faction
    	EndIf
	If zbfFactionSlave != None
		GetActorRef().AddToFaction(zbfFactionSlave)
	EndIf
    	If (zbfFactionGagAllowTalk == None)
        	zbfFactionGagAllowTalk = Game.GetFormFromFile(0x000221B5, "ZaZAnimationPack.esm") As Faction
    	EndIf
	If zbfFactionGagAllowTalk != None
		GetActorRef().AddToFaction(zbfFactionGagAllowTalk)
	EndIf
;this next line causes issues with home sweet home, But...
;	actor_alias.AddToFaction(PlayerFaction)
	GetActorRef().AddToFaction(PAH.dunPrisonerFaction)
	If (Game.GetModByName("Dawnguard.esm") != 255)
		If ((PAH.DLC1ThrallFaction != None) && pah.Config.VampireCattleToggle)
			GetActorRef().AddToFaction(PAH.DLC1ThrallFaction)
		EndIf
	EndIf
	GetActorRef().AddToFaction(PAH.WINeverFillAliasesFaction)
	GetActorRef().AddToFaction(PAH.BardAudienceExcludedFaction)
	GetActorRef().IgnoreFriendlyHits(true)
	GetActorRef().SetNotShowOnStealthMeter(true)
	GetActorRef().StopCombat()
	actor_alias.AllowCombat(false)
	actor_alias.allow_dialogue_in_combat = true
	submission = GetActorRef().GetFactionRank(PAHSubmission)
	int com = GetActorRef().GetFactionRank(PAHTrainCombat)
		if com < 0
        		if GetActorRef().IsInFaction(PAHTrainCombat)
            			com = 127
        		else
				com = 0
			endif
		elseif com > 127
           		com = 127
		endif
		;combat_training  = com ; Correct for >127 combat training ; combat_training  = GetActorRef().GetFactionRank(PAHTrainCombat)
		getActorRef().SetFactionRank(PAHTrainCombat, com as Int)
		combat_training = GetActorRef().GetFactionRank(PAHTrainCombat)

 	anger_training = GetActorRef().GetFactionRank(PAHTrainAnger)
	respect_training = GetActorRef().GetFactionRank(PAHTrainRespect)
	pose_training = GetActorRef().GetFactionRank(PAHTrainPose)
	should_be_respectful = GetActorRef().IsInFaction(PAHShouldBeRespectful)
	should_fight_for_player = GetActorRef().IsInFaction(PAHShouldFightForPlayer)
	sex_training = GetActorRef().GetFactionRank(PAH.PAHTrainSex)
	oral_training = GetActorRef().GetFactionRank(PAH.PAHTrainOral)
		if oral_training < 0
			oral_training = 0
		elseif ((SexLab.GetActorStatInt(getActorRef(), "Oral") > 0) && (SexLab.GetActorStatInt(getActorRef(), "Oral") > oral_training))
			oral_training = SexLab.GetActorStatInt(getActorRef(), "Oral")
		elseif ((oral_training < 100) && (oral_training > SexLab.GetActorStatInt(getActorRef(), "Oral")))
			oral_training = GetActorRef().GetFactionRank(PAH.PAHTrainOral)
		elseif ((SexLab.GetActorStatInt(getActorRef(), "Oral") > 100) || (oral_training > 100))
			oral_training = 100
		endif
		getActorRef().SetFactionRank(PAH.PAHTrainOral, oral_training as Int)
	vaginal_training = GetActorRef().GetFactionRank(PAH.PAHTrainVaginal)
		if vaginal_training < 0
			vaginal_training = 0
		elseif ((SexLab.GetActorStatInt(getActorRef(), "Vaginal") > 0) && (SexLab.GetActorStatInt(getActorRef(), "Vaginal") > vaginal_training))
			vaginal_training = SexLab.GetActorStatInt(getActorRef(), "Vaginal")
		elseif ((vaginal_training < 100) && (vaginal_training > SexLab.GetActorStatInt(getActorRef(), "Vaginal")))
			vaginal_training = GetActorRef().GetFactionRank(PAH.PAHTrainVaginal)
		elseif ((vaginal_training > 100) || (SexLab.GetActorStatInt(getActorRef(), "Vaginal") > 100))
			vaginal_training = 100
		endif		
		getActorRef().SetFactionRank(PAH.PAHTrainVaginal, vaginal_training as Int)
	anal_training = GetActorRef().GetFactionRank(PAH.PAHTrainAnal)
		if anal_training < 0
			anal_training = 0
		elseif ((SexLab.GetActorStatInt(getActorRef(), "Anal") > 0) && (SexLab.GetActorStatInt(getActorRef(), "Anal") > anal_training))
			anal_training = SexLab.GetActorStatInt(getActorRef(), "Anal")
		elseif ((anal_training < 100) && (anal_training > SexLab.GetActorStatInt(getActorRef(), "Anal")))
			anal_training = GetActorRef().GetFactionRank(PAH.PAHTrainAnal)
		elseif ((anal_training > 100) || (SexLab.GetActorStatInt(getActorRef(), "Anal") > 100))
			anal_training = 100
		endif
		getActorRef().SetFactionRank(PAH.PAHTrainAnal, anal_training as Int)
	sex_training = ((oral_training + vaginal_training + anal_training) / 3)
	GetActorRef().SetFactionRank(PAH.PAHTrainSex, sex_training as Int)
	fear_training = GetActorRef().GetFactionRank(PAH.PAHTrainFear)
	If (Game.GetModByName("DiaryOfMine.esp") != 255)
		If ((PAH.old_Humiliation != None) && (PAH.PAHHumiliation != None))
			If (GetActorRef().GetFactionRank(PAH.old_Humiliation) > GetActorRef().GetFactionRank(PAH.PAHHumiliation))
				humiliation = GetActorRef().GetFactionRank(PAH.old_Humiliation)
			Else
				humiliation = GetActorRef().GetFactionRank(PAH.PAHHumiliation)
			EndIf
		ElseIf ((PAH.old_Humiliation != None) && (GetActorRef().GetFactionRank(PAH.old_Humiliation) > 0))
			humiliation = GetActorRef().GetFactionRank(PAH.old_Humiliation)
		ElseIf ((PAH.PAHHumiliation != None) && (GetActorRef().GetFactionRank(PAH.PAHHumiliation) > 0))
			humiliation = GetActorRef().GetFactionRank(PAH.PAHHumiliation)
		EndIf
		If ((PAH.old_resignation != None) && (PAH.PAHResignation != None))
			If (GetActorRef().GetFactionRank(PAH.old_resignation) > GetActorRef().GetFactionRank(PAH.PAHResignation))
				Resignation = GetActorRef().GetFactionRank(PAH.old_resignation)
			Else
				Resignation = GetActorRef().GetFactionRank(PAH.PAHResignation)
			EndIf
		ElseIf ((PAH.old_resignation != None) && (GetActorRef().GetFactionRank(PAH.old_resignation) > 0))
			Resignation = GetActorRef().GetFactionRank(PAH.old_resignation)
		ElseIf ((PAH.PAHResignation != None) && (GetActorRef().GetFactionRank(PAH.PAHResignation) > 0))
			Resignation = GetActorRef().GetFactionRank(PAH.PAHResignation)
		EndIf
	EndIf
	setDisplayName(GetActorRef().getDisplayName())
	
	ticks_since_last_punished = 0
	registerSexEvent()
	SetInitialBehaviour()
	OnUpdateGameTime()
	;PAH.UpdateSlaveCount()
										If PAH.enableDebug
											debug.trace("[PAHESlave] After Assign: " + self + " is " + GetActorRef())
										EndIf
EndEvent

Event BeforeClear()
	UnregisterForUpdate()
	UnregisterForUpdateGameTime()
	UnregisterForModEvent(GetID() + "PAHEUpdateStrength")
	;unregisterSexEvent()
	UnregisterForModEvent("PAHEWhistle_follow")
	UnregisterForModEvent("PAHEWhistle_wait")
	__actor_alias = None
	__mind = None
	GetActorRef().RemoveFromFaction(PAHPlayerSlaveFaction)
	GetActorRef().AddToFaction(PAH.PAHHasBeenPlayerSlaveFaction)
	GetActorRef().RemoveFromFaction(PAH.PAHSlaveFaction)
EndEvent

Function Release()
	Actor self_ref = GetActorRef()
	;If self_ref.WornHasKeyword(PAHRestraint)
	;	self_ref.removeItem(Game.GetFormFromFile(0x00046D72, "paradise_halls.esm") As Armor, akOtherContainer = Game.GetPlayer())
	;	self_ref.removeItem(Game.GetFormFromFile(0x00049326, "paradise_halls.esm") As Armor, akOtherContainer = Game.GetPlayer())
	;	self_ref.removeItem(Game.GetFormFromFile(0x0000BF0E, "paradise_halls.esm") As Armor, akOtherContainer = Game.GetPlayer())
	;EndIf
	;self_ref.SetOutfit(PAHNothingOutfit, false)
	PAH.RemoveSlave(self)
EndFunction

Event OnLoad()
	registerForWhistle()
	Actor self_ref = GetActorRef()
	If (actor_alias && (actor_alias != pah_stub) && (self_ref == None))
		actor_alias.IgnoreFriendlyHits(true)
		actor_alias.SetNotShowOnStealthMeter(true)
		actor_alias.StopCombat()
		If pah.Config.MandateNudityToggle
			If (!actor_alias.WornHasKeyword(Pah_Dwarven_Device) && (!actor_alias.IsInFaction(actor_alias.PAHNaked) || actor_alias.IsInFaction(PAHBETied) || actor_alias.WornHasKeyword(actor_alias.ArmorCuirass) || actor_alias.WornHasKeyword(actor_alias.ClothingBody)))
				Strip()
			EndIf
		EndIf
		If pah.Config.NakedOutfitDisabled
			re_equip()
		EndIf	
	elseIf (self_ref && (self_ref != None))
		self_ref.IgnoreFriendlyHits(true)
		self_ref.SetNotShowOnStealthMeter(true)
		self_ref.StopCombat()
		If pah.Config.MandateNudityToggle
			If (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && (!self_ref.IsInFaction(actor_alias.PAHNaked) || self_ref.IsInFaction(PAHBETied) || self_ref.WornHasKeyword(actor_alias.ArmorCuirass) || self_ref.WornHasKeyword(actor_alias.ClothingBody)))
				Strip()
			EndIf
		EndIf
		If pah.Config.NakedOutfitDisabled
			re_equip()
		EndIf	
	EndIf	
	Debug.trace("pahslave loaded")
EndEvent

; ### Events ###
Event OnCellLoad()
	Actor self_ref = GetActorRef()
	If (self_ref && (self_ref != None))
		If pah.Config.MandateNudityToggle
			If (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && (!self_ref.IsInFaction(actor_alias.PAHNaked) || self_ref.WornHasKeyword(actor_alias.ArmorCuirass) || self_ref.WornHasKeyword(actor_alias.ClothingBody)))
				Strip()
			EndIf
		EndIf
		If pah.Config.NakedOutfitDisabled
			re_equip()
		EndIf	
	EndIf	
EndEvent

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
	Actor self_ref = GetActorRef()
	If (self_ref && (self_ref != None))
		If pah.Config.MandateNudityToggle
			If (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && (!self_ref.IsInFaction(actor_alias.PAHNaked) || self_ref.WornHasKeyword(actor_alias.ArmorCuirass) || self_ref.WornHasKeyword(actor_alias.ClothingBody)))
				Strip()
			EndIf
		EndIf
		If (pah.Config.NakedOutfitDisabled && !pah.Config.MandateNudityToggle)
			re_equip()
		EndIf	
	EndIf	
EndEvent

Event OnUpdate()
	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf
	Actor _slave = GetActorRef()
	
	If actor_alias && actor_alias != pah_stub
		Regen()
		TestShouldHaveFought()
		If _slave.getLevel() < PlayerRef.getLevel()
			UpdateStrength2()
		EndIf
		HandlePunishmentOnUpdate()
		BehaviourOnUpdate()
		ClearSDOnTick()
		PlayIdlesOnTick()
	else
		BeforeClear()
	EndIf
EndEvent

Event OnUpdateGameTime()
	If (actor_alias && (actor_alias != pah_stub))
		Actor self_ref = GetActorRef()
		SetPrehitStats()
		;If (pah.Config.MandateNudityToggle && (actor_alias != None) && (self_ref == None))
		;	If (!actor_alias.WornHasKeyword(Pah_Dwarven_Device) && (!actor_alias.IsInFaction(actor_alias.PAHNaked) || actor_alias.IsInFaction(PAHBETied) || actor_alias.WornHasKeyword(actor_alias.ArmorCuirass) || actor_alias.WornHasKeyword(actor_alias.ClothingBody)))
		;		Strip()
		;	EndIf
		;elseIf (pah.Config.MandateNudityToggle && (self_ref != None))
		;	If (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && (!self_ref.IsInFaction(actor_alias.PAHNaked) || self_ref.IsInFaction(PAHBETied) || self_ref.WornHasKeyword(actor_alias.ArmorCuirass) || self_ref.WornHasKeyword(actor_alias.ClothingBody)))
		;		Strip()
		;	EndIf
		;EndIf
		;If (pah.SexLabAnimatingFaction == None)
		;	Debug.trace("[PAHSlave] SexLabAnimatingFaction detected as none")
		;elseIf ((pah.SexLabAnimatingFaction != None) && (actor_alias != None) && pah.Config.NakedOutfitDisabled && !actor_alias.IsInFaction(pah.SexLabAnimatingFaction))
		;	re_equip()
		;EndIf	
	else
		BeforeClear()
	EndIf
EndEvent

Float prehit_health = 100.0
Float prehit_magicka = 100.0
Float prehit_stamina = 100.0

Function SetPrehitStats()
	prehit_health = GetActorRef().GetAv("Health")
EndFunction

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, \
  bool abBashAttack, bool abHitBlocked)
	Float health_damage = prehit_health - GetActorRef().GetAv("Health")
	SetPrehitStats()
	If GetActorRef().IsInFaction(PAHBETied) && struggle
		TrainPose(0.75)
		struggle = false
		PlayTieUpAnimation()
	EndIf
	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf

	if ((akAggressor == PlayerRef) && (health_damage > 0) && !PlayerRef.IsInCombat())
		HandlePunishmentOnHit()
	else
		If (akAggressor as Actor) && (akAggressor as Actor).IsPlayerTeammate()
;			Actor aggro = akAggressor as Actor
			If GetActorRef().IsHostileToActor(akAggressor as Actor)
				GetActorRef().StopCombatAlarm()
			EndIf
			GetActorRef().IgnoreFriendlyHits(true)
		EndIf
		actor_alias.AllowCombatFor(10)
	endif
EndEvent

Event OnLeashEffect()
	WaitAtLeashPoint()
EndEvent

Event OnLeashed()
	WaitAtLeashPoint()
EndEvent

Event OnUnLeashed()
	FollowPlayer()
EndEvent

Event OnToldOff(string reason)
	If reason == "running_away" && behaviour == "run_away"
		FollowPlayer()
	ElseIf reason == "not_respectful"
		respectful = true
	EndIf
EndEvent

Event OnStartPunishment(String type, string reason)
	if reason == "running_away" && behaviour == "run_away"
		FollowPlayer()
	elseif reason == "not_respectful"
		respectful = true
	endif
EndEvent

Event OnEndPunishment(String type, Float severity, string reason = "")
EndEvent

Event OnGainLOS(Actor akViewer, ObjectReference akTarget)
EndEvent

Event OnSit(ObjectReference furnitureItem)
	if (GetActorRef().IsDoingFavor())
		if (furnitureItem.hasKeywordString("zbfFurniture"))
			RestrainedInFurniture() ; No escape
		else
			WaitSandbox() ; Sit, until script decides to sandbox
		endif
		GetActorRef().SetDoingFavor(false)
	endif
EndEvent

; ### Behaviour Handling ###
String __behaviour = ""
String Property behaviour	Hidden
	String Function get()
		return __behaviour
	EndFunction
	Function set(String value)
		If actor_alias.CanChangeStates()
			__behaviour = value
			EndBehaviour()
			GoToState(__behaviour)
			StartBehaviour()
			GetActorRef().EvaluatePackage()
		EndIf
	EndFunction
EndProperty

Function StartBehaviour()
EndFunction

Function EndBehaviour()
EndFunction

Function BehaviourOnUpdate()
EndFunction

Function SetInitialBehaviour()

	if ((GetActorRef().IsInFaction(PAHMoodJustCaptured)) && (submission == 0))
		mind.mood = "just_captured"
		behaviour = "flee_and_cower"
	elseif ((GetActorRef().IsInFaction(PAHBEFollowing)) && (submission >= 1) && (GetActorRef().IsInFaction(PAHMoodAngry)))
		GetActorRef().RemoveFromFaction(PAHMoodJustCaptured)
		mind.mood = "angry"
		behaviour = "follow_player"
	elseif ((GetActorRef().IsInFaction(PAHBEFollowing)) && (GetActorRef().IsInFaction(PAHMoodAfraid)))
		getActorRef().RemoveFromFaction(PAHMoodJustCaptured)
		mind.mood = "afraid"
		behaviour = "follow_player"

	elseif GetActorRef().IsInFaction(PAHBEFollowing)
		behaviour = "follow_player"
		mind.mood = "neutral"
	elseif ((GetActorRef().IsInFaction(PAHBEWaiting)) && (submission >= 1) && (GetActorRef().IsInFaction(PAHMoodAngry)))
		GetActorRef().RemoveFromFaction(PAHMoodJustCaptured)
		mind.mood = "angry"
		behaviour = "wait"
	elseif ((GetActorRef().IsInFaction(PAHBEWaiting)) && (GetActorRef().IsInFaction(PAHMoodAfraid)))
		getActorRef().RemoveFromFaction(PAHMoodJustCaptured)
		mind.mood = "afraid"
		behaviour = "wait"
	elseif GetActorRef().IsInFaction(PAHBEWaiting)
		mind.mood = "neutral"
		behaviour = "wait"
	elseIf ((GetActorRef().IsInFaction(PAHBETied)) && (submission >= 1) && (GetActorRef().IsInFaction(PAHMoodAngry)))
		GetActorRef().RemoveFromFaction(PAHMoodJustCaptured)
		mind.mood = "angry"
		cuffs = findCuffs()
		behaviour = "tied"
	elseIf ((GetActorRef().IsInFaction(PAHBETied)) && (GetActorRef().IsInFaction(PAHMoodAfraid)))
		getActorRef().RemoveFromFaction(PAHMoodJustCaptured)
		mind.mood = "afraid"
		cuffs = findCuffs()
		behaviour = "tied"
	elseIf GetActorRef().IsInFaction(PAHBETied)
		mind.mood = "neutral"
		cuffs = findCuffs()
		behaviour = "tied"
	else
		mind.mood = "neutral"
		behaviour = "follow_player"
	endif
EndFunction

;### Behaviour Definition

Function PlayIdlesOnTick()
	If actor_alias.CanIdle()
		If (GetActorRef() && (GetActorRef() != None))
			If !GetActorRef().IsInFaction(PAHBETied)
				if (!actor_alias.is_moving) && (RandomFloat() < 0.05) && (actor_alias.naked)
					if RandomFloat() < 0.5
						actor_alias.WarmArms()
					else
						actor_alias.LookAroundNervously()
					endif
				endif
			EndIf
		else
			if (!actor_alias.is_moving) && (RandomFloat() < 0.05) && (actor_alias.naked)
				if RandomFloat() < 0.5
					actor_alias.WarmArms()
				else
					actor_alias.LookAroundNervously()
				endif
			endif

		EndIf
	EndIf
EndFunction

Function FollowPlayer()
	behaviour = "follow_player"
EndFunction

State follow_player
	Function StartBehaviour()
		if !PlayerRef
			PlayerRef = Game.GetPlayer()
		EndIf

		GetActorRef().AddToFaction(PAHBEFollowing)
		actor_alias.Follow(PlayerRef)
		;if(should_fight_for_player)
			actor_alias.GetActorRef().SetPlayerTeammate()
		;endif
	EndFunction

	Function EndBehaviour()
		GetActorRef().RemoveFromFaction(PAHBEFollowing)
		;if actor_alias.GetActorRef().IsPlayerTeammate()
			actor_alias.GetActorRef().SetPlayerTeammate(false)
		;endif
	EndFunction
EndState

Function Wait()
	behaviour = "wait"
EndFunction

State wait
	Function StartBehaviour()
		GetActorRef().AddToFaction(PAHBEWaiting)
		actor_alias.StandStill()
	EndFunction

	Function BehaviourOnUpdate()
		If mind.StartMovingByFormula()
			WaitSandbox()
		EndIf
	EndFunction

	Function EndBehaviour()
		GetActorRef().RemoveFromFaction(PAHBEWaiting)
	EndFunction
EndState

Function WaitSandbox()
	behaviour = "wait_sandbox"
EndFunction

State wait_sandbox
	Function StartBehaviour()
		;if !PlayerRef
		;	PlayerRef = Game.GetPlayer()
		;EndIf
		GetActorRef().AddToFaction(PAHBEWaiting)
		actor_alias.Sandbox()
		;RegisterForSingleLOSGain(GetActorRef(), PlayerRef)
	EndFunction
	
	;Event OnGainLOS(Actor akViewer, ObjectReference akTarget)
	;	If randomFloat() < (submission / 100)
	;		TrainSubmission(0.5)
	;		;wait()
	;	EndIf
	;EndEvent

	Function EndBehaviour()
		;if !PlayerRef
		;	PlayerRef = Game.GetPlayer()
		;EndIf
		;UnregisterForLOS(GetActorRef(), PlayerRef)
		GetActorRef().RemoveFromFaction(PAHBEWaiting)
	EndFunction
EndState

Function FleeAndCower()
	behaviour = "flee_and_cower"
EndFunction

State flee_and_cower
	Function StartBehaviour()
		if !PlayerRef
			PlayerRef = Game.GetPlayer()
		EndIf
		GetActorRef().AddToFaction(PAHBEFleeingAndCowering)
		actor_alias.FleeFrom(PlayerRef)
	EndFunction

	Function BehaviourOnUpdate()
		if !PlayerRef
			PlayerRef = Game.GetPlayer()
		EndIf
		if actor_alias.current_action == "flee_from"
			if GetActorRef().GetDistance(PlayerRef) > 500 && RandomFloat() < 0.7
				actor_alias.Cower()
			endif
		else
			if GetActorRef().GetDistance(PlayerRef) < 150 && RandomFloat() < 0.5
				actor_alias.FleeFrom(PlayerRef)
			endif
		endif
	EndFunction

	Function EndBehaviour()
		actor_alias.RemoveFromFaction(PAHBEFleeingAndCowering)
	EndFunction
EndState

Function RunAway()
	if CanRunAway()
		behaviour = "run_away"
	endif
EndFunction

State run_away
	Function StartBehaviour()
		if !PlayerRef
			PlayerRef = Game.GetPlayer()
		EndIf
		next_punishment_reason = "running_away"
		actor_alias.AddToFaction(PAHBERunningAway)
		;GetActorRef().AddToFaction(PAHBERunningAway)
		actor_alias.FleeFrom(PlayerRef)
	EndFunction

	Function OnUpdateGameTime()
		if !PlayerRef
			PlayerRef = Game.GetPlayer()
		EndIf
		if CanRunAway() && !PAH.IsTogetherWith(GetActorRef(), PlayerRef)
			actor_alias.RemoveFromGame()
		endif
	EndFunction

	Function EndBehaviour()
		actor_alias.RemoveFromFaction(PAHBERunningAway)
		;GetActorRef().RemoveFromFaction(PAHBERunningAway)
	EndFunction

	Event OnLeashed()
	EndEvent
EndState

Bool Function CanRunAway()
	If PAH.Config.leashToggle
		return !(actor_alias.leashed || (behaviour == "tied") || (behaviour == "restrained_in_furniture") || GetActorRef().HasKeyword(PAH.defeatActive) || actor_alias.HasLeashEquipped() || GetActorRef().IsInFaction(PAHCaged))
	Else
		return !(actor_alias.leashed || (behaviour == "tied") || (behaviour == "restrained_in_furniture") || GetActorRef().HasKeyword(PAH.defeatActive) || GetActorRef().IsInFaction(PAHCaged))
	EndIf
EndFunction

Function WaitAtLeashPoint()
	behaviour = "wait_at_leash_point"
EndFunction

State wait_at_leash_point
	Function StartBehaviour()
		GetActorRef().AddToFaction(PAHBEWaitingAtLeashPoint)
		actor_alias.SandboxAtLeash()
	EndFunction

	Function OnUpdateGameTime()
	EndFunction

	Function EndBehaviour()
		GetActorRef().RemoveFromFaction(PAHBEWaitingAtLeashPoint)
	EndFunction
EndState


Function RestrainedInFurniture()
	behaviour = "restrained_in_furniture"
EndFunction

State restrained_in_furniture
	Function StartBehaviour()
		GetActorRef().AddToFaction(PAHBETied)
		actor_alias.SetCanChangeStates(false)
		Calm(GetActorRef())	
	EndFunction

	Function OnUpdateGameTime()
	EndFunction

	Function EndBehaviour()
		GetActorRef().RemoveFromFaction(PAHBETied)
		actor_alias.SetCanChangeStates(true)
		Debug.SendAnimationEvent(getActorRef(), "IdleForceDefaultState")
		Calm(False)
	EndFunction
EndState

function cleanHouse()
	behaviour = "cleanHouse"
endFunction

State cleanHouse
	Function StartBehaviour()
		actor_alias.Sweep()
		GetActorRef().AddToFaction(PAHBECleaning)
		ActorUtil.AddPackageOverride(GetActorRef(), PAHCleanerPackage)
		GetActorRef().EvaluatePackage()
	EndFunction
	
	Function BehaviourOnUpdate()
		If mind.StartMovingByFormula()
			WaitSandbox()
		Else
			Debug.SendAnimationEvent(GetActorRef(), "idleLooseSweepingStart")
		EndIf
	EndFunction
	
	Function EndBehaviour()
		;actor_alias.RemoveFromFaction(PAHBECleaning)
		GetActorRef().RemoveFromFaction(PAHBECleaning)
		ActorUtil.RemovePackageOverride(GetActorRef(), PAHCleanerPackage)
		GetActorRef().EvaluatePackage()
	EndFunction
EndState

Function Tied()
	behaviour = "tied"
EndFunction

bool struggle
bool breakingRestraint
bool isIronCuffs
bool isSteelCuffs
String pose
String strugglePose
String currentPose
Form cuffs
float gameTime

State tied
	Function StartBehaviour()
		Actor self_ref = GetActorRef()
		If actor_alias.current_action == "follow"
			actor_alias.standStill()
		EndIf
		self_ref.AddToFaction(PAHBETied)
		If pah.Config.MandateNudityToggle
			Strip()
		EndIf
		self_ref.AddItem(cuffs, 1)
		self_ref.EquipItem(cuffs)
		If pah.Config.MandateNudityToggle
			If (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && !self_ref.WornHasKeyword(PAH.DD_Suit) && (!self_ref.IsInFaction(actor_alias.PAHNaked) || self_ref.WornHasKeyword(actor_alias.ArmorCuirass) || self_ref.WornHasKeyword(actor_alias.ClothingBody)))
				self_ref.AddItem(PAH.PAHEinvisibleArmor, 1)
				self_ref.EquipItem(PAH.PAHEinvisibleArmor)
				;self_ref.AddItem(PAH.PAHEArmorFixerForcedSOS, 1)
				;self_ref.equipItem(PAH.PAHEArmorFixerForcedSOS)
				Strip()
			EndIf
		EndIf
		ChangeTiePose("PAHETieUpEnter")
		RegisterForAnimEvent()
		RegisterForSingleUpdateGameTime(0.5)
		gameTime = GetCurrentGameTime()
		actor_alias.SetCanChangeStates(false)
	EndFunction
	Function OnUpdateGameTime()
		if !PlayerRef
			PlayerRef = Game.GetPlayer()
		EndIf
		If cuffs
			If mind.StartMovingByFormula()
				next_punishment_reason = "didnt_pose"
				RegisterForSingleLOSGain(GetActorRef(), PlayerRef)
				If breakingRestraint
					TieUp(None, Enter = False)
					If !(canRunAway() && mind.RunAwayByFormula())
						waitSandbox()
					EndIf
				Else
					If mind.CanBreakRestraint(cuffs)
						breakingRestraint = true
					EndIf
					TrainSubmission(0.5)
					struggle = true
					PlayTieUpAnimation()
				EndIf
			Else
				UnregisterForLOS(GetActorRef(), PlayerRef)
				TrainSubmission(0.5)
				TrainPose(0.5)
				struggle = false
				PlayTieUpAnimation()
			EndIf
	
			If (gameTime - GetCurrentGameTime()) * 24 >= 1
				gameTime = gameTime + (0.5 / 24)
				OnUpdateGameTime()
			Else
				RegisterForSingleUpdateGameTime(0.5)
			EndIf
		Else
			If randomFloat() > 0.5
				FollowPlayer()
			else
				wait()
			EndIf
		EndIf
	EndFunction
	Event OnAnimationEvent(ObjectReference akSource, string asEventName)
		Actor self_ref = GetActorRef()
		If pah.Config.MandateNudityToggle
			If (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && !self_ref.WornHasKeyword(PAH.DD_Suit) && (!self_ref.IsInFaction(actor_alias.PAHNaked) || self_ref.WornHasKeyword(actor_alias.ArmorCuirass) || self_ref.WornHasKeyword(actor_alias.ClothingBody)))
				self_ref.AddItem(PAH.PAHEinvisibleArmor, 1)
				self_ref.EquipItem(PAH.PAHEinvisibleArmor)
				;self_ref.UnequipItem(PAH.PAHEArmorFixerForcedSOS)
				;self_ref.equipItem(PAH.PAHEArmorFixerForcedSOS)
				Strip()
			EndIf
		EndIf
		Calm(self_ref)
		PlayTieUpAnimation()
	EndEvent
	Event OnLoad()
		Actor self_ref = GetActorRef()
		If pah.Config.MandateNudityToggle
			If (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && !self_ref.WornHasKeyword(PAH.DD_Suit) && (!self_ref.IsInFaction(actor_alias.PAHNaked) || self_ref.WornHasKeyword(actor_alias.ArmorCuirass) || self_ref.WornHasKeyword(actor_alias.ClothingBody)))
				;self_ref.EquipItem(PAH.PAHEArmorFixerForcedSOS)
				self_ref.EquipItem(PAH.PAHEinvisibleArmor)
				Strip()
				self_ref.EquipItem(cuffs)
			EndIf
		EndIf
		Calm(self_ref)
		PlayTieUpAnimation()
	EndEvent
	
	Event OnCellLoad()
		Actor self_ref = GetActorRef()
		If pah.Config.MandateNudityToggle
			If (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && !self_ref.WornHasKeyword(PAH.DD_Suit) && (!self_ref.IsInFaction(actor_alias.PAHNaked) || self_ref.WornHasKeyword(actor_alias.ArmorCuirass) || self_ref.WornHasKeyword(actor_alias.ClothingBody)))
				self_ref.EquipItem(PAH.PAHEinvisibleArmor)
				;self_ref.EquipItem(PAH.PAHEArmorFixerForcedSOS)
				Strip()
			EndIf
		EndIf	
		Calm(self_ref)
		PlayTieUpAnimation()
	EndEvent

	Event OnLocationChange(Location akOldLoc, Location akNewLoc)
		Actor self_ref = GetActorRef()
		If pah.Config.MandateNudityToggle
			If (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && !self_ref.WornHasKeyword(PAH.DD_Suit) && (!self_ref.IsInFaction(actor_alias.PAHNaked) || self_ref.WornHasKeyword(actor_alias.ArmorCuirass) || self_ref.WornHasKeyword(actor_alias.ClothingBody)))
				self_ref.EquipItem(PAH.PAHEinvisibleArmor)
				;self_ref.EquipItem(PAH.PAHEArmorFixerForcedSOS)
				Strip()
			EndIf
		EndIf
		Calm(self_ref)
		PlayTieUpAnimation()
	EndEvent

	Event OnGainLOS(Actor akViewer, ObjectReference akTarget)
		If randomFloat() < submission / 100
			TrainSubmission(0.5)
			struggle = false
			PlayTieUpAnimation()
		EndIf
	EndEvent

;	Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
;		If akBaseItem.HasKeyWordString("zbfWornDevice")
;			GetActorRef().EquipItem(akBaseItem, True)
;		Endif
;		PlayTieUpAnimation()
;	EndEvent
	Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
		If akBaseObject.HasKeyWordString("zbfWornDevice") && akBaseObject == cuffs
			EndBehaviour()
		EndIf
	EndEvent
	Function EndBehaviour()
		if !PlayerRef
			PlayerRef = Game.GetPlayer()
		EndIf
		UnregisterForLOS(GetActorRef(), PlayerRef)
		TieUp(None, Enter = False)
	EndFunction
EndState

Function PlayTieUpAnimation(Bool TieUp = True)
	If (GetActorRef().Is3DLoaded() && !GetActorRef().IsDead() && !PAH.SexLab.IsActorActive(GetActorRef()))
		If TieUp && !struggle
			Debug.SendAnimationEvent(GetActorRef(), Pose)
		elseIf TieUp
			Debug.SendAnimationEvent(GetActorRef(), strugglePose)
		Else
			Debug.SendAnimationEvent(GetActorRef(), "PAHETieUpExit")
		Endif
	Endif
EndFunction

Function ChangeTiePose(String ThePose, String TheStrugglePose = "")
	strugglePose = TheStrugglePose
	pose = ThePose
	bool perma = false
	If (Struggle && !Perma)
		currentPose = strugglePose
		StorageUtil.SetStringValue(GetActorRef(), "PAHEStateAnim", StrugglePose)
	Else
		currentPose = ThePose
		StorageUtil.SetStringValue(GetActorRef(), "PAHEStateAnim", ThePose)
	Endif
	PlayTieUpAnimation()
EndFunction

Function RegisterForAnimEvent(Bool On = True)
	If On
		RegisterForAnimationEvent(GetActorRef(), "staggerStop")
		RegisterForAnimationEvent(GetActorRef(), "GetUpEnd")
	Else
		UnregisterForAnimationEvent(GetActorRef(), "staggerStop")
		UnregisterForAnimationEvent(GetActorRef(), "GetUpEnd")
	Endif
EndFunction

Bool Function TieUp(Form cuff, Actor Aggressor = None, Bool DoAnimation = False, Bool UnCalm = True, Bool Enter = True)
	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf

	;/ Tie up a NPC, the duration can be specified, if not it will use the MCM setting
	the tying up animation can be disabled to make it instant, if so the aggressor need to be specified as well
	or this will be ignored. Untie the Target if Tied is False, do nothing if the Target isn't tied./;
	Actor slave = GetActorRef()
	If Enter && cuff
		cuffs = cuff
		If ((cuffs == PAH.PAHEzbfCuffsSteel) || (cuffs == PAH.zbfAnkleSteel) || (cuffs == PAH.zbfWristSteel) || (cuffs.haskeyword(pah.PahRestraintMaterialSteel)))
			isSteelCuffs = true
		Else
			isSteelCuffs = false
		EndIf
		If ((cuffs == PAH.CuffsIron) || (cuffs == PAH.CuffsIronBrown) || (cuffs == PAH.CuffsSimpleBlack) || (cuffs == PAH.CuffsSimpleBrown) || (cuffs == PAH.zbfWristSimpleBlack) || (cuffs == PAH.zbfWristSimpleBrown) || (cuffs == PAH.WristIron) || (cuffs == PAH.zbfWristIronBrown) || (cuffs == PAH.zbfAnkleSimpleBlack) || (cuffs == PAH.zbfWristSimpleBrown) || (cuffs == PAH.AnkleIron) || (cuffs == PAH.zbfAnkleIronBrown))
			isIronCuffs = true
		Else
			isIronCuffs = false
		EndIf
		If !slave.IsInFaction(PAHBETied)
			Calm(slave)
			slave.SetRestrained()
			slave.SetDontMove()
			StorageUtil.SetStringValue(slave, "PAHEState", "Tied")
			If (DoAnimation && Aggressor)
				aggressor.setDontMove()
				If (aggressor == (PlayerRef && aggressor.IsWeaponDrawn()))
					aggressor.SheatheWeapon()
					While aggressor.IsWeaponDrawn()
						Utility.Wait(0.5)
					EndWhile
				EndIf
				Debug.SendAnimationEvent(Aggressor, "PAHETyingUpAnim")
				tied()
				Utility.Wait(1.0)
				aggressor.setDontMove(false)
			Else
				tied()
			Endif
			Return True
		Elseif slave.IsInFaction(PAHBETied)
			Calm(slave)
		Endif
	Else
		If slave.IsInFaction(PAHBETied)
			If (DoAnimation && Aggressor)
				aggressor.SetLookAt(slave)
				slave.SetLookAt(aggressor)
				aggressor.setDontMove()
				If (aggressor == PlayerRef) && (aggressor.IsWeaponDrawn())
					aggressor.SheatheWeapon()
					While aggressor.IsWeaponDrawn()
						Utility.Wait(0.5)
					EndWhile
				EndIf
				If ((isIronCuffs) || (isSteelCuffs))
					Debug.SendAnimationEvent(Aggressor, "PAHETyingUpAnim")
				Else
					Debug.SendAnimationEvent(Aggressor, "BoundStandingCutNPC")
				EndIf
				Utility.wait(1.0)
				aggressor.setDontMove(false)
			Endif
			RegisterForAnimEvent(False)

			If slave.GetItemCount(cuffs) > 0
				If ((isIronCuffs) || (isSteelCuffs))
					If Aggressor
						slave.RemoveItem(cuffs, aiCount = 1, akOtherContainer = Aggressor)
					Else
						slave.UnequipItem(cuffs)
					EndIf
				Else
					slave.RemoveItem(cuffs)
				EndIf
			EndIf
			If slave.GetItemCount(PAH.PAHEinvisibleArmor) > 0
				slave.UnequipItem(PAH.PAHEinvisibleArmor)
				slave.RemoveItem(PAH.PAHEinvisibleArmor)
			EndIf
			If slave.GetItemCount(PAH.PAHEArmorFixerForcedSOS) > 0
				slave.UnequipItem(PAH.PAHEArmorFixerForcedSOS)
				slave.RemoveItem(PAH.PAHEArmorFixerForcedSOS)
			EndIf
			If UnCalm
				Debug.SendAnimationEvent(slave, "PAHETieUpExit")
				Calm(False)
			Endif

			slave.SetRestrained(False)
			slave.SetDontMove(False)
			breakingRestraint = false
			StorageUtil.UnsetStringValue(slave, "PAHEState")
			StorageUtil.UnsetStringValue(slave, "PAHEStateAnim")
			slave.RemoveFromFaction(PAHBETied)
			;WaitSandbox()
			actor_alias.SetCanChangeStates(true)
			Return True
		Endif
	Endif
	Return False
EndFunction

Bool Function Calm(Bool Enter = True)
	Actor slave = GetActorRef()
	If Enter
		If !slave.IsInFaction(PAHBECalm)
			slave.AddToFaction(PAHBECalm)
			slave.StopCombat()
			slave.StopCombatAlarm()
			ActorUtil.AddPackageOverride(slave, DoNothing, 100, 1)
			ActorUtil.AddPackageOverride(slave, PAHDoNothing, 100, 1)
			slave.EvaluatePackage()
			Return True
		Else
			slave.StopCombatAlarm()
		Endif
	Else
		If slave.IsInFaction(PAHBECalm)
			slave.RemoveFromFaction(PAHBECalm)
			ActorUtil.RemovePackageOverride(slave, DoNothing)
			ActorUtil.RemovePackageOverride(slave, PAHDoNothing)
			slave.EvaluatePackage()
			Return True
		Endif
	Endif
	Return False
EndFunction

Form Function findCuffs()
	If (actor_alias.getItemCount(PAH.PAHEzbfCuffsSteel) > 0)
		return PAH.PAHEzbfCuffsSteel
	ElseIf (actor_alias.getItemCount(PAH.zbfAnkleSteel) > 0)
		return PAH.zbfAnkleSteel
	ElseIf (actor_alias.getItemCount(PAH.zbfWristSteel) > 0)
		return PAH.zbfWristSteel
	ElseIf (actor_alias.getItemCount(PAH.CuffsIronBrown) > 0)
		return PAH.CuffsIronBrown
	ElseIf (actor_alias.getItemCount(PAH.CuffsIron) > 0)
		return PAH.CuffsIron
	ElseIf (actor_alias.getItemCount(PAH.CuffsSimpleBrown) > 0)
		return PAH.CuffsSimpleBrown
	ElseIf (actor_alias.getItemCount(PAH.CuffsSimpleBlack) > 0)
		return PAH.CuffsSimpleBlack
	ElseIf (actor_alias.getItemCount(PAH.CuffsLeather) > 0)
		return PAH.CuffsLeather
	ElseIf (actor_alias.getItemCount(PAH.CuffsRope) > 0)
		return PAH.CuffsRope
	ElseIf (actor_alias.getItemCount(PAH.AnkleIron) > 0)
		return PAH.AnkleIron
	ElseIf (actor_alias.getItemCount(PAH.AnkleLeather) > 0)
		return PAH.AnkleLeather
	ElseIf (actor_alias.getItemCount(PAH.WristIron) > 0)
		return PAH.WristIron
	ElseIf (actor_alias.getItemCount(PAH.WristLeather) > 0)
		return PAH.WristLeather
	Else
		return None
	EndIf
EndFunction

bool property bla auto Conditional

Function checkconfidence()
	if(should_fight_for_player)
		actor_alias.aggression = 1
		actor_alias.assistance = 2
		If combat_training >= 60
			actor_alias.confidence = 4
		ElseIf combat_training >= 40
			actor_alias.confidence = 3
		ElseIf combat_training >= 20
			actor_alias.confidence = 2
		Else
			actor_alias.confidence = 1
		EndIf
	Else
		actor_alias.aggression = 0
		actor_alias.assistance = 0
		actor_alias.confidence = 0
	EndIf			
EndFunction

;### Orders ###
Bool __should_fight_for_player = False
Bool Property should_fight_for_player	Hidden
	Bool Function get()
		return __should_fight_for_player
	EndFunction
	Function set(Bool value)
		if !PlayerRef
			PlayerRef = Game.GetPlayer()
		EndIf
		Actor _slave = GetActorRef()
	
		If value
			UpdateStrength()
			If _slave.getLevel() < PlayerRef.getLevel()
				UpdateStrength2()
			EndIf
			_slave.RemoveFromFaction(PAH.dunPrisonerFaction)
			_slave.AddToFaction(DunPlayerAllyFaction)
			RegisterForModEvent(GetID() + "PAHEUpdateStrength", "UpdateStrength")
			RegisterForModEvent(GetID() + "PAHEUpdateStrength", "UpdateStrength2")
		Else
			_slave.AddToFaction(PAH.dunPrisonerFaction)
			_slave.RemoveFromFaction(DunPlayerAllyFaction)
			UnregisterForModEvent(GetID() + "PAHEUpdateStrength")
			UnregisterForModEvent(GetID() + "PAHEUpdateStrength2")
		EndIf
		__should_fight_for_player = value
		actor_alias.SetInFaction(PAHShouldFightForPlayer, __should_fight_for_player)
		registerForWhistle()
		checkconfidence()
	EndFunction
EndProperty

Bool __should_be_respectful = False
Bool Property should_be_respectful	Hidden
	Bool Function get()
		return __should_be_respectful
	EndFunction
	Function set(Bool value)
		__should_be_respectful = value
		actor_alias.SetInFaction(PAHShouldBeRespectful, __should_be_respectful)
	EndFunction
EndProperty

Bool __should_pose = False
Bool Property should_pose	Hidden
	Bool Function get()
		return __should_pose
	EndFunction
	Function set(Bool value)
		If value != __should_pose
			__should_pose = value
			actor_alias.SetInFaction(PAHShouldPose, __should_pose)
		EndIf
	EndFunction
EndProperty

Function TestShouldHavePosed()
	If should_pose && !GetActorRef().IsInFaction(PAHPosing)
		next_punishment_reason = "didnt_pose"
		AddSD(PAHSDFailedToPose, 60)
	EndIf
EndFunction

Function releaseSlave()
	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf

	Actor releasedSlave = GetActorRef()

	if (releasedSlave.WornHasKeyword(Pah_Dwarven_Device) || ((releasedSlave.GetFactionRank(PAHSubmission) >= 100) && (releasedSlave.GetFactionRank(PAHTrainRespect) >= 64)))
		if ((releasedSlave.GetFactionRank(PAHTrainRespect) + releasedSlave.GetFactionRank(PAH.PAHTrainSex)) >= 100)
			releasedSlave.setRelationshipRank(PlayerRef, 4)
			PlayerRef.SetRelationshiprank(releasedSlave, 4)
		else
			releasedSlave.setRelationshipRank(PlayerRef, 3)
			PlayerRef.SetRelationshiprank(releasedSlave, 3)
		EndIf
		
		releasedSlave.AddToFaction(DunPlayerAllyFaction)
		releasedSlave.AddToFaction(PotentialFollowerFaction)
		if !releasedSlave.IsInFaction(CurrentFollowerFaction) ;CurrentFollowerFaction [FACT:0005C84E]
			releasedSlave.AddToFaction(CurrentFollowerFaction)
		EndIf
		releasedSlave.SetFactionRank(CurrentFollowerFaction, -1)
		releasedSlave.RemoveFromFaction(PAHPlayerSlaveFaction)
		releasedSlave.RemoveFromFaction(PAHPersYoungEager)
		releasedSlave.RemoveFromFaction(PAHPersCondescending)
		releasedSlave.RemoveFromFaction(PAHPersNord)
		releasedSlave.RemoveFromFaction(PAHPersFemaleArgonian)
		releasedSlave.RemoveFromFaction(PAHPersEvenToned)
		releasedSlave.RemoveFromFaction(PAHPersFemaleSultry)
		Release()
	else
		Release()
		releasedSlave.RemoveFromAllFactions()
		;releasedSlave.PathToReference(ReleaseMarker.GetReference(), 1)
		releasedSlave.DeleteWhenAble()
	EndIf	
EndFunction

; ### Pose Handling ###
Bool __is_posing = False
Bool Property is_posing	Hidden
	Bool Function get()
		return __is_posing
	EndFunction
	Function set(Bool value)
		If value != __is_posing
			__is_posing = value
			actor_alias.SetInFaction(PAHPosing, __is_posing)
		EndIf
	EndFunction
EndProperty

State pose
	Function StartBehaviour()
		GetActorRef().AddToFaction(PAHPosing)
	EndFunction
	Function EndBehaviour()
		GetActorRef().RemoveFromFaction(PAHPosing)
	EndFunction
EndState

Function SetPose(int rank)
	behaviour = "pose"
	GetActorRef().SetFactionRank(PAHPosing, rank)
	GetActorRef().evaluatePackage()
EndFunction

; ### Combat Handling ###
Bool __fights_for_player = False
Bool Property fights_for_player	Hidden
	Bool Function get()
		return __fights_for_player
	EndFunction
	Function set(Bool value)
		If value != __fights_for_player
			__fights_for_player = value
			actor_alias.AllowCombat(__fights_for_player)
		EndIf
	EndFunction
EndProperty

bool bHasFought

Function re_equip()
	Actor self_ref = GetActorRef()
	If (self_ref && (self_ref != None) && (PAH.DD_Collar != None) && (PAH.DD_StraitJacket != None))
		If (self_ref.WornHasKeyword(Pah_Dwarven_Device) || self_ref.WornHasKeyword(PAH.DD_StraitJacket))
			Strip()
			actor_alias.EquipInventory()
		EndIf
		return
	ElseIf ((actor_alias != None) && (PAH.DD_Collar != None) && (PAH.DD_StraitJacket != None) && (self_ref == None))
		If (actor_alias.WornHasKeyword(Pah_Dwarven_Device) || actor_alias.WornHasKeyword(PAH.DD_StraitJacket))
			Strip()
			actor_alias.EquipInventory()
		EndIf
		return
	EndIf
EndFunction

Function TestShouldHaveFought()
	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf
	Actor self_ref = GetActorRef()
	If PlayerRef.IsInCombat() && should_fight_for_player
		If !fights_for_player
			If (self_ref && (self_ref != None))
				If (PAH.DD_Collar != None) && (PAH.DD_StraitJacket != None)
					If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PetSuit))
						TrainCombat(1.25)
						TrainVaginal(0.75)
						TrainAnal(0.75)
					ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && (self_ref.WornHasKeyword(PAH.DD_PetSuit) || self_ref.WornHasKeyword(PAH.DD_StraitJacket)))
						TrainCombat(1)
					ElseIf (self_ref.WornHasKeyword(Pah_Dwarven_Device) && !(self_ref.WornHasKeyword(PAH.DD_PetSuit) || self_ref.WornHasKeyword(PAH.DD_StraitJacket)))
						TrainCombat(0.75)
					EndIf
					If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && !self_ref.WornHasKeyword(PAH.DD_PetSuit) && self_ref.WornHasKeyword(PAH.DD_PlugVaginal))
						TrainVaginal(0.5)
					ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugVaginal))
						TrainVaginal(0.25)
					EndIf
					If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && !self_ref.WornHasKeyword(PAH.DD_PetSuit) && self_ref.WornHasKeyword(PAH.DD_PlugAnal))
						TrainAnal(0.5)
					ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugAnal))
						TrainAnal(0.25)
					EndIf
				ElseIf (PAH.DD_Collar != None) && (PAH.DD_StraitJacket == None)
					If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugVaginal))
						TrainVaginal(0.5)
					ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugVaginal))
						TrainVaginal(0.25)
					EndIf
					If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugAnal))
						TrainAnal(0.5)
					ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugAnal))
						TrainAnal(0.25)
					EndIf
				ElseIf ((PAH.DD_Collar == None) && self_ref.WornHasKeyword(Pah_Dwarven_Device))
					TrainCombat(0.75)
				EndIf
				If (PAH.Dse_PlugAnal != None)
					If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.Dse_PlugAnal))
						TrainAnal(0.5)
					ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.Dse_PlugAnal))
						TrainAnal(0.25)
					EndIf
				EndIf
				next_punishment_reason = "didnt_fight"
				AddSD(PAHSDFailedToFight, 60)
			EndIf
		Else
			bHasFought = true
		EndIf
	EndIf
	If bHasFought
		If (self_ref && (self_ref != None))
			If (PAH.DD_Collar != None) && (PAH.DD_StraitJacket != None)
				If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PetSuit))
					TrainCombat(2.5)
					TrainVaginal(0.5)
					TrainAnal(0.5)
				ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && (self_ref.WornHasKeyword(PAH.DD_PetSuit) || self_ref.WornHasKeyword(PAH.DD_StraitJacket)))
					TrainCombat(2)
				ElseIf (self_ref.WornHasKeyword(Pah_Dwarven_Device) && !(self_ref.WornHasKeyword(PAH.DD_PetSuit) || self_ref.WornHasKeyword(PAH.DD_StraitJacket)))
					TrainCombat(1.5)
				Else
					TrainCombat(1)
				EndIf
				If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && !self_ref.WornHasKeyword(PAH.DD_PetSuit) && self_ref.WornHasKeyword(PAH.DD_PlugVaginal))
					TrainVaginal(0.25)
				ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugVaginal))
					TrainVaginal(0.125)
				EndIf
				If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && !self_ref.WornHasKeyword(PAH.DD_PetSuit) && self_ref.WornHasKeyword(PAH.DD_PlugAnal))
					TrainAnal(0.25)
				ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugAnal))
					TrainAnal(0.125)
				EndIf
			ElseIf (PAH.DD_Collar != None) && (PAH.DD_StraitJacket == None)
				If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugVaginal))
					TrainVaginal(0.25)
				ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugVaginal))
					TrainVaginal(0.125)
				EndIf
				If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugAnal))
					TrainAnal(0.25)
				ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PlugAnal))
					TrainAnal(0.125)
				EndIf
			ElseIf ((PAH.DD_Collar == None) && self_ref.WornHasKeyword(Pah_Dwarven_Device))
				TrainCombat(1.5)
			Else
				TrainCombat(1)
			EndIf
			If (PAH.Dse_PlugAnal != None)
				If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.Dse_PlugAnal))
					TrainAnal(0.25)
				ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.Dse_PlugAnal))
					TrainAnal(0.125)
				EndIf
			EndIf
			bHasFought = false
			return
		EndIf
	EndIf
EndFunction

Event PAHEWhistle(string eventName, string strArg, float numArg, Form sender)
	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf
	If GetRef().GetDistance(PlayerRef) <= 2048
		If eventName == "PAHEWhistle_wait"
			wait()
		ElseIf eventName == "PAHEWhistle_follow"
			followPlayer()
		EndIf
	EndIf
EndEvent

Event UpdateStrength(string eventName = "", string strArg = "", float numArg = 0.0, Form sender = None)
	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf
	Actor _slave = GetActorRef()

	ActorBase original_base = PAH.GetValidActorBase(_slave)
	Actor clone
	ActorBase clone_base

	;int encounterLevel = (PlayerRef.getLevel() * (_slave.getFactionRank(PAHTrainCombat) as float / 100) as Int)
	int encounterLevel = (PlayerRef.getLevel() * _slave.getFactionRank(PAHTrainCombat) as float / 100) as Int
	EncounterZone level_band_zone = PAH.getEncounterZone(encounterLevel)

	int tries = 0
	While tries < 50
		Int LevelMod = (_slave.getFactionRank(PAHTrainCombat) / 33 as Int)
		clone = PAH.CloneMarker.PlaceActorAtMe(original_base, LevelMod, level_band_zone)
		If clone
			If (clone.getLevel() > actor_alias.vLevel) || (LevelMod > actor_alias.lvlMod)
				_slave.setAV("Health", PAH.getMax(_slave.GetBaseAV("Health"), clone.GetBaseAV("Health")))
				_slave.setAV("Magicka", PAH.getMax(_slave.GetBaseAV("Magicka"), clone.GetBaseAV("Magicka")))
				_slave.setAV("Stamina", PAH.getMax(_slave.GetBaseAV("Stamina"), clone.GetBaseAV("Stamina")))

				_slave.setAV("OneHanded", PAH.getMax(_slave.GetBaseAV("OneHanded"), clone.GetBaseAV("OneHanded")))
				_slave.setAV("TwoHanded", PAH.getMax(_slave.GetBaseAV("TwoHanded"), clone.GetBaseAV("TwoHanded")))
				_slave.setAV("Marksman", PAH.getMax(_slave.GetBaseAV("Marksman"), clone.GetBaseAV("Marksman")))
				_slave.setAV("Block", PAH.getMax(_slave.GetBaseAV("Block"), clone.GetBaseAV("Block")))
				_slave.setAV("HeavyArmor", PAH.getMax(_slave.GetBaseAV("HeavyArmor"), clone.GetBaseAV("HeavyArmor")))
				_slave.setAV("LightArmor", PAH.getMax(_slave.GetBaseAV("LightArmor"), clone.GetBaseAV("LightArmor")))
				_slave.setAV("Sneak", PAH.getMax(_slave.GetBaseAV("Sneak"), clone.GetBaseAV("Sneak")))
				_slave.setAV("Alteration", PAH.getMax(_slave.GetBaseAV("Alteration"), clone.GetBaseAV("Alteration")))
				_slave.setAV("Conjuration", PAH.getMax(_slave.GetBaseAV("Conjuration"), clone.GetBaseAV("Conjuration")))
				_slave.setAV("Destruction", PAH.getMax(_slave.GetBaseAV("Destruction"), clone.GetBaseAV("Destruction")))
				_slave.setAV("Illusion", PAH.getMax(_slave.GetBaseAV("Illusion"), clone.GetBaseAV("Illusion")))
				_slave.setAV("Restoration", PAH.getMax(_slave.GetBaseAV("Restoration"), clone.GetBaseAV("Restoration")))

				actor_alias.vLevel = clone.getLevel()
				actor_alias.lvlMod = LevelMod
			EndIf
			tries = 50
			clone.Delete()
		ElseIf !clone && PAH.enableDebug
			debug.trace("[PAHESlave] Update Strength " + _slave.GetDisplayName() + ": No clone")
		EndIf
		tries += 1
	EndWhile
EndEvent

float Function getMax2(float value_1, float value_2)
		If ((value_1 > value_2) && (value_1 <= 100))
			return value_1
		ElseIf (value_1 > 100) && (value_2 <= 100)
			return value_2
		ElseIf (value_1 < value_2) && (value_2 <= 100)
			return value_2
		ElseIf value_2 > 100
			return 100
		Else
			return 15
		EndIf
EndFunction

float Function getMax3(float value_1, float value_2)

		If ((value_1 > value_2) && (value_1 <= 1000))
			return value_1
		Else
			return value_2
		EndIf
EndFunction

Event UpdateStrength2(string eventName = "", string strArg = "", float numArg = 0.0, Form sender = None)
	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf
	Actor _slave = GetActorRef()

	ActorBase original_base = PAH.GetValidActorBase(_slave)
	Actor clone
	ActorBase clone_base

	;int encounterLevel = (PlayerRef.getLevel() * (_slave.getFactionRank(PAHTrainCombat) as float / 100) as Int)
	int encounterLevel = (PlayerRef.getLevel() * _slave.getFactionRank(PAHTrainCombat) as float / 100) as Int
		Int LevelMod = (_slave.getFactionRank(PAHTrainCombat) / 33 as Int)
		Int XpPerLevel = (75 + (PlayerRef.getLevel() * 25)) as Int
	int maxSkills  = (270 + (7 * PlayerRef.getLevel() ))
	int AvgCumuSkillPerLvl = (maxSkills / 18) as Int
				_slave.setAV("Health", getMax3(_slave.GetBaseAV("Health"), (50 + (3 * encounterLevel) )))
				_slave.setAV("Magicka", getMax3(_slave.GetBaseAV("Magicka"), (50 + (3 * encounterLevel) )))
				_slave.setAV("Stamina", getMax3(_slave.GetBaseAV("Stamina"), (50 + (3 * encounterLevel) )))

				_slave.setAV("OneHanded", getMax2(_slave.GetBaseAV("OneHanded"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15) ))
				_slave.setAV("TwoHanded", getMax2(_slave.GetBaseAV("TwoHanded"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
				_slave.setAV("Marksman", getMax2(_slave.GetBaseAV("Marksman"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
				_slave.setAV("Block", getMax2(_slave.GetBaseAV("Block"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
				_slave.setAV("HeavyArmor", getMax2(_slave.GetBaseAV("HeavyArmor"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
				_slave.setAV("LightArmor", getMax2(_slave.GetBaseAV("LightArmor"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
				_slave.setAV("Sneak", getMax2(_slave.GetBaseAV("Sneak"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
				_slave.setAV("Alteration", getMax2(_slave.GetBaseAV("Alteration"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
				_slave.setAV("Conjuration", getMax2(_slave.GetBaseAV("Conjuration"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
				_slave.setAV("Destruction", getMax2(_slave.GetBaseAV("Destruction"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
				_slave.setAV("Illusion", getMax2(_slave.GetBaseAV("Illusion"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
				_slave.setAV("Restoration", getMax2(_slave.GetBaseAV("Restoration"), ((PlayerRef.getLevel() * AvgCumuSkillPerLvl) + 15)))
EndEvent

; ### Attributed ###
Function Regen()
	GetActorRef().RestoreAv("Health", 3.0)
EndFunction

; ### Dialogue ###
Bool __respectful = False
Bool Property respectful	Hidden
	Bool Function get()
		return __respectful
	EndFunction
	Function set(Bool value)
		If value != __respectful
			__respectful = value
			actor_alias.SetInFaction(PAHRespectful, __respectful)
		EndIf
	EndFunction
EndProperty

int ticks_for_special_dialogue = 0
Function AddSD(Faction dialogue_faction, int duration = 10)
	if ticks_for_special_dialogue < duration
		ticks_for_special_dialogue = duration
	endif
	GetActorRef().AddToFaction(dialogue_faction)
EndFunction

Function ClearAllSD()
	ticks_for_special_dialogue = 0
	GetActorRef().RemoveFromFaction(PAHSDArmorAdded)
	GetActorRef().RemoveFromFaction(PAHSDClothedFromNaked)
	GetActorRef().RemoveFromFaction(PAHSDMadeNaked)
	GetActorRef().RemoveFromFaction(PAHSDRestraintAdded)
	GetActorRef().RemoveFromFaction(PAHSDRestraintRemoved)
	GetActorRef().RemoveFromFaction(PAHSDWeaponAdded)
	GetActorRef().RemoveFromFaction(PAHSDWeaponRemoved)
	GetActorRef().RemoveFromFaction(PAHSDFailedToFight)
	GetActorRef().RemoveFromFaction(PAHSDFailedToPose)
EndFunction

Function ClearEquipmentSD()
	GetActorRef().RemoveFromFaction(PAHSDArmorAdded)
	GetActorRef().RemoveFromFaction(PAHSDClothedFromNaked)
	GetActorRef().RemoveFromFaction(PAHSDMadeNaked)
	GetActorRef().RemoveFromFaction(PAHSDRestraintAdded)
	GetActorRef().RemoveFromFaction(PAHSDRestraintRemoved)
	GetActorRef().RemoveFromFaction(PAHSDWeaponAdded)
	GetActorRef().RemoveFromFaction(PAHSDWeaponRemoved)
EndFunction

Function ClearSpecialDialogue(Faction dialogue_faction)
	GetActorRef().RemoveFromFaction(dialogue_faction)
EndFunction

Function ClearSDOnTick()
	if ticks_for_special_dialogue > 0
		ticks_for_special_dialogue -= 1
		if ticks_for_special_dialogue == 0
			ClearAllSD()
		endif
	endif
EndFunction

; ### Punishment ###
String next_punishment_reason = ""
String punishment_reason = ""
String punishment_type = ""
Bool end_punishment_on_next_tick = false

Bool Property punishment_active = false Auto	Hidden
Int Property ticks_since_last_punished = 1000 Auto	Hidden

Function HandlePunishmentOnUpdate()
	if punishment_active
		ticks_since_last_punished = 0
		if punishment_type == "pain"
			HandlePainPunishmentOnUpdate()
		endif
	else
		ticks_since_last_punished += 1
	endif
EndFunction

Function HandlePunishmentOnHit()
	if !punishment_active
		StartPunishment("pain")
	endif

	end_punishment_on_next_tick = false
	mind.OnExperiencePain()
EndFunction

Function StartPunishment(String type = "pain", string reason = "")
	if reason == ""
		punishment_reason = GetReasonForPunishment()
	else
		punishment_reason = reason
	endif
	next_punishment_reason = ""
	punishment_type = type
	punishment_active = true
	ticks_since_last_punished = 0

	OnStartPunishment(type, punishment_reason)
	mind.OnStartPunishment(type, punishment_reason)
EndFunction

Function EndPunishment()
	punishment_active = false

	Float severity = 0.0

	if punishment_type == "pain"
		severity = PAH.Config.severity
	ElseIf punishment_type == "sex"
		severity = PAH.Config.severity / 2
	endif

	TrainAfterPunished(punishment_type, severity, punishment_reason)
	OnEndPunishment(punishment_type, severity, punishment_reason)
	mind.OnEndPunishment(punishment_type, severity, punishment_reason)
EndFunction

String Function GetReasonForPunishment()
	if next_punishment_reason != ""
		return next_punishment_reason
	ElseIf behaviour == "run_away"
		return "running_away"
	ElseIf mind.mood == "angry"
		return "angry"
	ElseIf should_be_respectful && !respectful
		return "not_respectful"
	ElseIf should_pose && !is_posing
		return "didnt_pose"
	Else
		return ""
	endif
EndFunction

Function SetNextPunishmentReason(String reason)
	next_punishment_reason = reason
EndFunction

Function HandlePainPunishmentOnUpdate()
	if end_punishment_on_next_tick
		EndPunishment()
	else
		end_punishment_on_next_tick = true
	endif
EndFunction

Function TellOff(string reason = "")
	TrainAfterTellingOff(reason)
	OnToldOff(reason)
	mind.OnToldOff(reason)
EndFunction

; ### Training ###
Event handleSexEvent(Form TrackedForm, int tid)
	sslThreadController controller = PAH.SexLab.GetController(tid)
	sslBaseAnimation anim = controller.Animation
	
	While anim == None
		Utility.wait(1)
		anim = controller.Animation
	EndWhile

	int trainCount = 0
	bool bTrainAnal = false
	bool bTrainOral = false
	bool bTrainVaginal = false

	int multiplier = 1
	If (controller.GetVictim() == GetActorRef())
		multiplier = 2
	EndIf
	If anim.HasTag("Anal")
		trainCount += 1
		bTrainAnal = true
	EndIf
	If anim.HasTag("Oral")
		trainCount += 1
		bTrainOral = true
	EndIf
	If anim.HasTag("Vaginal")
		trainCount += 1
		bTrainVaginal = true
	EndIf

	If bTrainAnal
		trainAnal(5 * multiplier / trainCount)
	EndIf
	If bTrainOral
		trainOral(5 * multiplier / trainCount)
	EndIf
	If bTrainVaginal
		trainVaginal(5 * multiplier / trainCount)
	EndIf
EndEvent

Function registerSexEvent()
	PAH.SexLab.untrackActor(getActorRef(), "PAH" + getActorRef().GetFormID())
	UnregisterForModEvent("PAH" + getActorRef().GetFormID() + "_Added")

	PAH.SexLab.trackActor(getActorRef(), "PAH" + getActorRef().GetFormID())
	RegisterForModEvent("PAH" + getActorRef().GetFormID() + "_Added", "handleSexEvent")
EndFunction

;Function unregisterSexEvent()
;	PAH.SexLab.untrackActor(getActorRef(), "PAH" + getActorRef().GetFormID())
;	UnregisterForModEvent("PAH" + getActorRef().GetFormID() + "_Added")
;EndFunction

Float __submission = 0.0
Float Property submission	Hidden
	Float Function get()
		return __submission
	EndFunction
	Function set(Float value)
		If __submission < PAH.Config.runAwayValue && value >= PAH.Config.runAwayValue
			PAH.tickSlaverRank()
		endIf
		__submission = value
		if __submission > 100
			__submission = 100
		elseif __submission < 0
			__submission = 0
		endif
		getActorRef().SetFactionRank(PAHSubmission, __submission as Int)
	EndFunction
EndProperty

Function TrainSubmission(Float base_ammount)
	Float multiplier = 0.1 + (0.9*(1-(submission/100)))
	submission += (base_ammount * multiplier)
EndFunction

;combat_training = getActorRef().GetFactionRank(PAHTrainCombat)
Float __combatTraining = 0.0
int combatTrainingPlayerLevel = 0
Float Property combat_training	Hidden
	Float Function get()
		If GetActorRef().GetFactionRank(PAHTrainCombat) > 0
			__combatTraining = GetActorRef().GetFactionRank(PAHTrainCombat)
			return __combatTraining
		Else
			return __combatTraining
										If PAH.enableDebug
											debug.trace("[PAHESlave] slave is new or has no valid combat Training")
										EndIf
		EndIf
	EndFunction
	Function set(Float value)
		float initialTraining = __combatTraining
		__combatTraining = value
		If __combatTraining > 127
			__combatTraining = 127
		ElseIf __combatTraining < 0
			__combatTraining = 0
		EndIf
		GetActorRef().SetFactionRank(PAHTrainCombat, __combatTraining as Int)
	
		If (initialTraining / 10) as Int < (__combatTraining / 10) as Int
			UpdateStrength()
			if !PlayerRef
				PlayerRef = Game.GetPlayer()
			EndIf
			Actor _slave = GetActorRef()
	
			If _slave.getLevel() < PlayerRef.getLevel()
				UpdateStrength2()
			EndIf
		EndIf
		
		checkconfidence()
	EndFunction
EndProperty

Function TrainCombat(Float base_ammount)
	If combat_training < 50
		Float multiplier = 0.1 + (0.9*(1-(combat_training/100)))
		combat_training += (base_ammount * multiplier)
	ElseIf combat_training >= 50
		Float multiplier = 0.1 + (0.9*(combat_training/100))
		combat_training += (base_ammount * multiplier)
	EndIf
EndFunction

Float __anger_training = 0.0
Float Property anger_training	Hidden
	Float Function get()
		return __anger_training
	EndFunction
	Function set(Float value)
		__anger_training = value
		if __anger_training > 100
			__anger_training = 100
		elseif __anger_training < 0
			__anger_training = 0
		endif
		getActorRef().SetFactionRank(PAHTrainAnger, __anger_training as Int)
	EndFunction
EndProperty

Function TrainAnger(Float base_ammount)
	Float multiplier = (1-(anger_training/100))
	anger_training += (base_ammount * multiplier)
EndFunction

Float __respect_training = 0.0
Float Property respect_training	Hidden
	Float Function get()
		return __respect_training
	EndFunction
	Function set(Float value)
		__respect_training = value
		if __respect_training > 100
			__respect_training = 100
		elseif __respect_training < 0
			__respect_training = 0
		endif
		getActorRef().SetFactionRank(PAHTrainRespect, __respect_training as Int)
	EndFunction
EndProperty

Function TrainRespect(Float base_ammount)
	Float multiplier = 0.1 + (0.9*(1-(respect_training/100)))
	respect_training += (base_ammount * multiplier)
EndFunction

Float __pose_training = 0.0
Float Property pose_training	Hidden
	Float Function get()
		return __pose_training
	EndFunction
	Function set(Float value)
		__pose_training = value
		if __pose_training > 100
			__pose_training = 100
		elseif __pose_training < 0
			__pose_training = 0
		endif
		getActorRef().SetFactionRank(PAHTrainPose, __pose_training as Int)
	EndFunction
EndProperty

Function TrainPose(Float base_ammount)
	Float multiplier = 0.1 + (0.9*(1-(pose_training/100)))
	pose_training += (base_ammount * multiplier)
EndFunction


Float __oral_training = 0.0
Float Property oral_training	Hidden
	Float Function get()
		return __oral_training
	EndFunction
	Function set(Float value)
		__oral_training = value
		if __oral_training < SexLab.GetActorStatInt(getActorRef(), "Oral")
			__oral_training = SexLab.GetActorStatInt(getActorRef(), "Oral")
		endif
		if __oral_training > 100
			__oral_training = 100
		elseif __oral_training < 0
			__oral_training = 0
		endif
		getActorRef().SetFactionRank(PAH.PAHTrainOral, __oral_training as Int)
	EndFunction
EndProperty

Function TrainOral(Float base_amount)
	Float multiplier = 0.1 + (0.9*(1-(oral_training/100)))
	oral_training += (base_amount * multiplier)
	sex_training = 0.0
EndFunction

Float __vaginal_training = 0.0
Float Property vaginal_training	Hidden
	Float Function get()
		return __vaginal_training
	EndFunction
	Function set(Float value)
		__vaginal_training = value
		if __vaginal_training < SexLab.GetActorStatInt(getActorRef(), "Vaginal")
			__vaginal_training = SexLab.GetActorStatInt(getActorRef(), "Vaginal")
		endif		
		if __vaginal_training > 100
			__vaginal_training = 100
		elseif __vaginal_training < 0
			__vaginal_training = 0
		endif
		getActorRef().SetFactionRank(PAH.PAHTrainVaginal, __vaginal_training as Int)
	EndFunction
EndProperty

Function TrainVaginal(Float base_amount)
	Float multiplier = 0.1 + (0.9*(1-(vaginal_training/100)))
	vaginal_training += (base_amount * multiplier)
	sex_training = 0.0
EndFunction

Float __anal_training = 0.0
Float Property anal_training	Hidden
	Float Function get()
		return __anal_training
	EndFunction
	Function set(Float value)
		__anal_training = value
		if __anal_training < SexLab.GetActorStatInt(getActorRef(), "Anal")
			__anal_training = SexLab.GetActorStatInt(getActorRef(), "Anal")
		endif		
		if __anal_training > 100
			__anal_training = 100
		elseif __anal_training < 0
			__anal_training = 0
		endif
		getActorRef().SetFactionRank(PAH.PAHTrainAnal, __anal_training as Int)
	EndFunction
EndProperty

Function TrainAnal(Float base_amount)
	Float multiplier = 0.1 + (0.9*(1-(anal_training/100)))
	anal_training += (base_amount * multiplier)
	sex_training = 0.0
EndFunction

Float __sex_training = 0.0
Float Property sex_training	Hidden
	Float Function get()
		return __sex_training
	EndFunction
	Function set(Float value)
		__sex_training = ((oral_training + vaginal_training + anal_training) / 3)
		if __sex_training > 100
			__sex_training = 100
		elseif __sex_training < 0
			__sex_training = 0
		endif
		getActorRef().SetFactionRank(PAH.PAHTrainSex, __sex_training as Int)
	EndFunction
EndProperty

Function TrainSex(Float base_amount)
	sex_training = 0
EndFunction

Float __fear_training = 0.0
Float Property fear_training	Hidden
	Float Function Get()
		return __fear_training
	EndFunction
	Function Set(Float value)
		If ((PAH.oldFear != None) && ((GetActorRef().GetFactionRank(PAH.oldFear)) > 0))
			__fear_training = (GetActorRef().GetFactionRank(PAH.newFear) + GetActorRef().GetFactionRank(PAH.oldFear))
			GetActorRef().SetFactionRank(PAH.oldFear, 0)
		EndIf
		if value > 100
			__fear_training = 100
		ElseIf value < 0
			__fear_training = 0
		Else
			__fear_training = value
		EndIf
		getActorRef().SetFactionRank(PAH.PAHTrainFear, __fear_training as Int)
	EndFunction
EndProperty

Function TrainFear(Float base_ammount)
	Float multiplier = 0.1 + (0.9*(1-(fear_training/100)))
	fear_training += (base_ammount * multiplier)
EndFunction

Float __humiliation = 0.0
Float Property humiliation	Hidden
	Float Function Get()
		return __humiliation
	EndFunction
	Function Set(Float value)
		if value > 100
			__humiliation = 100
		ElseIf value < 0
			__humiliation = 0
		Else
			__humiliation = value
		EndIf
			If ((PAH.old_Humiliation != None) && (PAH.PAHHumiliation != None))
				If (GetActorRef().GetFactionRank(PAH.old_Humiliation) > GetActorRef().GetFactionRank(PAH.PAHHumiliation))
					getActorRef().SetFactionRank(PAH.old_Humiliation, __humiliation as Int)
				Else
					getActorRef().SetFactionRank(PAH.PAHHumiliation, __humiliation as Int)
				EndIf
			ElseIf (PAH.old_Humiliation != None)
				getActorRef().SetFactionRank(PAH.old_Humiliation, __humiliation as Int)
			Else
				getActorRef().SetFactionRank(PAH.PAHHumiliation, __humiliation as Int)
			EndIf
	EndFunction
EndProperty

Float __resignation = 0.0
Float Property resignation	Hidden
	Float Function Get()
		return __resignation
	EndFunction
	Function Set(Float value)
		if value > 100
			__resignation = 100
		ElseIf value < 0
			__resignation = 0
		Else
			__resignation = value
		EndIf
			If ((PAH.old_resignation != None) && (PAH.PAHResignation != None))
				If (GetActorRef().GetFactionRank(PAH.old_resignation) > GetActorRef().GetFactionRank(PAH.PAHResignation))
					getActorRef().SetFactionRank(PAH.old_resignation, __resignation as Int)
				Else
					getActorRef().SetFactionRank(PAH.PAHResignation, __resignation as Int)
				EndIf
			ElseIf (PAH.old_resignation != None)
				getActorRef().SetFactionRank(PAH.old_resignation, __resignation as Int)
			Else
				getActorRef().SetFactionRank(PAH.PAHResignation, __resignation as Int)
			EndIf
	EndFunction
EndProperty

Function TrainAfterPunished(string type, Float severity, String reason = "")
	If reason == "angry"
		TrainSubmission(severity * 0.15)
		TrainAnger(severity * 0.2)

	elseif reason == "not_respectful"
		If (PAH.DD_Gag != None)
			Actor self_ref = GetActorRef()
			If self_ref.WornHasKeyword(PAH.DD_Gag)
				TrainSubmission(severity * 0.2)
				TrainRespect(severity * 0.7)
			ElseIf !self_ref.WornHasKeyword(PAH.DD_Gag)
				TrainSubmission(severity * 0.15)
				TrainRespect(severity * 0.4)
			EndIf
		ElseIf (PAH.DD_Gag == None)
			TrainSubmission(severity * 0.15)
			TrainRespect(severity * 0.4)
		EndIf
	elseif reason == "disobedient"
		TrainSubmission(severity * 0.1)
		TrainRespect(severity * 0.05)

	elseif reason == "disobedient_disrespectful"
		If (PAH.DD_Gag != None)
			Actor self_ref = GetActorRef()
			If self_ref.WornHasKeyword(PAH.DD_Gag)
				TrainSubmission(severity * 0.3)
				TrainRespect(severity * 0.75)
			ElseIf !self_ref.WornHasKeyword(PAH.DD_Gag)
				TrainSubmission(severity * 0.25)
				TrainRespect(severity * 0.45)
			EndIf
		ElseIf (PAH.DD_Gag == None)
			TrainSubmission(severity * 0.25)
			TrainRespect(severity * 0.45)
		EndIf
	elseif reason == "running_away"
		TrainSubmission(severity * 0.2)

	elseif reason == "didnt_fight"
		If (PAH.DD_Collar != None) && (PAH.DD_StraitJacket != None)
			Actor self_ref = GetActorRef()
			If (self_ref.WornHasKeyword(PAH.DD_PetSuit) || self_ref.WornHasKeyword(PAH.DD_StraitJacket))
				TrainSubmission(severity * 0.3)
				TrainCombat(severity * 0.45)
				TrainPose(severity * 0.2)
			elseif ((self_ref.WornHasKeyword(PAH.DD_ArmbinderElbow) || self_ref.WornHasKeyword(PAH.DD_CuffsFront) || self_ref.WornHasKeyword(PAH.DD_Armbinder) || self_ref.WornHasKeyword(PAH.DD_Yoke)) && self_ref.WornHasKeyword(PAH.DD_BoundCombatDisableKick))
				TrainSubmission(severity * 0.25)
				TrainCombat(severity * 0.4)
				TrainPose(severity * 0.15)
			elseif ((self_ref.WornHasKeyword(PAH.DD_ArmbinderElbow) || self_ref.WornHasKeyword(PAH.DD_CuffsFront) || self_ref.WornHasKeyword(PAH.DD_Armbinder) || self_ref.WornHasKeyword(PAH.DD_Yoke)) && !self_ref.WornHasKeyword(PAH.DD_BoundCombatDisableKick))
				TrainSubmission(severity * 0.2)
				TrainCombat(severity * 0.35)
				TrainPose(severity * 0.1)
			ElseIf !(self_ref.WornHasKeyword(PAH.DD_PetSuit) || self_ref.WornHasKeyword(PAH.DD_StraitJacket) || self_ref.WornHasKeyword(PAH.DD_ArmbinderElbow) || self_ref.WornHasKeyword(PAH.DD_CuffsFront) || self_ref.WornHasKeyword(PAH.DD_Armbinder) || self_ref.WornHasKeyword(PAH.DD_Yoke))
				TrainSubmission(severity * 0.15)
				TrainCombat(severity * 0.3)
			EndIf
		ElseIf (PAH.DD_Collar != None) && (PAH.DD_StraitJacket == None)
			Actor self_ref = GetActorRef()
			If (self_ref.WornHasKeyword(PAH.DD_Armbinder) || self_ref.WornHasKeyword(PAH.DD_Yoke))
				TrainSubmission(severity * 0.2)
				TrainCombat(severity * 0.35)
				TrainPose(severity * 0.1)
			ElseIf !(self_ref.WornHasKeyword(PAH.DD_Armbinder) || self_ref.WornHasKeyword(PAH.DD_Yoke))
				TrainSubmission(severity * 0.15)
				TrainCombat(severity * 0.3)
			EndIf
		ElseIf (PAH.DD_Collar == None)
			TrainSubmission(severity * 0.15)
			TrainCombat(severity * 0.3)
		EndIf

	ElseIf reason == "didnt_pose"
		TrainSubmission(severity * 0.15)
		TrainPose(severity * 0.2)
	ElseIf reason == "no_sex"
		TrainSubmission(severity * 0.15)
		TrainOral(severity * 0.1)
		TrainVaginal(severity * 0.1)
		TrainAnal(severity * 0.1)
	Else
		TrainSubmission(severity * 0.05)
	EndIf

	If type == "pain"
		TrainFear(severity * 0.03)
	EndIf
	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf
;	actor_alias.setRelationshipRank(PlayerRef, actor_alias.getRelationshipRank(PlayerRef) - 1)
	if getActorRef().getRelationshipRank(PlayerRef) > -4
		getActorRef().setRelationshipRank(PlayerRef, getActorRef().getRelationshipRank(PlayerRef) - 1)
	endif

EndFunction

Function TrainAfterTellingOff(string reason)
	Actor self_ref = GetActorRef()
	if reason != ""
		TrainSubmission(10)
		if reason == "not_respectful"
			If (PAH.DD_Gag != None)				
				If self_ref.WornHasKeyword(PAH.DD_Gag)
					TrainRespect(30)
				ElseIf !self_ref.WornHasKeyword(PAH.DD_Gag)
					TrainRespect(20)
				EndIf
			ElseIf (PAH.DD_Gag == None)
				TrainRespect(20)
			EndIf
		ElseIf reason == "didnt_fight"
			If (PAH.DD_Collar != None) && (PAH.DD_StraitJacket != None)
				If (self_ref.WornHasKeyword(Pah_Dwarven_Device) && self_ref.WornHasKeyword(PAH.DD_PetSuit))
					TrainCombat(40)
					TrainPose(20)
					TrainVaginal(10)
					TrainAnal(10)
				ElseIf (!self_ref.WornHasKeyword(Pah_Dwarven_Device) && (self_ref.WornHasKeyword(PAH.DD_PetSuit) || (self_ref.WornHasKeyword(PAH.DD_StraitJacket) && self_ref.WornHasKeyword(PAH.DD_BoundCombatDisableKick))))
					TrainCombat(35)
					TrainPose(15)
				elseif ((self_ref.WornHasKeyword(PAH.DD_ArmbinderElbow) || self_ref.WornHasKeyword(PAH.DD_CuffsFront) || self_ref.WornHasKeyword(PAH.DD_Armbinder) || self_ref.WornHasKeyword(PAH.DD_Yoke)) && self_ref.WornHasKeyword(PAH.DD_BoundCombatDisableKick))
					TrainCombat(30)
					TrainPose(10)
				elseif ((self_ref.WornHasKeyword(PAH.DD_ArmbinderElbow) || self_ref.WornHasKeyword(PAH.DD_CuffsFront) || self_ref.WornHasKeyword(PAH.DD_Armbinder) || self_ref.WornHasKeyword(PAH.DD_Yoke) || self_ref.WornHasKeyword(PAH.DD_StraitJacket)) && !self_ref.WornHasKeyword(PAH.DD_BoundCombatDisableKick))
					TrainCombat(25)
					TrainPose(5)
				ElseIf !(self_ref.WornHasKeyword(PAH.DD_PetSuit) || self_ref.WornHasKeyword(PAH.DD_StraitJacket) || self_ref.WornHasKeyword(PAH.DD_ArmbinderElbow) || self_ref.WornHasKeyword(PAH.DD_CuffsFront) || self_ref.WornHasKeyword(PAH.DD_Armbinder) || self_ref.WornHasKeyword(PAH.DD_Yoke))
					TrainCombat(20)
				EndIf
			ElseIf (PAH.DD_Collar != None) && (PAH.DD_StraitJacket == None)
				If (self_ref.WornHasKeyword(PAH.DD_Armbinder) || self_ref.WornHasKeyword(PAH.DD_Yoke))
					TrainCombat(25)
					TrainPose(5)
				ElseIf !(self_ref.WornHasKeyword(PAH.DD_Armbinder) || self_ref.WornHasKeyword(PAH.DD_Yoke))
					TrainCombat(20)
				EndIf
			ElseIf (PAH.DD_Collar == None)
				TrainCombat(20)
			EndIf
		ElseIf reason == "didnt_pose"
			TrainPose(20)
		ElseIf reason == "no_sex"
			TrainSex(20)
		EndIf
	EndIf
EndFunction

; ### Inventory behaviour ###
Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf
	if akSourceContainer == PlayerRef as ObjectReference
		Armor item_as_armor = akBaseItem as Armor
		if item_as_armor != None
			Form item_already_in_slot = actor_alias.GetWornForm(item_as_armor.GetSlotMask())
			if (item_already_in_slot != None) && (item_already_in_slot.HasKeyword(PAHRestraint))
				return
			endif
			if akBaseItem.HasKeyword(PAHRestraint)
				restraint_added = true
				getActorRef().setRelationshipRank(PlayerRef, getActorRef().getRelationshipRank(PlayerRef) - 1)
			else
				armor_added = true
			endif

		elseif akBaseItem as Weapon != None
			weapon_added = true
		endif
	endif
EndEvent

Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
	if akBaseItem.HasKeyword(PAHRestraint)
		restraint_removed = true
	elseif (akBaseItem as Armor) != None
		armor_removed = true
	elseif (akBaseItem as Weapon) != None
		weapon_removed = true
	endif
EndEvent

Bool was_naked = false
Bool armor_added = false
Bool armor_removed = false
Bool weapon_added = false
Bool weapon_removed = false
Bool restraint_added = false
Bool restraint_removed = false

Function OnInventoryDialogueComplete()
	Utility.Wait(0.01) ; Wait for inventory menu to close

 	if actor_alias.naked && !was_naked
		AddSD(PAHSDMadeNaked)
	elseif !actor_alias.naked && was_naked
		AddSD(PAHSDClothedFromNaked)
	endif

	if armor_added
		AddSD(PAHSDArmorAdded)
	endif

	if weapon_added
		AddSD(PAHSDWeaponAdded)
	elseif weapon_removed
		AddSD(PAHSDWeaponRemoved)
	endif

	if restraint_added && !restraint_removed
		AddSD(PAHSDRestraintAdded)
	elseif restraint_removed && !restraint_added
		AddSD(PAHSDRestraintRemoved)
	endif

	was_naked = false
	armor_added = false
	armor_removed = false
	weapon_added = false
	weapon_removed = false
	restraint_added = false
	restraint_removed = false
EndFunction

Function OpenBackpack()
	actor_alias.OpenBackpack()
EndFunction

;### Mind interface ###
Function SetAfraid()
	mind.mood = "afraid"
EndFunction

;### Actor Alias interface ###
PAHActorAlias Function Strip()
	Actor slave_actor = GetActorRef()
	Form the_form
	Int i = slave_actor.GetNumItems()
	while i > 0
		i -= 1
		the_form = slave_actor.GetNthForm(i)
		if (slave_actor.IsEquipped(the_form) && !the_form.HasKeyword(PAHRestraint) && !the_form.HasKeyword(actor_alias.SexLabNoStrip) && !the_form.HasKeyword(PAH.zbfWornDevice))
			slave_actor.UnequipItem(the_form)
		endif
	endwhile
	actor_alias.SetNakedState()
	actor_alias.ApplyEquipmentEffects()
EndFunction

Function FixNakedOutfit()
	Strip()
	GetActorRef().SetOutfit(PAHNothingOutfit)
	GetActorRef().SetOutfit(PAHNothingOutfit, true)
EndFunction

Function EquipInventory()
	actor_alias.EquipInventory()
EndFunction

Function OpenInventory()
	actor_alias.OpenInventory()
EndFunction

Function UnblockDialogue()
	actor_alias.UnblockDialogue()
EndFunction

;### Utility ###
int Function actorWouldFuck(Actor target)
	Actor thisActor = getActorRef()
	If PAH.SexLab.IsStraight(thisActor) && target.getActorBase().getSex() == thisActor.getActorBase().getSex()
		return -1
	ElseIf PAH.SexLab.IsGay(thisActor) && target.getActorBase().getSex() != thisActor.getActorBase().getSex()
		return -1
	EndIf

	int attraction = 55
;	If (Game.GetModByName("SexLab Attraction.esm") != 255)
;		If PAH.attractionInstalled
;			attraction = (PAH.attractionInstalled as SLAttractionMainScript).GetActorAttraction(thisActor, target)
;		EndIf
;	EndIf

	int arousal = 50
;	If (Game.GetModByName("SexLabAroused.esm") != 255)
;		If PAH.arousedInstalled
;			arousal = (PAH.arousedInstalled as slaFrameworkScr).GetActorArousal(thisActor)
;		EndIf
;	EndIf
	int value = attraction * 2 + arousal
	If attraction * 2 + arousal >= 150
		return attraction * 2 + arousal
	EndIf
	return -1
EndFunction

Float Function InverseDecayByY(Float y_value, Float half_life = 60.0, Float max_val = 1.0, Float min_val = 0.0)
	return max_val-(((max_val - min_val) / ((y_value/half_life) + 1)) + min_val)
EndFunction

Function registerForWhistle()
	If should_fight_for_player
		RegisterForModEvent("PAHEWhistle_follow", "PAHEWhistle")
		RegisterForModEvent("PAHEWhistle_wait", "PAHEWhistle")
	Else
		UnregisterForModEvent("PAHEWhistle_follow")
		UnregisterForModEvent("PAHEWhistle_wait")
	EndIf
EndFunction

Function reCloneSlave()
	Actor _slave = GetActorRef()
	PAH.Capture(_slave)
	String beh = behaviour
	behaviour = "follow_player"
	EndBehaviour()
	behaviour = "wait"
	EndBehaviour()
	behaviour = "wait_sandbox"
	EndBehaviour()
	behaviour = "flee_and_cower"
	EndBehaviour()
	behaviour = "run_away"
	EndBehaviour()
	behaviour = "wait_at_leash_point"
	EndBehaviour()
	behaviour = "restrained_in_furniture"
	EndBehaviour()
	if ((_slave.IsInFaction(PAHMoodJustCaptured)) && (submission == 0))
		mind.mood = "just_captured"
		behaviour = "flee_and_cower"
	elseIf ((_slave.IsInFaction(PAHMoodJustCaptured)) && (submission >= 1) && (_slave.IsInFaction(PAHMoodAngry)))
		mind.mood = "angry"
		_slave.RemoveFromFaction(PAHMoodJustCaptured)
		PAH.BleedOutStop(_slave)
	elseIf _slave.IsInFaction(PAHMoodAngry)
		mind.mood = "angry"
		PAH.BleedOutStop(_slave)
	elseIf ((_slave.IsInFaction(PAHMoodJustCaptured)) && (submission >= 1) && (_slave.IsInFaction(PAHMoodAfraid)))
		_slave.RemoveFromFaction(PAHMoodJustCaptured)
		mind.mood = "afraid"
	elseIf _slave.IsInFaction(PAHMoodAfraid)
		mind.mood = "afraid"
		PAH.BleedOutStop(_slave)
	else
		mind.mood = "neutral"
		PAH.BleedOutStop(_slave)
	endIf
	actor_alias.UnblockDialogue()
	If PAH.enableDebug
		Debug.Notification(_slave.getDisplayName() + " reCloned")
	EndIf
EndFunction

Function resetSlave()
	Actor _slave = GetActorRef()
	String beh = behaviour
	behaviour = "follow_player"
	EndBehaviour()
	behaviour = "wait"
	EndBehaviour()
	behaviour = "wait_sandbox"
	EndBehaviour()
	behaviour = "flee_and_cower"
	EndBehaviour()
	behaviour = "run_away"
	EndBehaviour()
	behaviour = "wait_at_leash_point"
	EndBehaviour()
	behaviour = "restrained_in_furniture"
	EndBehaviour()
	If (Game.GetModByName("Dawnguard.esm") != 255)
		If ((PAH.DLC1ThrallFaction != None) && actor_alias.IsInFaction(PAHPersNord))
			If actor_alias.IsInFaction(PAH.DLC1ThrallFaction)
				actor_alias.RemoveFromFaction(PAH.DLC1ThrallFaction)
			EndIf
		EndIf
	EndIf
	PAH.PrecleanActor(_slave)
	_slave.AddToFaction(PAHPlayerSlaveFaction)
	if ((_slave.IsInFaction(PAHMoodJustCaptured)) && (submission == 0))
		mind.mood = "just_captured"
		behaviour = "flee_and_cower"
	elseIf ((_slave.IsInFaction(PAHMoodJustCaptured)) && (submission >= 1) && (_slave.IsInFaction(PAHMoodAngry)))
		mind.mood = "angry"
		_slave.RemoveFromFaction(PAHMoodJustCaptured)
		PAH.BleedOutStop(_slave)
	elseIf _slave.IsInFaction(PAHMoodAngry)
		mind.mood = "angry"
		PAH.BleedOutStop(_slave)
	elseIf ((_slave.IsInFaction(PAHMoodJustCaptured)) && (submission >= 1) && (_slave.IsInFaction(PAHMoodAfraid)))
		_slave.RemoveFromFaction(PAHMoodJustCaptured)
		mind.mood = "afraid"
	elseIf _slave.IsInFaction(PAHMoodAfraid)
		mind.mood = "afraid"
		PAH.BleedOutStop(_slave)
	else
		mind.mood = "neutral"
		PAH.BleedOutStop(_slave)
	endIf
	cuffs = findCuffs()
	If (cuffs || _slave.WornHasKeyword(pah.PahRestraintMaterialSteel))
		behaviour = "tied"
		EndBehaviour()
	EndIf

	behaviour = beh
	actor_alias.UnblockDialogue()

	if !PlayerRef
		PlayerRef = Game.GetPlayer()
	EndIf

	If ((PAH.oldFear != None) && (_slave.GetFactionRank(PAH.oldFear) > 0))
		If ((_slave.GetFactionRank(PAH.newFear) + _slave.GetFactionRank(PAH.oldFear)) > 100)
			fear_training = 100
			_slave.SetFactionRank(PAH.oldFear, 0)
			_slave.SetFactionRank(PAH.PAHTrainFear, 100)
		Else
			fear_training = (_slave.GetFactionRank(PAH.newFear) + _slave.GetFactionRank(PAH.oldFear))
			_slave.SetFactionRank(PAH.oldFear, 0)
			_slave.SetFactionRank(PAH.PAHTrainFear, fear_training as Int)
		EndIf
	EndIf
	if _slave != None
		if _slave.IsDisabled()
			_slave.Enable()
			_slave.MoveTo(PlayerRef)
		endif
		AfterAssign()
	else
		BeforeClear()
	endif
	If _slave.getdisplayname() == ""
		setDisplayName(_slave.getDisplayName())
	endif
	If PAH.enableDebug
		Debug.Notification(_slave.getDisplayName() + " reset")
	EndIf
EndFunction

Function setDisplayName(string newName)
	name = newName
	GetActorRef().setDisplayName(name)
;	slaveName.setName(name)
EndFunction

String Function getName()
	return name
EndFunction

;### Punishment ###
;retired pah functions for reference
;Float last_punished_at


;Function _OnPunished()
;	last_punished_at = Utility.GetCurrentGameTime()
;	slave.SetAggressiveToPlayer(false)
;	OnPunished()
;	if GetMisdemeanor() == None
;		_OnPunishedUnfairly()
;	else
;		_OnPunishedFairly()
;	endif
;EndFunction
;Event OnPunished()
;EndEvent


;Function _OnPunishedFairly()
;	ClearMisdemeanor()	
;	OnPunishedFairly()
;EndFunction
;Event OnPunishedFairly()
;EndEvent


;Function _OnPunishedUnfairly()
;	OnPunishedUnfairly()
;EndFunction
;Event OnPunishedUnfairly()
;EndEvent


;Function _OnToldOff()
;	OnToldOff()
;EndFunction
;Event OnToldOff()
;EndEvent


;Function _OnObservePunishment(PAHSlave recipient, bool was_unfair = false)
;	OnObservePunishment(recipient, was_unfair)
;EndFunction
;Event OnObservePunishment(PAHSlave recipient, bool was_unfair = false)
;EndEvent


;Faction Function GetMisdemeanor()
;	if slave_actor.IsInFaction(PAH.PAHMisDisobedient)
;		return PAH.PAHMisDisobedient
;	elseif slave_actor.IsInFaction(PAH.PAHMisFlippant)
;		return PAH.PAHMisFlippant		
;	elseif slave_actor.IsInFaction(PAH.PAHMisInsolent)
;		return PAH.PAHMisInsolent		
;	endif
;	return None
;EndFunction


;Function ClearMisdemeanor()
;	slave_actor.RemoveFromFaction(PAH.PAHMisDisobedient)
;	slave_actor.RemoveFromFaction(PAH.PAHMisFlippant)
;	slave_actor.RemoveFromFaction(PAH.PAHMisInsolent)
;EndFunction
