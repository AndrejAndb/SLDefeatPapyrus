Scriptname dcur_KeyholderQuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  

ReferenceAlias Property dollmaker_ref  Auto 

FormList Property dcur_DDKeys Auto

GlobalVariable Property dcur_dollmaker_keyholderactive Auto
GlobalVariable Property dcur_dollmaker_keyholdercanrelease Auto

Int Property keyholder_term_week = 1 Auto
Int Property keyholder_term_day = 2 Auto
Int Property keyholder_term_hour = 3 Auto
Int Property keyholder_term_month = 4 Auto

Int Property keyholder_term = 0 Auto

Float Property keyholderqueststartedat = 0.0 Auto

Actor Function GetDollmaker()
	Return dollmaker_ref.GetReference() As Actor
EndFunction

Function TransferKeys()
	Actor pl = libs.playerref
	Actor dm = GetDollmaker()
	Key k
	Int i = dcur_DDKeys.GetSize()
	int num
	libs.notify("The Dollmaker takes away your restraints keys.")
	While i > 0
		i -= 1
		k = dcur_DDKeys.GetAt(i) As Key
		num = pl.GetItemCount(k)
		If num > 0
			pl.RemoveItem(k, num, true, dm)
		Endif
	EndWhile
EndFunction

Function RetrieveKeys()
	Actor pl = libs.playerref
	Actor dm = GetDollmaker()
	Key k
	Int i = dcur_DDKeys.GetSize()
	int num
	libs.notify("The Dollmaker hands you back your restraints keys.")
	While i > 0
		i -= 1
		k = dcur_DDKeys.GetAt(i) As Key
		num = dm.GetItemCount(k)
		If num > 0
			dm.RemoveItem(k, num, true, pl)
		Endif
	EndWhile
EndFunction

Function StartQuest()
	Actor dm = GetDollmaker()
	Actor pl = Game.GetPlayer()
	dcur_dollmaker_keyholderactive.SetValueInt(1)
	dcur_dollmaker_keyholdercanrelease.SetValueInt(0)
	keyholderqueststartedat = Utility.GetCurrentGameTime()
	TransferKeys()
	SetStage(10)	
	SetObjectiveDisplayed(10)
EndFunction

Function EndQuest()
	dcur_dollmaker_keyholderactive.SetValueInt(0)
	dcur_dollmaker_keyholdercanrelease.SetValueInt(0)
	keyholderqueststartedat = 0.0
	RetrieveKeys()
	if keyholder_term == keyholder_term_week
		dclibs.GiveBondageRewards(2)
	Endif
	if keyholder_term == keyholder_term_month
		dclibs.GiveBondageRewards(3)
		dclibs.GiveBondageRewards(3)
	Endif
	keyholder_term = 0
	SetObjectiveCompleted(15)
	SetObjectiveCompleted(20)
	;CompleteQuest()
	Stop()
	;Reset()
EndFunction