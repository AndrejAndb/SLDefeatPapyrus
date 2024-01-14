;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_setstage200 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor a = libs.playerref
	libs.equipDevice(a, leqs.dcur_leon_chastitybra, leqs.dcur_leon_chastitybraRendered, libs.zad_DeviousBra, skipevents = false, skipmutex = true)
	Utility.Wait(1)
	libs.equipDevice(a, leqs.dcur_leon_pluganal, leqs.dcur_leon_pluganalRendered, libs.zad_DeviousPlugAnal, skipevents = false, skipmutex = true)			
	Utility.Wait(1)
	libs.equipDevice(a, leqs.dcur_leon_plugvaginal, leqs.dcur_leon_plugvaginalRendered, libs.zad_DeviousPlugVaginal, skipevents = false, skipmutex = true)			
	Utility.Wait(1)
	libs.equipDevice(a, leqs.dcur_leon_chastitybelt, leqs.dcur_leon_chastitybeltRendered, libs.zad_DeviousBelt, skipevents = false, skipmutex = true)
	a.additem(leqs.dcur_leon_bedroomkey)
	GetOwningQuest().SetObjectiveCompleted(190)
	GetOwningQuest().SetObjectiveDisplayed(200)
	GetOwningQuest().SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto 
zadxLibs Property xlibs  Auto   
dcur_leon_enslaveScript Property leqs Auto