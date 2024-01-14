;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_dom_unlockcatsuit Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor pl = Game.GetPlayer()		
	libs.removedevice(pl, saqs.dcur_SashaPlayerCatsuit, saqs.dcur_SashaPlayerCatsuitRendered, libs.zad_DeviousSuit, destroydevice = true, skipevents = false, skipmutex = true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SashaQuestScript Property saqs  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto 