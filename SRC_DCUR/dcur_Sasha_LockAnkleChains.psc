;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_Sasha_LockAnkleChains Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	; remove SashaLegCuffs if worn
	if libs.GetWornDevice(akSpeaker, libs.zad_DeviousLegCuffs) == saqs.dcur_sashaLegCuffs
		libs.removedevice(akSpeaker, saqs.dcur_sashaLegCuffs, saqs.dcur_sashaLegCuffsRendered, libs.zad_DeviousLegCuffs, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(saqs.dcur_sashaLegCuffs, 1)			
	Endif
	If !akSpeaker.WornHasKeyword(libs.zad_DeviousLegCuffs) && libs.playerref.GetItemCount(saqs.dcur_SashaAnkleChains) >= 1
		libs.playerref.RemoveItem(saqs.dcur_SashaAnkleChains, 1, absilent = true)	
		Utility.Wait(0.5)
		libs.equipdevice(akSpeaker, saqs.dcur_SashaAnkleChains, saqs.dcur_SashaAnkleChainsRendered, libs.zad_DeviousLegCuffs, skipmutex = true)			
	Endif	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto