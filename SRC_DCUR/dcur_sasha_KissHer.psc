;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_KissHer Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor pl = Game.GetPlayer()
	dcur_SashaLoveSpell.cast(pl)
	saqs.lastkissed = Utility.GetCurrentGameTime()
	saqs.lastfriendlyact = Utility.GetCurrentGameTime()
	saqs.dcur_Sasha_canbekissed.SetValueInt(0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Spell Property dcur_SashaLoveSpell Auto
dcur_SashaQuestScript Property saqs  Auto  