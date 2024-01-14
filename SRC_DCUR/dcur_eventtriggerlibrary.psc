Scriptname dcur_eventtriggerlibrary extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
zadxLibs Property xlibs  Auto  
zadxLibs2 Property xlibs2  Auto  
dcur_library Property dclibs  Auto
SexLabFramework Property SexLab  Auto 
dcur_genericlib Property dglib Auto
dcur_itemlib Property dci  Auto  
dcur_mastercontrollerscript Property mcs Auto

Armor Property dcur_rd_rubbercollar Auto
Armor Property dcur_rd_rubbercollarRendered Auto
Armor Property dcur_WhoreCollar_Inventory Auto
Armor Property dcur_WhoreCollar_Rendered Auto
Armor Property dcur_utsj_1_dress_inventory Auto
Armor Property dcur_utsj_1_dress_Rendered Auto
Armor Property dcur_teb_elbowbinder_Inventory Auto
Armor Property dcur_teb_elbowbinder_Rendered Auto

FormList Property dcur_devicesfound Auto

Location Property SolitudeLocation auto
Location Property MarkarthLocation auto
Location Property RiftenLocation auto
Location Property WhiterunLocation auto
Location Property WindhelmLocation auto
Location Property DawnstarLocation auto
Location Property MorthalLocation auto
Location Property WinterholdLocation auto
Location Property FalkreathLocation auto
WorldSpace Property WhiterunWorld auto
WorldSpace Property WindhelmWorld auto
WorldSpace Property SolitudeWorld auto
WorldSpace Property RiftenWorld auto
WorldSpace Property MarkarthWorld auto

FormList Property dcur_furnituretrapdevices Auto	; list of all DDC devices that can be reasonably built in random places.
FormList Property dcur_furniture_whiterun Auto
FormList Property dcur_furniture_markarth Auto
FormList Property dcur_furniture_windhelm Auto
FormList Property dcur_furniture_solitude Auto
FormList Property dcur_furniture_riften Auto
FormList Property dcur_furniture_morthal Auto
FormList Property dcur_furniture_dawnstar Auto
FormList Property dcur_furniture_falkreath Auto
FormList Property dcur_furniture_winterhold Auto

bool function dcur_startcursedcollarquest()
	; Let's see if a Cursed Collar quest can start
	if !dclibs.ccqs.cursedcollarquestrunning
		if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar)				
			; character is already wearing a collar - if it's a generic one, we just unequip it
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Collar slot is occupied.")
			Endif
			If !libs.LockDevice(Libs.PlayerRef, dclibs.ccqs.dcur_cursedCollar, force = true)			
				If dcumenu.debuglogenabled
					Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")					
				Endif
				return false
			else
				dclibs.ccqs.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover an obsidian slave collar locked around it. Next to the place where you found the collar, you find a note...", messagebox = true)  				
				libs.playerRef.additem(dclibs.ccqs.dcur_collarletter, 1, false)							
				dclibs.ccqs.cursedcollarquestrunning = true
				if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
					dclibs.strip(libs.playerref, false)					
				endif
				return true						
			endIf
		else
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover an obsidian slave collar locked around it. Next to the place where you found the collar, you find a note...", messagebox = true)  
			dclibs.ccqs.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			dclibs.ccqs.cursedcollarquestrunning = true
			libs.LockDevice(Libs.PlayerRef, dclibs.ccqs.dcur_cursedCollar, force = true)
			libs.playerRef.additem(dclibs.ccqs.dcur_collarletter, 1, false)					
			if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				dclibs.strip(libs.playerref, false)
			endif
			return true						
		endif
	endif					
	return false
endfunction

bool function dcur_startwhorecollarquest(bool suppressfeedback = false)
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar)				
		; character is already wearing a collar - if it's a generic one, we just unequip it
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Collar slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcur_WhoreCollar_Inventory, force = true)			
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover a whore collar locked around it.", messagebox = true)  
			endif						
			if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				dclibs.strip(libs.playerref, false)
			endif			
			return true
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover a whore collar locked around it.", messagebox = true)  
		endif
		libs.LockDevice(Libs.PlayerRef, dcur_WhoreCollar_Inventory, force = true)
		if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			dclibs.strip(libs.playerref, false)
		endif
		return true
	endif	
	return false
endfunction

