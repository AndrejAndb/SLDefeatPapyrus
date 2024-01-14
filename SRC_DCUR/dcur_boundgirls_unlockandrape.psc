;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_boundgirls_unlockandrape Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	if !libs.UnlockDeviceByKeyword(akSpeaker, Libs.zad_DeviousBelt)			
		; fail!
		return
	endif
	dclibs.SexWithPlayer(akSpeaker)
	dclibs.MarkBoundGirlDone(akSpeaker)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
zadlibs Property libs Auto 