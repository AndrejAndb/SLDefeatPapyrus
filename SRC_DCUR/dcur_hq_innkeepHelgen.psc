;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname dcur_hq_innkeepHelgen Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	hqqs.libs.Moan(hqqs.libs.PlayerRef)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
hqqs.ref_hq_customer.GetReference().Enable()
	if hqqs.ref_hq_customer.GetReference().GetItemCount(hqqs.dcur_hq_hobbleskirtkey) < 1
		hqqs.ref_hq_customer.GetReference().AddItem(hqqs.dcur_hq_hobbleskirtkey)
	EndIf
	if hqqs.ref_hq_customer.GetReference().GetItemCount(hqqs.dcur_hq_chastitykey) < 1
		hqqs.ref_hq_customer.GetReference().AddItem(hqqs.dcur_hq_chastitykey)
	EndIf
	hqqs.libs.playerref.moveto(hqqs.ref_hq_teleportHelgen.GetReference())
	Utility.Wait(0.1)
	hqqs.SetObjectiveCompleted(80)	
	hqqs.SetStage(90)	
	hqqs.SetObjectiveDisplayed(90)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_hq_QuestScript Property hqqs Auto