bool function dcur_startslavecollarquest(bool suppressfeedback = false)
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar)				
		; character is already wearing a collar - if it's a generic one, we just unequip it
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Collar slot is occupied.")
		Endif
		if libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_slavecollar, force = true)						
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover a slave collar locked around it.", messagebox = true)  
			endif						
			if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				dclibs.strip(libs.playerref, false)
			endif			
			return true
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover a slave collar locked around it.", messagebox = true)  
		endif
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_slavecollar, force = true)
		if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			dclibs.strip(libs.playerref, false)
		endif
		return true
	endif	
	return false
endfunction

bool function dcur_startstripteasecollarquest(bool suppressfeedback = false)
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar)				
		; character is already wearing a collar - if it's a generic one, we just unequip it
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Collar slot is occupied.")
		Endif
		if !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_stripteasecollar, force = true)			
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover a metal collar locked around it.", messagebox = true)  
			endif						
			if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				dclibs.strip(libs.playerref, false)
			endif			
			return true
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover a slave collar locked around it.", messagebox = true)  
		endif
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_stripteasecollar, force = true)	
		if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			dclibs.strip(libs.playerref, false)
		endif
		return true
	endif	
	return false
endfunction

bool function dcur_startslavebeltquest(bool suppressfeedback = false)
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt)				
		; character is already wearing a belt - if it's a generic one, we just unequip it		
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Belt slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_slavebelt, force = true)	
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else
			if !suppressfeedback
				dclibs.strip(libs.playerref, false)
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses and look down on your body you discover that you are locked in a very tight-sitting chastity belt. The belt is fitted with three very secure looking locks on the belt and two more on the shield. The device seems to be unlockable only when in possession of all five keys. Two large plugs fitted to the belt are deeply penetrating both your holes and filling them completely.", messagebox = true)  
			endif
			libs.equipDevice(libs.playerref, dcumenu.dcur_customVagPlug, dcumenu.dcur_customVagPlugRendered, libs.Zad_DeviousPlug, skipevents = false, skipmutex = true)				
			libs.equipDevice(libs.playerref, dcumenu.dcur_customAnPlug, dcumenu.dcur_customAnPlugRendered, libs.Zad_DeviousPlug, skipevents = false, skipmutex = true)							
			return true						
		endIf
	else
		if !suppressfeedback
			dclibs.strip(libs.playerref, false)
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses and look down on your body you discover that you are locked in a very tight-sitting chastity belt. The belt is fitted with three very secure looking locks on the belt and two more on the shield. The device seems to be unlockable only when in possession of all five keys. Two large plugs fitted to the belt are deeply penetrating both your holes and filling them completely.", messagebox = true)  
		endif
		libs.equipDevice(libs.playerref, dcumenu.dcur_customVagPlug, dcumenu.dcur_customVagPlugRendered, libs.Zad_DeviousPlug, skipevents = false, skipmutex = true)				
		libs.equipDevice(libs.playerref, dcumenu.dcur_customAnPlug, dcumenu.dcur_customAnPlugRendered, libs.Zad_DeviousPlug, skipevents = false, skipmutex = true)				
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_slavebelt, force = true)
		return true						
	endif		
	return false
endfunction

bool function dcur_startslavegagquest(bool suppressfeedback = false)
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousGag)				
		; character is already wearing a gag - if it's a generic one, we just unequip it
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Gag slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_slavegag, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you feel the presence of a large panel gag locked on you. In addition, a huge ball plug mounted on the inside of the gag is forcing your mouth wide open.", messagebox = true)  
			endif			
			return true						
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you feel the presence of a large panel gag locked on you. In addition, a huge ball plug mounted on the inside of the gag is forcing your mouth wide open.", messagebox = true)  
		endif
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_slavegag, force = true)
		return true						
	endif
	return false
endfunction

bool function dcur_startrubberdollquest(bool suppressfeedback = false)
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar)						
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Collar slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcur_rd_rubbercollar, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you feel the presence of a rubber collar locked on you.", messagebox = true)  
			endif			
			return true						
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you feel the presence of a rubber collar locked on you.", messagebox = true)  
		endif
		libs.LockDevice(Libs.PlayerRef, dcur_rd_rubbercollar, force = true)
		return true						
	endif
	return false
endfunction

bool function dcur_startslavebootsquest(bool suppressfeedback = false)
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBoots)				
		; character is already wearing a collar - if it's a generic one, we just unequip it
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Boots slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_shockboots, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else		
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you discover a pair of steel boots locked on your feet. A tickling sensation tells you that the boots are radiating energy...", messagebox = true)  
			endif
			return true						
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you discover a pair of steel boots locked on your feet. A tickling sensation tells you that the boots are radiating energy...", messagebox = true)  
		endif
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_shockboots, force = true)
		return true						
	endif		
	return false
