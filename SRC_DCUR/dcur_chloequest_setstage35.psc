;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_chloequest_setstage35 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	cqs.SetObjectiveCompleted(30)	
	cqs.SetStage(35)
	cqs.SetObjectiveDisplayed(35)
	cqs.alias_chloe_restrained.Clear()
	cqs.GetChloe().EvaluatePackage()
	cqs.GetChloe().RemoveItem(cqs.dcumenu.Gold001, cqs.GetChloe().GetItemCount(cqs.dcumenu.Gold001))
	Utility.Wait(0.5)
	cqs.zadc.UnlockActor(cqs.GetChloe())
	Utility.Wait(0.5)
	;cqs.GetChloe().SetOutfit(cqs.dcur_outfit_chloe)
	cqs.GetChloe().SetOutfit(cqs.dcur_outfitnaked)	
	;cqs.GetChloe().EquipItem(cqs.ClothesPrisonerRags)
	;cqs.GetChloe().EquipItem(cqs.ClothesPrisonerShoes)	
	Utility.Wait(0.5)
	Debug.SendAnimationEvent(cqs.GetChloe(), "IdleForceDefaultState")			
	;cqs.GetChloe().EvaluatePackage()


	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_chloeQuestScript Property cqs Auto
