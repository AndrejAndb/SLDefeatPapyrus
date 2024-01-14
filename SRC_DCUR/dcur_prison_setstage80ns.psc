;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname dcur_prison_setstage80ns Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
pqs.Lock_PrisonerChains()
	pqs.minedoor.GetReference().Lock(False)		
	pqs.SetObjectiveCompleted(70)
	pqs.dcur_prison_questcontrol.SetValueInt(80)
	pqs.SetObjectiveDisplayed(80)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
pqs.PlayerCellDoor.GetReference().SetOpen(False)
	pqs.PlayerCellDoor.GetReference().Lock(True)	
	pqs.PlayerCellDoor.GetReference().SetLockLevel(255)	
	pqs.RemoveBodyDevices()
	pqs.RemoveBlindfold()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_prisonQuestScript Property pqs Auto
