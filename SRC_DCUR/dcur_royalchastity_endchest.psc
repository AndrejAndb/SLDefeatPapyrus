Scriptname dcur_royalchastity_endchest extends ObjectReference  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)	
	rcqs.dcur_al_royalchastity_Jendchest.GetReference().Enable()	
EndEvent

dcur_royalchastityQuestScript Property rcqs Auto

