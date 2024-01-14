Scriptname dcur_universalkeyScript extends ObjectReference  

Event OnEquipped(Actor akActor)		
	int icount	
	icount = Libs.PlayerRef.GetItemCount(dcur_universalkey)
	Libs.PlayerRef.removeitem(dcur_universalkey,icount,true)
	if icount > 1
		icount = icount - 1
		Libs.PlayerRef.additem(dcur_universalkey,icount,true)
	EndIf	    
	libs.notify("You use the universal key on your restraints...", messagebox = true)
	Utility.Wait(0.1)
	dclibs.WipeRestraints(akActor, genericonly = true, removeDCURquestitems = false, destroyDevices = false)			
EndEvent

Armor property dcur_universalkey Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto 
zadxlibs Property xlibs  Auto 
