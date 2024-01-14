;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_pi_fine Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	piqs.dcur_pi_guard.Clear()
	int fine
	If dcumenu.pimisogyny
		fine = (libs.playerref.GetItemCount(gold) * 0.2) As Int
	Else
		fine = (libs.playerref.GetItemCount(gold) * 0.1) As Int
	Endif
	libs.playerref.removeitem(gold, fine)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold  Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto
zadlibs Property libs  Auto
dcur_publicindecencyQuestScript Property piqs Auto