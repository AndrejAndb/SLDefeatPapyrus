Scriptname dcur_hq_slaverhideoutTunnelScript extends ObjectReference  

dcur_hq_QuestScript Property hqqs Auto

Event onActivate(ObjectReference akActionref)
	if hqqs.GetStage() != 40 || !IsLocked()
		return
	endif
	if hqqs.libs.playerref.GetItemCount(hqqs.dcur_hq_ledger) > 0
		lock(false)
		hqqs.libs.notify("You somehow manage to open the trapdoor. You peek into a long, dimly lit tunnel, leading to the surface. It appears to be the best option to escape.", true)		
	else
		hqqs.libs.notify("It would not be wise to leave without any idea where to go. Maybe go find the ledger first?", messagebox = true)
	endif
endEvent