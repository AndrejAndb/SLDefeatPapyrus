;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_silencinggagRemoveHelpDLG Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	libs.removeDevice(libs.playerref, dcur_silencergag, dcur_silencergagRendered, libs.zad_DeviousGag, destroyDevice = false, skipevents = false, skipmutex = true)			
	libs.playerRef.RemoveItem(dcumenu.dcur_headrestraintskey, 2, true)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
Armor Property dcur_silencergag Auto
Armor Property dcur_silencergagRendered Auto