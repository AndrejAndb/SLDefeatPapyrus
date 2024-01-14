;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_df_frag_sleep_allowed Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dcur_df_sleepallowed.SetValueInt(1)
	If !dfs.aPlayer.WornHasKeyword(dfs.libs.zad_DeviousHeavyBondage)
		dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_Straitjacket_Inventory, dfs.dcur_df_Straitjacket_Rendered, dfs.libs.zad_DeviousHeavyBondage, skipmutex = true)
	EndIf
	If !dfs.aPlayer.WornHasKeyword(dfs.libs.zad_DeviousGag)
		dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_BallGag_Inventory, dfs.dcur_df_BallGag_Rendered, dfs.libs.zad_DeviousGag, skipmutex = true)
	EndIf
	If !dfs.aPlayer.WornHasKeyword(dfs.libs.zad_DeviousBlindfold)
		dfs.libs.EquipDevice(dfs.aPlayer, dfs.dcur_df_Blindfold_Inventory, dfs.dcur_df_Blindfold_Rendered, dfs.libs.zad_DeviousBlindfold, skipmutex = true)
	EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_df_QuestScript Property dfs Auto
GlobalVariable Property dcur_df_sleepallowed Auto