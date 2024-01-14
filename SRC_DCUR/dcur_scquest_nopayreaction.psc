;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_scquest_nopayreaction Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	int i = Utility.RandomInt(1,3) 
	if i == 1	
		; walks away
		dcur_dialogswitch.SetValueInt(1)
	elseif i == 2	
		; rapes again
		dcur_dialogswitch.SetValueInt(2)
	else
		; inserts gag and ties hands
		dcur_dialogswitch.SetValueInt(3)
	endif
			
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  

GlobalVariable Property dcur_dialogswitch  Auto  
