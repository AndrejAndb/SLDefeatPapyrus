;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_tiemeupquest_end Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	tmqs.SetStage(100)
	tmqs.SetObjectiveCompleted(20)	
	libs.playerref.Additem(dcumenu.dcur_handrestraintskey, 1)
	libs.playerref.Additem(dcumenu.dcur_headrestraintskey, 1)
	libs.playerref.Additem(dcumenu.dcur_bodyrestraintskey, 1)
	libs.playerref.Additem(dcumenu.dcur_legrestraintskey, 1)
	libs.playerref.Additem(libs.ChastityKey, 1)
	libs.playerref.Additem(libs.RestraintsKey, 1)
	libs.playerref.Additem(libs.PiercingKey, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto
zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto 
dcur_tiemeupQuestScript Property tmqs Auto  