endfunction

bool function dcur_startslutcollarquest(bool suppressfeedback = false)
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar)				
		; character is already wearing a collar - if it's a generic one, we just unequip it
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Collar slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_slutCollar, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover an iron collar locked around it.", messagebox = true)  
			endif
			mcs.isworn_slutcollar = 0			
			if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				dclibs.strip(libs.playerref, false)
			endif
			return true						
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover an iron collar locked around it.", messagebox = true)  
		endif
		mcs.isworn_slutcollar = 0
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_slutCollar, force = true)
		if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			dclibs.strip(libs.playerref, false)
		endif
		return true						
	endif		
	return false
endfunction

bool function dcur_startdashaitems(bool suppressfeedback = false)
	Bool didanything = false
	Bool dontequip = false
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar)				
		; character is already wearing a collar - if it's a generic one, we just unequip it
		dontequip = true
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Collar slot is occupied.")			
		Endif
		If !dontequip && Libs.GetWornRenderedDeviceByKeyword(libs.playerref, Libs.zad_DeviousCollar).HasKeyWord(libs.zad_BlockGeneric)
			dontequip = true
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
		Endif
		if !dontequip && libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousCollar)	
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover an iron collar locked around it.", messagebox = true)  
			endif			
			libs.equipDevice(Libs.PlayerRef, dci.dcur_chokerCollar, dci.dcur_chokerCollarRendered, Libs.zad_DeviousCollar, skipevents = false, skipmutex = true)				
			didanything = true
			if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				dclibs.strip(libs.playerref, false)
			endif			
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you touch your neck and discover an iron collar locked around it.", messagebox = true)  
		endif		
		libs.equipDevice(Libs.PlayerRef, dci.dcur_chokerCollar, dci.dcur_chokerCollarRendered, Libs.zad_DeviousCollar, skipevents = false, skipmutex = true)				
		didanything = true
		if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			dclibs.strip(libs.playerref, false)
		endif		
	endif	
	dontequip = false
	if dcumenu.useGag && Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousGag)				
		dontequip = true
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Gag slot is occupied.")			
		Endif
		If !dontequip && Libs.GetWornRenderedDeviceByKeyword(libs.playerref, Libs.zad_DeviousGag).HasKeyWord(libs.zad_BlockGeneric)
			dontequip = true
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")								
			Endif
		Elseif !dontequip && libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousGag)
			libs.equipDevice(Libs.PlayerRef, dci.dcur_silencerGag, dci.dcur_silencerGagRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)				
			didanything = true
		endIf
	else
		libs.equipDevice(Libs.PlayerRef, dci.dcur_silencerGag, dci.dcur_silencerGagRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)				
		didanything = true
	endif	
	dontequip = false
	if dcumenu.useBlindfold && Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBlindfold)				
		dontequip = true
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Blindfold slot is occupied.")
		Endif
		If !dontequip && Libs.GetWornRenderedDeviceByKeyword(libs.playerref, Libs.zad_DeviousBlindfold).HasKeyWord(libs.zad_BlockGeneric)
			dontequip = true
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")								
			Endif
		Elseif !dontequip && libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousBlindfold)					
			libs.equipDevice(Libs.PlayerRef, dci.dcur_veilBlindfold, dci.dcur_veilBlindfoldRendered, Libs.zad_DeviousBlindfold, skipevents = false, skipmutex = true)				
			didanything = true
		endIf
	else
		libs.equipDevice(Libs.PlayerRef, dci.dcur_veilBlindfold, dci.dcur_veilBlindfoldRendered, Libs.zad_DeviousBlindfold, skipevents = false, skipmutex = true)				
		didanything = true
	endif	
	return didanything
EndFunction

bool function dcur_startslavequest()
	if dcur_startslavecollarquest(true) && dcur_startslavebootsquest(true) && dcur_startslavegagquest(true) && dcur_startslavebeltquest(true)
		return true
	endif
	return false
endfunction

