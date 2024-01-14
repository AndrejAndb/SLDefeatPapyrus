Scriptname dcur_chloequest_setstage50 extends ObjectReference  

Event OnRead()
	If cqs.GetStage() > 50 
		return
	Endif	
	cqs.SetObjectiveCompleted(40)
	cqs.SetStage(50)
	Alias_dcur_chloequest_hm_imperialsoldier.GetReference().Enable()
	Alias_dcur_chloequest_hm_imperialsoldier.GetActorReference().EvaluatePackage()
	cqs.SetObjectiveDisplayed(50)	
EndEvent

dcur_chloeQuestScript Property cqs Auto
ReferenceAlias Property Alias_dcur_chloequest_hm_imperialsoldier Auto