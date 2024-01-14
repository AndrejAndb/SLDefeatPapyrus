;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_bondageadventure_calcsuccess Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	bool rapeallowed = false
	bool theftallowed = false
	dcur_bondageadventuredlgswitch.SetValueInt(0) ; do nothing
	dcumenu.cts.lastbondageadventuredialogue = Utility.GetCurrentGameTime()
	float grandtotalweight = dcumenu.baqDoNothingWeight + dcumenu.baqGiveKeyWeight + dcumenu.baqUnlockOneWeight + dcumenu.baqUnlockAllWeight + dcumenu.baqStartBAQWeight + dcumenu.baqAddRestraintsWeight
	; if the player is wearing wrist restraints or blindfolds, they might have their stuff stolen
	if libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage) || libs.playerref.WornHasKeyword(libs.zad_DeviousBlindfold)
		grandtotalweight += dcumenu.baqStealStuffWeight
		theftallowed = true
	endIf
	; rape happens only if the player can have sex and is helpless
	if !libs.playerref.WornHasKeyword(libs.zad_DeviousBelt) || !libs.playerref.WornHasKeyword(libs.zad_DeviousGag) && (libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage) || libs.playerref.WornHasKeyword(libs.zad_DeviousBlindfold)) && !((akSpeaker.GetActorBase().GetSex() == 0 && dcumenu.RapistGender == gender_female) || (akSpeaker.GetActorBase().GetSex() == 1 && dcumenu.RapistGender == gender_male) || (dcumenu.sexDisallowElder && akSpeaker.GetActorBase().GetRace() == dcumenu.ElderRace) || (dcumenu.sexDisallowBeastRaces && akSpeaker.HasKeyword(dcumenu.isBeastRace)) || (dcumenu.sexDisallowGuards && akSpeaker.IsInFaction(dcumenu.isGuardFaction)))	
		grandtotalweight += dcumenu.baqRapeWeight
		rapeallowed = true
	endIf	
	float Select = Utility.RandomFloat(0.0, grandtotalweight)		
	if Select < dcumenu.baqDoNothingWeight
		dcur_bondageadventuredlgswitch.SetValueInt(0) ; do nothing
		return
	else
		Select = Select - dcumenu.baqDoNothingWeight
	endIf
	if Select < dcumenu.baqGiveKeyWeight
		dcur_bondageadventuredlgswitch.SetValueInt(1) ; give key
		return
	else
		Select = Select - dcumenu.baqGiveKeyWeight		
	endIf
	if Select < dcumenu.baqUnlockOneWeight
		dcur_bondageadventuredlgswitch.SetValueInt(2) ; unlock one
		return
	else
		Select = Select - dcumenu.baqUnlockOneWeight
	endIf
	if Select < dcumenu.baqUnlockAllWeight
		dcur_bondageadventuredlgswitch.SetValueInt(3) ; unlock all
		return
	else
		Select = Select - dcumenu.baqUnlockAllWeight
	endIf	
	if Select < dcumenu.baqAddRestraintsWeight
		dcur_bondageadventuredlgswitch.SetValueInt(4) ; add restraints
		return
	else
		Select = Select - dcumenu.baqAddRestraintsWeight
	endIf
	if Select < dcumenu.baqStartBAQWeight
		dcumenu.questgiver = akSpeaker	
		debug.trace("[DCUR] - bondage quest giver is " + dcumenu.questgiver.GetLeveledActorBase().GetName())
		dcur_bondageadventuredlgswitch.SetValueInt(5) ; BAQ
		return	
	else
		Select = Select - dcumenu.baqStartBAQWeight
	endIf
	if Select < dcumenu.baqStealStuffWeight && theftallowed
		dcur_bondageadventuredlgswitch.SetValueInt(6) ; steal stuff
		return
	else
		Select = Select - dcumenu.baqStealStuffWeight
	endIf
	if Select < dcumenu.baqRapeWeight && rapeallowed
		dcur_bondageadventuredlgswitch.SetValueInt(7) ; rape
		return
	else
		Select = Select - dcumenu.baqRapeWeight
	endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

int gender_male = 0
int gender_female = 1
int gender_both = 2

GlobalVariable Property dcur_bondageadventuredlgswitch  Auto  
dcur_bondageadventurequestScript Property baqs Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  