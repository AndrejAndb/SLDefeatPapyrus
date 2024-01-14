Scriptname newscript123 extends Quest  
Import Utility
Import DOM_Util

PAHCore Property PAH Auto
PAHPunishmentRapeScript Property PAHPRS Auto
DOM_Core Property DOMCore Auto
DOM_SlaverManager Property DOM01 Auto
DOM_SlaveManager Property DOM02 Auto
DOM_Generator Property DOMGenerator Auto
DOM_Animator Property DOM_Anim Auto
Actor Property PlayerRef Auto

; DOM Factions
Faction Property DOMActorFaction Auto
Faction Property DOMPlayerSlaveFaction Auto
Faction Property DOMPlayerSlaverFaction Auto
Faction Property DOMPotentialSlaverFaction Auto
Faction Property DOMTraineeCount Auto
Faction Property DOMShouldBeNaked Auto
Faction Property DOMShouldBeNoOrgasm Auto
Faction Property DOMShouldBeSilent Auto
Faction Property DOMTobeComfortedFaction Auto
Faction Property DOMActionFleeing Auto
Faction Property DOMActionFollowing Auto
Faction Property DOMActionTied Auto
Faction Property DOMBeingCaptured Auto

; PAH Factions
Faction Property PAHPlayerSlaveFaction Auto
Faction Property PAHHasBeenPlayerSlaveFaction Auto
Faction Property PAHNaked Auto
Faction Property PAHSubmission Auto
Faction Property PAHRespectful Auto
Faction Property PAHBERunningAway Auto
Faction Property PAHBEFleeingAndCowering Auto
;Faction Property PAHBETied Auto ; Doesn't work, use the one from DOMCore
Faction Property PAHShouldBeRespectful Auto

; More factions
Faction Property PlayerFollowerFaction Auto

; Forms
Form Property zbfCuffsRope01 Auto
Form Property zbfCuffsIronBlack Auto
Form Property DoMBurlapSack Auto

; Idles
Idle property pa_Overwhelm Auto
Idle Property ExitBed Auto
Idle Property ExitChairFront Auto

; Keywords
Keyword Property ActorTypeNPC Auto
Keyword Property ActorTypeCreature Auto
Keyword Property BodyBag Auto

; Topics
Topic Property DOM02TopicAnswerAttack Auto

Function Initialize()
	LogInfo("================================================================================")
	LogInfo("==                         DoM: Keys and wheel menus                         ===")
	LogInfo("================================================================================")
	registerKeys()
EndFunction

bool property debugKeyMode = false Auto Hidden
bool Property alarmToggleAbduction = true Auto Hidden
bool Property menuPAH = false Auto Hidden
bool Property menuSlavers = true Auto Hidden
Int Property modifierKeyDefault  = -1 Auto Hidden
Int Property modifierKey  = 42 Auto Hidden
Int Property menu1Key     = 21 Auto Hidden ; Y
Int Property menu2Key     = 22 Auto Hidden ; U
Int Property menu3Key     = -1 Auto Hidden
Int Property menu4Key     = -1 Auto Hidden
Int Property menu5Key     = 34 Auto Hidden ; G
Int Property menu6Key     = -1 Auto Hidden
Int Property menu7Key     = 38 Auto Hidden ; L
Int Property menu8Key     = -1 Auto Hidden
Int Property abductionKey = 35 Auto Hidden ; H
Int Property bagInKey     = -1 Auto Hidden
Int Property bagOutKey    = -1 Auto Hidden
Int Property traitsKey    = -1 Auto Hidden
Int Property feelsKey     = -1 Auto Hidden
Int Property statusKey    = -1 Auto Hidden
Int Property moodKey      = -1 Auto Hidden
Int Property inventoryKey = 24 Auto Hidden ; O
Int Property praiseKey    = -1 Auto Hidden
Int Property scoldKey     = -1 Auto Hidden
Int Property punishKey    = -1 Auto Hidden
Int Property chokeKey     = -1 Auto Hidden
Int Property attentionKey = -1 Auto Hidden
Int Property kneelKey     = -1 Auto Hidden
Int Property favorKey     = -1 Auto Hidden
Int Property ripoffKey    = -1 Auto Hidden
Int Property stripKey     = -1 Auto Hidden
Int Property comeKey      = -1 Auto Hidden
Int Property fixmeKey     = 37 Auto Hidden ; K
Int Property testPoseKey  = -1 Auto Hidden
Int Property traitsDigitsKey = -1 Auto Hidden
Int Property feelsDigitsKey  = -1 Auto Hidden
Int Property followKey       = -1 Auto Hidden
Int Property followAllKey    = -1 Auto Hidden

Function registerKeys()
	if menu1Key != -1 && menu1Key
		RegisterForKey(menu1Key)
	endif
	if menu2Key != -1 && menu2Key
		RegisterForKey(menu2Key)
	endif
	if menu3Key != -1 && menu3Key
		RegisterForKey(menu3Key)
	endif
	if menu4Key != -1 && menu4Key
		RegisterForKey(menu4Key)
	endif
	if menu5Key != -1 && menu5Key
		RegisterForKey(menu5Key)
	endif
	if menu6Key != -1 && menu6Key
		RegisterForKey(menu6Key)
	endif
	if menu7Key != -1 && menu7Key
		RegisterForKey(menu7Key)
	endif
	if menu8Key != -1 && menu8Key
		RegisterForKey(menu8Key)
	endif
	if abductionKey != -1 && abductionKey
		RegisterForKey(abductionKey)
	endif
	if bagInKey != -1 && bagInKey
		RegisterForKey(bagInKey)
	endif
	if bagOutKey != -1 && bagOutKey
		RegisterForKey(bagOutKey)
	endif
	if traitsKey != -1 && traitsKey
		RegisterForKey(traitsKey)
	endif
	if feelsKey != -1 && feelsKey
		RegisterForKey(feelsKey)
	endif
	if statusKey != -1 && statusKey
		RegisterForKey(statusKey)
	endif
	if moodKey != -1 && moodKey
		RegisterForKey(moodKey)
	endif
	if inventoryKey != -1 && inventoryKey
		RegisterForKey(inventoryKey)
	endif
	if praiseKey != -1 && praiseKey
		RegisterForKey(praiseKey)
	endif
	if scoldKey != -1 && scoldKey
		RegisterForKey(scoldKey)
	endif
	if punishKey != -1 && punishKey
		RegisterForKey(punishKey)
	endif
	if chokeKey != -1 && chokeKey
		RegisterForKey(chokeKey)
	endif
	if kneelKey != -1 && kneelKey
		RegisterForKey(kneelKey)
	endif
	if attentionKey != -1 && attentionKey
		RegisterForKey(attentionKey)
	endif
	if favorKey != -1 && favorKey
		RegisterForKey(favorKey)
	endif
	if ripoffKey != -1 && ripoffKey
		RegisterForKey(ripoffKey)
	endif
	if stripKey != -1 && stripKey
		RegisterForKey(stripKey)
	endif
	if comeKey != -1 && comeKey
		RegisterForKey(comeKey)
	endif
	if fixmeKey != -1 && fixmeKey
		RegisterForKey(fixmeKey)
	endif
	if testPoseKey != -1 && testPoseKey
		RegisterForKey(testPoseKey)
	endif
	if traitsDigitsKey != -1 && traitsDigitsKey
		RegisterForKey(traitsDigitsKey)
	endif
	if feelsDigitsKey != -1 && feelsDigitsKey
		RegisterForKey(feelsDigitsKey)
	endif
	if followKey != -1 && followKey
		RegisterForKey(followKey)
	endif
	if followAllKey != -1 && followAllKey
		RegisterForKey(followAllKey)
	endif
EndFunction

Function refreshKeys()
	UnregisterForAllKeys()
	registerKeys()
EndFunction

Event OnKeyDown(Int KeyCode)
	If IsInMenuMode()
		Return
	EndIf
	If UI.IsTextInputEnabled() || UI.IsMenuOpen("Crafting Menu")
        Return
    EndIf
	Logtrace("DOM::OnKeyDown key="+KeyCode)
	if modifierKeyDefault > 0
		if !Input.IsKeyPressed(modifierKeyDefault) && !Input.IsKeyPressed(modifierKey)
			return
		endif
	endif
	If traitsKey && (KeyCode == traitsKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoNPCTraits()
		else
			DOMDoNPCTraitsVerbose()
		endif
	ElseIf feelsKey && (KeyCode == feelsKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoNPCFeelings()
		else
			DOMDoNPCFeelingsVerbose()
		endif
	ElseIf statusKey && (KeyCode == statusKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoMood()
		else
			DOMDoStatus()
		endif
	ElseIf moodKey && (KeyCode == moodKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoStatus()
		else
			DOMDoMood()
		endif
	ElseIf followKey && (KeyCode == followKey)
		if Input.IsKeyPressed(modifierKey)
			DOMAllOrderSlavesAndSlavers("Follow")
			if menuPAH
				PAHAllFollow()
			endif
		else
			DOMAllOrderSlavesAndSlavers("FollowIfPosing")
			if menuPAH
				PAHAllFollowIfPosing()
			endif
		endif
	ElseIf followAllKey && (KeyCode == followAllKey)
		if Input.IsKeyPressed(modifierKey)
			DOMAllOrderSlavesAndSlavers("FollowIfPosing")
			if menuPAH
				PAHAllFollowIfPosing()
			endif
		else
			DOMAllOrderSlavesAndSlavers("Follow")
			if menuPAH
				PAHAllFollow()
			endif
		endif
	ElseIf inventoryKey && (KeyCode == inventoryKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoAllowOrgasm()
		else
			DOMDoOpenInventory()
		endif
	ElseIf comeKey && (KeyCode == comeKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoOpenInventory()
		else
			DOMDoAllowOrgasm()
		endif
	ElseIf praiseKey && (KeyCode == praiseKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoScold()
		else
			DOMDoPraise()
		endif
	ElseIf scoldKey && (KeyCode == scoldKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoPraise()
		else
			DOMDoScold()
		endif
	ElseIf punishKey && (KeyCode == punishKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoChoke()
		else
			DOMSetExample()
		endif
	ElseIf chokeKey && (KeyCode == chokeKey)
		if Input.IsKeyPressed(modifierKey)
			DOMSetExample()
		else
			DOMDoChoke()
		endif
	ElseIf kneelKey && (KeyCode == kneelKey)
		if Input.IsKeyPressed(modifierKey)
			DOMAllOrder("Attention")
			if menuPAH
				PAHAllAttention()
			endif
		else
			DOMAllOrder("Kneel")
			if menuPAH
				PAHAllKneel()
			endif
		endif
	ElseIf attentionKey && (KeyCode == attentionKey)
		if Input.IsKeyPressed(modifierKey)
			DOMAllOrder("Kneel")
			if menuPAH
				PAHAllKneel()
			endif
		else
			DOMAllOrder("Attention")
			if menuPAH
				PAHAllAttention()
			endif
		endif
	ElseIf menu1Key && (KeyCode == menu1Key)
		if Input.IsKeyPressed(modifierKey)
			DOMDoStatusMenu()
		else
			DOMDoOrderMenu()
		endif
	ElseIf menu2Key && (KeyCode == menu2Key)
		if Input.IsKeyPressed(modifierKey)
			DOMDoTrainingMenu()
		else
			DOMDoAbuseMenu()
		endif
	ElseIf menu3Key && (KeyCode == menu3Key)
		if Input.IsKeyPressed(modifierKey)
			DOMDoOrderMenu()
		else
			DOMDoStatusMenu()
		endif
	ElseIf menu4Key && (KeyCode == menu4Key)
		if Input.IsKeyPressed(modifierKey)
			DOMDoAbuseMenu()
		else
			DOMDoTrainingMenu()
		endif
	ElseIf menu5Key && (KeyCode == menu5Key)
		if Input.IsKeyPressed(modifierKey)
			DOMAllAbuseMenu()
		else
			DOMAllOrderMenu()
		endif
	ElseIf menu6Key && (KeyCode == menu6Key)
		if Input.IsKeyPressed(modifierKey)
			DOMAllOrderMenu()
		else
			DOMAllAbuseMenu()
		endif
	ElseIf menu7Key && (KeyCode == menu7Key)
		if Input.IsKeyPressed(modifierKey)
			DOMDoTrainerAbuseMenu()
		else
			DOMDoTrainerManagementMenu()
		endif
	ElseIf menu8Key && (KeyCode == menu8Key)
		if Input.IsKeyPressed(modifierKey)
			DOMDoTrainerManagementMenu()
		else
			DOMDoTrainerAbuseMenu()
		endif
	ElseIf stripKey && (KeyCode == stripKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoRipOff()
		else
			DOMDoStrip()
		endif
	ElseIf ripoffKey && (KeyCode == ripoffKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoStrip()
		else
			DOMDoRipOff()
		endif
	ElseIf bagInKey && (KeyCode == bagInKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoTakeOutOfBag()
		else
			DOMDoPutInBag()
		endif
	ElseIf bagOutKey && (KeyCode == bagOutKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoPutInBag()
		else
			DOMDoTakeOutOfBag()
		endif
	ElseIf traitsDigitsKey && (KeyCode == traitsDigitsKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoNPCTraitsVerbose()
		else
			DOMDoNPCTraits()
		endif
	ElseIf feelsDigitsKey && (KeyCode == feelsDigitsKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoNPCFeelingsVerbose()
		else
			DOMDoNPCFeelings()
		endif
	ElseIf testPoseKey && (KeyCode == testPoseKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoFixMe()
		else
			DOMDoTestPose()
		endif
	ElseIf fixmeKey && (KeyCode == fixmeKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoTestPose()
		else
			DOMDoFixMe()
		endif
	EndIf
	; For oher keys, make sure player and is not in a Sexlab scene
	If PlayerRef.IsInFaction(DOMCore.SexLabAnimatingFaction)
		return
	endif
	If abductionKey && (KeyCode == abductionKey)
		if Input.IsKeyPressed(modifierKey)
			DOMDoFavor()
		else
			DOMAbduction()
		endif
	ElseIf favorKey && (KeyCode == favorKey)
		if Input.IsKeyPressed(modifierKey)
			DOMAbduction()
		else
			DOMDoFavor()
		endif
	EndIf
EndEvent

; ### DOM

bool Function isADOMSlave(Actor akTarget) ; Is a player's slave
	if akTarget.IsInFaction(DOMPlayerSlaveFaction)
		return true
	endif
	
	return false
EndFunction

; ### Wheel menu

Function DOMDoOrderMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		DOM_BurlapSack objSack = (Game.GetCurrentCrosshairRef()) As DOM_BurlapSack
		if objSack==None
			return
		endif
		DOMDoSackMenu()
		return
	endif
	int imenu
	if IsAPAHSlave(akTarget)
		imenu = ShowPAHOrderMenu()
		if imenu == 0
			PAHDoOpenInventory()
		elseif imenu == 1
			PAHDoFollowMe()
		elseif imenu == 2
			PAHDoStandStill() ; not sandbox
		elseif imenu == 3
			PAHDoWaitHere() ; sandbox
		elseif imenu == 4
			if akTarget.IsInFaction(DOMCore.PAHBETied)
				PAHDoUntie()
			else
				DOMDoPutInBagActor(akTarget)
			endif
		elseif imenu == 5
			PAHDoTieUp()
		elseif imenu == 6
			PAHDoPoseMenu()
		elseif imenu == 7
			PAHDoFavor()
		endif
	elseif isADOMSlave(aktarget)
		imenu = ShowDOMOrderMenu()
		; Orders menu
		if imenu == 0
			DOMDoOpenInventory()
		elseif imenu == 1
			DOMDoFollowMe()
		elseif imenu == 2
			DOMDoStandStill() ; not sandbox
		elseif imenu == 3
			DOMDoWaitHere() ; sandbox
		elseif imenu == 4
			DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
			if sl_alias != None && sl_alias.is_restrained
				DOMDoUntie()
			else
				DOMDoPutInBag()
			endif
		elseif imenu == 5
			DOMDoTieUpMenu()
		elseif imenu == 6
			DOMDoPoseMenu()
		elseif imenu == 7
			DOMDoFavor()
		endif
	else
		DOMDoNPCMenu()
	endif
EndFunction

Int Function ShowDOMOrderMenu()		
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = None
	if akTarget != None
		sl_alias = DOMCore.GetActor(akTarget)
	endif
	if debugKeyMode
		HudNotification("Order menu for "+akTarget.getDisplayName())
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Инвентарь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Инвентарь ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	
	if sl_alias != None && sl_alias.behaviour != "follow_player"
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Следую за мной ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Следую за мной ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Следовать ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = " ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = false)
	endif
	
	if sl_alias != None && sl_alias.behaviour != "wait"
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Стой на месте")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Стой на месте")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Стоять ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = false)
	endif
	
	if sl_alias != None && sl_alias.behaviour != "wait_sandbox"
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Жди здесь ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Жди здесь ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Ожидать ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	endif
		
	if sl_alias != None && sl_alias.is_restrained
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Развязать ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Развязать ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	elseif sl_alias == None || !sl_alias.canAnimate
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Положить в мешок")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Положить в мешок")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	endif

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Связать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Связать ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Развлекай меня ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Развлекай меня ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)

	if !sl_alias.is_restrained
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Приказ ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Приказ ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)
	endif
	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoAbuseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		DOM_BurlapSack objSack = (Game.GetCurrentCrosshairRef()) As DOM_BurlapSack
		if objSack==None
			return
		endif
		DOMDoSackMenu()
		return
	endif
	int imenu
	if IsAPAHSlave(akTarget)
		imenu = ShowPAHAbuseMenu()
		; Punish & praise menu
		if imenu == 0
			PAHDoPunish()
		elseif imenu == 1
			PAHDoScold()
		endif
	elseif isADOMSlave(aktarget)
		imenu = ShowDOMAbuseMenu()
		; Punish & praise menu
		if imenu == 0
			DOMDoPunishingMenu()
		elseif imenu == 1
			DOMDoChoke()
		elseif imenu == 2
			DOMDoInsultMenu()
		elseif imenu == 3
			DOMDoThreatenMenu()
		elseif imenu == 4
			DOMDoPraisingMenu()
		elseif imenu == 5
			DOMDoComfortMenu()
		elseif imenu == 6
			DOMDoFlatterMenu()
		elseif imenu == 7
			DOMDoPromiseMenu()
		endif
	else
		DOMDoNPCSlaveMenu()
	endif
EndFunction

Int Function ShowDOMAbuseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	int n_scold = 1
	int n_praise = 1
	bool respectful = true
	DOM_Actor sl_alias = None
	if akTarget != None
		sl_alias = DOMCore.GetActor(akTarget)
		if sl_alias != None
			n_scold = sl_alias.mind.GetNumberOfNextPunishmentReasons()
			n_praise = sl_alias.mind.GetNumberOfNextPraiseReasons()
		endif
		if akTarget.IsInFaction(PAHShouldBeRespectful) && !akTarget.IsInFaction(PAHRespectful)
			respectful = false
		endif
	endif
	if debugKeyMode
		HudNotification("Abuse menu for "+akTarget.getDisplayName())
	endif
			
	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	
	if sl_alias.mind.whipping_active
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Being punished ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = false)
	elseif n_scold > 0
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Наказать ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Наказать ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Нет причины наказывать ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = false)
	endif

	if !respectful && !sl_alias.mind.whipping_active && sl_alias.canAnimate
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Придушить из уважения ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Придушить из уважения ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	else
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = false)
	endif

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Оскорблять ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Оскорблять ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Угрожать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Угрожать ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)

	if n_praise > 0
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Хвалить")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Хвалить")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	else
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	endif

	if akTarget.IsInFaction(DOMTobeComfortedFaction)
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Утешение ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Утешение ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	else
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = false)
	endif
		
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Льстить ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Льстить ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Обещать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Обещать ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoStatusMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		DOM_BurlapSack objSack = (Game.GetCurrentCrosshairRef()) As DOM_BurlapSack
		if objSack==None
			return
		endif
		DOMDoSackMenu()
		return
	endif
	int imenu
	if IsAPAHSlave(akTarget)
		imenu = ShowPAHStatusMenu()
		; Info menu
		if imenu == 0
			DOMDoNPCTraitsVerbose()
		elseif imenu == 1
			DOMDoNPCFeelingsVerbose()
		elseif imenu == 2
			DOMDoMood()
		elseif imenu == 3
			DOMDoStatus()
		elseif imenu == 4
			PAHDoBeRespectful()
		elseif imenu == 6
			PAHDoFightForMe()
		elseif imenu == 7
			PAHDoCleanTheMess()
		endif
	elseif isADOMSlave(aktarget)
		imenu = ShowDOMStatusMenu()
		; Info menu
		if imenu == 0
			DOMDoNPCTraitsVerbose()
		elseif imenu == 1
			DOMDoNPCFeelingsVerbose()
		elseif imenu == 2
			DOMDoMood()
		elseif imenu == 3
			DOMDoStatus()
		elseif imenu == 4
			DOMDoBeRespectful()
		elseif imenu == 5
			DOMDoBeSilent()
		elseif imenu == 6
			DOMDoFightForMe()
		elseif imenu == 7
			DOMDoCleanTheMess()
		endif
	else
		DOMDoNPCMenu()
	endif
EndFunction

Int Function ShowDOMStatusMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	string txt_silent = "Будь тихим"
	string txt_respectful = "Будь почтительным"
	string txt_fight_for_me = "Сражайся за меня "
	string txt_be_a_maid = "Будь моей служанкой "
	DOM_Actor  sl_alias = None
	if akTarget != None
		sl_alias = DOMCore.GetActor(akTarget)
		if sl_alias != None
			if sl_alias.mind.should_be_silent
				txt_silent = "Не будь тихим"
			endif
			if sl_alias.mind.should_be_respectful
				txt_respectful = "Не нужно быть уважительным "
			endif
			if sl_alias.mind.should_fight_for_player
				txt_fight_for_me = "Не сражайся "
			endif
		endif
		if akTarget.GetLeveledActorBase().GetSex() == 0
			txt_be_a_maid = "Будь моим слугой "
		endif
	endif
	if debugKeyMode
		HudNotification("Status menu for "+akTarget.getDisplayName())
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Личность ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Чувства ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Настроение ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Статус ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = txt_respectful)
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = txt_silent)
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = txt_fight_for_me)

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Личность ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Чувства ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Настроение ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Статус ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = txt_respectful)
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = txt_silent)
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = txt_fight_for_me)
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	
	if sl_alias != None && sl_alias.behaviour != "clean_house"
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = txt_be_a_maid)
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = txt_be_a_maid)
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Служи ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)
	endif


	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoTrainingMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		DOM_BurlapSack objSack = (Game.GetCurrentCrosshairRef()) As DOM_BurlapSack
		if objSack==None
			return
		endif
		DOMDoSackMenu()
		return
	endif
	int imenu
	if IsAPAHSlave(akTarget)
		imenu = ShowPAHTrainingMenu()
		if imenu == 0
			PAHDoStrip()
		elseif imenu == 1
			PAHDoRapeMenu()
		elseif imenu == 2
			PAHDoSexMenu()
		elseif imenu == 5
			PAHDoEquipInventory()
		endif
	elseif isADOMSlave(aktarget)
		imenu = ShowDOMTrainingMenu()
		if imenu == 0
			DOMDoClothesMenu()
		elseif imenu == 1
			DOMDoRapeMenu()
		elseif imenu == 2
			DOMDoSexMenu()
		elseif imenu == 3
			DOMDoSetOrgasmStatus()
		elseif imenu == 4
			DOMDoAttentionMenu()
		elseif imenu == 5
			DOMDoKissMenu()
		elseif imenu == 6
			DOMDoInspectMenu()
		elseif imenu == 7
			DOMDoMasturbateMenu()
		endif
	else
		DOMDoNPCSlaveMenu()
	endif
