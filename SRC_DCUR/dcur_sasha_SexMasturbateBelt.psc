;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_SexMasturbateBelt Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	sslBaseAnimation[] anims = SexLab.GetAnimationsByTag(1, "Solo", "F", "Devious Device", requireAll=true)
	actor[] tmp = new actor[1]
	tmp[0] = saqs.GetSasha()
    ;Aroused.UpdateActorExposure(libs.PlayerRef, 5)
	SexLab.StartSex(tmp, anims)
	saqs.lastunfriendlyact = Utility.GetCurrentGameTime()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SexLabFramework property SexLab auto
dcur_SashaQuestScript Property saqs  Auto
