;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_pi_misogyny_submit Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	If Utility.RandomFloat(0.0, 99.9) < dclibs.dcumenu.pimisogynyrapeoralweight
		dclibs.sexwithplayer(akspeaker, consensual = true, stages = 1, preferredtag = "Oral", nostrip = false)
	Else
		dclibs.sexwithplayer(akSpeaker, consensual = true, stages = 1, randomanim = true)		
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  