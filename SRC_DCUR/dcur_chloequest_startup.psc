Scriptname dcur_chloequest_startup extends ObjectReference  

dcur_chloeQuestScript Property cqs Auto

Event OnTriggerEnter(ObjectReference akActionRef)		
	if !cqs.IsRunning() && !cqs.GetStageDone(10)		
		cqs.Start()
		cqs.SetStage(5)
		cqs.SetObjectiveDisplayed(5)		
		cqs.alias_chloe_restrained.ForceRefTo(cqs.GetChloe())
		RegisterForSingleUpdate(3)		
		return
	EndIf
	if cqs.IsRunning() && cqs.GetStage() == 2		
		cqs.SetObjectiveCompleted(2)
		cqs.SetStage(5)
		cqs.SetObjectiveDisplayed(5)
		cqs.alias_chloe_restrained.ForceRefTo(cqs.GetChloe())
		RegisterForSingleUpdate(3)				
	EndIf
EndEvent

Event OnUpdate()
	if !cqs.dclibs.dcur_boundinskyrimQuest.IsRunning()
		cqs.dclibs.dcur_boundinskyrimQuest.Start()
		cqs.dclibs.dcur_boundinskyrimQuest.SetObjectiveDisplayed(2)
		cqs.dclibs.dcur_boundinskyrimQuest.SetStage(2)				
	endIf
EndEvent
