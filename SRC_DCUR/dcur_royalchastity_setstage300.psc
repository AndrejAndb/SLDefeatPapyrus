;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_royalchastity_setstage300 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	GetOwningQuest().SetStage(300)
	GetOwningQuest().SetObjectiveCompleted(200)
	GetOwningQuest().SetObjectiveDisplayed(300)
	akSpeaker.Additem(rcqs.dcur_royalchastity_Juliuskey, 1, true)
	rcqs.dcur_al_royalchastity_endbookcase.GetReference().Enable()
	rcqs.keyholdertimer()
	; make the guy not essential anymore.
	aqs.alias_julius_essential.Clear()
	; remove key fragments
	Actor pl = game.getplayer()
	pl.RemoveItem(rcqs.dcur_royalchastity_KeyFragment1, 1, true)
	pl.RemoveItem(rcqs.dcur_royalchastity_KeyFragment2, 1, true)
	pl.RemoveItem(rcqs.dcur_royalchastity_KeyFragment3, 1, true)
	pl.RemoveItem(rcqs.dcur_royalchastity_KeyFragment4, 1, true)
	pl.RemoveItem(rcqs.dcur_royalchastity_KeyFragment5, 1, true)
	pl.RemoveItem(rcqs.dcur_royalchastity_diaryfragment, pl.GetItemCount(rcqs.dcur_royalchastity_diaryfragment), true)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_royalchastityQuestScript Property rcqs Auto
dcur_aliasQuestScript Property aqs Auto