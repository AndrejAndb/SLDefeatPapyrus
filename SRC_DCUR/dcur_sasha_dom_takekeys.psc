;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_dom_takekeys Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	actor pl = libs.playerref		
	saqs.dcur_sasha_hasdemand.SetValueInt(0)
	saqs.lastdemand = Utility.GetCurrentGameTime()
	saqs.notalkcounter = 0	
	dclibs.dcur_removekeys(libs.playerref)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_SashaQuestScript Property saqs  Auto 
zadlibs Property libs Auto 