EndFunction

Int Function ShowDOMTrainingMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	string txt_allowed = "Контролировать оргазм "
	string txt_masturbate = "Мастурбировать "
	DOM_Actor sl_alias = None
	if akTarget != None
		sl_alias = DOMCore.GetActor(akTarget)
		if sl_alias != None
			if sl_alias.mind.should_be_noorgasm
				txt_allowed = "Свободный оргазм "
			endif
			if sl_alias.behaviour == "masturbate"
				txt_masturbate = "Мастурбируй сильнее "
			endif
		endif
	endif
	if debugKeyMode
		HudNotification("Abuse menu for "+akTarget.getDisplayName())
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Одежда ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Одежда ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)

	if sl_alias == None || !sl_alias.canAnimate
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = false)
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = false)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Изнасилование")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Секс ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Изнасилование")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Секс ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	endif
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = txt_allowed)
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Внимание ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Целовать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Осмотреть ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = txt_masturbate)

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = txt_allowed)
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Внимание ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Целовать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Осмотреть ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = txt_masturbate)
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMAllOrderMenu()
	int imenu = ShowDOMMenuGroupOrder()
	; Group orders menu
	if imenu == 0
		DoMAllPoseMenu()
	elseif imenu == 1
		DOMAllOrderSlavesAndSlavers("Follow")
		if menuPAH
			PAHAllFollow()
		endif
	elseif imenu == 2
		DOMAllOrderSlavesAndSlavers("StandStill")
		if menuPAH
			PAHAllStandstill()
		endif
	elseif imenu == 3
		DOMAllOrderSlavesAndSlavers("WaitHere") ; sandbox
		if menuPAH
			PAHAllWaitHere()
		endif
	elseif imenu == 4
		DOMAllOrder("BeRespectful")
	elseif imenu == 5
		DOMAllOrder("BeSilent")
	elseif imenu == 6
		DOMAllOrderSlavesAndSlavers("FightForMe")
		if menuPAH
			PAHAllFightForMe()
		endif
	elseif imenu == 7
		DOMAllOrderSlavesAndSlavers("DontFightForMe")
		if menuPAH
			PAHAllDontFightForMe()
		endif
	endif
EndFunction

Int Function ShowDOMMenuGroupOrder()		
	if debugKeyMode
		HudNotification("Group order menu")
	endif
	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Всем принять позу ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Все следуйте за мной ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Всем стоять на месте ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Всем ждать здесь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Всем быть вежливыми ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Всем заткнуться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Все сражаются за меня ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Всем не сражайтесь ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Принять позу ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Следую за мной ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Стой на месте")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Жди здесь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Будь вежливым ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Заткнуться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Сражайся за меня ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Не сражайся ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMAllAbuseMenu()
	int imenu = ShowDOMMenuGroupAbuse()
	; Group orders menu
	if imenu == 0
		DOMAllClothesMenu()
	elseif imenu == 1
		DoMAllAttentionMenu()
	elseif imenu == 2
		DOMAllPromiseMenu()
	elseif imenu == 3
		DOMAllThreatenMenu()
	elseif imenu == 4
		DOMAllOrder("InBag")
	elseif imenu == 5
		DOMAllShowTieUpMenu()
	elseif imenu == 6
		DoMAllGagMenu()
	elseif imenu == 7
		DOMAllOrder("Masturbate")
	endif
EndFunction

Int Function ShowDOMMenuGroupAbuse()		
	if debugKeyMode
		HudNotification("Group abuse menu")
	endif
	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Одеться всем ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Внимание всем ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Обещать всем ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Угрожать всем")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Всех положить в мешок ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Связать всех ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Одеть кляп всем")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Мастурбировать всем ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Одежда ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Внимание ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Обещать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Угрожать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Положить в мешок")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Связать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Кляп одеть/снять ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Мастурбировать ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoAttentionMenu()
	int imenu = ShowDOMDoAttentionMenu()
	if imenu == 5
		DOMDoDisplay()
	elseif imenu == 6
		DOMDoKneel()
	elseif imenu == 7
		DOMDoAttention()
	endif
EndFunction

Function DOMAllAttentionMenu()
	int imenu = ShowDOMAllAttentionMenu()
	if imenu == 0
		DOMAllOrder("Scold")
	elseif imenu == 2
		DOMAllOrder("Insult")
	elseif imenu == 3
		DOMAllOrder("Flatter")
	elseif imenu == 4
		DOMAllOrder("Praise")
	elseif imenu == 5
		DOMAllOrder("DoDisplay")
	elseif imenu == 6
		DOMAllOrder("Kneel")
	elseif imenu == 7
		DOMAllOrder("Attention")
	endif
EndFunction

Int Function ShowDoDOMMenuGag()
	if debugKeyMode
		HudNotification("Group order menu")
	endif
	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Всем носить кляп ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Всем снять кляп ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Всем носить кляп ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Всем снять кляп ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDOMAllAttentionMenu()		
	if debugKeyMode
		HudNotification("Group order menu")
	endif
	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Ругать всех")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Оскорблять всех ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Всем льстить ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Хвалить всех ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Всех выставить напоказ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Все на колени ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Всем стоять ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Ругать")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Оскорблять ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Flatter ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Хвалить")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Выставить на обозрение ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Kneel ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Стоять")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDOMDoAttentionMenu()		
	if debugKeyMode
		HudNotification("Attention menu")
	endif
	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Выставить напоказ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Приклонить колени")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Стоять")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Выставить на обозрение ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Приклонить колени")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Стоять")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMPunishmentTypeMenu()
	if debugKeyMode
		HudNotification("Punishment type menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Боль")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Изнасилование")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Ругать")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Душить")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Публичное унижение")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Причинить боль")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Изнасилование")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Ругать")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Душить")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Публичное унижение")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