bool function dcur_startrubbersuitquest(bool suppressfeedback = false)
	Bool didanything = false
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousSuit)				
		; character is already wearing a suit - if it's a generic one, we just unequip it
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Suit slot is occupied.")
		Endif
		if !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_rubberSuit, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you find yourself locked into a skin tight rubber suit.", messagebox = true)  
			endif			
			didanything = true
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you find yourself locked into a skin tight rubber suit.", messagebox = true)  
		endif
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_rubberSuit, force = true)
		didanything = true
	endif
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousGloves)				
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Gloves slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_rubberGloves, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			didanything = true
		endIf
	else
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_rubberGloves, force = true)
		didanything = true
	endif
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBoots)				
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Boots slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_rubberBoots, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else
			didanything = true
		endIf
	else
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_rubberBoots, force = true)
		didanything = true
	endif
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar)				
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Collar slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_rubberCollar, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			didanything = true
		endIf
	else
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_rubberCollar, force = true)
		didanything = true
	endif
	if dcumenu.useGag && dcumenu.useBlindfold
		if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHood)				
			If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Hood slot is occupied.")
		Endif
			If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_rubberHood, force = true)
				If dcumenu.debuglogenabled
					Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")					
				Endif
				return false
			else				
				didanything = true
			endIf
		else		
			libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_rubberHood, force = true)
			didanything = true
		endif
	endif
	return didanything
endfunction

bool function dcur_equipTentacleParasite(bool suppressfeedback = false)
	Bool didanything = false
	; This item needs all these slots
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousSuit) || Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt) || Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBra) || Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousPlugAnal) || Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousPlugVaginal)
		return false
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("A tentacle parasite jumps at you!!!! Before you can react in any meaningful way, the parasite wraps its tentacles around your body and clings to you. One of its tentacles slowly enters your pussy and starts to stimulate it!", messagebox = true)  
		endif
		libs.equipDevice(Libs.PlayerRef, mcs.tpqs.dcur_tentacles, mcs.tpqs.dcur_tentaclesRendered, Libs.zad_DeviousSuit, skipevents = false, skipmutex = true)				
		didanything = true
	endif
	return didanything
endfunction

bool function dcur_equipAradiaRogueSet(bool suppressfeedback = false)
	Bool didanything = false
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousSuit)				
		; character is already wearing a suit - if it's a generic one, we just unequip it
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Suit slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dci.aradialib_RogueBodyV1, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you find yourself locked into a rogue harness.", messagebox = true)  
			endif			
			didanything = true
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you find yourself locked into a rogue harness.", messagebox = true)  
		endif
		libs.LockDevice(Libs.PlayerRef, dci.aradialib_RogueBodyV1, force = true)
		didanything = true
	endif
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBoots)				
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Boots slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dci.aradialib_RogueBootsV1, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			didanything = true
		endIf
	else
		libs.LockDevice(Libs.PlayerRef, dci.aradialib_RogueBootsV1, force = true)
		didanything = true
	endif
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBra)				
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Bra slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dci.aradialib_RogueBraV1, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			didanything = true
		endIf
	else
		libs.LockDevice(Libs.PlayerRef, dci.aradialib_RogueBraV1, force = true)
		didanything = true
	endif
	if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousGloves)				
		libs.playerref.EquipItem(dci.aradialib_RogueGlovesV1)
	Else
		libs.playerref.AddItem(dci.aradialib_RogueGlovesV1)
	Endif
EndFunction


bool function dcur_startexhibitionistsuitquest(bool suppressfeedback = false)
	Bool didanything = false
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousSuit)				
		; character is already wearing a suit - if it's a generic one, we just unequip it
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Suit slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_exhibitionistSuit, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else
			if !suppressfeedback
				dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
				Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you find yourself locked into a skin tight transparent rubber suit.", messagebox = true)  
			endif			
			didanything = true
		endIf
	else
		if !suppressfeedback
			dcumenu.dcur_electricblastspell.remoteCast(libs.playerref, libs.playerref, libs.playerref)
			Libs.notify("Your body twists in agony as you get zapped with arcane energy. When you regain your senses you find yourself locked into a skin tight transparent rubber suit.", messagebox = true)  
		endif
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_exhibitionistSuit, force = true)
		didanything = true
	endif
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBoots)				
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Boots slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_exhibitionistBoots, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		Else			
			didanything = true
		endIf
	else
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_exhibitionistBoots, force = true)
		didanything = true
	endif	
	return didanything
endfunction

bool function equipbeltofshame(bool suppressfeedback = false)
	Bool didanything = false
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt)				
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Belt slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_beltofshame, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			didanything = true
		endIf
	else
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_beltofshame, force = true)
		didanything = true
	endif	
	if didanything && !suppressfeedback
		Libs.notify("You have been locked in a time-locked chastity belt!", messagebox = true)  
	endif
	return didanything
