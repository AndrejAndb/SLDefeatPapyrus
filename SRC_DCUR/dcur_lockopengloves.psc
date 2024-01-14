;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_lockopengloves Extends TopicInfo Hidden

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto  

Keyword property dcur_kw_simplerubbergloves Auto
Keyword property dcur_kw_leonsrubbergloves Auto


;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	If libs.playerref.WornHasKeyword(dcur_kw_leonsrubbergloves)
		libs.removeDevice(libs.playerref, dcumenu.dclibs.mcs.leqs.dcur_leon_rubbergloves, dcumenu.dclibs.mcs.leqs.dcur_leon_rubberglovesRendered, Libs.zad_DeviousGloves, destroyDevice = true, skipevents = false, skipmutex = true)
		libs.equipDevice(libs.playerref, dcumenu.dcur_RubberGlovesLocked, dcumenu.dcur_RubberGlovesLockedRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)					
	elseIf libs.playerref.WornHasKeyword(dcur_kw_simplerubbergloves)
		libs.removeDevice(libs.playerref, dcumenu.dcur_RubberGlovesSimple, dcumenu.dcur_RubberGlovesSimpleRendered, Libs.zad_DeviousGloves, destroyDevice = true, skipevents = false, skipmutex = true)
		libs.equipDevice(libs.playerref, dcumenu.dcur_RubberGlovesLocked, dcumenu.dcur_RubberGlovesLockedRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)					
	else		
		libs.removeDevice(libs.playerref, dcumenu.dcur_RubberGloves, dcumenu.dcur_RubberGlovesRendered, Libs.zad_DeviousGloves, destroyDevice = true, skipevents = false, skipmutex = true)
		libs.equipDevice(libs.playerref, dcumenu.dcur_RubberGlovesLocked, dcumenu.dcur_RubberGlovesLockedRendered, libs.Zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)					
	endif
	If akSpeaker.GetActorBase().GetSex() == 1
		libs.notify(akSpeaker.GetActorBase().GetName() + " produces two padlocks from one of her pockets and before you can react in any meaningful way she grabs your gloves and pulls them together on your back, hooking the padlocks through the D-rings attached to the steel bands on your gloves and snapping them shut. Your arms and elbows are now bound tight...", messagebox = true)
	else
		libs.notify(akSpeaker.GetActorBase().GetName() + " produces two padlocks from one of his pockets and before you can react in any meaningful way he grabs your gloves and pulls them together on your back, hooking the padlocks through the D-rings attached to the steel bands on your gloves and snapping them shut. Your arms and elbows are now bound tight...", messagebox = true)
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
