;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_tieme_calcsuccess Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	if dcur_talkedtolist.GetSize() > 9 
		dcur_talkedtolist.revert()
		; Seems RemoveAddedForm is bugged, so we just wipe the list after adding the 10th person. Every other solution would take a lot of time.
		;dcur_talkedtolist.RemoveAddedForm(dcur_talkedtolist.GetAt(10))
	endif
	dcur_talkedtolist.addform(akspeaker.GetBaseObject())
	
	dcur_dialogswitch.SetValueInt(0)	
	
	; NPC is not tied and agrees to let the player tie her up
	bool success = (Utility.RandomFloat(0.0, 99.9) < dcumenu.tm_basesuccesschance) && !akSpeaker.WornHasKeyword(libs.zad_Lockable)
	If success
		; agrees to get tied
		dcur_dialogswitch.SetValueInt(1)	
		Return
	Endif
	
	; NPC is already tied
	if akSpeaker.WornHasKeyword(libs.zad_Lockable) 
		If (Utility.RandomFloat(0.0, 99.9) < dcumenu.tm_wantsunlockedchance)
			; 4 = wants to be unlocked
			dcur_dialogswitch.SetValueInt(4)		
		Else
			; 5 = loves devices she is wearing
			dcur_dialogswitch.SetValueInt(5)		
		Endif
		Return
	EndIf
	
	; NPC is not tied and fails success roll
	Float grandtotalweight = dcumenu.tm_fail_donothingweight + dcumenu.tm_fail_tiesPC + dcumenu.tm_fail_rapes + dcumenu.tm_fail_reports + dcumenu.tm_fail_tiesboth
	Float Select = 0		
	Select = Utility.RandomFloat(1, grandtotalweight)		
	if Select < dcumenu.tm_fail_donothingweight
		; does not want to get tied.
		dcur_dialogswitch.SetValueInt(2)		
		return
	else
		Select = Select - dcumenu.tm_fail_donothingweight
	endIf
	if Select < dcumenu.tm_fail_tiesPC
		; 3 = ties up PC	
		dcur_dialogswitch.SetValueInt(3)		
		return
	else
		Select = Select - dcumenu.tm_fail_tiesPC
	endIf				
	if Select < dcumenu.tm_fail_rapes
		; 6 = rapes player
		dcur_dialogswitch.SetValueInt(6)		
		return
	else
		Select = Select - dcumenu.tm_fail_rapes
	endIf				
	if Select < dcumenu.tm_fail_reports
		; 7 = report to guard
		dcur_dialogswitch.SetValueInt(7)		
		return
	else
		Select = Select - dcumenu.tm_fail_reports
	endIf				
	if Select < dcumenu.tm_fail_tiesboth
		; 7 = report to guard
		dcur_dialogswitch.SetValueInt(8)		
		return
	else
		Select = Select - dcumenu.tm_fail_tiesboth
	endIf				
	
	if dcur_dialogswitch.GetValueInt() == 0		
		dcur_dialogswitch.SetValueInt(2)
	endIf	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
GlobalVariable Property dcur_dialogswitch  Auto  
FormList Property dcur_talkedtolist  Auto  