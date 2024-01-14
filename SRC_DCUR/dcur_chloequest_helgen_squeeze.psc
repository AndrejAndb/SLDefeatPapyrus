Scriptname dcur_chloequest_helgen_squeeze extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)
	if cqs.GetChloe().IsInFaction(cqs.dcumenu.CurrentFollowerFaction)
		cqs.GetChloe().moveto(Alias_dcur_chloequest_helgen_marker.GetReference())	
		Game.GetPlayer().moveto(Alias_dcur_chloequest_helgen_marker.GetReference())	
	else
		cqs.libs.Notify("You can't squeeze through there.")
	EndIf
EndEvent

dcur_chloeQuestScript Property cqs Auto

ReferenceAlias Property Alias_dcur_chloequest_helgen_marker Auto