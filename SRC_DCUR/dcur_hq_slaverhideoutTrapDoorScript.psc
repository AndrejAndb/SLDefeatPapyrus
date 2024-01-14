Scriptname dcur_hq_slaverhideoutTrapDoorScript extends ObjectReference  

dcur_hq_QuestScript Property hqqs Auto

Event onActivate(ObjectReference akActionref)
	if hqqs.GetStage() != 20 || !IsLocked()
		return
	endif
	if hqqs.libs.playerref.GetItemCount(hqqs.dcur_hq_trapdoorkey) > 0
		lock(false)
		hqqs.libs.notify("You somehow manage to slide the key into the lock and turn it. The trapdoor unlocks", true)		
	else
		hqqs.libs.notify("The door is safely locked. You will need to find the key. Maybe one of the dead slavers has one?", messagebox = true)
	endif
endEvent