int Function ShowDoMPunishmentMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	int n = 0
	DOM_Actor sl_alias
	if akTarget == None
		return -1
	endif
	if debugKeyMode
		HudNotification("Punishment reason menu for "+akTarget.getDisplayName())
	endif
	
	sl_alias = DOMCore.GetActor(akTarget)
	n = sl_alias.mind.GetNumberOfNextPunishmentReasons()
	if n < 1
		return -1
	;elseif n == 1
	;	HudNotification("Punishing "+sl_alias.GetName()+" for "+sl_alias.mind.GetNextPunishmentReason(0))
	;	return 0
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	int i = 0
	if n > 8
		n = 8
	endif
	while i < n
		string psh_reason = sl_alias.mind.GetNextPunishmentReason(i)+" "
		Logtrace("Punish "+sl_alias.GetName()+" reason "+i+" = "+psh_reason)
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = i, value = psh_reason)
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = i, value = psh_reason)
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = i, value = true)
		i += 1
	endwhile
	while i < 8
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = i, value = false)
		i += 1
	endwhile

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMPraiseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	int n = 0
	DOM_Actor sl_alias
	if akTarget == None
		return -1
	endif
	if debugKeyMode
		HudNotification("Praise reason menu for "+akTarget.getDisplayName())
	endif
	
	sl_alias = DOMCore.GetActor(akTarget)
	n = sl_alias.mind.GetNumberOfNextPraiseReasons()
	if n < 1
		return -1
	;elseif n == 1
	;	HudNotification("Praising "+sl_alias.GetName()+" for "+sl_alias.mind.GetNextPraiseReason(0))
	;	return 0
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	int i = 0
	if n > 8
		n = 8
	endif
	while i < n
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = i, value = sl_alias.mind.GetNextPraiseReason(i)+" ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = i, value = sl_alias.mind.GetNextPraiseReason(i)+" ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = i, value = true)
		i += 1
	endwhile
	while i < 8
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = i, value = false)
		i += 1
	endwhile

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDOMDoThreatenMenu()
	if debugKeyMode
		HudNotification("Threaten against menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Попытка побега ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Злость ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Неуважительность ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Рыдания ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Отказ сражаться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Отказ позировать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Отказ мастурбировать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Прикрылся ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Попытка побега ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Злость ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Неуважительность ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Рыдания ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Отказ сражаться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Отказ позировать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Отказ мастурбировать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Прикрыл себя ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoPoseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDOMPoseMenu()
	if imenu == 0
		sl_alias.DoChair()
	elseif imenu == 1
		sl_alias.DoLight()
	elseif imenu == 2
		sl_alias.DoFlowers()
	elseif imenu == 3
		sl_alias.DoDrinks()
	elseif imenu == 4
		sl_alias.DoCute()
	elseif imenu == 5
		sl_alias.DoDance()
	elseif imenu == 6
		sl_alias.DoMusic()
	elseif imenu == 7
		DoMSexyPoseMenu()
	endif
EndFunction

Int Function ShowDOMPoseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if debugKeyMode
		HudNotification("Pose menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Стул ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Свет ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Цветы ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Выпивка ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Мило ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Танцевать")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Музыка ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Другое ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Стул ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Свет ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Цветы ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Выпивка ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Мило ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Танцевать")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Музыка ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Другое ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMSexyPoseMenu()
	if debugKeyMode
		HudNotification("Pose menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Покорность ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Задница ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Грудь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Киска ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Мило ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Танцевать")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Музыка ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Другое ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Покорность ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Задница ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Грудь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Киска ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Мило ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Танцевать")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Музыка ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Другое ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMInspectMenu()
	if debugKeyMode
		HudNotification("Inspect menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Спереди ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Сзади ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "На полу ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Выставить на обозрение ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Спереди ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Сзади ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "На полу ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Выставить на обозрение ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)


	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMMasturbateMenu()
	if debugKeyMode
		HudNotification("Masturbate menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Стоять ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "На коленях ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Уложить ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Стоять ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "На коленях ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Уложить ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)


	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMClothesMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	string txt_naked = "Быть голым"
	string txt_weapons = "Без оружия "
	string txt_armor = "Без доспехов "
	bool is_naked = false
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if sl_alias != None
			if sl_alias.mind.should_be_naked ; && sl_alias.is_naked
				txt_naked = "Носить одежду "
			endif
			if sl_alias.is_naked
				is_naked = true
			endif
			if !sl_alias.mind.should_hold_weapons
				txt_weapons = "Достать оружие "
			endif
			if !sl_alias.mind.should_wear_armor
				txt_armor = "Одеть доспехи "
			endif
		endif
	endif
	if debugKeyMode
		HudNotification("Clothes menu for "+akTarget.getDisplayName())
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	if !is_naked
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Содрать ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Содрать все ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Содрать ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Содрать все ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
		if akTarget.IsInFaction(DOMActionTied)
			wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Ограниченный... ")
			wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Ограниченный... ")
			wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Ограниченный... ")
			wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Ограниченный... ")
			wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = false)
			wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
		else
			wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Приказать раздеться ")
			wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Полностью раздеться ")
			wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Приказать раздеться ")
			wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Полностью раздеться ")
			wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
			wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
		endif
	endif
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = txt_naked)
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Одеть то, что в инвентаре ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = txt_weapons)
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = txt_armor)

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = txt_naked)
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Одеть то, что в инвентаре ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = txt_weapons)
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = txt_armor)
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMAllClothesMenu()
	if debugKeyMode
		HudNotification("Clothes menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Всегда быть голым ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Носить одежду ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Приказать раздеться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Полностью раздеться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Одеть то, что в инвентаре ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Без оружия ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Без доспехов ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Быть голым")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Носить одежду ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Приказать раздеться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Полностью раздеться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Одеть то, что в инвентаре ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Без оружия ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Без доспехов ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)


	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMSexMenu(bool aggro)
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	bool allow_v = true
	if debugKeyMode
		HudNotification("Sex menu for "+akTarget.getDisplayName())
	endif
	
	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Вагинальный ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Вагинальный ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Оральный ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Оральный ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Анальный ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Анальный ")	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	
	if akTarget.IsInFaction(DOMActorFaction)
		if aggro 
			wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Изнасилование раба")
			wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Изнасилование раба")	
			wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
		else
			wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Секс с ")
			wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Секс с ")	
			wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
		endif
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Тройничек ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Тройничек ")	
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	endif
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMNPCMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	ReferenceAlias slaver_alias = DOMCore.GetActor(akTarget)
	string txt_recruit = "Вербовать рабовладельца "
	bool pot_thug = false
	If slaver_alias != None
		txt_recruit = "Уволить рабовладельца "
		pot_thug = true
	elseif akTarget.IsInFaction(DOMPotentialSlaverFaction)
		pot_thug = true
	endif
	if debugKeyMode
		HudNotification("NPC menu for "+akTarget.getDisplayName())
	endif

	bool do_ransom = false
	if DOM02.family_tmp.GetRef() == akTarget
		do_ransom = true
	endif
	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	if pot_thug
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = txt_recruit)
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = txt_recruit)
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	else
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = false)
	endif
	if do_ransom
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Выкуп раба ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Выкуп раба ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	else
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = false)
	endif

	if akTarget.IsInFaction(PlayerFollowerFaction) || akTarget.IsInFaction(DOMCore.PotentialFollowerFaction) || DOMCore.isAPlayerSlave(akTarget)
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Открыть инвентарь ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Открыть инвентарь ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)
	else
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)
	endif

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Личность ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Чувства ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Настроение ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Статус ")
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Личность ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Чувства ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Настроение ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Статус ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	
	if !akTarget.IsChild()
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Похищение ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Похищение ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	endif

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMNPCSlaveMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	ReferenceAlias slaver_alias = DOMCore.GetActor(akTarget)

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Изнасилование раба")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Изнасилование раба")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Секс с ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Секс с ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Тройничек ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Тройничек ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Одеть то, что в инвентаре ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Одеть то, что в инвентаре ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMSackMenu()
	if debugKeyMode
		HudNotification("Sack menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Открыть мешок ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Взять мешок ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Открыть мешок ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Взять мешок ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)


	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMKissMenu()
	if debugKeyMode
		HudNotification("Kiss menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Обычный поцелуй ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Долгий поцелуй ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Принудительный поцелуй ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Поцелуй 2 ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Принудительно 2 ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Обычный поцелуй ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Долгий поцелуй ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Принудительный поцелуй ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Поцелуй 2 ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Принудительно 2 ")

	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)


	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMTieUpMenu()
	if debugKeyMode
		HudNotification("Tie-up menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Связать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "На цепь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "В клетку/На столб ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Restrain ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Tie-up and gag ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "На цепь и кляп ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "В клетку/На столб и кляп ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Ограничить и кляп ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Связать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "На цепь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "В клетку/На столб ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Restrain ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Tie-up and gag ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "На цепь и кляп ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "В клетку/На столб и кляп ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Ограничить и кляп ")

	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoUntie()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	LogTrace("DOMDoUntie 1 "+sl_alias.GetName())
	
	sl_alias.ExitTieUpIfTied(PlayerRef)
	LogTrace("DOMDoUntie 2 "+sl_alias.GetName())
EndFunction

Function DOMDoTieUpMenu()	
	int itype = ShowDoMTieUpMenu()
	if itype < 0
		return
	endif
	string type
	if itype == 0
		DOMTieUp()
	elseif itype == 1
		DOMChains()
	elseif itype == 2
		DOMCagePost()
	elseif itype == 3
		DOMRestrain()
	elseif itype == 4
		DOMTieUpAndGag()
	elseif itype == 5
		DOMChainsAndGag()
	elseif itype == 6
		DOMCagePostAndGag()
	elseif itype == 7
		DOMRestrainAndGag()
	endif
EndFunction

Function DOMDoPunishingMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	
	int imenu = ShowDoMPunishmentMenu()
	if imenu < 0
		return
	endif
	string reason = sl_alias.mind.GetNextPunishmentReason(imenu)
	
	int itype   = ShowDoMPunishmentTypeMenu()
	if itype < 0
		return
	endif
	string type
	if itype == 1
		type = "rape"
	elseif itype == 2
		type = "scold"
	elseif itype == 3
		type = "choke"
	elseif itype == 4
		type = "public humiliation"
	else
		type = "pain"
	endif
		
	sl_alias.StartPunishmentWith(None,type,reason,"")
EndFunction

Function DOMDoPraisingMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	
	int imenu = ShowDoMPraiseMenu()
	if imenu < 0
		return
	endif
	string reason = sl_alias.mind.GetNextPraiseReason(imenu)
	sl_alias.StartPraising(None,reason)
EndFunction

Function DOMDoNPCMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	elseif !akTarget.GetLeveledActorBase().IsUnique() && !akTarget.IsInFaction(PAHSubmission) && !akTarget.IsInFaction(DOMPlayerSlaveFaction) ; && !akTarget.IsInFaction(DOMTraitHonest) 
		return
	endif

	int imenu = ShowDoMNPCMenu()
	if imenu == 0
		DOMDoNPCTraitsVerbose()
	elseif imenu == 1
		DOMDoNPCFeelingsVerbose()
	elseif imenu == 2
		DOMDoMood()
	elseif imenu == 3
		DOMDoStatus()
	endif
	if akTarget.IsChild()
		return
	endif
	if imenu == 4
		DOMAbduction()
	elseif imenu == 5
		DOMDoRecruit()
	elseif imenu == 6
		DOMRansomManage()
	elseif imenu == 7
		DOMDoOpenInventory()
	endif
EndFunction

Function DOMDoSackMenu()
	DOM_BurlapSack objSack = (Game.GetCurrentCrosshairRef()) As DOM_BurlapSack
	if objSack==None
		return
	endif
	int imenu = ShowDoMSackMenu()
	if imenu == 0
		DOMDoTakeOutOfBag()
	elseif imenu == 1
		PlayerRef.AddItem(objSack)
	endif
EndFunction

Function DOMDoNPCSlaveMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None || akTarget.IsChild()
		return
	endif
	int imenu = ShowDoMNPCSlaveMenu()
	if imenu == 1
		imenu = ShowDoMNPCSlaveSelectMenu(akTarget)
		if imenu >= 0
			int iaccept = DOMGenerator.IsWillingToHaveSexWith(akTarget)
			if iaccept >= 1
				DOM_actor sl_alias = selectArray[imenu]
				if iaccept >= 2
					sl_alias.StartSexWithNPC(akTarget, "", true)
				else
					sl_alias.StartSexWithNPC(akTarget, "Missionary", true)
				endif
			endif
		endif
	elseif imenu == 2
		imenu = ShowDoMNPCSlaveSelectMenu(akTarget)
		if imenu >= 0
			int iaccept = DOMGenerator.IsWillingToHaveSexWith(akTarget)
			if iaccept >= 1
				DOM_actor sl_alias = selectArray[imenu]
				if iaccept >= 2
					sl_alias.StartSexWithNPC(akTarget, "", true)
				else
					sl_alias.StartSexWithNPC(akTarget, "", false)
				endif
			endif
		endif
	elseif imenu == 3
		imenu = ShowDoMNPCSlaveSelectMenu(akTarget)
		if imenu >= 0
			int iaccept = DOMGenerator.IsWillingToHaveSexWith(akTarget)
			if iaccept >= 1
				DOM_actor sl_alias = selectArray[imenu]
				if iaccept >= 2
					sl_alias.StartSexWith3NPC(akTarget, "", true)
				else
					sl_alias.StartSexWith3NPC(akTarget, "", false)
				endif
			endif
		endif
	elseif imenu == 5
		DOMCore.ActorEquipInventory(akTarget)
	endif
EndFunction

Function DOMDoRapeMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDoMSexMenu(true)
	if imenu == 0
		sl_alias.StartPunishmentWith(None, "rape", "", "Vaginal")
	elseif imenu == 1
		sl_alias.StartPunishmentWith(None, "rape", "", "Oral")
	elseif imenu == 2
		sl_alias.StartPunishmentWith(None, "rape", "", "Anal")
	elseif imenu == 4
		imenu = ShowDoMSlaveSelectMenu(sl_alias)
		if imenu >= 0
			DOM_actor aSlave = selectArray[imenu]
			sl_alias.StartPunishmentOn(aSlave, "rape", "", "")
		endif
	elseif imenu == 5
		imenu = ShowDoMSlaveSelectMenu(sl_alias)
		if imenu >= 0
			DOM_actor aSlave = selectArray[imenu]
			sl_alias.StartSexOnActor3(aSlave, "", true) ; aggressive
		endif
	endif
EndFunction

Function DOMDoSexMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDoMSexMenu(false)
	if imenu == 0
		sl_alias.StartSexWithActor(None,"Vaginal",false)
	elseif imenu == 1
		sl_alias.StartSexWithActor(None,"Oral",false)
	elseif imenu == 2
		sl_alias.StartSexWithActor(None,"Anal",false)
	elseif imenu == 4
		imenu = ShowDoMSlaveSelectMenu(sl_alias)
		if imenu >= 0
			DOM_actor aSlave = selectArray[imenu]
			sl_alias.StartSexOnActor(aSlave,"",false)
		endif
	elseif imenu == 5
		imenu = ShowDoMSlaveSelectMenu(sl_alias)
		if imenu >= 0
			DOM_actor aSlave = selectArray[imenu]
			sl_alias.StartSexOnActor3(aSlave, "", false) ; not aggressive
		endif
	endif
EndFunction

Function DoMSexyPoseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDoMSexyPoseMenu()
	if imenu == 0
		sl_alias.DoSubmissive()
	elseif imenu == 1
		sl_alias.DoAssPresentation()
	elseif imenu == 2
		sl_alias.DoBreastsPresentation()
	elseif imenu == 3
		sl_alias.DoPussyPresentation()
	elseif imenu == 4
		sl_alias.DoCute()
	elseif imenu == 5
		sl_alias.DoDance()
	elseif imenu == 6
		sl_alias.DoMusic()
	elseif imenu == 7
		DOMDoPoseMenu()
	endif
EndFunction

Function DoMAllPoseMenu()
	int imenu = ShowDOMPoseMenu()
	if imenu == 0
		DOMAllOrder("DoChair","",10000.0)
	elseif imenu == 1
		DOMAllOrder("DoLight","",10000.0)
	elseif imenu == 2
		DOMAllOrder("DoFlowers","",10000.0)
	elseif imenu == 3
		DOMAllOrder("DoDrinks","",10000.0)
	elseif imenu == 4
		DOMAllOrder("DoCute","",10000.0)
	elseif imenu == 5
		DOMAllOrder("DoDance","",10000.0)
	elseif imenu == 6
		DOMAllOrder("DoMusic","",10000.0)
	elseif imenu == 7
		DoMAllSexyPoseMenu()
	endif
	if imenu >= 0 && menuPAH
		PAHAllPose(imenu)
	endif
EndFunction

Function DoMAllSexyPoseMenu()
	int imenu = ShowDoMSexyPoseMenu()
	if imenu == 0
		DOMAllOrder("DoSubmissive")
	elseif imenu == 1
		DOMAllOrder("DoAssPresentation")
	elseif imenu == 2
		DOMAllOrder("DoBreastsPresentation")
	elseif imenu == 3
		DOMAllOrder("DoPussyPresentation")
	elseif imenu == 4
		DOMAllOrder("DoCute")
	elseif imenu == 5
		DOMAllOrder("DoDance")
	elseif imenu == 6
		DOMAllOrder("DoMusic")
	elseif imenu == 7
		DoMAllPoseMenu()
	endif
EndFunction

Function DOMDoThreatenMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDOMDoThreatenMenu()
	if imenu == 0
		sl_alias.StartThreatening("running away")
	elseif imenu == 1
		sl_alias.StartThreatening("being angry")
	elseif imenu == 2
		sl_alias.StartThreatening("being disrespectful")
	elseif imenu == 3
		sl_alias.StartThreatening("crying")
	elseif imenu == 4
		sl_alias.StartThreatening("didnt fight")
	elseif imenu == 5
		sl_alias.StartThreatening("didnt pose")
	elseif imenu == 6
		sl_alias.StartThreatening("didnt masturbate")
	elseif imenu == 7
		sl_alias.StartThreatening("covering self")
	endif
EndFunction

Function DOMAllThreatenMenu()
	int imenu = ShowDOMDoThreatenMenu()
	if imenu == 0
		DOMAllOrder("Threaten","running away")
	elseif imenu == 1
		DOMAllOrder("Threaten","being angry")
	elseif imenu == 2
		DOMAllOrder("Threaten","being disrespectful")
	elseif imenu == 3
		DOMAllOrder("Threaten","crying")
	elseif imenu == 4
		DOMAllOrder("Threaten","didnt fight")
	elseif imenu == 5
		DOMAllOrder("Threaten","didnt pose")
	elseif imenu == 6
		DOMAllOrder("Threaten","didnt masturbate")
	elseif imenu == 7
		DOMAllOrder("Threaten","covering self")
	endif
