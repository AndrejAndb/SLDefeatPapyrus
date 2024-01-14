;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_SexBondageSasha Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	tieSasha()
	Utility.Wait(2)
	saqs.hadBondageSexSasha = True
	dclibs.sexwithplayer(akspeaker, consensual = true, stages = 1, randomanim = true, nostrip = false)
	saqs.lastsexwithplayer = Utility.GetCurrentGameTime()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Formlist Property dcur_sasha_BondageSexList Auto
dcur_SashaQuestScript Property saqs  Auto 
dcur_library Property dclibs Auto
zadlibs Property libs Auto

Function tieSasha()
	Actor a = saqs.GetSasha()
	dcur_sasha_BondageSexList.Revert()
	if !a.WornHasKeyword(libs.zad_DeviousGag)
		libs.equipdevice(a, saqs.dcur_SashaBallGag, saqs.dcur_SashaBallGagRendered, libs.zad_DeviousGag)
		dcur_sasha_BondageSexList.AddForm(libs.zad_DeviousGag)		
	endif	
	Utility.Wait(0.5)
	if !a.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		libs.equipdevice(a, saqs.dcur_SashaArmbinder, saqs.dcur_SashaArmbinderRendered, libs.zad_DeviousHeavyBondage)
		dcur_sasha_BondageSexList.AddForm(libs.zad_DeviousHeavyBondage)		
	endif	
	Utility.Wait(0.5)
	if !a.WornHasKeyword(libs.zad_DeviousBlindfold)
		libs.equipdevice(a, saqs.dcur_SashaBlindfold, saqs.dcur_SashaBlindfoldRendered, libs.zad_DeviousBlindfold)
		dcur_sasha_BondageSexList.AddForm(libs.zad_DeviousBlindfold)		
	endif	
	Utility.Wait(0.5)
	if !a.WornHasKeyword(libs.zad_DeviousLegCuffs)
		libs.equipdevice(a, saqs.dcur_SashaAnkleChains, saqs.dcur_SashaAnkleChainsRendered, libs.zad_DeviousLegCuffs)
		dcur_sasha_BondageSexList.AddForm(libs.zad_DeviousLegCuffs)		
	endif	
EndFunction