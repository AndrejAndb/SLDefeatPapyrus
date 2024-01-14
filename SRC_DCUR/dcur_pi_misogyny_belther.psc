;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_pi_misogyny_belther Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dclibs.dcur_removekeys(dclibs.libs.playerref, thief = akSpeaker)
	dclibs.stealfollowerkeys(thief = akSpeaker)
	If Utility.RandomInt(0,99) < 20
		dclibs.etl.equipmisogynybelt()	
	Else
		dclibs.etl.equipbeltofshame()	
		dclibs.dcur_equiprandombra(dclibs.libs.playerref, theme = dclibs.dcumenu.equiptheme)
		dclibs.dcur_equiprandomballgag(dclibs.libs.playerref, theme = dclibs.dcumenu.equiptheme)
	Endif
	Utility.Wait(2)
	dclibs.checkchastity()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto