;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_claudiussex Extends TopicInfo

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE		
	dcslave.SetObjectiveCompleted(40)
	dcslave.SetObjectiveDisplayed(45)
	dcslave.SetStage(45)
	dclibs.sexwithplayer(akspeaker, consensual = true, stages = 3, randomanim = false, nostrip = false)						
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_leon_enslaveScript Property dcslave  Auto  
SexLabFramework Property SexLab  Auto  
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
