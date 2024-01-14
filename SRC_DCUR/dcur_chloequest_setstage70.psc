Scriptname dcur_chloequest_setstage70 extends ObjectReference  

Event OnRead()
	If cqs.GetStage() > 60
		return
	Endif	
	cqs.SetObjectiveCompleted(60)
	cqs.SetStage(70)
	Alias_dcur_chloequest_hm_imperialsoldier.GetReference().Disable()
	cqs.SetObjectiveDisplayed(70)	
EndEvent

dcur_chloeQuestScript Property cqs Auto
ReferenceAlias Property Alias_dcur_chloequest_hm_imperialsoldier Auto