endfunction

bool function equipyokeofshame(bool suppressfeedback = false)
	Bool didanything = false
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHeavyBondage) && !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousStraitjacket)
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Armbinder slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_yokeofshame, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			didanything = true
		endIf
	else		
		if libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_yokeofshame, force = true)
			didanything = true
		endif
	endif	
	if didanything
		dclibs.strip(libs.playerref, false)
	EndIf
	if didanything && !suppressfeedback
		Libs.notify("You have been locked in a time-locked yoke!", messagebox = true)  
	endif
	return didanything
endfunction

bool function equipmisogynybelt(bool suppressfeedback = false)
	Bool didanything = false
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt)				
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Belt slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_misogynybelt, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			didanything = true
		endIf
	else
		libs.LockDevice(Libs.PlayerRef, dcumenu.dcur_misogynybelt, force = true)
		didanything = true
	endif	
	if didanything && !suppressfeedback
		Libs.notify("You have been locked in a chastity belt!", messagebox = true)  
	endif
	return didanything
endfunction

bool function equipultratightstraitjacket(bool suppressfeedback = false)
	Bool didanything = false
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHeavyBondage) || Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousSuit)	
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Required slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcur_utsj_1_dress_inventory, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			didanything = true
		endIf
	else
		libs.LockDevice(Libs.PlayerRef, dcur_utsj_1_dress_inventory, force = true)
		didanything = true
	endif	
	if didanything && !suppressfeedback
		Libs.notify("You have been locked in an ultra-tight straitjacket!", messagebox = true)  
	endif
	return didanything
endfunction

bool function equipultratightarmbinder(bool suppressfeedback = false)
	Bool didanything = false
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHeavyBondage)
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Required slot is occupied.")
		Endif
		If !libs.LockDevice(Libs.PlayerRef, dcur_teb_elbowbinder_Inventory, force = true)
			If dcumenu.debuglogenabled
				Debug.Trace("[DCUR] Item is tagged with Block Generic. Aborting!")				
			Endif
			return false
		else			
			didanything = true
		endIf
	else
		libs.LockDevice(Libs.PlayerRef, dcur_teb_elbowbinder_Inventory, force = true)
		didanything = true
	endif	
	if didanything && !suppressfeedback
		Libs.notify("You have been locked in an ultra-tight armbinder!", messagebox = true)  
	endif
	return didanything
endfunction

bool function equipchainharness(bool suppressfeedback = false)
	Bool didanything = false
	if Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHarness) || Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar) 
		If dcumenu.debuglogenabled
			Debug.Trace("[DCUR] Harness or collar slot is occupied.")
		Endif
		return false
	else
		libs.equipDevice(Libs.PlayerRef, xlibs.zadx_HR_ChainHarnessBodyInventory, xlibs.zadx_HR_ChainHarnessBodyRendered, Libs.zad_DeviousHarness, skipevents = false, skipmutex = true)
		didanything = true
	endif	
	If didanything
		if dcumenu.enableundress
			dclibs.strip(libs.playerref, false)
		Endif
		; equip as many other items as we can:
		if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousArmCuffs)
			libs.equipDevice(Libs.PlayerRef, xlibs.zadx_HR_ChainHarnessArmsInventory, xlibs.zadx_HR_ChainHarnessArmsRendered, Libs.zad_DeviousArmCuffs, skipevents = false, skipmutex = true)
		EndIf
		if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousLegCuffs)
			libs.equipDevice(Libs.PlayerRef, xlibs.zadx_HR_ChainHarnessLegsInventory, xlibs.zadx_HR_ChainHarnessLegsRendered, Libs.zad_DeviousLegCuffs, skipevents = false, skipmutex = true)				
		EndIf
		if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBra)
			libs.equipDevice(Libs.PlayerRef, xlibs.zadx_HR_ChainHarnessBraInventory, xlibs.zadx_HR_ChainHarnessBraRendered, Libs.zad_DeviousBra, skipevents = false, skipmutex = true)				
		EndIf
		if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousGloves)
			libs.equipDevice(Libs.PlayerRef, xlibs.zadx_HR_ChainHarnessGlovesInventory, xlibs.zadx_HR_ChainHarnessGlovesRendered, Libs.zad_DeviousGloves, skipevents = false, skipmutex = true)				
		EndIf
		if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBoots)
			libs.equipDevice(Libs.PlayerRef, xlibs.zadx_HR_ChainHarnessBootsInventory, xlibs.zadx_HR_ChainHarnessBootsRendered, Libs.zad_DeviousBoots, skipevents = false, skipmutex = true)				
		EndIf
		if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousPiercingsNipple)
			libs.equipDevice(Libs.PlayerRef, xlibs.zadx_HR_ChainHarnessNippleInventory, xlibs.zadx_HR_ChainHarnessNippleRendered, Libs.zad_DeviousPiercingsNipple, skipevents = false, skipmutex = true)				
		EndIf
		if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousGag)
			libs.equipDevice(Libs.PlayerRef, xlibs.zadx_HR_PearGagInventory, xlibs.zadx_HR_PearGagRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)				
		EndIf
		if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousPlugAnal) && !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt) 
			libs.equipDevice(Libs.PlayerRef, xlibs.zadx_HR_IronPearAnalSignBlackInventory, xlibs.zadx_HR_IronPearAnalSignBlackRendered, Libs.zad_DeviousPlugAnal, skipevents = false, skipmutex = true)				
		EndIf
		if !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousPlugVaginal) && !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt) 
			libs.equipDevice(Libs.PlayerRef, xlibs.zadx_HR_IronPearVaginalBellBlackInventory, xlibs.zadx_HR_IronPearVaginalBellBlackRendered, Libs.zad_DeviousPlugVaginal, skipevents = false, skipmutex = true)				
		EndIf		
	Endif
	if didanything && !suppressfeedback
		Libs.notify("You have been locked in a chain harness!", messagebox = true)  
	endif
	return didanything
