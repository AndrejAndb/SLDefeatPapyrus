;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_SexMasturbate Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	sslBaseAnimation[] anims = SexLab.GetAnimationsByTag(1, "Masturbation", "F", requireAll=true)
	actor[] tmp = new actor[1]
	tmp[0] = saqs.GetSasha()
    Aroused.UpdateActorExposure(libs.PlayerRef, 15)
	Aroused.UpdateActorExposure(saqs.GetSasha(), 15)
	SexLab.StartSex(tmp, anims)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SexLabFramework property SexLab auto
dcur_SashaQuestScript Property saqs  Auto  
slaFrameworkScr Property Aroused  Auto  
zadlibs Property libs  Auto  