;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_scquest_bondagesexspecialgift Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousHeavyBondage)
	libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousBoots)
	libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousBlindfold)
	libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousGag)
	libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousArmCuffs)
	Utility.Wait(1)	
	libs.equipDevice(libs.playerref, dcumenu.dcur_heavyyoke, dcumenu.dcur_heavyyokeRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
	if Utility.RandomInt(0,100) < dcumenu.losekeychance
		dclibs.dcur_removekeys(libs.playerref, thief = akSpeaker)
		dclibs.stealfollowerkeys(thief = akSpeaker) 		
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  