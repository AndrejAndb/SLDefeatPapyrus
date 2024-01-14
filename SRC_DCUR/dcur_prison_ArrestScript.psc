Scriptname dcur_prison_ArrestScript extends Quest  

dcur_prisonQuestScript Property pqs Auto
zadlibs Property libs Auto 
dcur_library Property dclibs Auto
dcur_mcmconfig Property dcumenu  Auto  

GlobalVariable Property dcur_dialogswitch Auto
GlobalVariable Property dcur_prison_arrest_bribe Auto
GlobalVariable Property dcur_prison_arrest_bribesex Auto
GlobalVariable Property dcur_prison_arrest_payoffbounty Auto
GlobalVariable Property dcur_prison_usevanilla Auto
GlobalVariable Property dcur_prison_lastjailedat Auto

Faction Property CrimeFactionReach Auto
Quest Property CidhnaMineJailEventScene Auto

Bool isViolentCrime = False
Bool isVeryMinorOffense = False
Bool isRepeatOffender = False

Int ThreeStrikes = 0

Function GoCidhnaMine()
	CrimeFactionReach.SendPlayerToJail()
	If CidhnaMineJailEventScene.GetStageDone(10) == 0
		CidhnaMineJailEventScene.SetStage(10)
	EndIf
EndFunction

Function PayBounty(Actor Who)
	Who.StopCombatAlarm()
	Faction CurrentCrimeFaction = Who.GetCrimeFaction()
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
		CurrentCrimeFaction.SetPlayerEnemy(false)
	EndIf		
EndFunction
	
Function ClearBounty(Actor Who)
	Who.StopCombatAlarm()
	Faction CurrentCrimeFaction = Who.GetCrimeFaction()
	CurrentCrimeFaction.SetCrimeGold(0)
	CurrentCrimeFaction.SetCrimeGoldViolent(0)
	CurrentCrimeFaction.SetPlayerEnemy(false)
EndFunction
	
Function Sex(Actor who)	
	dcLibs.SexWithPlayer(who, consensual = true, stages = 1, randomanim = true, nostrip = true, beds = false, preferredtag = "")	
EndFunction

Bool Function isDDQuestActive()		
	return (dclibs.UnsafePrisonQuestsActive() || dclibs.isWearingUnsafeDDItem())
EndFunction

Function CalcOutcomeViolent(Actor who)	
	; 9.0: let's reduce the overall visits to the prison a bit. No automatic prison for violent crime, but a higher chance to get a severe outcome (processed in that function)
	CalcOutcomePetty(who)	
	return
	
	; violent crime results in a prison sentence
	dcur_dialogswitch.SetValueInt(1)
	
	if Libs.PlayerRef.WornHasKeyword(libs.zad_QuestItem) || isDDQuestActive()
		; since that is an indicator that we might break DD quests, we don't use the prison outcome here
		If who.GetCrimeFaction().CanPayCrimeGold()
			dcur_dialogswitch.SetValueInt(4)
		Else
			; we shouldn't start other DD quests either, so it must be her lucky day then - but hey, sone people get away with murder in real life, too...
			dcur_dialogswitch.SetValueInt(7)
		EndIf			
	EndIf
EndFunction

