Scriptname dcur_onactivatecursedcollaractivator extends ObjectReference  

zadlibs Property libs  Auto  
dcur_cursedcollarquestscript Property ccqs  Auto  
dcur_royalchastityQuestScript Property rcqs Auto

event OnActivate(ObjectReference akActionRef)
	if !ccqs.cursedcollarquestrunning && rcqs.GetStage() >= 420
		if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar)				
			; character is already wearing a collar - if it's a generic one, we just unequip it
			if libs.LockDevice(libs.playerref, ccqs.dcur_cursedCollar, force = true)
				ccqs.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("You body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover an obsidian slave collar locked around it. Next to the place where you found the collar, you find a note...", messagebox = true)  				
				libs.playerRef.additem(ccqs.dcur_collarletter, 1, false)							
				ccqs.cursedcollarquestrunning = true	
				rcqs.CheckQuestEnd()
				RegisterForSingleUpdate(600)
				ccqs.Alias_dcur_alias_cursedcollaractivator.GetReference().Disable(true)
				return
			endIf
		else
			Libs.notify("You body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover an obsidian slave collar locked around it. Next to the place where you found the collar, you find a note...", messagebox = true)  
			ccqs.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			ccqs.cursedcollarquestrunning = true
			rcqs.CheckQuestEnd()
			RegisterForSingleUpdate(600)
			ccqs.Alias_dcur_alias_cursedcollaractivator.GetReference().Disable(true)
			libs.LockDevice(libs.playerref, ccqs.dcur_cursedCollar, force = true)
			libs.playerRef.additem(ccqs.dcur_collarletter, 1, false)					
			return
		endif
	endif
	if rcqs.GetStage() < 420
		Libs.notify("You touch the old slave collar, but nothing happens.", messagebox = true) 
		return
	EndIf
	Libs.notify("You touch the old slave collar, but nothing happens. Maybe it doesn't react to people already wearing a collar?", messagebox = true)  
endevent

Event OnUpdate()
	ccqs.Alias_dcur_alias_cursedcollaractivator.GetReference().Enable(true)
endevent