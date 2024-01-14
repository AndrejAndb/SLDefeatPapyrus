;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_dialoguecommentaction_rape Extends TopicInfo Hidden

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto
GlobalVariable Property dcur_devicecommentaction  Auto  

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dcur_devicecommentaction.SetValueInt(0)
	if dclibs.isValidFollower(akSpeaker)
		dclibs.sexwithplayer(akspeaker, consensual = true)
	else	
		if Utility.RandomInt(1,2) == 1 
			dclibs.sexwithplayer(akspeaker, consensual = false)
		else
			dclibs.sexwithplayer(akspeaker, consensual = true)
		endif
	endif	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
