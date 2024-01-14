;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname dcur_leon_setstage1000Leah Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	GetOwningQuest().SetObjectiveCompleted(240)
	GetOwningQuest().SetObjectiveDisplayed(240)
	GetOwningQuest().SetStage(1000)	
	leqs.leon_questrunning = false	
	Utility.Wait(4)
	leqs.dcur_ref_leah.GetReference().moveto(Game.GetPlayer())
	dfs.StartQuest(leqs.dcur_ref_leah.GetActorReference())	
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dfs.dclibs.WipeRestraints(Game.GetPlayer(), genericonly = false, removeDCURquestitems = true, destroyDevices = true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
dcur_leon_enslaveScript Property leqs Auto 
dcur_df_QuestScript Property dfs Auto
