;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_twac_admit Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	twacqs.AdvanceArcQuest()
	twacqs.libs.playerref.RemoveItem(twacqs.dcur_twac_vipinvitation, 1)
	Utility.Wait(1)
	twacqs.libs.playerref.MoveTo(twacqs.alias_portin.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_thewhipandchainQuestScript Property twacqs Auto