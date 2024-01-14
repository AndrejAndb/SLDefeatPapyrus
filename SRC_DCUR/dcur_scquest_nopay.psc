;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname dcur_scquest_nopay Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
dcumenu.dcur_solicitationoutcome.SetValueInt(0)
dclibs.mcs.soqs.dcur_solicitationcustomer.Clear()	
;dcumenu.dcur_solicitationcustomers.Revert()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
dcumenu.dcur_solicitationoutcome.SetValueInt(0)
	dclibs.mcs.soqs.dcur_solicitationcustomer.Clear()	
;dcumenu.dcur_solicitationcustomers.Revert()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs Auto