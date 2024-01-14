;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_Sasha_LockArmLegCuffs Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	If !akSpeaker.WornHasKeyword(libs.zad_DeviousArmCuffs) && libs.playerref.GetItemCount(saqs.dcur_SashaArmcuffs) >= 1
		libs.playerref.RemoveItem(saqs.dcur_SashaArmcuffs, 1, absilent = true)	
		Utility.Wait(0.5)
		libs.equipdevice(akSpeaker, saqs.dcur_SashaArmcuffs, saqs.dcur_SashaArmcuffsRendered, libs.zad_DeviousArmCuffs, skipmutex = true)			
	Endif
	If !akSpeaker.WornHasKeyword(libs.zad_DeviousLegCuffs) && libs.playerref.GetItemCount(saqs.dcur_SashaLegcuffs) >= 1
		libs.playerref.RemoveItem(saqs.dcur_SashaLegcuffs, 1, absilent = true)	
		Utility.Wait(0.5)
		libs.equipdevice(akSpeaker, saqs.dcur_SashaLegcuffs, saqs.dcur_SashaLegcuffsRendered, libs.zad_DeviousLegCuffs, skipmutex = true)			
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto