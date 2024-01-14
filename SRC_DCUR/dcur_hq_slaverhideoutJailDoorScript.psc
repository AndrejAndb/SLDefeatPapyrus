Scriptname dcur_hq_slaverhideoutJailDoorScript extends ObjectReference  

dcur_hq_QuestScript Property hqqs Auto

Event onActivate(ObjectReference akActionref)
	if hqqs.GetStage() != 30 || !Islocked()
		return
	endif
	if hqqs.libs.playerref.GetItemCount(hqqs.dcur_hq_slaveofficekey) > 0
		lock(false)
		hqqs.libs.notify("You somehow manage to slide the key into the lock and turn it. The door unlocks", true)		
	else
		hqqs.libs.notify("The door is safely locked. You will need to find the key. Maybe it is in one of their chests?", messagebox = true)
	endif
endEvent