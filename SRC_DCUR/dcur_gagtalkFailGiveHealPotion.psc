;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_gagtalkFailGiveHealPotion Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor Player = Game.GetPlayer()
	If Player.GetLevel() < 10
		Player.AddItem(RestoreHealth02)
	Elseif Player.GetLevel() < 30
		Player.AddItem(RestoreHealth04)
	Else
		Player.AddItem(RestoreHealth06)
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Potion Property RestoreHealth02 Auto
Potion Property RestoreHealth04 Auto
Potion Property RestoreHealth06 Auto