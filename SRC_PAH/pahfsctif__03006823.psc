;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname PAHFSCTIF__03006823 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as PAHFellglowSlaveCampQuest).Alias_slave_up_for_sale.ForceRefTo(akSpeaker)
(GetOwningQuest() as PAHDiag).GetSlave(akSpeaker).DisableAutomaticBehaviour(true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
