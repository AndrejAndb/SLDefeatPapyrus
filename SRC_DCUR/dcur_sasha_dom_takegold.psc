;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_dom_takegold Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	int amount = Utility.RandomInt(1, Math.Floor(saqs.libs.playerref.GetItemCount(dclibs.dcumenu.Gold001) / 2) )
	saqs.libs.playerref.removeitem(dclibs.dcumenu.Gold001, amount)
	;akSpeaker.additem(dclibs.dcumenu.Gold001, amount)
	saqs.dcur_sasha_hasdemand.SetValueInt(0)
	saqs.lastdemand = Utility.GetCurrentGameTime()
	saqs.notalkcounter = 0
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_SashaQuestScript Property saqs  Auto 