Function CalcOutcomePetty(Actor who)	
	; return values: 1 = prison, 2 = Walk of Shame, 3 = Belt of Shame, 4 = Fine, 5 = Whore Collar, 6 = Equip DD stuff, 7 = Let her go, 8 = slavery, 9 = rape, 10 = furniture, 11 = UT Armbinder
	; set base values - can later be pulled from MCM
	Float prisonweight = 125.0
	Float wosweight = 75.0
	Float bosweight = 50.0
	Float fineweight = 100.0
	Float wcweight = 50.0
	Float ddweight = 75.0
	Float letgoweight = 75.0
	Float slavweight = 0.0
	Float rapeweight = 75.0
	Float armbinderweight = 50.0
	Float furnitureweight = 100.0

	If isVeryMinorOffense && !isRepeatOffender
		; we're not very likely to pick harsh outcomes for super minor crimes.
		slavweight = 0.0
		prisonweight /= 2
		letgoweight *= 1.5
		fineweight *= 1.5
		rapeweight *= 1.5
	EndIf
	
	if isViolentCrime
		prisonweight = 150.0
		wosweight = 75.0
		bosweight = 50.0
		fineweight = 0.0
		wcweight = 100.0
		ddweight = 75.0
		letgoweight = 0.0
		slavweight = 0.0
		rapeweight = 75.0
	endif
	
	If isRepeatOffender
		; if she recently clashed with the law, we're likely to punish her harder		
		prisonweight *= 2
		wosweight *= 1.5
		rapeweight /= 1.5
		letgoweight = 0.0
	EndIf
		
	;if she can't pay the fine at all, set this outcome to zero
	If !who.GetCrimeFaction().CanPayCrimeGold()
		fineweight = 0.0
	EndIf
	
	if !dcLibs.etl.GetFurnitureList()
		; no using furniture if no appropriate devices are available.
		furnitureweight = 0.0
	Endif
	
	If ThreeStrikes > 2
		; She has three minor convictions - off to jail she goes, no matter how minor the offense!
		dcur_dialogswitch.SetValueInt(1)		
		if Libs.PlayerRef.WornHasKeyword(libs.zad_QuestItem) || isDDQuestActive()			
			; since that is an indicator that we might break DD quests, we don't use the prison outcome here
			If who.GetCrimeFaction().CanPayCrimeGold()
				dcur_dialogswitch.SetValueInt(4)
			Else
				; must be her lucky day then
				dcur_dialogswitch.SetValueInt(7)
			EndIf			
		Else
			ThreeStrikes = 0
		EndIf
		return		
	EndIf
	
	Float grandtotalweight = prisonweight + wosweight + bosweight + fineweight + wcweight + ddweight + letgoweight + slavweight + rapeweight + furnitureweight
	Float Select = 0.0			
	dcur_dialogswitch.SetValueInt(1)						
	Select = Utility.RandomFloat(0.0, grandtotalweight)			
	if Select < prisonweight
		dcur_dialogswitch.SetValueInt(1)
		if Libs.PlayerRef.WornHasKeyword(libs.zad_QuestItem) || isDDQuestActive()
			; since that is an indicator that we might break DD quests, we don't use the prison outcome here
			If who.GetCrimeFaction().CanPayCrimeGold()
				dcur_dialogswitch.SetValueInt(4)
			Else
				; must be her lucky day then
				dcur_dialogswitch.SetValueInt(7)
			EndIf			
		EndIf
		return
	endIf
	Select = Select - prisonweight
	if Select < wosweight
		If libs.playerRef.WornHasKeyword(libs.zad_DeviousGag) || libs.playerRef.WornHasKeyword(libs.zad_DeviousSuit)
			; do not trigger WoS if the slots are blocked
			dcur_dialogswitch.SetValueInt(8)						
		Else
			dcur_dialogswitch.SetValueInt(2)						
		EndIf
		return
	endIf
	Select = Select - wosweight
	if Select < bosweight
		If libs.playerRef.WornHasKeyword(libs.zad_DeviousBelt)
			; do not trigger BoS if the slots are blocked
			dcur_dialogswitch.SetValueInt(8)						
		Else
			dcur_dialogswitch.SetValueInt(3)						
		EndIf
		return
	endIf
	Select = Select - bosweight		
	if Select < wcweight
		dcur_dialogswitch.SetValueInt(5)
		return
	endIf
	Select = Select - wcweight
	if Select < ddweight
		If libs.playerRef.WornHasKeyword(libs.zad_DeviousCollar)
			; do not trigger if the slots are blocked
			dcur_dialogswitch.SetValueInt(8)						
		Else
			dcur_dialogswitch.SetValueInt(6)
		EndIf
		return
	endIf
	Select = Select - ddweight
	if Select < letgoweight
		dcur_dialogswitch.SetValueInt(7)
		return
	endIf
	Select = Select - letgoweight
	if Select < slavweight
		dcur_dialogswitch.SetValueInt(8)
		return
	endIf
	Select = Select - slavweight
	if Select < rapeweight
		dcur_dialogswitch.SetValueInt(9)
		return
	endIf
	Select = Select - rapeweight
	if Select < fineweight
		dcur_dialogswitch.SetValueInt(4)
		return
	endIf
	Select = Select - fineweight
	if Select < armbinderweight
		dcur_dialogswitch.SetValueInt(11)
		return
	endIf
	Select = Select - armbinderweight
	if Select < furnitureweight
		dcur_dialogswitch.SetValueInt(10)
		return
	endIf
EndFunction

