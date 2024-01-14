Scriptname dcur_hq_playerrefScript extends ReferenceAlias

dcur_hq_QuestScript Property hqqs Auto
zadlibs Property libs  Auto 

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If hqqs.GetStage() == 10
		If akBaseItem == hqqs.dcur_hq_trapdoorkey
			libs.notify("You found the hideout key!")
			hqqs.SetStage(20)
			hqqs.SetObjectiveDisplayed(20)
			hqqs.SetObjectiveCompleted(10)
		Endif
	Endif
EndEvent