EndFunction

Function DOMDoPromiseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDOMDoPromiseMenu()
	if imenu == 1
		sl_alias.StartPromising("pain") ; fear/submission
	elseif imenu == 2
		sl_alias.StartPromising("rapture") ; humiliation
	elseif imenu == 4
		sl_alias.StartPromising("money") ; anger
	elseif imenu == 5
		sl_alias.StartPromising("freedom") ; resignation
	elseif imenu == 6
		sl_alias.StartPromising("to be gentle") ; respect
	endif
EndFunction

Function DoMAllPromiseMenu()
	int imenu = ShowDOMDoPromiseMenu()
	if imenu == 1
		DOMAllOrder("Promise","pain") ; fear/submission
	elseif imenu == 2
		DOMAllOrder("Promise","rapture") ; humiliation
	elseif imenu == 4
		DOMAllOrder("Promise","money") ; anger
	elseif imenu == 5
		DOMAllOrder("Promise","freedom") ; resignation
	elseif imenu == 6
		DOMAllOrder("Promise","to be gentle") ; respect
	endif
EndFunction

Int Function ShowDOMDoPromiseMenu()
	if debugKeyMode
		HudNotification("Promise menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Боль")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Удовольствие ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Деньги ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Свободу ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Быть нежным ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Боль")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Блаженство ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Деньги ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Свободу ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Быть нежным ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoComfortMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDOMDoComfortMenu()
	if imenu == 0
		sl_alias.StartComfortingWith("rape") ; submission
	elseif imenu == 1
		sl_alias.StartComfortingWith("pain") ; fear
	elseif imenu == 2
		sl_alias.StartComfortingWith("sex") ; humiliation
	elseif imenu == 4
		sl_alias.StartComfortingWith("guilt") ; anger
	elseif imenu == 5
		sl_alias.StartComfortingWith("threat") ; resignation
	elseif imenu == 6
		sl_alias.StartComfortingWith("insult") ; respect
	elseif imenu == 7
		sl_alias.StartComfortingWith("care") ; anger/respect
	endif
EndFunction

Int Function ShowDOMDoComfortMenu()
	if debugKeyMode
		HudNotification("Comfort menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Изнасилование")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Наказать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Секс ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Винить ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Угрожать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Оскорблять ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Заботиться ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Изнасилование")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Наказать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Секс ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Винить ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Угрожать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Оскорблять ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Заботиться ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoMasturbateMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	if sl_alias.behaviour == "masturbate"
		sl_alias.MasturbateHarder()
		return
	endIf
	int imenu = ShowDoMMasturbateMenu()
	if imenu == 0
		sl_alias.EnterMasturbateStanding()
	elseif imenu == 1
		sl_alias.EnterMasturbateKneeling()
	elseif imenu == 2
		sl_alias.EnterMasturbateLaying()
	endif
EndFunction

Function DOMDoInspectMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDoMInspectMenu()
	if imenu == 0
		sl_alias.Interact_GrabFront()
	elseif imenu == 1
		sl_alias.Interact_Grabback()
	elseif imenu == 2
		sl_alias.Interact_GrabFloor()
	elseif imenu == 5
		sl_alias.DoDisplay()
	endif
EndFunction

Function DOMDoFlatterMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDoMFlatterMenu()
	if imenu == 0
		sl_alias.StartFlatteringWith("sexy") ; anger/submission
	elseif imenu == 2
		sl_alias.StartFlatteringWith("dirty") ; anher/humiliation
	elseif imenu == 5
		sl_alias.StartFlatteringWith("praise") ; anger/resignation
	elseif imenu == 6
		sl_alias.StartFlatteringWith("romance") ; anger/respect
	endif
EndFunction