Function CalcBribe()
	dcur_prison_arrest_bribesex.SetValueInt(0)
	dcur_prison_arrest_bribe.SetValueInt(0)	
	dcur_prison_arrest_payoffbounty.SetValueInt(0)
	Float sexchance = 35.0
	Float begchance = 25.0
	Float paychance = 30.0
	If isVeryMinorOffense
		sexchance += 35.0
		begchance += 10.0
		paychance += 50.0
	EndIf
	If isViolentCrime
		sexchance -= 5.0
		begchance -= 15.0
		paychance -= 10.0
	EndIf	
	If Utility.RandomFloat(0.0, 99.9) < sexchance
		dcur_prison_arrest_bribesex.SetValueInt(1)		
	EndIf
	If Utility.RandomFloat(0.0, 99.9) < begchance
		dcur_prison_arrest_bribe.SetValueInt(1)		
	EndIf
	If Utility.RandomFloat(0.0, 99.9) < paychance
		dcur_prison_arrest_payoffbounty.SetValueInt(1)		
	EndIf
EndFunction

Function CalcOutcome(Actor who)		
	isViolentCrime = False
	isVeryMinorOffense = False
	ThreeStrikes += 1
	Faction CurrentCrimeFaction = Who.GetCrimeFaction()
	Float BountyPetty = CurrentCrimeFaction.GetCrimeGold()
	Float BountyViolent = CurrentCrimeFaction.GetCrimeGoldViolent()
	; Check if she's a repeat offender
	If (dcur_prison_lastjailedat.GetValue() > 0.0) && ((Utility.GetCurrentGameTime() - dcur_prison_lastjailedat.GetValue()) < 7.0)
		isRepeatOffender = true
	Else	
		isRepeatOffender = False
	EndIf
	If BountyViolent > 1500.0
		CalcOutcomeViolent(who)	
		isViolentCrime = True
	Else		
		if BountyPetty < 25.0
			isVeryMinorOffense = True
		EndIf
		CalcOutcomePetty(who)	
	EndIf
	CalcBribe()
EndFunction

Function Outcome(Actor who)
	Faction CurrentCrimeFaction = Who.GetCrimeFaction()
	; ok, we can cheat a little here and save us some work by reading the global value...
	Int V = dcur_dialogswitch.GetValueInt()
	If V == 1
		if (dcur_prison_usevanilla.GetValueInt() != 1) && (libs.SexLab.GetGender(Libs.PlayerRef) == 1)	; girls only, but we use Sexlab's gender so players can send their transwomen there, too.			
			If dcumenu.installed_PO && (Utility.RandomFloat(0.0, 99.9) < dcumenu.prison_UsePOChance)
				; According to PO's documentation it should process the bounty correctly and use the guard's crime faction, so I guess nothing else has to be done?				
				Who.SendModEvent("xpoArrestPC")
			Else
				; DCL prison - we do NOT clean the bounty here, or the prison quest won't be able to auto-calc the sentence.		
				StorageUtil.SetFormValue(libs.playerRef, "dcur_prison_ArrestingActor", who)
				pqs.Start()
			EndIf
		Else
			; not a female, so we're sending them to regular jail
			CurrentCrimeFaction.SendPlayerToJail()
		EndIf
	ElseIf v == 2
		CurrentCrimeFaction.PlayerPayCrimeGold(True, False)
		dcumenu.dclibs.mcs.wosqs.Start()
	ElseIf v == 3
		CurrentCrimeFaction.PlayerPayCrimeGold(True, False)
		dcLibs.etl.equipbeltofshame(suppressfeedback = false)
	ElseIf v == 4
		; fine
		; we checked earlier if she can pay, so no need to do it again
		CurrentCrimeFaction.PlayerPayCrimeGold()
	ElseIf v == 5
		CurrentCrimeFaction.PlayerPayCrimeGold(True, False)
		dcLibs.etl.dcur_startwhorecollarquest(suppressfeedback = false)
	ElseIf v == 6
		CurrentCrimeFaction.PlayerPayCrimeGold(True, False)
		dcLibs.EquipSet(Libs.PlayerRef, dcumenu.EquipTheme)
	ElseIf v == 7
		ClearBounty(Who)
		Libs.Notify("The guard waves you off. Phew!")
		ThreeStrikes -= 1
	ElseIf v == 8
		ClearBounty(Who)
		; don't really have a scenario for this yet...
	ElseIf v == 9
		ClearBounty(Who)
		Sex(Who)
	ElseIf v == 10
		ClearBounty(Who)
		dcLibs.etl.FurniturePunishment()
	ElseIf v == 11
		ClearBounty(Who)
		dcLibs.etl.equipultratightarmbinder()
	EndIf	
EndFunction
