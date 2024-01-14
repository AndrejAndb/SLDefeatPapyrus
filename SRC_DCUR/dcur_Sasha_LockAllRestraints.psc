;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_Sasha_LockAllRestraints Extends TopicInfo Hidden

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
	If !akSpeaker.WornHasKeyword(libs.zad_DeviousGag) && libs.playerref.GetItemCount(saqs.dcur_SashaBallGag) >= 1
		libs.playerref.RemoveItem(saqs.dcur_SashaBallGag, 1, absilent = true)	
		Utility.Wait(0.5)
		libs.equipdevice(akSpeaker, saqs.dcur_SashaBallGag, saqs.dcur_SashaBallGagRendered, libs.zad_DeviousGag, skipmutex = true)			
	Endif
	If !akSpeaker.WornHasKeyword(libs.zad_DeviousBlindfold) && libs.playerref.GetItemCount(saqs.dcur_SashaBlindfold) >= 1
		libs.playerref.RemoveItem(saqs.dcur_SashaBlindfold, 1, absilent = true)	
		Utility.Wait(0.5)
		libs.equipdevice(akSpeaker, saqs.dcur_SashaBlindfold, saqs.dcur_SashaBlindfoldRendered, libs.zad_DeviousBlindfold, skipmutex = true)			
	Endif
	If !akSpeaker.WornHasKeyword(libs.zad_DeviousHarness) && libs.playerref.GetItemCount(saqs.dcur_SashaHarness) >= 1
		libs.playerref.RemoveItem(saqs.dcur_SashaHarness, 1, absilent = true)	
		Utility.Wait(0.5)
		libs.equipdevice(akSpeaker, saqs.dcur_SashaHarness, saqs.dcur_SashaHarnessRendered, libs.zad_DeviousHarness, skipmutex = true)			
	Endif		
	If !akSpeaker.WornHasKeyword(libs.zad_DeviousLegCuffs) && libs.playerref.GetItemCount(saqs.dcur_SashaAnkleChains) >= 1
		libs.playerref.RemoveItem(saqs.dcur_SashaAnkleChains, 1, absilent = true)	
		Utility.Wait(0.5)
		libs.equipdevice(akSpeaker, saqs.dcur_SashaAnkleChains, saqs.dcur_SashaAnkleChainsRendered, libs.zad_DeviousLegCuffs, skipmutex = true)			
	Endif
	If !akSpeaker.WornHasKeyword(libs.zad_DeviousBoots) && libs.playerref.GetItemCount(saqs.dcur_SashaBoots) >= 1
		libs.playerref.RemoveItem(saqs.dcur_SashaBoots, 1, absilent = true)	
		Utility.Wait(0.5)
		libs.equipdevice(akSpeaker, saqs.dcur_SashaBoots, saqs.dcur_SashaBootsRendered, libs.zad_DeviousBoots, skipmutex = true)			
	Endif
	If !akSpeaker.WornHasKeyword(libs.zad_DeviousHeavyBondage) && libs.playerref.GetItemCount(saqs.dcur_SashaArmbinder) >= 1
		libs.playerref.RemoveItem(saqs.dcur_SashaArmbinder, 1, absilent = true)	
		Utility.Wait(0.5)
		libs.equipdevice(akSpeaker, saqs.dcur_SashaArmbinder, saqs.dcur_SashaArmbinderRendered, libs.zad_DeviousHeavyBondage, skipmutex = true)	
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto