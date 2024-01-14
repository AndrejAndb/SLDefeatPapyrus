;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_pi_misogyny_toughtalk_badend Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dclibs.dcumenu.dcur_electricblastspell.remoteCast(dclibs.libs.playerRef, dclibs.libs.playerRef, dclibs.libs.playerRef)
	dclibs.EquipSet(dclibs.libs.PlayerRef, Theme = dclibs.dcumenu.equiptheme, MinDifficulty = 60, MaxDifficulty = 100)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto