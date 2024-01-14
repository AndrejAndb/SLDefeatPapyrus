;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname dcur_hq_farmgirl_teleport Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	hqqs.libs.Moan(hqqs.libs.PlayerRef)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	hqqs.SetObjectiveCompleted(40)
	hqqs.SetStage(50)	
	hqqs.SetObjectiveDisplayed(50)
	Utility.Wait(1)
	hqqs.libs.playerref.moveto(hqqs.alias_ref_dcur_hq_teleportRiften.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_hq_QuestScript Property hqqs Auto