endfunction

bool function dcur_estrusattack(bool tentaclesonly = false, bool noimpregnation = false)
	;sslBaseAnimation[] anims
	;Actor[] SexActors
	if dclibs.hasEstrus() && dcumenu.useEstrus	
		libs.notify("The ground is moving under your feet...")
		if libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			armor armb = libs.GetWornDevice(libs.playerref, libs.zad_DeviousHeavyBondage)
			if libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousHeavyBondage)
				libs.notify("Your wrist restraint is forcefully ripped off you...")
				libs.playerref.dropobject(armb)
			else	
				Utility.Wait(1)
				libs.notify("You feel something moving away from you. Phew!")
				return false
			endif					
		endif
		if libs.playerRef.WornHasKeyword(libs.zad_DeviousBelt)
			armor belt = libs.GetWornDevice(libs.playerref, libs.zad_DeviousBelt)
			if libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousBelt)
				libs.notify("Your chastity belt is forcefully ripped off you...")
				libs.playerref.dropobject(belt)
			else	
				Utility.Wait(1)
				libs.notify("You feel something moving away from you. Phew!")
				return false
			endif					
		endif
		if libs.PlayerRef.IsSneaking()		
			libs.playerRef.StartSneaking()						
			if libs.PlayerRef.IsWeaponDrawn() 			
				libs.PlayerRef.SheatheWeapon()
				Utility.Wait(2)
			endif
		EndIf															
		; The player would be killed while wearing a slave or cursed collar, so we're delaying the update event for 2 mins.
		; obsolete since the update routine now doesn't trigger while any SL animation is running
		;if libs.IsWearingDevice(libs.PlayerRef, dcumenu.dcur_SlaveCollarRendered, libs.zad_DeviousCollar) == 1	|| libs.IsWearingDevice(libs.PlayerRef, dcumenu.dcur_slutCollarRendered, libs.zad_DeviousCollar) == 1
		;	scqs.UnregisterForUpdate()
		;	scqs.RegisterForSingleUpdate(150)
		;endif
		;if libs.IsWearingDevice(libs.PlayerRef, dclibs.ccqs.dcur_cursedCollarRendered, libs.zad_DeviousCollar) == 1
		;	dclibs.ccqs.UnregisterForUpdate()
		;	dclibs.ccqs.RegisterForSingleUpdate(150)
		;endif			
		debug.trace("[DCUR] Firing EC attack")
		int i = Utility.RandomInt(0, 3) 				
		if i == 1 && tentaclesonly 
			i = 0
		endif
		bool impregnate = (Utility.RandomFloat(0.0, 99.9) < dcumenu.estrusimpregnatechance)
		; if it's the machine, always apply the effect
		if i == 1
			impregnate = true
		endif
		debug.trace("[DCUR] EC trap type = " + i + ". Effect set to: " + impregnate)
		int crowdradius = 0
		if dcumenu.estrusdrawcrowd
			crowdradius = 1500
		endif
		int ECTrap = ModEvent.Create("ECStartAnimation") ;Does not have to be "ECTrap" any int name is OK						
		if (ECTrap)
		   ModEvent.PushForm(ECTrap, self)             ; SendModEvent "black magic" - required
		   ModEvent.PushForm(ECTrap, game.getplayer())	; Target as Form
		   ModEvent.PushInt(ECTrap, i) 				   ; Animation as Int  0 = Tentacles, 1 = Machine 2 = Slime 3 = Ooze
		   ModEvent.PushBool(ECTrap, impregnate)             ; bool Apply ECeffect (Ovipostion/exhausted) 
		   ModEvent.Pushint(ECTrap, crowdradius)               ; Int Alarm radius in units (0 to disable)
		   ModEvent.PushBool(ECTrap, true)             ; bool Use (basic) crowd control on hostiles
		   ModEvent.Send(ECtrap)
		else
			libs.notify("[DCUR] Fatal Error: Estrus mod event could not be created.")
		endIf
		if dcumenu.debugenabled
			libs.notify("Chaurus attack triggered.")
		endif
		return true									
	endif	
	return false
