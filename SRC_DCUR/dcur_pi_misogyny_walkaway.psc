;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_pi_misogyny_walkaway Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	If Utility.RandomInt(0,99) < 25
		dclibs.etl.equipmisogynybelt()	
	Elseif Utility.RandomInt(0,99) < 50
		dclibs.etl.equipbeltofshame()
		dclibs.dcur_equiprandomballgag(dclibs.libs.playerref, theme = dclibs.dcumenu.equiptheme)
		dclibs.dcur_equiprandomarmbinder(dclibs.libs.playerref, theme = dclibs.dcumenu.equiptheme)
	Else	
		dclibs.sexwithplayer(akSpeaker, consensual = false, stages = 1, randomanim = true)		
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  