;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_buyher Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dcur_sasha_isbought.SetValueInt(1)
	Game.GetPlayer().RemoveItem(Gold001, 10000)
	Game.GetPlayer().AddItem(dcur_sashaKey, 1)
	Game.GetPlayer().AddItem(dcur_sashastoybox, 1)		
	libs.equipDevice(saqs.GetSasha(), saqs.dcur_SashaChastityBelt, saqs.dcur_SashaChastityBeltRendered, libs.zad_DeviousBelt)				
	saqs.dcur_sasha_disposition.SetValueInt(50)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property dcur_sasha_isbought Auto
MiscObject Property Gold001 Auto
Armor Property dcur_sashastoybox Auto
Key Property dcur_sashaKey Auto
dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto