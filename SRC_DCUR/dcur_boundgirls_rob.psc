;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_boundgirls_rob Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	dclibs.MarkBoundGirlDone(akSpeaker)
	dclibs.GiveBondageRewards(leverage = 3)	
	If Utility.RandomInt() < 40		
		; Let's see if someone spotted her doing that:
		Actor currenttest = Game.FindRandomActorFromRef(akSpeaker, 750.0)
		if currenttest && dclibs.testrapist(currenttest)										
			Faction akFaction = currenttest.GetCrimeFaction()
			If akFaction
				akFaction.ModCrimeGold(dcumenu.pibounty, false)
				dclibs.libs.notify(currenttest.GetActorBase().GetName() + " saw you robbing a helpless person!!!")
			EndIf
		EndIf
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_mcmconfig Property dcumenu  Auto 