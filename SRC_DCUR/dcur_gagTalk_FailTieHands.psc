;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_gagTalk_FailTieHands Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	if Utility.RandomInt(0,100) < dcumenu.losekeychance
		dclibs.dcur_removekeys(libs.playerref, thief = akSpeaker)
		dclibs.stealfollowerkeys(thief = akSpeaker) 	
	else
		dclibs.dcur_removekeys(libs.playerref, standardkeysonly = true, thief = akSpeaker)
	endif	
	dclibs.dcur_equiprandomarmbinder(libs.playerref, theme = dcumenu.equiptheme)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu Auto