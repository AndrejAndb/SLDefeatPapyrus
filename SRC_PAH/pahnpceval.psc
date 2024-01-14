Scriptname PAHNpcEval extends Quest  

; Condenses and stores faction-based information about a soon-to-be-slave
; Call info function on the original NPC first, and retain the returned data during the cloning process
; After cloning, call the function to store the information in factions on the cloned slave

; Job info storage factions
Faction Property PAHRegionFaction Auto
Faction Property PAHJobsFaction Auto
Faction Property PAHEmployersFaction Auto
Faction Property PAHTrainersFaction Auto

; Job factions
Faction Property BanditFaction Auto
Faction Property ForswornFaction Auto

Faction Property BladesFaction Auto
Faction Property BladesRecruitsFaction Auto
Faction Property CaravanGuard Auto
Faction Property VigilantOfStendarrFaction Auto
Faction Property CompanionsFaction Auto
Faction Property IsGuardFaction Auto

Faction Property JobApothecaryFaction Auto
Faction Property JobBardFaction Auto
Faction Property JobCourtWizardFaction Auto
Faction Property JobJusticiar Auto
Faction Property JobPriestFaction Auto
Faction Property JobOrcWiseWomanFaction Auto
Faction Property JobStewardFaction Auto

Faction Property CaravanMerchant Auto
Faction Property JobMerchantFaction Auto

Faction Property JobBlacksmithFaction Auto
Faction Property JobFarmerFaction Auto
Faction Property HunterFaction Auto
Faction Property JobLumberjackFaction Auto
Faction Property JobMinerFaction Auto
Faction Property JobTrainerFaction Auto ; "Skill Trainer"

Faction Property JobInnkeeperFaction Auto
Faction Property JobInnServer Auto

Faction Property JobFletcherFaction Auto
Faction Property JobJewelerFaction Auto
Faction Property JobTailorFaction Auto

Faction Property JobJarlFaction Auto

Faction Property FavorJobsBeggarsFaction Auto

Faction Property JobFenceFaction Auto
Faction Property ThievesGuildFaction Auto
Faction Property DarkBrotherhoodFaction Auto

; Court factions
Faction Property DawnstarWhiteHallFaction Auto
Faction Property FalkreathJarlsLonghouseFaction Auto
Faction Property MarkarthCastleServantsFaction Auto
Faction Property MarkarthKeepFaction Auto
Faction Property MorthalLonghouseFaction Auto
Faction Property RiftenMistveilKeepFaction Auto
Faction Property SolitudeBluePalaceFaction Auto
Faction Property SolitudeBluePalaceServants Auto
Faction Property WhiterunDragonsReachServants Auto
Faction Property WindhelmPalace Auto
Faction Property WinterholdJarlFaction Auto

; Ruler factions
Faction Property GovExiled Auto
Faction Property GovRuling Auto

; trainer factions
Faction Property JobTrainerAlchemyFaction Auto ; "Alchemy Trainer"
Faction Property JobTrainerAlterationFaction Auto ; "Alteration Trainer"
Faction Property JobTrainerBlockFaction Auto ; "Block Trainer"
Faction Property JobTrainerConjurationFaction Auto ; "Conjuration Trainer"
Faction Property JobTrainerDestructionFaction Auto ; "Destruction Trainer"

Faction Property JobTrainerEnchantingFaction Auto ; "Enchanting Trainer"
Faction Property JobTrainerHeavyArmorFaction Auto ; "HeavyArmor Trainer"
Faction Property JobTrainerIllusionFaction Auto ; "Illusion Trainer"
Faction Property JobTrainerLightArmorFaction Auto ; "LightArmor Trainer"
Faction Property JobTrainerLockpickingFaction Auto ; "Lockpicking Trainer"

Faction Property JobTrainerMarksmanFaction Auto ; "archery Trainer"
Faction Property JobTrainerOneHandedFaction Auto ; "OneHanded Trainer"
Faction Property JobTrainerPickpocketFaction Auto ; "PickpocketFaction Trainer"
Faction Property JobTrainerRestorationFaction Auto ; "Restoration Trainer"
Faction Property JobTrainerSmithingFaction Auto ; "Smithing Trainer"

Faction Property JobTrainerSneakFaction Auto ; "Sneak Trainer"
Faction Property JobTrainerSpeechcraftFaction Auto ; "Speechcraft Trainer"
Faction Property JobTrainerTwoHandedFaction Auto ; "TwoHanded Trainer"

