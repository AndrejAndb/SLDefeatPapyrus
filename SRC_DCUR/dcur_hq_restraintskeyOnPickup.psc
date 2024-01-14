Scriptname dcur_hq_restraintskeyOnPickup extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	If hqqs.GetStage() != 90 || !akOldContainer
		return
	Endif	
	hqqs.libs.notify("You have no idea what happened here, but there is no need to threaten the customer with violence anymore, as he is already dead - almost as if a dragon attacked him! You browse through the dead man's pockets and find a key! It should fit your restraints.\nYou are finally free!", true)
	Utility.Wait(1)
	hqqs.SetObjectiveCompleted(90)	
	hqqs.SetObjectiveDisplayed(1000)	
	hqqs.SetStage(1000)	
	hqqs.libs.notify("You might no longer be a princess - but you will not become a slave, either.\nYour story is still yours to write.", true)
	hqqs.dcLibs.LevelUp("", 3)
	hqqs.dclibs.dcur_boundinskyrimQuest.SetObjectiveDisplayed(10)
	hqqs.dclibs.dcur_boundinskyrimQuest.SetStage(10)
	;hqqs.dclibs.dcur_boundinskyrimQuest.SetObjectiveCompleted(10)
	hqqs.TerminateQuest()
EndEvent

dcur_hq_QuestScript Property hqqs Auto