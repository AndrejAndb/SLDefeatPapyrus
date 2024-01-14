;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_dom_lockhobbleskirt Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor pl = Game.GetPlayer()		
	libs.equipdevice(pl, dcur_sashaPlayerHobbleSkirtTimedInventory, dcur_sashaPlayerHobbleSkirtTimedRendered, libs.zad_DeviousSuit, skipevents = false, skipmutex = true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
Armor Property dcur_sashaPlayerHobbleSkirtTimedInventory Auto
Armor Property dcur_sashaPlayerHobbleSkirtTimedRendered Auto