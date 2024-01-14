;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_bondageadventure_unlockall Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.notify(akSpeaker.GetLeveledActorBase().GetName() + " unlocks your restraints.")
	dclibs.WipeRestraints(libs.playerref, genericonly = true, removeDCURquestitems = false, destroyDevices = false)		
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  