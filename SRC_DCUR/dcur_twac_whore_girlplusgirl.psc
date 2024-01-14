;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_twac_whore_girlplusgirl Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor girl
	If akSpeaker == twacqs.alias_hailey.GetActorReference()	
		girl = twacqs.alias_nadia.GetActorReference()	
	else
		girl = twacqs.alias_hailey.GetActorReference()	
	EndIf	
	twacqs.sfl.SexWrapper(akSpeaker, who2 = girl, consensualscene = true, BoundActor = none, SpankedActor = none, sextag = "")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_thewhipandchainQuestScript Property twacqs Auto