;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_dom_tieplayer Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dclibs.progressivebondage(saqs.libs.playerref, dclibs.dcumenu.equiptheme, 1)
	saqs.dcur_sasha_hasdemand.SetValueInt(0)
	saqs.lastdemand = Utility.GetCurrentGameTime()
	saqs.notalkcounter = 0
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_SashaQuestScript Property saqs  Auto 