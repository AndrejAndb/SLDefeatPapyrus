;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_UnlockAnkleChains Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	if libs.GetWornDevice(akSpeaker, libs.zad_DeviousLegCuffs) == saqs.dcur_sashaAnkleChains
		libs.removedevice(akSpeaker, saqs.dcur_sashaAnkleChains, saqs.dcur_sashaAnkleChainsRendered, libs.zad_DeviousLegCuffs, destroydevice = true, skipmutex = true)
		Utility.Wait(0.5)
		libs.playerref.AddItem(saqs.dcur_sashaAnkleChains, 1)			
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto