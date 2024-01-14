;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_bondageadventure_stealstuff Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	; steal money
	int amount = Utility.RandomInt(1, libs.playerref.GetItemCount(dcumenu.Gold001))
	libs.playerref.removeitem(dcumenu.Gold001, amount)
	akSpeaker.additem(dcumenu.Gold001, amount)
	; remove all keys
	dclibs.dcur_removekeys(libs.playerref, thief = akSpeaker)
	dclibs.stealfollowerkeys(thief = akSpeaker) 	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
FormList Property dcur_randomstufflist Auto
