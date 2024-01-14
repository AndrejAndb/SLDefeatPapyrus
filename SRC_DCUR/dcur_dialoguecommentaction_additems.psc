;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_dialoguecommentaction_additems Extends TopicInfo Hidden

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
GlobalVariable Property dcur_devicecommentaction  Auto  

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	libs.notify(akSpeaker.GetActorBase().GetName() + " grabs you and locks several restraints on you...", messagebox = true)
	dclibs.itemequip(libs.playerref)	
	dcur_devicecommentaction.SetValueInt(0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment


