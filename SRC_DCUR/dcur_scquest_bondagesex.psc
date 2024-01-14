;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_scquest_bondagesex Extends TopicInfo Hidden

Formlist Property dcur_solicitationbondageapplied Auto

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	if Utility.RandomInt(0,99) < dcumenu.solicitationpaychance
		; customer will pay
		dcumenu.dcur_solicitationoutcome.SetValueInt(1)	
	else
		; customer will not pay	
		dcumenu.dcur_solicitationoutcome.SetValueInt(2)			
	endif
	dcumenu.dcur_solicitationbonus.SetValueInt(150)	
	dclibs.mcs.soqs.dcur_solicitationcustomer.Clear()
	dclibs.mcs.soqs.dcur_solicitationcustomer.ForceRefTo(akSpeaker)	
	dclibs.mcs.soqs.SexWrapper(consensualsex = true, bondagesex = true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
MiscObject Property Gold001  Auto  
SexLabFramework Property SexLab Auto
GlobalVariable Property dcur_solicitationacts  Auto  
GlobalVariable Property dcur_bondagesexoutcome  Auto  
