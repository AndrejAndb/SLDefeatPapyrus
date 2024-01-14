Scriptname dcur_hq_noblemandiaryOnRead extends ObjectReference  

dcur_chloeQuestScript Property cqs Auto

Event OnRead()
	if !cqs.IsRunning() && !cqs.GetStageDone(10)
		cqs.Start()
		cqs.SetStage(2)
		cqs.SetObjectiveDisplayed(2)
		return
	EndIf
EndEvent