;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_pi_rape Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	piqs.dcur_pi_guard.Clear()
	dclibs.sexwithplayer(akSpeaker, consensual = true, stages = 1, randomanim = true)		
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto
zadlibs Property libs  Auto
dcur_publicindecencyQuestScript Property piqs Auto