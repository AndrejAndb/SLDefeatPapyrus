;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_SexVaginal Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dclibs.sexwithplayer(akspeaker, consensual = true, stages = 1, preferredtag = "Vaginal", nostrip = false)
	saqs.lastsexwithplayer = Utility.GetCurrentGameTime()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_SashaQuestScript Property saqs  Auto  