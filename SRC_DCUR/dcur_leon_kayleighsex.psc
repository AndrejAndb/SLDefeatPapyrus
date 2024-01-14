;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_kayleighsex Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE		
	libs.removeDevice(akSpeaker, leqs.dcur_leon_chastitybelt, leqs.dcur_leon_chastitybeltRendered, libs.zad_DeviousBelt, destroyDevice = true, skipevents = false, skipmutex = true)
	libs.playerref.additem(leqs.dcur_leon_chastitybelt)
	dclibs.sexwithplayer(akspeaker, consensual = true, stages = 3, randomanim = false, nostrip = false)						
	leqs.SetObjectiveCompleted(140)
	leqs.SetObjectiveDisplayed(150)
	leqs.SetStage(150)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
dcur_leon_enslaveScript Property leqs Auto
zadlibs Property libs  Auto  
