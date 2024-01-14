;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_twac_confiscatekeys Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	twacqs.dclibs.dcur_removekeys(twacqs.libs.playerref, standardkeysonly = true)
	twacqs.dclibs.stealfollowerkeys()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_thewhipandchainQuestScript Property twacqs Auto