; Collects NPC info
; Data returned: 0=region, 1=jobs, 2=employers, 3=trainers
int[] Function GetActorData(Actor slave)
	int[] info = new int[4]

	if (slave == None)
		return info
	endif

	int regionCode = 0
	int jobs = 0
	int employers = 0
	int trainers = 0

	Faction f = slave.GetCrimeFaction()
	if (f != None)
		if (f.GetFormId() == 0x267e3)
			regionCode = 1		; EastMarch
		elseif (f.GetFormId() == 0x28170)
			regionCode = 2		; Falkreath
		elseif (f.GetFormId() == 0x29db0)
			regionCode = 3		; Haafingar
		elseif (f.GetFormId() == 0x2816d)
			regionCode = 4		; Hjaalmarch
		elseif (f.GetFormId() == 0x2816e)
			regionCode = 5		; Pale
		elseif (f.GetFormId() == 0x1816c)
			regionCode = 6		; Reach
		elseif (f.GetFormId() == 0x2816b)
			regionCode = 7		; Rift
		elseif (f.GetFormId() == 0x267ea)
			regionCode = 8		; Whiterun
		elseif (f.GetFormId() == 0x2816f)
			regionCode = 9		; Winterhold
		elseif (f.GetFormId() == 0x28713)
			regionCode = 10	; Orc tribe
		endif
	endif

	info[0] = regionCode

	; Nobility
	if ((slave.IsInFaction(GovRuling)) || (slave.IsInFaction(JobJarlFaction)) || (slave.IsInFaction(GovExiled)))
		jobs += 1			; Noble (ish)
	endif
	if (slave.IsInFaction(GovExiled))
		jobs += 2			; Exiled noble
	endif

	; Works at court: bonus points for refinement
	if ((slave.IsInFaction(DawnstarWhiteHallFaction)) || (slave.IsInFaction(FalkreathJarlsLonghouseFaction)) \
		|| (slave.IsInFaction(MarkarthCastleServantsFaction)) || (slave.IsInFaction(MarkarthKeepFaction)) \
	    	|| (slave.IsInFaction(MorthalLonghouseFaction)) || (slave.IsInFaction(RiftenMistveilKeepFaction)) \
		|| (slave.IsInFaction(SolitudeBluePalaceFaction)) || (slave.IsInFaction(SolitudeBluePalaceServants)) \
	    	|| (slave.IsInFaction(WhiterunDragonsReachServants)) || (slave.IsInFaction(WindhelmPalace)) || (slave.IsInFaction(WinterholdJarlFaction)))

		employers += 1
	endif

	; Outlaw: small bonus to fighting value, malus to refinement 
	if ((slave.IsInFaction(BanditFaction)) || (slave.IsInFaction(ForswornFaction)))
		employers += 2
	endif

	; Trained fighter
	if ((slave.IsInFaction(BladesFaction )) || (slave.IsInFaction(BladesRecruitsFaction )) \
		 || (slave.IsInFaction(CaravanGuard)) || (slave.IsInFaction(VigilantOfStendarrFaction)) \
		 || (slave.IsInFaction(CompanionsFaction )) || (slave.IsInFaction(IsGuardFaction)) || (slave.IsInFaction(JobTrainerFaction)))
		employers += 4
	endif

	; Educated: bonus to refinement and intellect, malus to fighting
	if ((slave.IsInFaction(JobApothecaryFaction)) || (slave.IsInFaction(JobBardFaction )) \
		 || (slave.IsInFaction(JobCourtWizardFaction ))  || (slave.IsInFaction(JobJusticiar)) \
		 || (slave.IsInFaction(JobPriestFaction)) || (slave.IsInFaction(JobOrcWiseWomanFaction)) \
		 || (slave.IsInFaction(JobStewardFaction)) || (slave.IsInFaction(JobJarlFaction)) || (slave.IsInFaction(JobTrainerFaction)))
		jobs += 4
	endif

	; Merchant: small bonus to intellect, malus to fighting
	if ((slave.IsInFaction(CaravanMerchant)) || (slave.IsInFaction(JobMerchantFaction)))
		jobs += 8
	endif

	; Physical labor
	if ((slave.IsInFaction(JobBlacksmithFaction)) || (slave.IsInFaction(JobFarmerFaction)) \
		|| (slave.IsInFaction(JobLumberjackFaction))  || (slave.IsInFaction(JobMinerFaction)))
		jobs += 16
	endif

	; Artisan
	if ((slave.IsInFaction(JobFletcherFaction)) || (slave.IsInFaction(JobJewelerFaction)) || (slave.IsInFaction(JobTailorFaction )))
		jobs += 32
	endif

	; Woodsman: small bonus to fighting
	if (slave.IsInFaction(HunterFaction)) 
		employers += 8
	endif

	; Beggar, malus for most traits similar to old people
	if (slave.IsInFaction(FavorJobsBeggarsFaction)) 
		jobs += 64
	endif

	; Career criminal, malus to obedience and refinement
	if ((slave.IsInFaction(JobFenceFaction)) || (slave.IsInFaction(ThievesGuildFaction)) \
		|| (slave.IsInFaction(DarkBrotherhoodFaction)) || (slave.IsInFaction(BanditFaction )))
		employers += 16
	endif

	; Works in an inn, small bonus to refinement
	if ((slave.IsInFaction(JobInnkeeperFaction)) || (slave.IsInFaction(JobInnServer)))
		employers += 32
	endif

	info[1] = jobs
	info[2] = employers

	; JobTrainerAlchemyFaction "Alchemy Trainer" 
	if slave.IsInFaction(JobTrainerAlchemyFaction)
		trainers += 1
	endif

	; JobTrainerAlterationFaction "Alteration Trainer" 
	if slave.IsInFaction(JobTrainerAlterationFaction)
		trainers += 2
	endif

	; JobTrainerBlockFaction "Block Trainer" 
	if slave.IsInFaction(JobTrainerBlockFaction)
		trainers += 3
	endif

	; JobTrainerConjurationFaction "Conjuration Trainer" 
	if slave.IsInFaction(JobTrainerConjurationFaction)
		trainers += 4
	endif

	; JobTrainerDestructionFaction "Destruction Trainer" 
	if slave.IsInFaction(JobTrainerDestructionFaction)
		trainers += 5
	endif

	; JobTrainerEnchantingFaction "Enchanting Trainer" 
	if slave.IsInFaction(JobTrainerEnchantingFaction)
		trainers += 6
	endif

	; JobTrainerHeavyArmorFaction "HeavyArmor Trainer" 
	if slave.IsInFaction(JobTrainerHeavyArmorFaction)
		trainers += 7
	endif

	; JobTrainerIllusionFaction "Illusion Trainer" 
	if slave.IsInFaction(JobTrainerIllusionFaction)
		trainers += 8
	endif

	; JobTrainerLightArmorFaction "Light Armor Trainer" 
	if slave.IsInFaction(JobTrainerLightArmorFaction)
		trainers += 9
	endif

	; JobTrainerLockpickingFaction "Lockpicking Trainer" 
	if slave.IsInFaction(JobTrainerLockpickingFaction)
		trainers += 10
	endif

	; JobTrainerMarksmanFaction "Marksman Trainer" 
	if slave.IsInFaction(JobTrainerMarksmanFaction)
		trainers += 11
	endif

	; JobTrainerOneHandedFaction "One-Handed Trainer" 
	if slave.IsInFaction(JobTrainerOneHandedFaction)
		trainers += 12
	endif

	; JobTrainerPickpocketFaction "Pickpocket Trainer" 
	if slave.IsInFaction(JobTrainerPickpocketFaction)
		trainers += 13
	endif

	; JobTrainerRestorationFaction "Restoration Trainer" 
	if slave.IsInFaction(JobTrainerRestorationFaction)
		trainers += 14
	endif

	info[3] = trainers

	return info
