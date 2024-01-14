;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname PAHTIF__0202D52F Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as PAHDiag).RecoverFromEnduranceDown(akSpeaker)
(GetOwningQuest() as PAHDiag).Wait(akSpeaker)
(GetOwningQuest() as PAHDiag).SetState(akSpeaker, "recently_captured_docile")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
