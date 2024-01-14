;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname dcur_onActivateNPCScript Extends Perk Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
	if dcumenu.pickpocketkeys == 0.0 
		return
	endif	
	if rememberme(akTargetRef)
		if dcumenu.debuglogenabled
			Debug.Trace("[DCUR] - Pickpocketed " + akTargetRef.GetBaseObject().GetName())
		endif
		AddKeys(akTargetRef)
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  

bool function rememberme(ObjectReference who)
	if dclibs.hasbeenlooted(who.GetFormID())
		if dcumenu.debugenabled
			libs.notify("You already pickpocketed " + who.GetDisplayName())
		endif
		return false
	else
		dclibs.rememberID(who.GetFormID())
	endif
	return true
endfunction

Function AddKeys(ObjectReference addto)
	float dropchance = dcumenu.pickpocketkeys
	if !(dcumenu.nokeyswithoutrestraints && dclibs.getDDitemcount(libs.playerref) == 0) && Utility.RandomFloat(0.0,99.9) < dropchance		
		if dcumenu.dropusefulkeys
			dclibs.FindAnyUsefulKey(addto)
		else		
			Float chance = 0.0
			Float grandtotalweight = 0.0 	
			If Utility.RandomInt(1,3) == 1
				grandtotalweight = dcumenu.headrestraintkeychance + dcumenu.handrestraintkeychance + dcumenu.bodyrestraintkeychance	+ dcumenu.legrestraintkeychance		
				chance = Utility.RandomFloat(0.0, grandtotalweight)		
				if chance < dcumenu.headrestraintkeychance
					addto.AddItem(dcumenu.dcur_headrestraintskey, 1) 
					return 
				else
					chance = chance - dcumenu.headrestraintkeychance
				endIf
				if chance < dcumenu.handrestraintkeychance
					addto.AddItem(dcumenu.dcur_handrestraintskey, 1) 
					return 
				else
					chance = chance - dcumenu.handrestraintkeychance
				endIf
				if chance < dcumenu.bodyrestraintkeychance
					addto.AddItem(dcumenu.dcur_bodyrestraintskey, 1) 
					return 
				else
					chance = chance - dcumenu.bodyrestraintkeychance
				endIf				
				if chance < dcumenu.legrestraintkeychance
					addto.AddItem(dcumenu.dcur_legrestraintskey, 1) 
					return 
				else
					chance = chance - dcumenu.legrestraintkeychance
				endIf
			else
				grandtotalweight = dcumenu.chastitykeyweight + dcumenu.restraintskeyweight + dcumenu.piercingkeyweight				
				chance = Utility.RandomFloat(0.0, grandtotalweight)		
				if chance < dcumenu.chastitykeyweight		
					addto.AddItem(libs.chastityKey, 1) 
					return
				else
					chance = chance - dcumenu.chastitykeyweight				
				endIf
				if chance < dcumenu.restraintskeyweight		
					addto.AddItem(libs.restraintsKey, 1) 
					return 
				else
					chance = chance - dcumenu.restraintskeyweight				
				endIf
				if chance < dcumenu.piercingkeyweight		
					addto.AddItem(libs.piercingKey, 1) 
					return
				else
					chance = chance - dcumenu.piercingkeyweight				
				endIf
			endif
		Endif
		if dcumenu.debuglogenabled
			Debug.Trace("[DCUR] - Added key to " + addto.GetBaseObject().GetName())
		endif
	endif	
 endfunction 