;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_npcsurrender_tie Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	akSpeaker.SetOutfit(dcur_outfit_sashaNakedTotally)
	dclibs.dcur_equiprandomarmbinder(akSpeaker, dcumenu.equiptheme)
	dclibs.dcur_equiprandomgag(akSpeaker, dcumenu.equiptheme)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Outfit Property dcur_outfit_sashaNakedTotally Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  