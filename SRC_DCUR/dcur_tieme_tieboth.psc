;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_tieme_tieboth Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dclibs.dcur_removekeys(libs.playerref, thief = akSpeaker)
	dclibs.stealfollowerkeys(thief = akSpeaker) 	
	Int PlayerTheme = dcumenu.equiptheme
	if PlayerTheme == 0 && dcumenu.consistenttheme
		playertheme = Utility.RandomInt(1, dcumenu.ThemeList.Length - 1)
	endif
	dclibs.equipfullset(libs.playerref, PlayerTheme)
	Utility.Wait(1)
	dclibs.dcur_equiprandomarmbinder(akSpeaker, theme = PlayerTheme)
	dclibs.dcur_equiprandomgag(akSpeaker, theme = PlayerTheme)
	dclibs.dcur_equiprandomblindfold(akSpeaker, theme = PlayerTheme)
	dclibs.dcur_equiprandombelt(akSpeaker, theme = PlayerTheme)
	dclibs.dcur_equiprandombra(akSpeaker, theme = PlayerTheme)
	dclibs.dcur_equiprandomboots(akSpeaker, theme = PlayerTheme)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  