EndFunction


; Set factions according to provided info
Function StoreNpcFactionInfo(Actor slave, int[] info)
	if ((slave == None) || (info.length < 3))
		return
	endif
	if (!slave.IsInFaction(PAHRegionFaction))
		slave.SetFactionRank(PAHRegionFaction, info[0])
	endif
	if (!slave.IsInFaction(PAHJobsFaction ))
		slave.SetFactionRank(PAHJobsFaction , info[1])
	endif
	if (!slave.IsInFaction(PAHEmployersFaction ))
		slave.SetFactionRank(PAHEmployersFaction , info[2])
	endif
	if (!slave.IsInFaction(PAHTrainersFaction ))
		slave.SetFactionRank(PAHTrainersFaction , info[3])
		if (info[3] > 0)
			slave.AddToFaction(JobTrainerFaction)
			if (info[3] == 1)
				slave.AddToFaction(JobTrainerAlchemyFaction)
			elseif (info[3] == 2)
				slave.AddToFaction(JobTrainerAlterationFaction)
			elseif (info[3] == 3)
				slave.AddToFaction(JobTrainerBlockFaction)
			elseif (info[3] == 4)
				slave.AddToFaction(JobTrainerConjurationFaction)
			elseif (info[3] == 5)
				slave.AddToFaction(JobTrainerDestructionFaction)
			elseif (info[3] == 6)
				slave.AddToFaction(JobTrainerEnchantingFaction)
			elseif (info[3] == 7)
				slave.AddToFaction(JobTrainerHeavyArmorFaction)
			elseif (info[3] == 8)
				slave.AddToFaction(JobTrainerIllusionFaction)
			elseif (info[3] == 9)
				slave.AddToFaction(JobTrainerLightArmorFaction)
			elseif (info[3] == 10)
				slave.AddToFaction(JobTrainerLockpickingFaction)
			elseif (info[3] == 11)
				slave.AddToFaction(JobTrainerMarksmanFaction)
			elseif (info[3] == 12)
				slave.AddToFaction(JobTrainerOneHandedFaction)
			elseif (info[3] == 13)
				slave.AddToFaction(JobTrainerPickpocketFaction)
			elseif (info[3] == 14)
				slave.AddToFaction(JobTrainerRestorationFaction)
			endif
		endif
	endif
EndFunction

