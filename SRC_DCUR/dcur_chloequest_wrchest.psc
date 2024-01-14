Scriptname dcur_chloequest_wrchest extends ReferenceAlias  

Event OnActivate(ObjectReference akActionRef)	
	If cqs.GetStage() == 60 && Game.GetPlayer().GetItemCount(cqs.dcur_chloequest_wrchest_note) < 1		
		self.GetReference().AddItem(cqs.dcur_chloequest_wrchest_note, 1)
	EndIf
EndEvent

dcur_chloeQuestScript Property cqs Auto