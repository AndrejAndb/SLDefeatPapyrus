;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_ErrandFindSoulGem Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	saqs.dcur_sasha_candoerrand.SetValueInt(0)
	saqs.lasterrand = Utility.GetCurrentGameTime()
	saqs.errandType = saqs.errand_lookforsoulgem
	;saqs.errandEnd = Utility.GetCurrentGameTime() + (2/24)
	saqs.ParkSasha()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
