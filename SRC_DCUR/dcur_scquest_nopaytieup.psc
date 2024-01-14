;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_scquest_nopaytieup Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dcumenu.dcur_solicitationoutcome.SetValueInt(0)
	dclibs.mcs.soqs.dcur_solicitationcustomer.Clear()	
	;dcumenu.dcur_solicitationcustomers.Revert()
	if !libs.playerref.WornHasKeyword(Libs.zad_DeviousHeavyBondage) && !libs.playerref.WornHasKeyword(Libs.zad_DeviousGag)				
		Utility.Wait(1)
		dclibs.dcur_equiprandomgag(libs.playerref, dcumenu.equiptheme)
		if dcumenu.useblindfold
			dclibs.dcur_equiprandomblindfold(libs.playerref, dcumenu.equiptheme)
		endif
		if dcumenu.yokeweight > 0
			libs.equipDevice(libs.playerref, dcumenu.dcur_heavyyoke, dcumenu.dcur_heavyyokeRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)	
		else
			dclibs.dcur_equiprandomarmbinder(libs.playerref, dcumenu.equiptheme)
		endif
	else
		dclibs.itemequip(libs.playerref)
	endif
	if Utility.RandomInt(0,100) < dcumenu.losekeychance
		dclibs.stealfollowerkeys(thief = akSpeaker) 	
		dclibs.dcur_removekeys(libs.playerref, thief = akSpeaker)	
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
