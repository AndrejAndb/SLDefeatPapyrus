;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_rubberdolldialogue Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE		
	dcur_talkedtolist.addform(akspeaker.GetBaseObject())
	if dcur_talkedtolist.GetSize() > 9 
		dcur_talkedtolist.revert()
		; Seems RemoveAddedForm is bugged, so we just wipe the list after adding the 10th person. Every other solution would take a lot of time.
		;dcur_talkedtolist.RemoveAddedForm(dcur_talkedtolist.GetAt(10))
	endif
	if dclibs.isValidFollower(akSpeaker) || akSpeaker.GetAV("Morality") < 3
		dclibs.sexwithplayer(akSpeaker, consensual = true)
	else	
		dclibs.sexwithplayer(akSpeaker, consensual = false)
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
FormList Property dcur_talkedtolist  Auto  
