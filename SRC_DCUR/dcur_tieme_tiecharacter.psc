;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_tieme_tiecharacter Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dclibs.dcur_removekeys(libs.playerref, thief = akSpeaker)
	dclibs.stealfollowerkeys(thief = akSpeaker) 	
	int count = 0
	if !libs.playerref.WornHasKeyword(Libs.zad_DeviousHeavyBondage)
		dclibs.dcur_equiprandomarmbinder(libs.playerref, dcumenu.equiptheme)
		Utility.Wait(1)
		count += 1
	Endif	
	If !libs.playerref.WornHasKeyword(Libs.zad_DeviousGag)						
		dclibs.dcur_equiprandomgag(libs.playerref, dcumenu.equiptheme)
		Utility.Wait(1)
		count += 1
	Endif
	If !libs.playerref.WornHasKeyword(Libs.zad_DeviousLegCuffs)						
		libs.equipDevice(libs.playerref, dcumenu.dcur_anklechains, dcumenu.dcur_anklechainsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
		Utility.Wait(1)
		count += 1
	Endif
	if dcumenu.useblindfold && !libs.playerref.WornHasKeyword(Libs.zad_DeviousBlindfold)						
		dclibs.dcur_equiprandomblindfold(libs.playerref, dcumenu.equiptheme)
		Utility.Wait(1)
		count += 1
	endif		
	if count < 2
		dclibs.itemequip(libs.playerref)
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  