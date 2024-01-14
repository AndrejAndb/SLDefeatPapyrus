;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_royalchastity_setstage200 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	GetOwningQuest().SetStage(200)
	GetOwningQuest().SetObjectiveCompleted(131)
	GetOwningQuest().SetObjectiveDisplayed(200)
	libs.removeQuestDevice(libs.playerref, dcumenu.dcur_royalchastity_belt, dcumenu.dcur_royalchastity_beltRendered, Libs.zad_DeviousBelt, RemovalToken = dclibs.dcur_kw_QuestItem, skipmutex = true)																
	Utility.Wait(1)
	dclibs.sexwithplayer(akSpeaker, consensual = true, stages = 1, randomanim = true, preferredtag = "vaginal")		
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_royalchastityQuestScript Property rcqs Auto
zadlibs Property libs  Auto 
dcur_mcmconfig Property dcumenu  Auto  