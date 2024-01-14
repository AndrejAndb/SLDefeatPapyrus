;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_rubberdollquest_stage40 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	rdqs.sexcounteratstart = rdqs.SexLab.SexCount(rdqs.libs.playerref)
	rdqs.dcur_rd_sexcounter.SetValueInt(0)
	rdqs.UpdateCurrentInstanceGlobal(rdqs.dcur_rd_sexcounter)
	rdqs.UpdateCurrentInstanceGlobal(rdqs.dcur_rd_sexcounterneeded)
	rdqs.UpdateSexCounter()
	rdqs.SetObjectiveCompleted(30)
	rdqs.SetStage(40)
	rdqs.SetObjectiveDisplayed(40)	
	rdqs.lastdecay = Utility.GetCurrentGameTime()	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_rubberdollquestscript Property rdqs Auto