endfunction

bool function dcur_equipAradiaLivingHarness()
	if dclibs.hasAradia() && dci.aradialib_livingharnessRendered != None && !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousHarness) && !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousBelt) && !Libs.PlayerRef.WornHasKeyword(Libs.zad_DeviousCollar)
		if libs.PlayerRef.IsSneaking()
			libs.playerRef.StartSneaking()
		endif
		Libs.notify("You suddenly get assaulted by something living. Before you can react in any way, the lifeform has already wrapped itself around your body...", messagebox = true)  
		Utility.Wait(0.1)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStart")
		dcumenu.black.ApplyCrossFade(1)
		Utility.Wait(4)		
	
		If dcumenu.enableundress
			dclibs.strip(libs.playerref, false)
		EndIf
		libs.equipDevice(libs.playerRef, dci.aradialib_livingcream, dci.aradialib_livingcreamRendered, libs.zad_DeviousPlugVaginal, skipevents = false, skipmutex = true)
		libs.equipDevice(libs.playerRef, dci.aradialib_livingharness, dci.aradialib_livingharnessRendered, libs.zad_DeviousHarness, skipevents = false, skipmutex = true)
		libs.PlayerRef.RemoveItem(dci.aradialib_livingkey, Libs.PlayerRef.GetItemCount(dci.aradialib_livingkey))
		ImageSpaceModifier.Removecrossfade(1)
		Utility.Wait(2)
		Debug.SendAnimationEvent(libs.playerRef, "BleedOutStop")
		return true
	endif
	return false
endfunction

; Yes, that's really ALL that's required to implement furniture traps in DDC...
bool function furnituretrap()
	Int n = dcur_furnituretrapdevices.GetSize()
	n -= 1
	Activator act = dcur_furnituretrapdevices.GetAt(Utility.RandomInt(0,n)) As Activator
	if act
		ObjectReference furn = dcLibs.zadc.BobTheBuilder(act)
		if furn
			zadcFurnitureScript fs = furn as zadcFurnitureScript						
			fs.DestroyOnRemove = True		; no littering!
			fs.AllowRewardonEscape = False	; It's a trap, not a lottery win!
			fs.DestroyKey = True			; consume key
			dcLibs.zadc.LockActor(libs.PlayerRef, furn)
			int timer = Utility.RandomInt(2,6)
			dcLibs.zadc.SetTimedRelease(furn, Hours = timer, ResetStartTime = False)
			return true
		endif
	EndIf
	return false	
endfunction

Bool Function CheckForRequiredSlots(Actor a, Armor rDevice)
	Int i = dcumenu.dcur_devicekeywords.GetSize()
	while i > 0
		i -= 1
		if rDevice.HasKeyWord(dcumenu.dcur_devicekeywords.GetAt(i) As Keyword) && a.WornHasKeyWord(dcumenu.dcur_devicekeywords.GetAt(i) As Keyword)
			return false
		EndIf
	EndWhile
	return true
EndFunction