Int Function ShowDoMFlatterMenu()
	if debugKeyMode
		HudNotification("Flatter menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Сексуальные слова ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Грязные слова ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Дружеские слова ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Романтические слова ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Сексуальные слова ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Грязные слова ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Дружеские слова ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Романтические слова ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)


	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoInsultMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDoMInsultMenu()
	if imenu == 0
		sl_alias.StartInsultingWith("dominating") ; submission
	elseif imenu == 1
		sl_alias.StartInsultingWith("useless")    ; fear
	elseif imenu == 2
		sl_alias.StartInsultingWith("degrading")  ; humiliation
	elseif imenu == 4
		sl_alias.StartInsultingWith("demeaning")  ; anger
	elseif imenu == 5
		sl_alias.StartInsultingWith("disgrace")   ; resignation
	elseif imenu == 6
		sl_alias.StartInsultingWith("worthless")  ; respect
	endif
EndFunction

Int Function ShowDoMInsultMenu()
	if debugKeyMode
		HudNotification("Insult menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Доминировать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Бесполезный ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Унижать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Принижать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Опозорить ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Никчемный ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Доминировать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Бесполезный ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Унижать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Принижать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Опозорить ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Никчемный ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)


	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoClothesMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDoMClothesMenu()
	if imenu == 0
		sl_alias.Interact_Undress()
	elseif imenu == 1
		sl_alias.Interact_UndressAll()
	elseif imenu == 2
		sl_alias.Interact_Strip()
	elseif imenu == 3
		sl_alias.Interact_StripAll()
	elseif imenu == 4
		DOMDoBeNaked()
	elseif imenu == 5
		sl_alias.EquipInventory()
	elseif imenu == 6
		if sl_alias.mind.should_hold_weapons
			sl_alias.HoldNoWeapons()
		else
			sl_alias.HoldWeapons()
		endif
	elseif imenu == 7
		if sl_alias.mind.should_wear_armor
			sl_alias.WearNoArmor()
		else
			sl_alias.WearArmor()
		endif
	endif
EndFunction

Function DOMAllClothesMenu()
	int imenu = ShowDoMAllClothesMenu()
	if imenu == 0
		DOMAllOrder("BeNaked")
	elseif imenu == 1
		DOMAllOrder("DontBeNaked")
	elseif imenu == 2
		DOMAllOrder("Strip")
	elseif imenu == 3
		DOMAllOrder("StripAll")
	elseif imenu == 5
		DOMAllOrder("EquipInventory")
	elseif imenu == 6
		DOMAllOrder("StripWeapons")
	elseif imenu == 7
		DOMAllOrder("StripArmor")
	endif
EndFunction

Function DOMDoKissMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowDoMKissMenu()
	if imenu == 0
		sl_alias.Interact_KissShort()
	elseif imenu == 1
		sl_alias.Interact_KissLong()
	elseif imenu == 2
		sl_alias.Interact_KissForced()
	elseif imenu == 3
		sl_alias.Interact_KissShort2()
	elseif imenu == 4
		sl_alias.Interact_KissForced2()
	endif
EndFunction

Function DOMRansomManage()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	if DOM02.family_tmp.GetRef() != akTarget
		return
	endif
	
	DOM02.SlaveFamilyRansom(akTarget)
EndFunction

Function DOMDoRecruit()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	
	ReferenceAlias slave_alias = DOM02.GetActorAlias(akTarget)
	If slave_alias != None
		DOM02.ReleaseAlias(slave_alias)
		DOM01.AddActor(akTarget,false)
	else
		DOM01.AddActor(akTarget,true)
	endif
EndFunction

Function DOMDoNPCTraitsVerbose()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		string msg
		if debugKeyMode
			HudNotification("Get personality traits for "+akTarget.getDisplayName())
		endif
		if isADOMSlave(aktarget)
			msg = DOMCore.DOMTraitsVerboseMessage(akTarget)
		else
			msg = DOMCore.NPCTraitsVerboseMessage(akTarget)
		EndIf
		SendMessage(msg)
	endif
EndFunction

Function DOMDoNPCTraits()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		string msg
		if debugKeyMode
			HudNotification("Get personality values for "+akTarget.getDisplayName())
		endif
		if isADOMSlave(aktarget)
			msg = DOMCore.DOMTraitsMessage(akTarget)
		else
			msg = DOMCore.NPCTraitsMessage(akTarget)
		EndIf
		SendMessage(msg)
	endif
EndFunction

Function DOMDoNPCFeelingsVerbose()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		string msg
		if debugKeyMode
			HudNotification("Get feelings for "+akTarget.getDisplayName())
		endif
		if isADOMSlave(aktarget)
			msg = DOMCore.DOMFeelingsVerboseMessage(akTarget)
		else
			msg = DOMCore.NPCFeelingsVerboseMessage(akTarget)
		EndIf
		SendMessage(msg)
	endif
EndFunction

Function DOMDoNPCFeelings()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		string msg
		if debugKeyMode
			HudNotification("Get feelings values for "+akTarget.getDisplayName())
		endif
		if isADOMSlave(aktarget)
			msg = DOMCore.DOMFeelingsMessage(akTarget)
		else
			msg = DOMCore.NPCFeelingsMessage(akTarget)
		EndIf
		SendMessage(msg)
	endif
EndFunction

Function DOMDoStatus()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		if debugKeyMode
			HudNotification("Get training status for "+akTarget.getDisplayName())
		endif
		SendMessage(DOMCore.NPCStatsMessage(akTarget));
	endif
EndFunction

Function DOMDoMood()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		if debugKeyMode
			HudNotification("Get mood status for "+akTarget.getDisplayName())
		endif
		SendMessage(DOMCore.NPCMoodMessage(akTarget));
	endif
EndFunction

Function DOMDoOpenInventory()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		if isADOMSlave(aktarget)
			if debugKeyMode
				HudNotification("Open inventory for "+akTarget.getDisplayName())
			endif
			DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
			if sl_alias == None
				aktarget.OpenInventory(true)
			else
				sl_alias.OpenInventory()
			endif
		elseif isAPAHSlave(akTarget)
			PAHDoOpenInventory()
		elseif akTarget.IsInFaction(PlayerFollowerFaction) || akTarget.IsInFaction(DOMCore.PotentialFollowerFaction)
			akTarget.OpenInventory(true)
		elseif DOMCore.isASlave(akTarget)
			akTarget.OpenInventory(true)
		endif
	endif
EndFunction

Function DOMDoAllowOrgasm()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Allow/Forbid orgasm for "+sl_alias.getName())
		endif
		if sl_alias != None
			sl_alias.mind.SetAllowOrgasm()
		endif
	endif
EndFunction

Function DOMDoSetOrgasmStatus()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	if !akTarget.IsInFaction(DOMShouldBeNoOrgasm)
		sl_alias.mind.should_be_noorgasm = true
		if debugKeyMode
			HudNotification("Yes orgasm for "+sl_alias.getName())
		endif
	else
		sl_alias.mind.should_be_noorgasm = false
		if debugKeyMode
			HudNotification("No orgasm for "+sl_alias.getName())
		endif
	endif
EndFunction

Function DOMDoPraise()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Praise "+sl_alias.getName())
		endif
		if sl_alias != None
			sl_alias.StartPraising(None)
		endif
	endif
EndFunction

Function DOMDoScold()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Scold for "+sl_alias.getName())
		endif
		if sl_alias != None
			sl_alias.StartScolding(None)
		elseif isAPAHSlave(akTarget)
			PAHDoScold()
		endif
	endif
EndFunction

Function DOMSetExample()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Set example with "+sl_alias.getName())
		endif
		if sl_alias != None
			sl_alias.Interact_PublicHumiliation()
		endif
	endif
EndFunction

Function DOMDoChoke()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Choke disrespectful "+sl_alias.getName())
		endif
		if sl_alias != None
			sl_alias.Interact_Choke()
		endif
	endif
EndFunction

Function DOMDoFavor()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget.IsInFaction(DOMCore.SexLabAnimatingFaction)
		return
	endif
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Order do favor to "+sl_alias.getName())
		endif
		if sl_alias != None
			sl_alias.DoFavor()
		elseif isAPAHSlave(akTarget)
			PAHDoFavor()
		endif
	endif
EndFunction

Function DOMDoTestPose()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Test pose on "+sl_alias.getName())
		endif
		if sl_alias != None
			sl_alias.DoTest()
		endif
	endif
EndFunction

Function DOMDoFixMe()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if sl_alias != None
			sl_alias.SpecialReset()
		else
			SpecialReset(akTarget)	
		endif
	endif
EndFunction

Function DOMDoRipOff()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Ripping-off clothes of "+sl_alias.getName())
		endif
		if sl_alias != None
			sl_alias.Interact_Undress()
		elseif isAPAHSlave(akTarget)
			PAHDoStrip()
		endif
	endif
EndFunction

Function DOMDoStrip()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Order strip to "+sl_alias.getName())
		endif
		if sl_alias != None
			sl_alias.Interact_Strip()
		elseif isAPAHSlave(akTarget)
			PAHDoStrip()
		endif
	endif
EndFunction

Function DOMDoStripAll()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Order strip to "+sl_alias.getName())
		endif
		if sl_alias != None
			sl_alias.Interact_StripAll()
		endif
	endif
EndFunction

Function DOMDoBeRespectful()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	if !akTarget.IsInFaction(PAHShouldBeRespectful)
		sl_alias.SetShouldBeRespectful()
		if debugKeyMode
			HudNotification("Be respectful "+sl_alias.getName())
		endif
	else
		sl_alias.UnsetShouldBeRespectful()
		if debugKeyMode
			HudNotification("Don't be respectful "+sl_alias.getName())
		endif
	endif
EndFunction

Function DOMDoBeNaked()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	if !akTarget.IsInFaction(DOMShouldBeNaked) || !sl_alias.is_naked
		sl_alias.SetShouldBeNaked()
		if debugKeyMode
			HudNotification("Be naked "+sl_alias.getName())
		endif
	else
		sl_alias.UnsetShouldBeNaked()
		if debugKeyMode
			HudNotification("Don't be naked "+sl_alias.getName())
		endif
	endif
EndFunction

Function DOMDoBeSilent()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	if !akTarget.IsInFaction(DOMShouldBeSilent)
		sl_alias.mind.should_be_silent = true
		if debugKeyMode
			HudNotification("Be silent "+sl_alias.getName())
		endif
	else
		sl_alias.mind.should_be_silent = false
		if debugKeyMode
			HudNotification("Don't be silent "+sl_alias.getName())
		endif
	endif
EndFunction

Function DOMDoDisplay()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to display")
		endif
		if sl_alias != None
			sl_alias.DoDisplay()
		endif
	endif
EndFunction

Function DOMDoKneel()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to kneel")
		endif
		if sl_alias != None
			sl_alias.Interact_StartSaluteKneel()
			Wait(4.0)
			sl_alias.Interact_EndSaluteKneel()
		endif
	endif
EndFunction

Function DOMDoAttention()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to be on attention")
		endif
		if sl_alias != None
			sl_alias.Interact_StartSaluteStand()
			Wait(4.0)
			sl_alias.Interact_EndSaluteStand()
		endif
	endif
EndFunction

Function DOMDoFollowMe()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to follow")
		endif
		if sl_alias != None
			sl_alias.EnterFollowPlayer()
		endif
	endif
EndFunction

Function DOMDoStandStill()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to stand still")
		endif
		if sl_alias != None
			sl_alias.EnterWait()
		endif
	endif
EndFunction

Function DOMDoWaitHere()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to wait here")
		endif
		if sl_alias != None
			sl_alias.EnterWaitSandbox()
		endif
	endif
EndFunction

Int Function ShowDoMTieUpChoiceMenu()
	if debugKeyMode
		HudNotification("Tie-up menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "На коленях и связать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Связать и на пол ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Связать сзади ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "На коленях и связать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Связать и на пол ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Связать сзади ")

	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMTieUp()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
		
	int itype = ShowDoMTieUpChoiceMenu()
	if itype < 0
		return
	endif

	if debugKeyMode
		HudNotification("Tying up "+sl_alias.getName()+" "+type)
	endif
	string type
	if itype == 0
		sl_alias.EnterTieUp(PlayerRef)
	elseif itype == 1
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO051","ZazAPCAO053")
	elseif itype == 2
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO055","ZazAPCAO054")
	endif
EndFunction

Function DOMTieUpAndGag()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
		
	int itype = ShowDoMTieUpChoiceMenu()
	if itype < 0
		return
	endif

	if debugKeyMode
		HudNotification("Tying up "+sl_alias.getName()+" "+type)
	endif
	string type
	if itype == 0
		sl_alias.EnterTieUpAndGagged(PlayerRef)
	elseif itype == 1
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO051","ZazAPCAO053")
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 2
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO055","ZazAPCAO054")
		sl_alias.EnterGagged(PlayerRef)
	endif
EndFunction

Int Function ShowDoMChainsChoiceMenu()
	if debugKeyMode
		HudNotification("Tie-up menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Руки вверх ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Подвесить ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Согнуть ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "X ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "С ног на голову ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Свиньей ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Руки назад ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Раздвинуть ноги ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Руки вверх ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Подвесить ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Согнуть ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "X ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "С ног на голову ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Свиньей ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Руки назад ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Раздвинуть ноги ")

	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMChains()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
		
	int itype = ShowDoMChainsChoiceMenu()
	if itype < 0
		return
	endif

	if debugKeyMode
		HudNotification("Tying up "+sl_alias.getName()+" "+type)
	endif
	string type
	if itype == 0
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO302")  ; Zaz Chains 
	elseif itype == 1
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO303")
	elseif itype == 2
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO305")
	elseif itype == 3
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO306")
	elseif itype == 4
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO308")
	elseif itype == 5
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO309")
	elseif itype == 6
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO312")
	elseif itype == 7
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO314")
	endif
EndFunction

Function DOMChainsAndGag()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	
	int itype = ShowDoMChainsChoiceMenu()
	if itype < 0
		return
	endif

	if debugKeyMode
		HudNotification("Tying up "+sl_alias.getName()+" "+type)
	endif
	string type
	if itype == 0
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO302")  ; Zaz Chains 
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 1
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO303")
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 2
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO305")
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 3
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO306")
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 4
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO308")
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 5
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO309")
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 6
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO312")
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 7
		sl_alias.EnterChained(PlayerRef, None, "ZazAPCAO314")
		sl_alias.EnterGagged(PlayerRef)
	endif
EndFunction

Int Function ShowDoMRestrainChoiceMenu()
	if debugKeyMode
		HudNotification("Tie-up menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Позорный столб ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Лошадь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "X крест ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Стойка ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Стойка вниз ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Крест ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Колесо ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "На пол ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Позорный столб ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Лошадь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "X крест ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Стойка ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Стойка вниз ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Крест ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Колесо ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "На пол ")

	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMRestrain()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	
	int itype = ShowDoMRestrainChoiceMenu()
	if itype < 0
		return
	endif

	if debugKeyMode
		HudNotification("Tying up "+sl_alias.getName()+" "+type)
	endif
	string type
	if itype == 0
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO010")  ; Zaz Pillory
	elseif itype == 1
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO024") ; Horse
	elseif itype == 2
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO025") ; X Cross
	elseif itype == 3
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO211") ; Rack face up
	elseif itype == 4
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO212") ; Rack face down
	elseif itype == 5
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO253") ; Cross roped
	elseif itype == 6
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO261") ; Wheel
	elseif itype == 7
		sl_alias.EnterChained(PlayerRef, zbfCuffsIronBlack, "ZazAPCAO310", "ZazAPCAO311") ; On the floor
	endif
EndFunction

Function DOMRestrainAndGag()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
		
	int itype = ShowDoMRestrainChoiceMenu()
	if itype < 0
		return
	endif

	if debugKeyMode
		HudNotification("Tying up "+sl_alias.getName()+" "+type)
	endif
	string type
	if itype == 0
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO010") ; Zaz Pillory 
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 1
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO024") ; Horse
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 2
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO025") ; X cross
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 3
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO211") ; Rack face up
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 4
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO212") ; Rack face down
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 5
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO253") ; Cross roped
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 6
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO261") ; Wheel
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 7
		sl_alias.EnterChained(PlayerRef, zbfCuffsIronBlack, "ZazAPCAO310", "ZazAPCAO311") ; On the floor
		sl_alias.EnterGagged(PlayerRef)
	endif
EndFunction

Int Function ShowDoMCagePostChoiceMenu()
	if debugKeyMode
		HudNotification("Tie-up menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "В клетку на коленях ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "В клетку сидя ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "В клетку стоя ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "В клетку и связать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "На столб на коленях ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "На столб сидя ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "На столб, ноги раздвинуть ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "На столб согнутым ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "В клетку на коленях ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "В клетку сидя ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "В клетку стоя ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "В клетку и связать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "На столб на коленях ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "На столб сидя ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "На столб, ноги раздвинуть ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "На столб согнутым ")

	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMCagePost()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	
	int itype = ShowDoMCagePostChoiceMenu()
	if itype < 0
		return
	endif

	if debugKeyMode
		HudNotification("Tying up "+sl_alias.getName()+" "+type)
	endif
	string type
	if itype == 0
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO001") ; Cage
	elseif itype == 1
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO002") ; 
	elseif itype == 2
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO003") ;
	elseif itype == 3
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO004") ; 
	elseif itype == 4
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO204") ; Post
	elseif itype == 5
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO205") ; 
	elseif itype == 6
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO013") ;
	elseif itype == 7
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO011") ; 
	endif
EndFunction

Function DOMCagePostAndGag()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		return
	endif
	
	int itype = ShowDoMCagePostChoiceMenu()
	if itype < 0
		return
	endif

	if debugKeyMode
		HudNotification("Tying up "+sl_alias.getName()+" "+type)
	endif
	string type
	if itype == 0
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO001") ; Cage
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 1
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO002") ; 
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 2
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO003") ; 
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 3
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO004") ; 
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 4
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO204") ; Post
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 5
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO205") ; 
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 6
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO013") ; 
		sl_alias.EnterGagged(PlayerRef)
	elseif itype == 7
		sl_alias.EnterRestrained(PlayerRef, None, "ZazAPCAO011") ; 
		sl_alias.EnterGagged(PlayerRef)
	endif
EndFunction

Function DOMDoCleanTheMess()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to clean the mess")
		endif
		if sl_alias != None
			sl_alias.EnterSweep()
		endif
	endif
EndFunction

Function DOMDoFightForMe()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
		if sl_alias != None
			if !sl_alias.mind.should_fight_for_player
				DOMCore.CommandDoCombat(akTarget)
				if debugKeyMode
					HudNotification("Order "+sl_alias.getName()+" to fight for player")
				endif
			else
				DOMCore.CommandNoLongerDoCombat(akTarget)
				if debugKeyMode
					HudNotification("Order "+sl_alias.getName()+" to not fight for player")
				endif
			endif
		endif
	endif
EndFunction

Int Function ShowDoMAllTieUpMenu()
	if debugKeyMode
		HudNotification("Tie-up menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Связать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "На цепь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Порка на столбе ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Мебель ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Связать и вставить кляп ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "На цепь и кляп ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "На столб с кляпом ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "В мебель и кляп ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Связать ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "На цепь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Порка на столбе ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Мебель ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Связать и вставить кляп ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "На цепь и кляп ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "На столб с кляпом ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "В мебель и кляп ")

	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function DOMAllShowTieUpMenu()
	int itype = ShowDoMAllTieUpMenu()
	if itype < 0
		return
	endif
	string type
	if itype == 0
		DOMAllOrder("TieUp")
	elseif itype == 1
		DOMAllOrder("Chain")
	elseif itype == 2
		DOMAllOrder("Post") ; Might also be "Cage"
	elseif itype == 3
		DOMAllOrder("Restrain")
	elseif itype == 4
		DOMAllOrder("TieUpAndGag")
	elseif itype == 5
		DOMAllOrder("ChainAndGag")
	elseif itype == 6
		DOMAllOrder("PostAndGag")
	elseif itype == 7
		DOMAllOrder("RestrainAndGag")
	endif
EndFunction

Function DoMAllGagMenu()
	int imenu = ShowDoDOMMenuGag()
	if imenu == 0
		DOMAllOrder("AddGag")
	elseif imenu == 4
		DOMAllOrder("RemoveGag")
	endif
EndFunction

Function DOMAllOrder(string the_order, string reason = "", float distance = 3000.0)
	int n = DOM02.actorCounter
	if debugKeyMode
		if n==1
			HudNotification("Sending order "+the_order+" to one slave")
		else
			HudNotification("Sending order "+the_order+" to "+n+" slaves")
		endif
	endif
	int i = 0
	while i < n
		DOM_Actor sl_alias = DOM02.GetActorByIndex(i)
		if sl_alias != None && !sl_alias.akRef.IsInFaction(DOMActionFleeing)
			Actor akTarget = sl_alias.GetActorRef()
			if DOMCore.IsWithPlayer(akTarget, distance) ; 3000.0 = 42.6 meters
				sl_alias.RegisterForOrderEvents(the_order,reason)
			endif
		endif
		i += 1
	endwhile
	DOMCore.SendOrderEvent(None,the_order,reason)
EndFunction

Function DOMAllOrderSlavesAndSlavers(string the_order, string reason = "", float distance = 10000.0)
	if menuSlavers
		DOMAllOrderSlavers(the_order,reason,distance,false)
	endif
	int n = DOM02.actorCounter
	if debugKeyMode
		if n==1
			HudNotification("Sending order "+the_order+" to one slave")
		else
			HudNotification("Sending order "+the_order+" to "+n+" slaves")
		endif
	endif
	int i = 0
	while i < n
		DOM_Actor sl_alias = DOM02.GetActorByIndex(i)
		if sl_alias != None && !sl_alias.akRef.IsInFaction(DOMActionFleeing)
			if !sl_alias.is_trainer || menuSlavers
				Actor akTarget = sl_alias.GetActorRef()
				if DOMCore.IsWithPlayer(akTarget, distance) ; 10000.0 = 142 meters
					sl_alias.RegisterForOrderEvents(the_order,reason)
				endif
			endif
		endif
		i += 1
	endwhile
	DOMCore.SendOrderEvent(None,the_order,reason)
EndFunction

Function DOMAllOrderSlavers(string the_order, string reason = "", float distance = 10000.0, bool send_event = true)
	int n = DOM01.actorCounter
	if n < 1
		return
	endif
	if debugKeyMode
		if n==1
			HudNotification("Sending order "+the_order+" to one slaver")
		else
			HudNotification("Sending order "+the_order+" to "+n+" slavers")
		endif
	endif
	int i = 0
	while i < n
		DOM_Actor sl_alias = DOM01.GetActorByIndex(i)
		if sl_alias != None && !sl_alias.akRef.IsInFaction(DOMActionFleeing)
			Actor akTarget = sl_alias.GetActorRef()
			if DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
				sl_alias.RegisterForOrderEvents(the_order,reason)
			endif
		endif
		i += 1
	endwhile
	if send_event
		DOMCore.SendOrderEvent(None,the_order,reason)
	endif
EndFunction

; ### DOM Trainers

Function DOMDoTrainerManagementMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	int imenu
	if akTarget.IsInFaction(DOMPlayerSlaverFaction) || akTarget.GetFactionRank(DOMPlayerSlaveFaction) == 2
		imenu = ShowDOMTrainerManagementMenu()
		if imenu == 0
			DOMDoListTrainees()
		elseif imenu == 1
			DOMDoSetCamp()
		elseif imenu == 2
			DOMDoGoToCamp()
		elseif imenu == 3
			DOMDoGuard()
		elseif imenu == 4
			DOMDoGatherTrainees()
		elseif imenu == 5
			DOMDoAddTraineeMenu()
		elseif imenu == 6
			DOMDoUnloadTraineeMenu()
		elseif imenu == 7
			DOMDoUnloadTrainees()
		endif
	endif
EndFunction

Function DOMDoTrainerAbuseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	if akTarget.GetFactionRank(DOMTraineeCount) <= 0
		return
	endif
	int imenu
	if akTarget.IsInFaction(DOMPlayerSlaverFaction) || akTarget.GetFactionRank(DOMPlayerSlaveFaction) == 2
		imenu = ShowDOMTrainerAbuseMenu()
		if imenu == 0
			DOMDoDisplayTrainees()
		elseif imenu == 1
			DOMDoTieupTrainees()
		elseif imenu == 2
			DOMDoChainTrainees()
		elseif imenu == 3
			DOMDoRestrainTrainees()
		elseif imenu == 4
			DOMDoDanceTrainees()
		elseif imenu == 5
			DOMDoMasturbateTrainees()
		elseif imenu == 6
			DOMDoPunishTrainees()
		elseif imenu == 7
			DOMDoRapeTrainees()
		endif
	endif
EndFunction

Int Function ShowDOMTrainerManagementMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if debugKeyMode
		HudNotification("Trainer menu for "+akTarget.getDisplayName())
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	if akTarget.GetFactionRank(DOMTraineeCount) > 0
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Список воспитанников ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Список ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)

		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Собери воспитанников ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Собрать ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)

		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Верни раба ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Верни ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)

		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Верни всех рабов ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Верни всех ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)
	endif

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Установить базовый лагерь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Базовый лагерь ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Отправить в базовый лагерь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Отправить на базу ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Охраняй здесь")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Охраняй ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)

	if akTarget.GetFactionRank(DOMTraineeCount) < 4
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Добавить воспитанника ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Добавить ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	endif
	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDOMTrainerAbuseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if debugKeyMode
		HudNotification("Trainer menu for "+akTarget.getDisplayName())
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Показать воспитанников")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Выставить на обозрение ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Связывание воспитанников ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Связать ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "На цепь воспитанников ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "На цепь ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Ограничить воспитанников ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Ограничить ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Танцы воспитанников ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Танцевать")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Мастурбация воспитанников ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Мастурбировать ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Наказать воспитанников ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Наказать ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Изнасилование воспитанников ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Изнасилование")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMTraineeSelectMenu(DOM_Actor akActor)
	if akActor == None
		return -1
	endif
	int n = akActor.GetTraineeCount()
	if n < 1
		return -1
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	int i = 0
	while i < n && i < 8
		DOM_Actor aTrainee = akActor.GetTrainee(i)
		if aTrainee != None
			string name = aTrainee.GetName()+" "
			wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = i, value = name)
			wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = i, value = name)
			wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = i, value = true)
		endif
		i += 1
	endwhile
	Return wheelMenu.OpenMenu()
EndFunction

DOM_Actor[] _selectArray
DOM_Actor[] Property selectArray
	DOM_Actor[] Function Get()
		if !_selectArray
			_selectArray = new DOM_Actor[8] ; 8 choices max per wheel menu
		endif
		return _selectArray
	endFunction
EndProperty

bool Function IsAlreadySelected(DOM_Actor akActor)
	int n = selectArray.length
	int i = 0
	while i < n
		if akActor == selectArray[i]
			return true
		endif
		i += 1
	endwhile
	return false
EndFunction

