;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_kayleigh_setstage160 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.playerref.removeitem(leqs.dcur_leon_chastitybelt)
	libs.equipDevice(akSpeaker, leqs.dcur_leon_chastitybelt, leqs.dcur_leon_chastitybeltRendered, libs.zad_DeviousBelt, skipevents = false, skipmutex = true)	
	GetOwningQuest().SetObjectiveCompleted(150)
	GetOwningQuest().SetObjectiveDisplayed(160)
	GetOwningQuest().SetStage(160)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto 
dcur_leon_enslaveScript Property leqs Auto