Function DeviceInspection(Actor a)
	Int i = a.GetNumItems()
	Int MaxItems = 50	; sanity limit for packrat-sized inventories
	Form Frm
	dcur_devicesfound.Revert()	
	While i > 0 && MaxItems > 0
		i -= 1
		Frm = a.GetNthForm(i)
		If Frm.HasKeyword(libs.zad_InventoryDevice)
			; we don't care if the item is worn at this point, will check for that later
			if !Frm.HasKeyword(libs.zad_BlockGeneric) && !Frm.HasKeyword(libs.zad_QuestItem)
				dcur_devicesfound.AddForm(Frm)
				MaxItems -= 1
			EndIf
		EndIf
	EndWhile	
	i = dcur_devicesfound.GetSize()
	if i == 0
		; nothing there
		return
	EndIf
	; all right, so shuffling a formlist would be both slow and cumbersome to do, so we're just using the list from the start and save some CPU cycles
	Int ItemsEquipped = 0	
	Armor iDevice
	Armor rDevice
	Keyword kw
	while i > 0
		i -=1
		iDevice = dcur_devicesfound.GetAt(i) As Armor
		kw = libs.GetDeviceKeyword(iDevice)
		if !a.WornHasKeyword(kw)			
			rDevice = libs.GetRenderedDevice(iDevice)
			if CheckForRequiredSlots(a, rDevice)
				libs.EquipDevice(a, iDevice, rDevice, kw, skipevents = false, skipmutex = true)
				ItemsEquipped += 1
			EndIf
		EndIf
	EndWhile
EndFunction

Event OnFurnitureAction(Form user, Form device, Bool LockAction)
	If user != libs.PlayerRef || !isFurniturePunished || LockAction
		return
	EndIf	
	UnregisterForModEvent("DDC_DeviceEvent")
	isFurniturePunished = False
	dcLibs.ReleaseFollowers()
	Actor Follower = dclibs.dcur_followerlist.GetAt(0) As Actor
	If Follower && dcLibs.zadc.GetDevice(Follower)
		dcLibs.zadc.UnlockActor(Follower)
	EndIf
EndEvent

FormList Function GetFurnitureList()
	FormList furnlist = none
	If libs.PlayerRef.getworldSpace() == WhiterunWorld || libs.PlayerRef.IsInLocation(WhiterunLocation)			
		furnlist = dcur_furniture_whiterun
	ElseIf libs.PlayerRef.getworldSpace() == WindhelmWorld || libs.PlayerRef.IsInLocation(WindhelmLocation)
		furnlist = dcur_furniture_windhelm
	ElseIf libs.PlayerRef.getworldSpace() == RiftenWorld || libs.PlayerRef.IsInLocation(RiftenLocation)
		furnlist = dcur_furniture_riften
	ElseIf libs.PlayerRef.getworldSpace() == SolitudeWorld || libs.PlayerRef.IsInLocation(SolitudeLocation)
		furnlist = dcur_furniture_solitude
	ElseIf libs.PlayerRef.getworldSpace() == MarkarthWorld || libs.PlayerRef.IsInLocation(MarkarthLocation)
		furnlist = dcur_furniture_markarth
	elseif libs.PlayerRef.IsInLocation(MorthalLocation)
		furnlist = dcur_furniture_morthal
	elseif libs.PlayerRef.IsInLocation(DawnstarLocation)
		furnlist = dcur_furniture_dawnstar
	elseif libs.PlayerRef.IsInLocation(FalkreathLocation)
		furnlist = dcur_furniture_falkreath
	elseif libs.PlayerRef.IsInLocation(WinterholdLocation)
		furnlist = dcur_furniture_winterhold
	EndIf
	return furnlist
EndFunction

Bool isFurniturePunished

Function FurniturePunishment()
	FormList furnlist = GetFurnitureList()
	If !FurnList
		return
	EndIf
	ObjectReference furn
	Int i = furnlist.GetSize()
	i -= 1
	Int rnd = Utility.RandomInt(0, i)
	furn = furnlist.GetAt(rnd) As ObjectReference	
	if furn && !dcLibs.zadc.GetUser(furn)
		isFurniturePunished = true
		Utility.Wait(0.5)
		dcLibs.zadc.LockActor(libs.PlayerRef, furn)
		RegisterForModEvent("DDC_DeviceEvent", "OnFurnitureAction")
		Actor Follower = dclibs.dcur_followerlist.GetAt(0) As Actor	
		ObjectReference LinkedDevice = dcLibs.zadc.GetLinkedDevice(furn, 0)
		if LinkedDevice && Follower && dcLibs.IsFemale(Follower)
			dclibs.ParkFollowers(ignorefirstX = 1)
			dcLibs.zadc.LockActor(Follower, LinkedDevice)
		Else
			dclibs.ParkFollowers(ignorefirstX = 0)
		EndIf
	EndIf
EndFunction




