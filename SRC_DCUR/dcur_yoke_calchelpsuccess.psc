;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_yoke_calchelpsuccess Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	int grandtotalweight = 0
	int rnd
	bool haskey = false
	bool done = false
	dcur_dialogswitch.SetValueInt(0)	
	if libs.playerref.WornHasKeyword(dcumenu.dcur_kw_yoke) && libs.playerref.GetItemCount(libs.restraintskey) > 0
		haskey = true
	endif
	if libs.playerref.WornHasKeyword(dcumenu.dcur_kw_heavyyoke) && libs.playerref.GetItemCount(dcumenu.dcur_handrestraintskey) > 0
		haskey = true
	endif	
	int chance = dcumenu.yokeremovalhelpchance		
	if !haskey
		if dclibs.isTradesperson(akSpeaker)		
			dcur_dialogswitch.SetValueInt(7)
			return
		endif		
		if Utility.RandomInt(0, 99) < chance || dcumenu.dcur_modshutdown.GetValueInt() == 1
			; would normally help
			dcur_dialogswitch.SetValueInt(4)
		else		
			grandtotalweight = dcumenu.yokeremovalwalkawayweight + dcumenu.yokeremovalrapeweight + dcumenu.yokeremovaladditemweight			
			int Select = 0			
			Select = Utility.RandomInt(0, grandtotalweight)		
			if Select < dcumenu.yokeremovalwalkawayweight
				; has key, but will not remove
				dcur_dialogswitch.SetValueInt(1)	
				done = true
			endIf
			Select = Select - dcumenu.yokeremovalwalkawayweight							
			if !done && Select < dcumenu.yokeremovalrapeweight				
				rnd = Utility.RandomInt(1,2)
				if rnd == 1
					; will not remove and rape (1)				
					dcur_dialogswitch.SetValueInt(2)
				else
					; will not remove and rape (2)
					dcur_dialogswitch.SetValueInt(3)
				endif	
				done = true				
			endIf
			Select = Select - dcumenu.yokeremovalrapeweight							
			if !done && Select < dcumenu.yokeremovaladditemweight
				; addsitems
				dcur_dialogswitch.SetValueInt(5)					
			endIf										
		endif
		; fallback
		if !done 
			; addsitems
			dcur_dialogswitch.SetValueInt(4)				
		endIf
		return
	endif			

	; player has key	
	if Utility.RandomInt(0, 99) < chance || dcumenu.dcur_modshutdown.GetValueInt() == 1
		; has key and will remove
		dcur_dialogswitch.SetValueInt(0)
	else
		grandtotalweight = dcumenu.yokeremovalwalkawayweight + dcumenu.yokeremovalrapeweight + dcumenu.yokeremovaltakekeyweight + dcumenu.yokeremovaladditemweight		
		int Select = 0						
		Select = Utility.RandomInt(0, grandtotalweight)		
		if Select < dcumenu.yokeremovalwalkawayweight
			; has key, but will not remove
			dcur_dialogswitch.SetValueInt(1)				
			done = true
		endIf
		Select = Select - dcumenu.yokeremovalwalkawayweight					
		if !done && Select < dcumenu.yokeremovalrapeweight				
			rnd = Utility.RandomInt(1,2)
			if rnd == 1
				; will not remove and rape (1)				
				dcur_dialogswitch.SetValueInt(2)
			else
				; will not remove and rape (2)
				dcur_dialogswitch.SetValueInt(3)
			endif	
			done = true
		endIf
		Select = Select - dcumenu.yokeremovalrapeweight					
		if !done && Select < dcumenu.yokeremovaltakekeyweight
			; will not remove and take keys
			dcur_dialogswitch.SetValueInt(6)			
		endIf
		Select = Select - dcumenu.yokeremovaltakekeyweight					
		if !done && Select < dcumenu.yokeremovaladditemweight
			; addsitems
			dcur_dialogswitch.SetValueInt(5)				
		endIf				
		; fallback
		if !done
			; has key, but will not remove
			dcur_dialogswitch.SetValueInt(1)							
		endIf
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property dcur_dialogswitch  Auto  
dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs Auto
dcur_library Property dclibs  Auto  
