;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_setstage230 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	libs.equipDevice(libs.playerref, leqs.dcur_leon_Armbinder, leqs.dcur_leon_ArmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)		
	libs.equipDevice(libs.playerref, leqs.dcur_leon_Collar, leqs.dcur_leon_CollarRendered, libs.zad_DeviousCollar, skipevents = false, skipmutex = true)		
	GetOwningQuest().SetObjectiveCompleted(220)
	GetOwningQuest().SetObjectiveDisplayed(230)
	GetOwningQuest().SetStage(230)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto
dcur_leon_enslaveScript Property leqs Auto  