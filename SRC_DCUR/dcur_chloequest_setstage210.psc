Scriptname dcur_chloequest_setstage210 extends ObjectReference  

Event OnRead()
	If cqs.GetStage() > 200
		return
	Endif	
	cqs.Alias_dcur_chloequest_unconcious.Clear()
	cqs.SetObjectiveCompleted(200)
	cqs.SetStage(210)
	cqs.SetObjectiveDisplayed(210)	
EndEvent

dcur_chloeQuestScript Property cqs Auto