Int Function ShowDoMSlaveSelectMenu(DOM_Actor akActor)
	if akActor == None
		return -1
	endif
	int n = DOM02.actorCounter
	if n < 1
		return -1
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	int i = 0
	int k = 0
	while i < n && k < 8
		DOM_Actor aSlave = DOM02.GetActorByIndex(i)
		if aSlave != None && aSlave != akActor
			if IsTogetherWithFast(aSlave.akRef, akActor.akRef, 750.0) ; 750.0 = 10 meters
				string name = aSlave.GetName()+" "
				wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = k, value = name)
				wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = k, value = name)
				wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = k, value = true)
				selectArray[k] = aSlave
				k += 1
			endif
		endif
		i += 1
	endwhile
	if k < 8
		i = 0
		while i < n && k < 8
			DOM_Actor aSlave = DOM02.GetActorByIndex(i)
			if aSlave != None && aSlave != akActor && !IsAlreadySelected(aSlave)
				if IsTogetherWithFast(aSlave.akRef, akActor.akRef, 2000.0) ; 2000.0 = 28.4 meters
					string name = aSlave.GetName()+" "
					wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = k, value = name)
					wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = k, value = name)
					wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = k, value = true)
					selectArray[k] = aSlave
					k += 1
				endif
			endif
			i += 1
		endwhile
	endif
	if k < 1
		return -1
	endif
	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMNPCSlaveSelectMenu(Actor akActor)
	if akActor == None
		return -1
	endif
	int n = DOM02.actorCounter
	if n < 1
		return -1
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	int i = 0
	int k = 0
	while i < n && k < 8
		DOM_Actor aSlave = DOM02.GetActorByIndex(i)
		if aSlave != None && aSlave.akRef != akActor
			if IsTogetherWithFast(aSlave.akRef, akActor, 750.0) ; 750.0 = 10 meters
				string name = aSlave.GetName()+" "
				wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = k, value = name)
				wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = k, value = name)
				wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = k, value = true)
				selectArray[k] = aSlave
				k += 1
			endif
		endif
		i += 1
	endwhile
	if k < 8
		i = 0
		while i < n && k < 8
			DOM_Actor aSlave = DOM02.GetActorByIndex(i)
			if aSlave != None && aSlave.akRef != akActor && !IsAlreadySelected(aSlave)
				if IsTogetherWithFast(aSlave.akRef, akActor, 2000.0) ; 2000.0 = 28.4 meters
					string name = aSlave.GetName()+" "
					wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = k, value = name)
					wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = k, value = name)
					wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = k, value = true)
					selectArray[k] = aSlave
					k += 1
				endif
			endif
			i += 1
		endwhile
	endif
	if k < 1
		return -1
	endif
	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowDoMSlaveNotTraineeSelectMenu(DOM_Actor akActor)
	if akActor == None
		return -1
	endif
	int n = DOM02.actorCounter
	if n < 1
		return -1
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	int i = 0
	int k = 0
	while i < n && k < 8
		DOM_Actor aSlave = DOM02.GetActorByIndex(i)
		if aSlave != None && aSlave != akActor && aSlave.GetTrainer() != akActor
			if IsTogetherWithFast(aSlave.akRef, akActor.akRef, 750.0) ; 750.0 = 10 meters
				string name = aSlave.GetName()+" "
				wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = k, value = name)
				wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = k, value = name)
				wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = k, value = true)
				selectArray[k] = aSlave
				k += 1
			endif
		endif
		i += 1
	endwhile
	if k < 8
		i = 0
		while i < n && k < 8
			DOM_Actor aSlave = DOM02.GetActorByIndex(i)
			if aSlave != None && aSlave != akActor && aSlave.GetTrainer() != akActor && !IsAlreadySelected(aSlave)
				if IsTogetherWithFast(aSlave.akRef, akActor.akRef, 2000.0) ; 2000.0 = 28.4 meters
					string name = aSlave.GetName()+" "
					wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = k, value = name)
					wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = k, value = name)
					wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = k, value = true)
					selectArray[k] = aSlave
					k += 1
				endif
			endif
			i += 1
		endwhile
	endif
	if k < 1
		return -1
	endif
	Return wheelMenu.OpenMenu()
EndFunction

Function DOMDoListTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.ListTraineeNames()
EndFunction

Function DOMDoSetCamp()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.SetCamp()
EndFunction

Function DOMDoGoToCamp()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.EnterGotoCamp()
EndFunction

Function DOMDoGuard()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.EnterGuard()
EndFunction

Function DOMDoGatherTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.GatherTrainees()
EndFunction

Function DOMDoAddTraineeMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	int idx = ShowDoMSlaveNotTraineeSelectMenu(sl_alias)
	if idx < 0 || idx >= selectArray.length
		return
	endif
	DOM_Actor aTrainee = selectArray[idx]
	if aTrainee != None
		aTrainee.SetTrainer(sl_alias)
	endif
EndFunction

Function DOMDoUnloadTraineeMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	int idx = ShowDoMTraineeSelectMenu(sl_alias)
	if idx < 0
		return
	endif
	DOM_Actor aTrainee = sl_alias.GetTrainee(idx)
	if aTrainee != None
		aTrainee.SeparateFromTrainer()
	endif
EndFunction

Function DOMDoUnloadTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.UnloadAllTrainees()
EndFunction

Function DOMDoDanceTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.DanceTrainees()
EndFunction

Function DOMDoMasturbateTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.MasturbateTrainees()
EndFunction

Function DOMDoTieupTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.SecureTrainees()
EndFunction

Function DOMDoDisplayTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.DisplayTrainees()
EndFunction

Function DOMDoChainTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.ChainTrainees()
EndFunction

Function DOMDoRestrainTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.RestrainTraineesInFurniture()
EndFunction

Function DOMDoPunishTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.EnterPunishTrainees()
EndFunction

Function DOMDoRapeTrainees()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		Return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias == None
		Return
	endIf
	sl_alias.EnterTrainTrainees()
EndFunction

; ### PAH

bool Function isAPAHSlave(Actor akTarget) ; Is a PAH slave
	if akTarget.IsInFaction(PAHPlayerSlaveFaction)
		return true
	endif
	return false
EndFunction

Int Function ShowPAHOrderMenu()		
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	PAHSlave sl_alias = None
	if akTarget != None
		sl_alias = PAH.GetSlave(akTarget)
	endif
	if debugKeyMode
		HudNotification("Order menu for "+akTarget.getDisplayName())
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Инвентарь ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Инвентарь ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	
	if sl_alias != None && sl_alias.behaviour != "follow_player"
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Следую за мной ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Следую за мной ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Следовать ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = " ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = false)
	endif
	
	if sl_alias != None && sl_alias.behaviour != "wait"
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Стой на месте")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Стой на месте")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Стоять ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = false)
	endif
	
	if sl_alias != None && sl_alias.behaviour != "wait_sandbox"
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Жди здесь ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Жди здесь ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Ожидать ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	endif
		
	LogTrace(akTarget.GetDisplayName()+" PAHBETied="+akTarget.IsInFaction(DOMCore.PAHBETied)+" "+DOMCore.PAHBETied)
	if akTarget.IsInFaction(DOMCore.PAHBETied)
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Развязать ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Развязать ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Положить в мешок")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Положить в мешок")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	endif

	if !akTarget.IsInFaction(DOMCore.PAHBETied)
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Связать ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Связать ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Связать ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Связать ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = false)
	endif

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Принять позу ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Принять позу ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Приказ ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Приказ ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowPAHAbuseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	PAHSlave sl_alias = None
	if akTarget != None
		sl_alias = PAH.GetSlave(akTarget)
	endif
	if debugKeyMode
		HudNotification("Abuse menu for "+akTarget.getDisplayName())
	endif
			
	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	
	string reason = sl_alias.GetReasonForPunishment()
	if reason == ""
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Без причины ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Ругать")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Без причины ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Наказать ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = false)
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = false)
	else
		if sl_alias.punishment_active
			wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Being punished ")
			wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = false)
		else
			wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Наказать ")
			wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Наказать ")
			wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
		endif
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Ругать")
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Ругать")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	endif

	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)
	
	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowPAHStatusMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	string txt_respectful = "Будь почтительным"
	string txt_fight_for_me = "Сражайся за меня "
	string txt_be_a_maid = "Будь моей служанкой "
	PAHSlave sl_alias = None
	if akTarget != None
		sl_alias = PAH.GetSlave(akTarget)
		if sl_alias != None
			if sl_alias.should_be_respectful
				txt_respectful = "Не нужно быть уважительным "
			endif
			if sl_alias.should_fight_for_player
				txt_fight_for_me = "Не сражайся "
			endif
		endif
		if akTarget.GetLeveledActorBase().GetSex() == 0
			txt_be_a_maid = "Будь моим слугой "
		endif
	endif
	if debugKeyMode
		HudNotification("Status menu for "+akTarget.getDisplayName())
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Личность ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Чувства ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Настроение ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Статус ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = txt_respectful)
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = txt_fight_for_me)

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Личность ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Чувства ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Настроение ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Статус ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = txt_respectful)
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = txt_fight_for_me)
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	
	if sl_alias != None && sl_alias.behaviour != "cleanHouse"
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = txt_be_a_maid)
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = txt_be_a_maid)
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Служи ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)
	endif


	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowPAHTrainingMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if debugKeyMode
		HudNotification("Abuse menu for "+akTarget.getDisplayName())
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")

	if akTarget.IsInFaction(PAHNaked)
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Голый ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Голый ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = false)
	else
		wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Раздеть ")
		wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Раздеть ")
		wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	endif
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Изнасилование")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Секс ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Одеть то, что в инвентаре ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Изнасилование")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Секс ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Одеть то, что в инвентаре ")
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
		
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = false)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = false)

	Return wheelMenu.OpenMenu()
EndFunction

Int Function ShowPAHPoseMenu()
	if debugKeyMode
		HudNotification("Pose menu")
	endif

	UIMenuBase wheelMenu = UIExtensions.GetMenu("UIWheelMenu")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 0, value = "Стоять")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 1, value = "Танцевать")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 2, value = "Грация ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 3, value = "Выпендриваться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 4, value = "Дикая ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 5, value = "Упасть ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 6, value = "Расслабляться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionText", index = 7, value = "Замереть ")

	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 0, value = "Стоять")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 1, value = "Танцевать")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 2, value = "Грация ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 3, value = "Выпендриваться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 4, value = "Дикая ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 5, value = "Упасть ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 6, value = "Расслабляться ")
	wheelMenu.SetPropertyIndexString(propertyName = "optionLabelText", index = 7, value = "Замереть ")
	
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 0, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 1, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 2, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 3, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 4, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 5, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 6, value = true)
	wheelMenu.SetPropertyIndexBool(propertyName = "optionEnabled", index = 7, value = true)

	Return wheelMenu.OpenMenu()
EndFunction

Function PAHDoRapeMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	int imenu = ShowDoMSexMenu(true)
	if imenu == 0
		PAHPRS.fuck(akTarget, Game.getPlayer(), "Vaginal", true, "", true)
	elseif imenu == 1
		PAHPRS.fuck(akTarget, Game.getPlayer(), "Oral", true, "", true)
	elseif imenu == 2
		PAHPRS.fuck(akTarget, Game.getPlayer(), "Anal", true, "", true)
	endif
EndFunction

Function PAHDoSexMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	int imenu = ShowDoMSexMenu(false)
	if imenu == 0
		PAHPRS.fuck(akTarget, Game.getPlayer(), "Vaginal", false, "", false)
	elseif imenu == 1
		PAHPRS.fuck(akTarget, Game.getPlayer(), "Oral", false, "", false)
	elseif imenu == 2
		PAHPRS.fuck(akTarget, Game.getPlayer(), "Anal", false, "", false)
	endif
EndFunction

