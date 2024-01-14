;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_rubbergloves_calclockchance Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	if Utility.RandomInt(0,99) < dcumenu.rubberglovesbindchance
		dcur_rubbergloves_willgetlocked.SetValueInt(1)
	else
		dcur_rubbergloves_willgetlocked.SetValueInt(0)
	endif
	dcur_lastdevicecommenttime.SetValue(Utility.GetCurrentGameTime())
	dcur_devicecommentallowed.SetValue(0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property dcur_rubbergloves_willgetlocked  Auto  
dcur_mcmconfig Property dcumenu  Auto  
GlobalVariable Property dcur_lastdevicecommenttime  Auto  
GlobalVariable Property dcur_devicecommentallowed  Auto  
