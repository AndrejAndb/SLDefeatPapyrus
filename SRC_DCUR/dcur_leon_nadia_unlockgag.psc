;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_nadia_unlockgag Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.removeDevice(akSpeaker, dcumenu.dclibs.mcs.leqs.dcur_leon_ballgag, dcumenu.dclibs.mcs.leqs.dcur_leon_ballgagRendered, libs.zad_DeviousGag, destroyDevice = true, skipevents = false, skipmutex = true)
	libs.playerref.additem(dcumenu.dclibs.mcs.leqs.dcur_leon_ballgag)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
