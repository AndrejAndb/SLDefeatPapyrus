Scriptname dcur_sasha_PlayerRefScript extends ReferenceAlias  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
dcur_SashaQuestScript Property saqs  Auto 
Keyword Property zad_NonUniqueKey Auto

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If !akBaseItem || dcumenu.shutdownmod || dclibs.mcs.lbqs.lbqsquestrunning
		return
	Endif	
	If saqs.dcur_sasha_dom_isKeyholder.GetValueInt() == 1 && akBaseItem.GetType() == 45 ; key
		if akBaseItem.HasKeyword(zad_NonUniqueKey)
			libs.notify("Sasha takes your " + akBaseItem.GetName())		
			GetReference().RemoveItem(akBaseItem, aiItemCount, true, saqs.dcur_sashaquest_sashasStorageBox.GetReference())		
		Endif
	Endif
EndEvent

