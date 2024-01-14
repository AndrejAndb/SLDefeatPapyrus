Scriptname dcur_leon_ustorf_celllock extends ObjectReference  

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcmenu  Auto  
dcur_leon_enslaveScript Property dcslave  Auto  

ReferenceAlias Property dcur_leon_ustorf_celldoor  Auto  

bool property inventorystored = false Auto

Event OnActivate(ObjectReference akActionRef)
	if dcslave.GetStage() != 50
		return
	endif
	if !inventorystored
		Actor pl = Game.GetPlayer()
		debug.notification("You put your gear into the chest.")
		Game.DisablePlayerControls()
		lock()
		SetLockLevel(255)		
		dcmenu.dclibs.strip(pl, true)		
		Utility.Wait(2)		
		dcur_leon_ustorf_celldoor.GetReference().Lock()
		dcur_leon_ustorf_celldoor.GetReference().SetLockLevel(255)				
		pl.RemoveItem(dcslave.dcur_leon_partyclothes, pl.GetItemCount(dcslave.dcur_leon_partyclothes), True)
        pl.RemoveAllItems(akTransferTo = self, abKeepOwnership = false, abRemoveQuestItems = true) 
		libs.notify("After you finally put the last of your belongings into the chest, you close the lid. You hear a locking mechanism clicking shut inside the chest. You rattle the lid, but it remains safely locked. Without the proper key there is no way to retrieve your gear.", messagebox = true)
		libs.notify("At last, you open the package containing your party dress...", messagebox = true)
		libs.notify("...and gasp when you notice that the 'dress' is actually a set of restraints. The package contains a set of arm and leg cuffs and a corset that looks as if it would be three sizes to small for you.", messagebox = true)		
		pl.additem(dcslave.dcur_leon_anklechains, 1)
		pl.additem(dcslave.dcur_leon_armcuffs, 1)
		pl.additem(dcslave.dcur_leon_corset, 1)
		pl.additem(dcslave.dcur_leon_ustolfnote, 1)		
		Game.EnablePlayerControls()
		inventorystored = true
		dcslave.SetStage(60)
		dcslave.SetObjectiveDisplayed(60)
		dcslave.SetObjectiveCompleted(50)		
	endif
endEvent

event onUpdate()
	lock()
	SetLockLevel(255)		
endEvent

