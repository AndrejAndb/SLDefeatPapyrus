;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_royalchastity_lockbelt Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.equipDevice(libs.playerref, dcumenu.dcur_royalchastity_belt, dcumenu.dcur_royalchastity_beltRendered, Libs.zad_DeviousBelt, skipevents = false, skipmutex = true)																
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto 
dcur_mcmconfig Property dcumenu  Auto  