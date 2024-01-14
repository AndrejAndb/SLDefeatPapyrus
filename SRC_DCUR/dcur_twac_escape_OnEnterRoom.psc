Scriptname dcur_twac_escape_OnEnterRoom extends ObjectReference  

dcur_thewhipandchainQuestScript Property twacqs Auto

Event OnTriggerEnter(ObjectReference akActionRef)
	If akActionRef == twacqs.libs.PlayerRef
		twacqs.DoorTrigger()
	EndIf
EndEvent