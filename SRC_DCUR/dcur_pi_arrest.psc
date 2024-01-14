;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_pi_arrest Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	piqs.dcur_pi_guard.Clear()
	Int bounty
	If dcumenu.pimisogyny
		bounty = dcumenu.pibounty * 2
	Else
		bounty = dcumenu.pibounty
	Endif
	Faction akFaction = akSpeaker.GetCrimeFaction()
	akFaction.ModCrimeGold(bounty, false)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto 
dcur_publicindecencyQuestScript Property piqs Auto