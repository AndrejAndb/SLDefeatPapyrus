Scriptname dcur_SlaveCollarScript extends zadEquipScript  

dcur_mcmconfig Property dcumenu  Auto  
dcur_slavecollarquestscript Property scqs Auto
SexLabFramework Property SexLab Auto
dcur_library Property dclibs  Auto  

dcur_mastercontrollerscript Property mcs Auto

bool Function RemoveDeviceWithKey(actor akActor = none, bool destroyDevice=false)
	if akActor == none
		akActor = libs.PlayerRef
	EndIf	
	if akActor.GetItemCount(deviceKey)>=1 && (scqs.dcur_slavecollarlocked.GetValueInt() == 0)
		libs.Notify("Collar punishment effects ended.")		
		RemoveDevice(akActor, destroyDevice = true)		
		Libs.playerref.RemoveItem(dcumenu.dcur_headrestraintsKey, 1, true)		
		; Unregistering the update from here didn't reliably work, so we're going to terminate the quest via a signal instead.
		scqs.Aroused.SetActorExhibitionist(libs.playerref, scqs.wasexhibitionistatstart)				
		scqs.slavecollarquestactive = False								
		return true
	else		
		libs.Notify("The " + deviceInventory.GetName() + " does not have an accessible lock.", messageBox=true)
		return false
	Endif
EndFunction

Function OnEquippedPost(actor akActor)	
	if deviceInventory.HasKeyword(dcumenu.dcur_kw_slavecollar)
		libs.Notify("You have been locked into a slave collar.")
		scqs.sexcounteratstart = SexLab.SexCount(libs.playerref)
		scqs.sexactsneeded = Utility.RandomInt(dcumenu.slavecollarminsexacts, dcumenu.slavecollarmaxsexacts)
		scqs.dayswornneeded	= Utility.RandomInt(dcumenu.slavecollarmindaysworn, dcumenu.slavecollarmaxdaysworn)			
	endif
	if deviceInventory.HasKeyword(dcumenu.dcur_kw_slutcollar)
		libs.Notify("You have been locked into a slut collar.")
		scqs.sexlessdaysneeded = Utility.RandomInt(dcumenu.slutcollarminsexlessdaysneeded, dcumenu.slutcollarmaxsexlessdaysneeded)
		scqs.lastcheckpoint = Utility.GetCurrentGameTime()
		scqs.sexlessdays = 0				
	endif
	scqs.dcur_slavecollarlocked.SetValueInt(1)
	scqs.scq_initialize()
	scqs.lastminorevent = Utility.GetCurrentGameTime()
	scqs.queststartedtime = Utility.GetCurrentGameTime()	
	scqs.slavecollarquestactive = True			
	libs.Notify("Collar punishment effects started.")
EndFunction

