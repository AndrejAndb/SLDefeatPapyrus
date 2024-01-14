;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_prison_arrest_sex Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;code
akSpeaker.StopCombatAlarm()
(GetOwningQuest() As dcur_prison_ArrestScript).ClearBounty(akSpeaker)
(GetOwningQuest() As dcur_prison_ArrestScript).SexConsensual(akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
