;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_df_offerboundsex Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_Yoke_BoundSex_Inventory, dfs.dcur_df_Yoke_BoundSex_Rendered, dfs.libs.zad_DeviousHeavyBondage, skipmutex = true)
	Utility.Wait(2)
	dclibs.sexwithplayer(akSpeaker, consensual = true, stages = 1, randomanim = true, beds = true)		
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_df_QuestScript Property dfs Auto