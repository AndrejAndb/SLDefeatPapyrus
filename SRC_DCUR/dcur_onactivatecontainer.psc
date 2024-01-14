;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 12
Scriptname dcur_onactivatecontainer Extends Perk Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE	
	If dclibs.containermutex || !akTargetRef.Is3DLoaded() || dclibs.clocktickmutex
		if dcumenu.debuglogenabled && dclibs.clocktickmutex
			debug.trace("[DCUR] Mutex is active (update running): Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && !akTargetRef.Is3DLoaded()
			debug.trace("[DCUR] Object not loaded: Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && dclibs.containermutex
			debug.trace("[DCUR] Mutex is active (script already running): Trap event aborted.")
		endif
		return
	Endif
	dclibs.containermutex = True
	dclibs.oref = akTargetRef
	dclibs.dcur_origintype = dclibs.is_deadbody
	if !dclibs.hasbeenlooted(dclibs.oref.GetFormID())
		If dcumenu.corpsesenabled
			dclibs.checkforspecialkeys(dclibs.oref)
			dclibs.checkforcommonkeys(dclibs.oref)
			dclibs.checkforrarekeys(dclibs.oref)	
		Endif
		dclibs.RestraintsToLoot(dclibs.oref)
	endif	
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Looted a dead body.")		
	endif
	dclibs.RegisterForSingleUpdate(0.1)
	dclibs.containermutex = False
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
	If dclibs.containermutex || !akTargetRef.Is3DLoaded() || dclibs.clocktickmutex
		if dcumenu.debuglogenabled && dclibs.clocktickmutex
			debug.trace("[DCUR] Mutex is active (update running): Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && !akTargetRef.Is3DLoaded()
			debug.trace("[DCUR] Object not loaded: Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && dclibs.containermutex
			debug.trace("[DCUR] Mutex is active (script already running): Trap event aborted.")
		endif
		return
	Endif
	dclibs.containermutex = True
	dclibs.oref = akTargetRef
	dclibs.dcur_origintype = dclibs.is_trap
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Manipulated a trap.")	
	endif
	dclibs.RegisterForSingleUpdate(0.1)
	dclibs.containermutex = False
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE	
	If dclibs.containermutex || !akTargetRef.Is3DLoaded() || dclibs.clocktickmutex
		if dcumenu.debuglogenabled && dclibs.clocktickmutex
			debug.trace("[DCUR] Mutex is active (update running): Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && !akTargetRef.Is3DLoaded()
			debug.trace("[DCUR] Object not loaded: Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && dclibs.containermutex
			debug.trace("[DCUR] Mutex is active (script already running): Trap event aborted.")
		endif
		return
	Endif
	dclibs.containermutex = True
	;save the container pointer to a scriptwide variable, so we can determine if the container is locked later. Cursed items can do a lot of things, but jumping through closed lids is not one of them, as funny as the thought might be.
	dclibs.oref = akTargetRef	
	String name = akTargetRef.GetDisplayName()
	dclibs.dcur_origintype = dclibs.is_container	
	if !dclibs.hasbeenlooted(dclibs.oref.GetFormID())
		if dcumenu.containersenabled
			dclibs.checkforspecialkeys(dclibs.oref)
			dclibs.checkforcommonkeys(dclibs.oref)	
			dclibs.checkforrarekeys(dclibs.oref)
		Endif
		dclibs.RestraintsToLoot(dclibs.oref)		
	endif
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Looted a container.")	
	endif
	if (akActor == Game.GetPlayer())  	
	; Ok, it's dirty trick time. DD is checking whether or not a menu is open in order to determine if the player equipped a device voluntarily or not. When this event triggers, the container menu WILL be open (we're looting a box after all), so DD would consider this a voluntary equip, which it is NOT! So what we're doing is registering an update event that will patiently wait until the player is done looting the container and then trigger, so no menu will be open and we can force all the bondage gear on the player we want.
		; containers with animations open slower than those without, so this event will get fired -before- the container actually opens and the menu appears, which is baaaaaad - so we're going to add some more delay to containers with animations.				
		if name == "Barrel" || name == "Large Sack" || name == "Sack" || name == "Urn" || name == "Burial Urn"			
			dclibs.RegisterForSingleUpdate(0.1)
		else
			dclibs.RegisterForSingleUpdate(1.2)
		endif
	endIf
	dclibs.containermutex = False
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
;save the container pointer to a scriptwide variable, so we can determine if the container is locked later. Cursed items can do a lot of things, but jumping through closed lids is not one of them, as funny as the thought might be.
	If dclibs.containermutex || !akTargetRef.Is3DLoaded() || dclibs.clocktickmutex
		if dcumenu.debuglogenabled && dclibs.clocktickmutex
			debug.trace("[DCUR] Mutex is active (update running): Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && !akTargetRef.Is3DLoaded()
			debug.trace("[DCUR] Object not loaded: Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && dclibs.containermutex
			debug.trace("[DCUR] Mutex is active (script already running): Trap event aborted.")
		endif
		return
	Endif
	dclibs.containermutex = True
	dclibs.oref = akTargetRef	
	String name = ""
	dclibs.dcur_origintype = dclibs.is_plant			
	if !dclibs.hasbeenlooted(dclibs.oref.GetFormID()) && dcumenu.plantsenabled
		name = dclibs.checkforspecialkeys(Game.GetPlayer()) 
		if name != ""
			debug.notification("You found a lost " + name + " in the " + dclibs.oref.GetDisplayName())
		endif
		name = dclibs.checkforcommonkeys(Game.GetPlayer())
		if name != ""
			debug.notification("You found a lost " + name + " in the " + dclibs.oref.GetDisplayName())
		endif		
		name = dclibs.checkforrarekeys(Game.GetPlayer())
		if name != ""
			debug.notification("You found a lost " + name + " in the " + dclibs.oref.GetDisplayName())
		endif		
	endif
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Looted a plant.")	
	endif
	if (akActor == Game.GetPlayer())  	
		dclibs.RegisterForSingleUpdate(0.1)	
	endIf
	dclibs.containermutex = False
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
	If dclibs.containermutex || !akTargetRef.Is3DLoaded() || dclibs.clocktickmutex
		if dcumenu.debuglogenabled && dclibs.clocktickmutex
			debug.trace("[DCUR] Mutex is active (update running): Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && !akTargetRef.Is3DLoaded()
			debug.trace("[DCUR] Object not loaded: Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && dclibs.containermutex
			debug.trace("[DCUR] Mutex is active (script already running): Trap event aborted.")
		endif
		return
	Endif
	dclibs.containermutex = True
	dclibs.oref = akTargetRef	
	String name = ""	
	dclibs.dcur_origintype = dclibs.is_mine	
	if !dclibs.hasbeenlooted(dclibs.oref.GetFormID()) && dcumenu.minesenabled
		name = dclibs.checkforspecialkeys(Game.GetPlayer()) 
		if name != ""
			debug.notification("You found a lost " + name + " in the " + dclibs.oref.GetDisplayName())
		endif
		name = dclibs.checkforcommonkeys(Game.GetPlayer())
		if name != ""
			debug.notification("You found a lost " + name + " in the " + dclibs.oref.GetDisplayName())
		endif
		name = dclibs.checkforrarekeys(Game.GetPlayer())
		if name != ""
			debug.notification("You found a lost " + name + " in the " + dclibs.oref.GetDisplayName())
		endif		
	endif
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Mined.")	
	endif
	if (akActor == Game.GetPlayer())  	
		dclibs.RegisterForSingleUpdate(0.1)	
	endIf
	dclibs.containermutex = False
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
	If dclibs.containermutex || !akTargetRef.Is3DLoaded() || dclibs.clocktickmutex
		if dcumenu.debuglogenabled && dclibs.clocktickmutex
			debug.trace("[DCUR] Mutex is active (update running): Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && !akTargetRef.Is3DLoaded()
			debug.trace("[DCUR] Object not loaded: Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && dclibs.containermutex
			debug.trace("[DCUR] Mutex is active (script already running): Trap event aborted.")
		endif
		return
	Endif
	dclibs.containermutex = True
	dclibs.oref = akTargetRef	
	String name = ""	
	dclibs.dcur_origintype = dclibs.is_door
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Opened a door.")	
	endif
	if dcumenu.lockeddoorsonly && !akTargetRef.IsLocked()
		if dcumenu.debuglogenabled
			debug.trace("[DCUR] Door is not locked as required, aborting.")	
		endif
		dclibs.containermutex = False
		return
	endif
	if (akActor == Game.GetPlayer())  	
		dclibs.RegisterForSingleUpdate(1.0)	
	endIf
	dclibs.containermutex = False
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
	If dclibs.containermutex || !akTargetRef.Is3DLoaded() || dclibs.clocktickmutex
		if dcumenu.debuglogenabled && dclibs.clocktickmutex
			debug.trace("[DCUR] Mutex is active (update running): Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && !akTargetRef.Is3DLoaded()
			debug.trace("[DCUR] Object not loaded: Trap event aborted.")
		endif
		if dcumenu.debuglogenabled && dclibs.containermutex
			debug.trace("[DCUR] Mutex is active (script already running): Trap event aborted.")
		endif
		return
	Endif
	dclibs.containermutex = True
	dclibs.oref = akTargetRef
	dclibs.dcur_origintype = dclibs.is_deadbody
	if !dclibs.hasbeenlooted(dclibs.oref.GetFormID()) 
		If dcumenu.corpsesenabled
			dclibs.checkforspecialkeys(dclibs.oref)
			dclibs.checkforcommonkeys(dclibs.oref)		
			dclibs.checkforrarekeys(dclibs.oref)		
		Endif
		dclibs.RestraintsToLoot(dclibs.oref)
	endif	
	if dcumenu.debuglogenabled
		debug.trace("[DCUR] Looted a dead body (ash pile).")		
	endif
	dclibs.RegisterForSingleUpdate(0.1)
	dclibs.containermutex = False
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
; ^ Don't be silly Papyrus, of course I did! :p

dcur_library Property dclibs Auto
dcur_mcmconfig Property dcumenu Auto