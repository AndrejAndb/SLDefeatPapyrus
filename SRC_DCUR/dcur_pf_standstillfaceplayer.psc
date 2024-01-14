;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_pf_standstillfaceplayer Extends Package Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(Actor akActor)
;BEGIN CODE
	float zOffset
	zOffset = akActor.GetHeadingAngle(Game.GetPlayer())
	akActor.SetAngle(akActor.GetAngleX(), akActor.GetAngleY(), akActor.GetAngleZ() + zOffset)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
