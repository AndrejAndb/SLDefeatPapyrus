;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_npcsurrender_tietight Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	akSpeaker.SetOutfit(dcur_outfit_sashaNakedTotally)		
	
	;pick a random arm restraint
	If Utility.RandomInt() < 33
		dclibs.dcur_equiprandomleatherarmbinder(akSpeaker, dcumenu.equiptheme)
	Elseif Utility.RandomInt() < 66
		dclibs.dcur_equiprandomyoke(akSpeaker, dcumenu.equiptheme)
	Else
		dclibs.dcur_equiprandomleatherarmbinder(akSpeaker, dcumenu.equiptheme)
		dclibs.dcur_equiprandomshackles(akSpeaker, dcumenu.equiptheme)
		dclibs.dcur_equiprandombondagemittens(akSpeaker, dcumenu.equiptheme)
	EndIf
	
	;always pick a gag
	dclibs.dcur_equiprandomgag(akSpeaker, dcumenu.equiptheme)	
	
	;pick a random leg restraint
	Int i = Utility.RandomInt()
	If i < 40
		libs.equipDevice(akSpeaker, dcumenu.dcur_anklechains, dcumenu.dcur_anklechainsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
	else
		dclibs.dcur_equiprandomboots(akSpeaker, dcumenu.equiptheme)
	EndIf
	
	; pick other restraints
	i = Utility.RandomInt()
	If i < 15
		dclibs.dcur_equiprandomcollar(akSpeaker, dcumenu.equiptheme)		
	Elseif i < 50
		libs.equipDevice(akSpeaker, dclibs.xlibs.zadx_HR_NippleChainCollarInventory, dclibs.xlibs.zadx_HR_NippleChainCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)	
	Elseif i < 75
		dclibs.dcur_equiprandomcollarharness(akSpeaker, dcumenu.equiptheme)		
	Else
		dclibs.dcur_equiprandomcollar(akSpeaker, dcumenu.equiptheme)
		dclibs.dcur_equiprandomhobbledress(akSpeaker, dcumenu.equiptheme)
	EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Outfit Property dcur_outfit_sashaNakedTotally Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  