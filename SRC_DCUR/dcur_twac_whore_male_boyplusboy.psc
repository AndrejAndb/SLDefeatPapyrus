;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_twac_whore_male_boyplusboy Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor boy
	If akSpeaker == twacqs.alias_julian.GetActorReference()	
		boy = twacqs.alias_ingar.GetActorReference()	
	else
		boy = twacqs.alias_julian.GetActorReference()	
	EndIf	
	twacqs.sfl.SexWrapper(akSpeaker, who2 = boy, consensualscene = true, BoundActor = none, SpankedActor = none, sextag = "")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_thewhipandchainQuestScript Property twacqs Auto