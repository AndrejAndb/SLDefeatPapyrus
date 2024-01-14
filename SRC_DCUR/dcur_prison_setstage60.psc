;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname dcur_prison_setstage60 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	pqs.EntranceDoor.GetReference().Lock(True)
	pqs.EntranceDoor.GetReference().SetLockLevel(255)
	pqs.ReceptionGuard.GetReference().Disable()		
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	pqs.HoursToWork = pqs.CalcHoursToWork()
	;pqs.Libs.Notify("Hours until Work: " + pqs.HoursToWork)
	pqs.AllowedToSleepAt = Utility.GetCurrentGameTime()	
	GetOwningQuest().SetObjectiveCompleted(50)
	pqs.dcur_prison_questcontrol.SetValueInt(55)
	GetOwningQuest().SetObjectiveDisplayed(55)	
	pqs.Supervisor.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_prisonQuestScript Property pqs Auto
