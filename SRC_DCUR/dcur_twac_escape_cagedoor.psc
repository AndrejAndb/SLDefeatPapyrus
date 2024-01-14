Scriptname dcur_twac_escape_cagedoor extends ObjectReference  

dcur_thewhipandchainQuestScript Property twacqs Auto

Event onActivate(ObjectReference akActionref)
	if !Islocked()
		return
	endif
	twacqs.libs.notify("The cage door is safely locked. You will have to wait until it unlocks", true)	
EndEvent

