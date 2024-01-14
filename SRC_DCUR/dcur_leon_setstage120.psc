;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_setstage120 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Quest q = GetOwningQuest()
	leqs.dcur_ustolf_container1.GetReference().enable()
	leqs.dcur_ustolf_container1.GetReference().AddItem(leqs.dcur_leon_boots, 1, absilent = true)
	leqs.dcur_ustolf_container2.GetReference().enable()
	leqs.dcur_ustolf_container2.GetReference().AddItem(leqs.dcur_leon_npiercings, 1, absilent = true)
	leqs.dcur_ustolf_container3.GetReference().enable()
	leqs.dcur_ustolf_container3.GetReference().AddItem(leqs.dcur_leon_vpiercings, 1, absilent = true)
	leqs.dcur_ustolf_container4.GetReference().enable()
	leqs.dcur_ustolf_container4.GetReference().AddItem(leqs.dcur_leon_rubbergloves, 1, absilent = true)
	q.SetObjectiveCompleted(110)
	q.SetObjectiveDisplayed(121)
	q.SetObjectiveDisplayed(122)
	q.SetObjectiveDisplayed(123)
	q.SetObjectiveDisplayed(124)
	q.SetStage(120)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_leon_enslaveScript Property leqs Auto
dcur_mcmconfig Property dcumenu Auto