;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_df_offergold Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Int gold = dcur_df_allowedgold.GetValueInt()
	dfs.TransferMoney(Minimum = Math.Floor(gold / 2), Destroy = False)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property dcur_df_allowedgold Auto Hidden
dcur_df_QuestScript Property dfs Auto