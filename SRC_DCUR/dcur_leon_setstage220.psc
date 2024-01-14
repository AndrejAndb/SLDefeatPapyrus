;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_setstage220 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.playerref.removeitem(dcumenu.dcur_pinkArmbinder)
	libs.equipDevice(akSpeaker, dcumenu.dcur_pinkArmbinder, dcumenu.dcur_pinkArmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
	leqs.alias_ref_ustorf_privateroomdoor.GetReference().Lock(false)
	GetOwningQuest().SetObjectiveCompleted(210)
	GetOwningQuest().SetObjectiveDisplayed(220)
	GetOwningQuest().SetStage(220)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto
dcur_leon_enslaveScript Property leqs Auto  