Function PAHDoEquipInventory()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		PAHSlave sl_alias = PAH.GetSlave(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to clean the mess")
		endif
		if sl_alias != None
			sl_alias.EquipInventory()
		endif
	endif
EndFunction

Function PAHDoStrip()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		PAHSlave sl_alias = PAH.GetSlave(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to clean the mess")
		endif
		if sl_alias != None
			sl_alias.Strip()
		endif
	endif
EndFunction

Function PAHDoBeRespectful()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	PAHSlave sl_alias = PAH.GetSlave(akTarget)
	if sl_alias == None
		return
	endif
	if !sl_alias.should_be_respectful
		sl_alias.should_be_respectful = true
		sl_alias.respectful = true
		if debugKeyMode
			HudNotification("Be respectful "+sl_alias.getName())
		endif
	else
		sl_alias.should_be_respectful = false
		sl_alias.respectful = false
		if debugKeyMode
			HudNotification("Don't be respectful "+sl_alias.getName())
		endif
	endif
EndFunction

Function PAHDoCleanTheMess()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		PAHSlave sl_alias = PAH.GetSlave(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to clean the mess")
		endif
		if sl_alias != None
			if akTarget.IsInFaction(DOMCore.PAHBETied)
				sl_alias.TieUp(None, Aggressor = Game.GetPlayer(), DoAnimation = true, Enter = false)	
			endif
			sl_alias.cleanHouse()
		endif
	endif
EndFunction

Function PAHDoFightForMe()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		PAHSlave sl_alias = PAH.GetSlave(akTarget)
		if sl_alias != None
			if !sl_alias.should_fight_for_player
				sl_alias.should_fight_for_player = true
				sl_alias.fights_for_player = true
				If (sl_alias.behaviour == "follow_player")
					akTarget.SetPlayerTeammate()
				EndIf
				if debugKeyMode
					HudNotification("Order "+sl_alias.getName()+" to fight for player")
				endif
			else
				sl_alias.should_fight_for_player = false
				sl_alias.fights_for_player = false
				if (akTarget.IsPlayerTeammate())
					akTarget.SetPlayerTeammate(false)
				endif
				if debugKeyMode
					HudNotification("Order "+sl_alias.getName()+" to not fight for player")
				endif
			endif
		endif
	endif
EndFunction

Function PAHDoPunish()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		if isAPAHSlave(aktarget)
			if debugKeyMode
				HudNotification("Start punishment for "+akTarget.getDisplayName())
			endif
			PAHSlave sl_alias = PAH.GetSlave(akTarget)
			if sl_alias != None
				string reason = sl_alias.GetReasonForPunishment()
				if reason != ""
					HudNotification("Punishing "+sl_alias.GetName()+" for "+reason)
					sl_alias.StartPunishment("pain")
				endif
			endif
		endif
	endif
EndFunction

Function PAHDoScold()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		if isAPAHSlave(aktarget)
			if debugKeyMode
				HudNotification("Start tell-off for "+akTarget.getDisplayName())
			endif
			PAHSlave sl_alias = PAH.GetSlave(akTarget)
			if sl_alias != None
				string reason = sl_alias.GetReasonForPunishment()
				if reason != ""
					HudNotification("Scolding "+sl_alias.GetName()+" for "+reason)
					sl_alias.TellOff(reason)
				endif
			endif
		endif
	endif
EndFunction

Function PAHDoOpenInventory()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		if isAPAHSlave(aktarget)
			if debugKeyMode
				HudNotification("Open inventory for "+akTarget.getDisplayName())
			endif
			PAHSlave sl_alias = PAH.GetSlave(akTarget)
			if sl_alias == None
				aktarget.OpenInventory(true)
			else
				sl_alias.OpenInventory()
			endif
		elseif akTarget.IsInFaction(PlayerFollowerFaction) || akTarget.IsInFaction(DOMCore.PotentialFollowerFaction)
			akTarget.OpenInventory(true)
		elseif DOMCore.isAPlayerSlave(akTarget)
			akTarget.OpenInventory(true)
		endif
	endif
EndFunction

Function PAHDoFollowMe()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		PAHSlave sl_alias = PAH.GetSlave(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to follow")
		endif
		if sl_alias != None
			if akTarget.IsInFaction(DOMCore.PAHBETied)
				sl_alias.TieUp(None, Aggressor = Game.GetPlayer(), DoAnimation = true, Enter = false)	
			endif
			Debug.SendAnimationEvent(akTarget, "IdleForceDefaultState") ; end pose
			sl_alias.FollowPlayer()
		endif
	endif
EndFunction

Function PAHDoStandStill()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		PAHSlave sl_alias = PAH.GetSlave(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to stand still")
		endif
		if sl_alias != None
			if akTarget.IsInFaction(DOMCore.PAHBETied)
				sl_alias.TieUp(None, Aggressor = Game.GetPlayer(), DoAnimation = true, Enter = false)	
			endif
			Debug.SendAnimationEvent(akTarget, "IdleForceDefaultState") ; end pose
			sl_alias.Wait()
		endif
	endif
EndFunction

Function PAHDoWaitHere()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		PAHSlave sl_alias = PAH.GetSlave(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to wait here")
		endif
		if sl_alias != None
			if akTarget.IsInFaction(DOMCore.PAHBETied)
				sl_alias.TieUp(None, Aggressor = Game.GetPlayer(), DoAnimation = true, Enter = false)	
			endif
			Debug.SendAnimationEvent(akTarget, "IdleForceDefaultState") ; end pose
			sl_alias.WaitSandbox()
		endif
	endif
EndFunction

Function PAHDoUntie()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	PAHSlave sl_alias = PAH.GetSlave(akTarget)
	if debugKeyMode
		HudNotification("Order "+sl_alias.getName()+" to wait here")
	endif
	if sl_alias != None && akTarget.IsInFaction(DOMCore.PAHBETied)
		sl_alias.TieUp(None, Aggressor = Game.GetPlayer(), DoAnimation = true, Enter = false)
		Debug.SendAnimationEvent(akTarget, "IdleForceDefaultState") ; end pose
	endif
EndFunction

Function PAHDoTieUp()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		PAHSlave sl_alias = PAH.GetSlave(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to wait here")
		endif
		if sl_alias != None && !akTarget.IsInFaction(DOMCore.PAHBETied)
			Debug.SendAnimationEvent(akTarget, "IdleForceDefaultState") ; end pose
			sl_alias.TieUp(zbfCuffsRope01, Aggressor = Game.GetPlayer(), DoAnimation = true, Enter = true)
		endif
	endif
EndFunction

Function PAHDoFavor()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget != None
		PAHSlave sl_alias = PAH.GetSlave(akTarget)
		if debugKeyMode
			HudNotification("Order "+sl_alias.getName()+" to wait here")
		endif
		if sl_alias != None && !akTarget.IsInFaction(DOMCore.PAHBETied)
			sl_alias.Wait()
			Debug.SendAnimationEvent(akTarget, "IdleForceDefaultState") ; end pose
			akTarget.SetDoingFavor()
		endif
	endif
EndFunction

Function PAHDoPoseMenu()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	PAHSlave sl_alias = PAH.GetSlave(akTarget)
	if sl_alias == None
		return
	endif
	int imenu = ShowPAHPoseMenu()
	string poseanim = ""
	if imenu == 0
		poseanim = "ZapWriPose07" ; Stand here
	elseif imenu == 1
		poseanim = "FNISSPc20" ; dance for me
	elseif imenu == 2
		poseanim = "FNISSPc24" ; dance with grace
	elseif imenu == 3
		poseanim = "FNISSPc22" ; dance show off your body
	elseif imenu == 4
		poseanim = "FNISSPc17" ; wild dance
	elseif imenu == 5
		poseanim = "FNISSPc6" ; get down
	elseif imenu == 6
		poseanim = "FNISSPc29" ; relax
	elseif imenu == 7
		poseanim = "FNISSPc30" ; statue  ; "FNISSPc31" ; swan pose ; "FNISSPo8" flowers
	endif
	if poseanim != ""
		if akTarget.IsInFaction(DOMCore.PAHBETied)
			sl_alias.TieUp(None, Aggressor = Game.GetPlayer(), DoAnimation = true, Enter = false)	
		endif
		sl_alias.should_pose = true  ; Needed to punish slave if not posing
		sl_alias.setPose(1)          ; Needed to start pose behaviour
		Debug.SendAnimationEvent(akTarget, poseanim) ; start pose
	endif
EndFunction

Function PAHAllStandstill()
	int n = PAH.GetSlaveCount()
	if debugKeyMode
		if n==1
			HudNotification("Order to stand still to one PAH slave")
		else
			HudNotification("Order to stand still to "+n+" PAH slaves")
		endif
	endif
	int i = 0
	while i < n
		PAHSlave sl_alias = PAH.slaveArray[i]
		if sl_alias != None
			Actor akTarget = sl_alias.GetActorRef()
			if akTarget != None && !akTarget.IsInFaction(PAHBERunningAway) && !akTarget.IsInFaction(PAHBEFleeingAndCowering)
				if DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
					if akTarget.IsInFaction(DOMCore.PAHBETied)
						sl_alias.TieUp(None, Aggressor = None, DoAnimation = false, Enter = false)	
					endif
					Debug.SendAnimationEvent(akTarget, "IdleForceDefaultState") ; end pose
					sl_alias.Wait()
				endif
			endif
		endif
		i += 1
	endwhile
EndFunction

Function PAHAllWaitHere()
	int n = PAH.GetSlaveCount()
	if debugKeyMode
		if n==1
			HudNotification("Order to wait here to one PAH slave")
		else
			HudNotification("Order to wait here to "+n+" PAH slaves")
		endif
	endif
	int i = 0
	while i < n
		PAHSlave sl_alias = PAH.slaveArray[i]
		if sl_alias != None
			Actor akTarget = sl_alias.GetActorRef()
			if akTarget != None && !akTarget.IsInFaction(PAHBERunningAway) && !akTarget.IsInFaction(PAHBEFleeingAndCowering)
				if DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
					if akTarget.IsInFaction(DOMCore.PAHBETied)
						sl_alias.TieUp(None, Aggressor = None, DoAnimation = false, Enter = false)	
					endif
					Debug.SendAnimationEvent(akTarget, "IdleForceDefaultState") ; end pose
					sl_alias.WaitSandbox()
				endif
			endif
		endif
		i += 1
	endwhile
EndFunction

Function PAHAllFollow()
	int n = PAH.GetSlaveCount()
	if debugKeyMode
		if n==1
			HudNotification("Order to follow to one PAH slave")
		else
			HudNotification("Order to follow to "+n+" PAH slaves")
		endif
	endif
	int i = 0
	while i < n
		PAHSlave sl_alias = PAH.slaveArray[i]
		if sl_alias != None
			Actor akTarget = sl_alias.GetActorRef()
			if akTarget != None && !akTarget.IsInFaction(PAHBERunningAway) && !akTarget.IsInFaction(PAHBEFleeingAndCowering)
				if DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
					if akTarget.IsInFaction(DOMCore.PAHBETied)
						sl_alias.TieUp(None, Aggressor = None, DoAnimation = false, Enter = false)	
					endif
					Debug.SendAnimationEvent(akTarget, "IdleForceDefaultState") ; end pose
					sl_alias.FollowPlayer()
				endif
			endif
		endif
		i += 1
	endwhile
EndFunction

Function PAHAllFollowIfPosing()
	int n = PAH.GetSlaveCount()
	if debugKeyMode
		if n==1
			HudNotification("Order to follow if posing to one PAH slave")
		else
			HudNotification("Order to follow if posing to "+n+" PAH slaves")
		endif
	endif
	int i = 0
	while i < n
		PAHSlave sl_alias = PAH.slaveArray[i]
		if sl_alias != None
			Actor akTarget = sl_alias.GetActorRef()
			if akTarget != None && !akTarget.IsInFaction(PAHBERunningAway) && !akTarget.IsInFaction(PAHBEFleeingAndCowering)
				if sl_alias.behaviour == "pose" && DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
					if akTarget.IsInFaction(DOMCore.PAHBETied)
						sl_alias.TieUp(None, Aggressor = None, DoAnimation = false, Enter = false)	
					endif
					Debug.SendAnimationEvent(akTarget, "IdleForceDefaultState") ; end pose
					sl_alias.FollowPlayer()
				endif
			endif
		endif
		i += 1
	endwhile
EndFunction

Function PAHAllBeRespectful()
	int n = PAH.GetSlaveCount()
	if debugKeyMode
		if n==1
			HudNotification("Order to be respectful to one PAH slave")
		else
			HudNotification("Order to be respectful to "+n+" PAH slaves")
		endif
	endif
	int i = 0
	while i < n
		PAHSlave sl_alias = PAH.slaveArray[i]
		if sl_alias != None
			Actor akTarget = sl_alias.GetActorRef()
			if akTarget != None
				if !sl_alias.should_be_respectful && DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
					sl_alias.should_be_respectful = true
					sl_alias.respectful = true
				endif
			endif
		endif
		i += 1
	endwhile
EndFunction

Function PAHAllFightForMe()
	int n = PAH.GetSlaveCount()
	if debugKeyMode
		if n==1
			HudNotification("Order to fight to one PAH slave")
		else
			HudNotification("Order to fight to "+n+" PAH slaves")
		endif
	endif
	int i = 0
	while i < n
		PAHSlave sl_alias = PAH.slaveArray[i]
		if sl_alias != None
			Actor akTarget = sl_alias.GetActorRef()
			if akTarget != None
				if !sl_alias.should_fight_for_player && DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
					sl_alias.should_fight_for_player = true
					sl_alias.fights_for_player = true
					If (sl_alias.behaviour == "follow_player")
						akTarget.SetPlayerTeammate()
					EndIf
				endif
			endif
		endif
		i += 1
	endwhile
EndFunction

Function PAHAllDontFightForMe()
	int n = PAH.GetSlaveCount()
	if debugKeyMode
		if n==1
			HudNotification("Order to not fight to one PAH slave")
		else
			HudNotification("Order to not fight to "+n+" PAH slaves")
		endif
	endif
	int i = 0
	while i < n
		PAHSlave sl_alias = PAH.slaveArray[i]
		if sl_alias != None
			Actor akTarget = sl_alias.GetActorRef()
			if akTarget != None
				if sl_alias.should_fight_for_player && DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
					sl_alias.should_fight_for_player = false
					sl_alias.fights_for_player = false
					if (akTarget.IsPlayerTeammate())
						akTarget.SetPlayerTeammate(false)
					endif
				endif
			endif
		endif
		i += 1
	endwhile
EndFunction

Function PAHAllPose(int imenu)
	string poseanim = ""
	if imenu == 0
		poseanim = "FNISSPc6" ; get down  (was chair) 
	elseif imenu == 1
		poseanim = "FNISSPc30" ; statue  (was light)
	elseif imenu == 2
		poseanim = "FNISSPo8" ; flowers (was flowers)
	elseif imenu == 3
		poseanim = "FNISSPc29" ; relax (was drinks) 
	elseif imenu == 4
		poseanim = "FNISSPc22" ; dance show off your body (was cute)
	elseif imenu == 5
		poseanim = "FNISSPc24" ; dance with grace (was dance)
	elseif imenu == 6
		poseanim = "FNISSPc20" ; dance for me (was music)
	elseif imenu == 7
		poseanim = "ZapWriPose07" ; Stand here (was cute)
	endif
	if poseanim == ""
		Return
	endif

	int n = PAH.GetSlaveCount()
	if debugKeyMode
		if n==1
			HudNotification("Order to pose to one PAH slave")
		else
			HudNotification("Order to pose to "+n+" PAH slaves")
		endif
	endif
	int i = 0
	while i < n
		PAHSlave sl_alias = PAH.slaveArray[i]
		if sl_alias != None
			Actor akTarget = sl_alias.GetActorRef()
			if akTarget != None && !akTarget.IsInFaction(PAHBERunningAway) && !akTarget.IsInFaction(PAHBEFleeingAndCowering)
				if DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
					if akTarget.IsInFaction(DOMCore.PAHBETied)
						sl_alias.TieUp(None, Aggressor = None, DoAnimation = false, Enter = false)	
					endif
					sl_alias.should_pose = true  ; Needed to punish slave if not posing
					sl_alias.setPose(1)          ; Needed to start pose behaviour
					Debug.SendAnimationEvent(akTarget, poseanim) ; start pose
				endif
			endif
		endif
		i += 1
	endwhile
EndFunction

Function PAHAllKneel()
	string poseanim

	int n = PAH.GetSlaveCount()
	if debugKeyMode
		if n==1
			HudNotification("Order to kneel to one PAH slave")
		else
			HudNotification("Order to kneel to "+n+" PAH slaves")
		endif
	endif
	int i = 0
	while i < n
		PAHSlave sl_alias = PAH.slaveArray[i]
		if sl_alias != None
			Actor akTarget = sl_alias.GetActorRef()
			if akTarget != None && !akTarget.IsInFaction(PAHBERunningAway) && !akTarget.IsInFaction(PAHBEFleeingAndCowering) && sl_alias.behaviour != "restrained_in_furniture"
				if DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
					if akTarget.IsInFaction(DOMCore.PAHBETied)
						poseanim = "ZapWriPose08"
					else
						poseanim = DOMCore.kneelPose
					endif
					sl_alias.should_pose = true  ; Needed to punish slave if not posing
					sl_alias.setPose(1)          ; Needed to start pose behaviour
					Debug.SendAnimationEvent(akTarget, poseanim) ; start pose
				endif
			endif
		endif
		i += 1
	endwhile
EndFunction

Function PAHAllAttention()
	string poseanim = DOMCore.attentionPose

	int n = PAH.GetSlaveCount()
	if debugKeyMode
		if n==1
			HudNotification("Order to stand on attention to one PAH slave")
		else
			HudNotification("Order to stand on attention to "+n+" PAH slaves")
		endif
	endif
	int i = 0
	while i < n
		PAHSlave sl_alias = PAH.slaveArray[i]
		if sl_alias != None
			Actor akTarget = sl_alias.GetActorRef()
			if akTarget != None && !akTarget.IsInFaction(PAHBERunningAway) && !akTarget.IsInFaction(PAHBEFleeingAndCowering) && !akTarget.IsInFaction(DOMCore.PAHBETied)
				if DOMCore.IsWithPlayer(akTarget, 10000.0) ; 10000.0 = 142 meters
					sl_alias.should_pose = true  ; Needed to punish slave if not posing
					sl_alias.setPose(1)          ; Needed to start pose behaviour
					Debug.SendAnimationEvent(akTarget, poseanim) ; start pose
				endif
			endif
		endif
		i += 1
	endwhile
EndFunction

; ### Abduction

bool Function isOverwhelmed(Actor akTarget)
	if akTarget.GetRelationshipRank(PlayerRef) >= 4
		if akTarget.GetLeveledActorBase().GetSex() == 0
			HudNotification(akTarget.getDisplayName()+" trustfully lets you close your hands around his neck")
		else
			HudNotification(akTarget.getDisplayName()+" trustfully lets you close your hands around her neck")
		endif
		return true
	endif	
	float[] TraitsArray = DOMGenerator.GetNPCTraits(akTarget)
	int x = RandomInt(34,100)
	if akTarget.GetRelationshipRank(PlayerRef) > 1 && x < TraitsArray[0] ; Honesty
		HudNotification(akTarget.getDisplayName()+" should not have trusted your friendship")
		return true
	endif	
	bool is_combat = akTarget.IsInCombat()
	if is_combat ; malus if actor is in combat
		x -= 34
	endif
	; Main atributes against abduction
	if x < TraitsArray[7] ; Wilfulness
		HudNotification(akTarget.getDisplayName()+" is too wilful to let you have it your way")
		return false
	endif
	if x < TraitsArray[10] ; Toughness
		HudNotification(akTarget.getDisplayName()+" is too tough to let you have it your way")
		return false
	endif
	; Secondary atributes against abduction
	x += 34
	if x < TraitsArray[8] ; Smartness
		HudNotification(akTarget.getDisplayName()+" is too smart to let you have it your way")
		return false
	endif
	if x < TraitsArray[11] ; Dominant
		HudNotification(akTarget.getDisplayName()+" is not going to let you have it your way")
		return false
	endif
	HudNotification("You grab an unwary "+akTarget.getDisplayName())
	return true
EndFunction

bool Function isUnaware(Actor akTarget)
	if akTarget.IsBleedingOut()
		HudNotification(akTarget.getDisplayName()+" is wounded and unaware of your attack")
		return true
	endif
	if !playerRef.IsDetectedBy(akTarget)
		HudNotification("You succesfully sneak behind "+akTarget.getDisplayName()+"'s back")
		return true
	endif
	return isOverwhelmed(akTarget)
EndFunction

ObjectReference Property PoseAnimMarker Auto Hidden

Function Anim_AbductionSleeping(Actor akTarget)
	PoseAnimMarker = akTarget.PlaceAtMe(DOMCore.XMarkerForm)
	PoseAnimMarker.Enable()
	DOM_Anim.StartDualAnimAlone(PoseAnimMarker,akTarget)
	DOM_Anim.PlayDualAnimAlone(PoseAnimMarker,akTarget,"ZapBedTied") 
	Wait(4.0*DOMCore.anim_speed_sec)
	DOM_Anim.EndDualAnimAlone(akTarget)
	akTarget.moveTo(PoseAnimMarker)
	;Debug.SendAnimationEvent(PlayerRef,"IdleLockpick")
	;Debug.SendAnimationEvent(akTarget,"ZapBedTied")
	PoseAnimMarker.Delete()
		PoseAnimMarker = None
EndFunction

string Function Anim_AbductionBack(Actor akTarget)
	if DOMCore.dualAnimToggle
		int sitState = akTarget.GetSitState()
		int sleepState = akTarget.GetSleepState()
		LogTrace("Anim_AbductionBack() marker="+DOMCore.XMarkerForm)
		if sitState > 0 || sleepState > 0
			LogTrace("Anim_AbductionBack() At player position")
			PoseAnimMarker = PlayerRef.PlaceAtMe(DOMCore.XMarkerForm)
		else
			LogTrace("Anim_AbductionBack() At actor position")
			PoseAnimMarker = akTarget.PlaceAtMe(DOMCore.XMarkerForm)
		endif
		PoseAnimMarker.Enable()
		LogTrace("Anim_AbductionBack() x="+PoseAnimMarker.GetPositionX()+" y="+PoseAnimMarker.GetPositionY()+" z="+PoseAnimMarker.GetPositionZ())
		DOM_Anim.StartDualAnim(PoseAnimMarker,akTarget,PlayerRef)
 		if sleepState==0 ; Put NPC down
			DOM_Anim.PlayDualAnim(PoseAnimMarker,akTarget,PlayerRef,"DoMChokeHoldPervA1_s1","DoMChokeHoldPervA2_s1") ; F: standing then on the floor on her back M: on her trying to choke her
			Wait(4.0*DOMCore.anim_speed_sec)
		endif
		DOM_Anim.PlayDualAnim(PoseAnimMarker,akTarget,PlayerRef,"DoMBabo_ChokeRape03_A1_S1","DoMBabo_ChokeRape03_A2_S1") ;  F: struggling on the floor on back M: choking
		Wait(4.0*DOMCore.anim_speed_sec)
		DOM_Anim.PlayDualAnim(PoseAnimMarker,akTarget,PlayerRef,"DoMBabo_ChokeRape03_A1_S2","DoMBabo_ChokeRape03_A2_S2") ;  F: passed out M: choking crouching at the level of her head
		Wait(2.0*DOMCore.anim_speed_sec)
		DOM_Anim.EndDualAnim(akTarget,PlayerRef)
		PoseAnimMarker.Delete()
		PoseAnimMarker = None
	else
		akTarget.playIdleWithTarget(pa_Overwhelm,playerRef) ;
		Wait(4.0*DOMCore.anim_speed_sec)
	endif
	return "DoMBabo_ChokeRape03_A1_S2"
EndFunction

string Function Anim_AbductionFront(Actor akTarget)
	if DOMCore.dualAnimToggle
		int sitState = akTarget.GetSitState()
		int sleepState = akTarget.GetSleepState()
		;LogTrace("Anim_AbductionFront() marker="+DOMCore.XMarkerForm)
		if sitState > 0 || sleepState > 0
			PoseAnimMarker = PlayerRef.PlaceAtMe(DOMCore.XMarkerForm)
		else
			PoseAnimMarker = akTarget.PlaceAtMe(DOMCore.XMarkerForm)
		endif
		PoseAnimMarker.Enable()
		;LogTrace("Anim_AbductionFront() x="+PoseAnimMarker.GetPositionX()+" y="+PoseAnimMarker.GetPositionY()+" z="+PoseAnimMarker.GetPositionZ())
		DOM_Anim.StartDualAnim(PoseAnimMarker,akTarget,PlayerRef)
		if sleepState==0 ; Put NPC down
			;Logtrace("DOM_Core: DOMAbduction="+akTarget.getDisplayName()+" anim1")
			DOM_Anim.PlayDualAnim(PoseAnimMarker,akTarget,PlayerRef,"DoMDefeatArrok_A1_S1","DoMDefeatArrok_A2_S1") ; F: standing then on the floor on her back M: on her trying to choke her
			Wait(4.0*DOMCore.anim_speed_sec)
		endif
		;Logtrace("DOM_Core: DOMAbduction="+akTarget.getDisplayName()+" anim2")
		DOM_Anim.PlayDualAnim(PoseAnimMarker,akTarget,PlayerRef,"DoMBabo_ChokeRape03_A1_S1","DoMBabo_ChokeRape03_A2_S1") ;  F: struggling on the floor on back M: choking
		Wait(4.0*DOMCore.anim_speed_sec)
		DOM_Anim.PlayDualAnim(PoseAnimMarker,akTarget,PlayerRef,"DoMBabo_ChokeRape03_A1_S2","DoMBabo_ChokeRape03_A2_S2") ;  F: passed out M: choking crouching at the level of her head
		Wait(2.0*DOMCore.anim_speed_sec)
		DOM_Anim.EndDualAnim(akTarget,PlayerRef)
		PoseAnimMarker.Delete()
		PoseAnimMarker = None
	else
		akTarget.playIdleWithTarget(pa_Overwhelm,playerRef) ;
		Wait(4.0*DOMCore.anim_speed_sec)
	endif
	return "DoMBabo_ChokeRape03_A1_S2"
EndFunction

Function DOMAbduction()
	Actor akTarget = (Game.GetCurrentCrosshairRef() As Actor)
	if akTarget == None
		return
	endif
	if akTarget.IsInFaction(DOMCore.SexLabAnimatingFaction) ; In SL scene
		akTarget.RemoveFromFaction(DOMBeingCaptured)
		return
	endif
	if akTarget.IsInFaction(PlayerFollowerFaction) ; Is a follower
		akTarget.RemoveFromFaction(DOMBeingCaptured)
		return
	endif
	if akTarget.IsInFaction(DOMActorFaction) ; Is already a DoM actor
		akTarget.RemoveFromFaction(DOMBeingCaptured)
		return
	endif
	if akTarget.GetFactionRank(DOMBeingCaptured) == 1 ; already being processed in slave manager
		return
	endif
	if akTarget.GetFactionRank(DOMBeingCaptured) == 3 ; already being processed in this function
		return
	endif
	akTarget.SetFactionRank(DOMBeingCaptured,3)
	Bool isValid = (akTarget.HasKeyWord(ActorTypeNPC) || akTarget.HasKeyWord(ActorTypeCreature)) && !akTarget.IsChild()
	Bool isSlave = DOMCore.isASlave(akTarget)
	if !isValid || isSlave || akTarget.IsOnMount()
		akTarget.RemoveFromFaction(DOMBeingCaptured)
		return
	endif

	Logtrace("DOM_Core: DOMAbduction=start Target is "+akTarget)
	if debugKeyMode
		HudNotification("Attempting abudction of "+akTarget.getDisplayName())
	endif
	
		bool is_unaware
		bool is_frombehind 
		int sitState = akTarget.GetSitState()
		int sleepState = akTarget.GetSleepState()
		if sleepState>0
			is_unaware = true
			is_frombehind = false
			; Wait 2 seconds if laying down or standing up
			if sleepState == 2 ; laying down
				Wait(2.0)
			elseif sleepState == 4 ; standing up
				LogTrace("Animation: DOMAbduction() ExitBed")
				akTarget.PlayIdle(ExitBed)
				Wait(2.0)
			endif
		else
			if sitState>0
				; Wait 2 seconds if sitting down or standing up
				if sitState == 2 ; sitting down
					Wait(2.0)
				elseif sitState == 4 ; standing up
					LogTrace("Animation: DOMAbduction() ExitChairFront")
					akTarget.PlayIdle(ExitChairFront)
					Wait(2.0)
				endif
			endif
			
			if alarmToggleAbduction
				; either actor didn't detect player or actor was not expecting that
				is_unaware = isUnaware(akTarget)
				if !is_unaware
					akTarget.RemoveFromFaction(DOMBeingCaptured)
					akTarget.SendAssaultAlarm()
					akTarget.SetLookAt(playerRef, true)
					akTarget.StartCombat(playerRef)
					return
				endif
			else
				is_unaware = true		
			endif

			float pangle = akTarget.GetHeadingAngle(playerRef) 
			Logtrace(akTarget.getDisplayName()+" player angle is "+pangle)
			if pangle > 110.0 ; beyond far peripheral vision zone
				is_frombehind = true
			else
				is_frombehind = true
			endif
		endif
		
		Logtrace("DOM_Core: DOMAbduction="+akTarget.getDisplayName()+" sleep="+sleepState+" sit="+sitState+" unaware="+is_unaware+" behind="+is_frombehind)
		; Needs a loop on nearby actors and ignore player's followers and lovers
		;bool is_detected = PO3_SKSEFunctions.IsDetectedByAnyone(playerRef)
		;if is_detected
		;	HudNotification("You have been detected by a witness!")
		;	akTarget.SendAssaultAlarm()
		;endif
		sleepState = akTarget.GetSleepState()
		;if sleepState > 0
		;	HudNotification("You tie-up a sleeping "+akTarget.getDisplayName())	
		;	Anim_AbductionSleeping(akTarget)
		;else
		string last_anim = ""
		if is_frombehind
			HudNotification("You sneak behind "+akTarget.getDisplayName())	
			last_anim = Anim_AbductionBack(akTarget)
			DOMCore.SayTopic(akTarget,DOM02TopicAnswerAttack)
		else
			DOMCore.SayTopic(akTarget,DOM02TopicAnswerAttack)
			HudNotification("You manage to overwhelm "+akTarget.getDisplayName())
			last_anim = Anim_AbductionFront(akTarget)
		endif
		;Logtrace("DOM_Core: DOMAbduction=before Target is "+akTarget)
		DOM02.Capture(akTarget,last_anim)
		;Logtrace("DOM_Core: DOMAbduction=end Target is "+akTarget)
EndFunction

; ### Put in bag


Function DOMDoPutInBag()
	Actor akTarget = (Game.GetCurrentCrosshairRef()) As Actor
	if akTarget == None
		return
	endif
	if debugKeyMode
		HudNotification("Put in bag "+akTarget.getDisplayName())
	endif
	DOMCore.SayTopic(akTarget,DOM02TopicAnswerAttack)
	DOMDoPutInBagActor(akTarget)
EndFunction

Function DOMDoPutInBagActor(Actor akTarget)
	Bool isValid = (akTarget.HasKeyWord(ActorTypeNPC) || akTarget.HasKeyWord(ActorTypeCreature)) && !akTarget.IsChild()
	if !isValid || akTarget.IsOnMount()
		return
	endif
	Bool isSlave = DOMCore.isASlave(akTarget)
	if !isSlave
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias != None
		if !sl_alias.canAnimate
			return
		endif
		if sl_alias.IsInTraining()
			return
		endif
	endif
	
	;LogTrace("DOMDoPutInBagActor: Sack form = "+DoMBurlapSack)
	DOM_BurlapSack objSack = playerRef.PlaceAtMe(DoMBurlapSack) as DOM_BurlapSack
	objSack.SetDisplayName("Мешок с "+akTarget.GetDisplayName())
	objSack.SetVictim(akTarget)
	objSack.SetActorOwner(NONE)
	Logtrace("DOMDoPutInBagActor: Sack fill in with actor="+akTarget)

	if sl_alias != None ; store behaviour
		if sl_alias.behaviour == "restrained_in_furniture"
			objSack.SetBehaviour("tied")
		else
			objSack.SetBehaviour(sl_alias.behaviour)
		endif
		sl_alias.the_bag_iam_in = objSack
		sl_alias.behaviour = "wait_in_bag"
	elseif isAPAHSlave(akTarget)
		PAHSlave sl_alias2 = PAH.GetSlave(akTarget)
		if sl_alias2.behaviour == "restrained_in_furniture"
			objSack.SetBehaviour("tied")
		else
			objSack.SetBehaviour(sl_alias2.behaviour)
		endif
		sl_alias2.behaviour = "wait"
	endif
	ObjectReference NowhereMarker = Game.GetFormFromFile(0x050047D7, "paradise_halls.esm") as ObjectReference ; in PAHUtilityCell
	akTarget.Moveto(NowhereMarker) ; Put actor some where that is nowhere
	playerRef.AddItem(objSack)
EndFunction

Function DOMDoPutInBagInPlace(Actor akTarget)
	Bool isValid = (akTarget.HasKeyWord(ActorTypeNPC) || akTarget.HasKeyWord(ActorTypeCreature)) && !akTarget.IsChild()
	if !isValid || akTarget.IsOnMount()
		return
	endif
	Bool isSlave = DOMCore.isASlave(akTarget)
	if !isSlave
		return
	endif
	DOM_Actor sl_alias = DOMCore.GetActor(akTarget)
	if sl_alias != None
		if !sl_alias.canAnimate
			return
		endif
		if sl_alias.IsInTraining()
			return
		endif
	endif

	;LogTrace("DOMDoPutInBagInPlace: Sack form = "+DoMBurlapSack)
	DOM_BurlapSack objSack = akTarget.PlaceAtMe(DoMBurlapSack) as DOM_BurlapSack
	objSack.SetDisplayName("Мешок с "+akTarget.GetDisplayName())
	objSack.SetVictim(akTarget)
	objSack.SetActorOwner(NONE)
	Logtrace("DOMDoPutInBagInPlace: Sack fill in with actor="+akTarget)

	if sl_alias != None ; store behaviour
		if sl_alias.behaviour == "restrained_in_furniture"
			objSack.SetBehaviour("tied")
		else
			objSack.SetBehaviour(sl_alias.behaviour)
		endif
		sl_alias.the_bag_iam_in = objSack
		sl_alias.behaviour = "wait_in_bag"
	elseif isAPAHSlave(akTarget)
		PAHSlave sl_alias2 = PAH.GetSlave(akTarget)
		if sl_alias2.behaviour == "restrained_in_furniture"
			objSack.SetBehaviour("tied")
		else
			objSack.SetBehaviour(sl_alias2.behaviour)
		endif
		sl_alias2.behaviour = "wait"
	endif
	ObjectReference NowhereMarker = Game.GetFormFromFile(0x050047D7, "paradise_halls.esm") as ObjectReference ; in PAHUtilityCell
	akTarget.Moveto(NowhereMarker) ; Put actor some where that is nowhere
	;playerRef.AddItem(objSack)
EndFunction

Function DOMDoTakeOutOfBag()
	DOM_BurlapSack objSack = (Game.GetCurrentCrosshairRef()) As DOM_BurlapSack
	if objSack==None || !objSack.HasKeyWord(BodyBag)
		Logtrace("DOMDoTakeOutOfBag: Sack in inventory="+playerRef.GetItemCount(DoMBurlapSack))
		if playerRef.GetItemCount(DoMBurlapSack) <= 0
			return
		endif
		;objSack = (playerRef.DropObject(DoMBurlapSack)) as DOM_BurlapSack
		;Wait(1.0)
		;objSack.MoveTo(playerRef, 64.0 * Math.Sin(playerRef.GetAngleZ()), 64.0 * Math.Cos(playerRef.GetAngleZ()), 5.0)
		;Logtrace("Sack dropped="+objSack.getDisplayName())
		return
	endif
	if objSack==None
		return
	endif
	Actor akRef = objSack.GetVictim()
	if akRef == None
		LogTrace("DOMDoTakeOutOfBag: ERROR victim=None")
		return
	endif
	if debugKeyMode
		HudNotification("Take out of bag "+akRef.getDisplayName())
	endif
	LogTrace("Animation: DOMDoTakeOutOfBag() PAHETyingUpAnim on player")
	Debug.SendAnimationEvent(playerRef, "PAHETyingUpAnim")
	Wait(4.0)
	Logtrace("DOMDoTakeOutOfBag: Sack contains actor="+akRef)

	akRef.MoveTo(playerRef, 64.0 * Math.Sin(playerRef.GetAngleZ()), 64.0 * Math.Cos(playerRef.GetAngleZ()), playerRef.GetHeight()/2.0+32.0)
	float zOffset = akRef.GetHeadingAngle(playerRef)
	akRef.SetAngle(akRef.GetAngleX(), akRef.GetAngleY(), akRef.GetAngleZ() + zOffset)

	string beh = objSack.GetBehaviour()
	if beh != ""
		DOM_Actor sl_alias = DOMCore.GetActor(akRef)
		If sl_alias != None
			sl_alias.behaviour = beh
		elseif isAPAHSlave(akRef)
			PAHSlave sl_alias2 = PAH.GetSlave(akRef)
			sl_alias2.behaviour = beh
		endif
	EndIf

	objSack.Delete()
EndFunction

; Utils

Function HudNotification(string msg)
	Debug.Notification(msg)
	if DOMCore.verboseMode
		Debug.Trace("DOM_Keys: "+msg)
	endif
EndFunction

Function LogInfo(string msg)
	Debug.Trace("DOM_Keys: "+msg)
EndFunction

Function LogTrace(string msg)
	if DOMCore.verboseMode
		Debug.Trace("DOM_Keys: "+msg)
	endif
EndFunction
