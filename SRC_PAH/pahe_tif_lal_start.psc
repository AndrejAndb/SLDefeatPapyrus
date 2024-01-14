;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname Pahe_tif_LAL_Start Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
If !PAH.IsRunning()
	Debug.Notification("please wait for Paradise Halls Boot process to finish")
	Utility.Wait(2.0)
EndIf
NewStartQuest.SetAddonQuestStage(2, ARTHLALRumorsOfWarQuest)
NewStartQuest.SetAddonQuestStage(40,Pahe_LAL_Start)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
If !PAH.IsRunning()
	Debug.Notification("please wait for Paradise Halls Boot process to finish")
	Utility.Wait(2.0)
EndIf
NewStartQuest.SetAddonQuestStage(2, ARTHLALRumorsOfWarQuest)
NewStartQuest.SetAddonQuestStage(30,Pahe_LAL_Start)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
If !PAH.IsRunning()
	Debug.Notification("please wait for Paradise Halls Boot process to finish")
	Utility.Wait(2.0)
EndIf
NewStartQuest.SetAddonQuestStage(2, ARTHLALRumorsOfWarQuest)
NewStartQuest.SetAddonQuestStage(20,Pahe_LAL_Start)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
If !PAH.IsRunning()
	Debug.Notification("please wait for Paradise Halls Boot process to finish")
	Utility.Wait(2.0)
EndIf
NewStartQuest.SetAddonQuestStage(2, ARTHLALRumorsOfWarQuest)
NewStartQuest.SetAddonQuestStage(10,Pahe_LAL_Start)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

PAHCore Property PAH Auto

ARTH_LAL_StartQuest Property NewStartQuest Auto	; set this to Arthmoor's Chargen quest
Quest Property ARTHLALRumorsOfWarQuest Auto
Quest Property Pahe_LAL_Start Auto 	; This is MY startup handler quest
