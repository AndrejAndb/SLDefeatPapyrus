;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_tif_blacksm_armb Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE		
	if libs.playerref.isequipped(dcumenu.dcur_hisecArmbinder)	
		libs.removeDevice(libs.playerref, dcumenu.dcur_hisecArmbinder, dcumenu.dcur_hisecArmbinderRendered, Libs.zad_DeviousHeavyBondage, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
	if libs.playerref.isequipped(dcumenu.dcur_hisecYoke)	
		libs.removeDevice(libs.playerref, dcumenu.dcur_hisecYoke, dcumenu.dcur_hisecYokeRendered, Libs.zad_DeviousHeavyBondage, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
	
Utility.Wait(2)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs Auto
dcur_mcmconfig Property dcumenu Auto