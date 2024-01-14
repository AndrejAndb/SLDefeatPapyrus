;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_stopdominating Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	saqs.StopDomination()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
armor property dcur_SashaPlayerChastityBelt Auto
armor property dcur_SashaPlayerChastityBeltRendered Auto