;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_tieme_unlockNPC Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	int count = dclibs.getDDitemCount(akSpeaker)
	alias_bondagetransfer.ForceRefTo(akspeaker)
	akSpeaker.OpenInventory(TRUE)
	Utility.Wait(1)
	alias_bondagetransfer.Clear()
	if !akSpeaker.WornHasKeyword(dclibs.libs.zad_DeviousGag)
		akSpeaker.ClearExpressionOverride()
		;ResetPhonemeModifier(akSpeaker)
	EndIf	
	int newcount = dclibs.getDDitemCount(akSpeaker)
	if newcount == 0
		libs.notify(akSpeaker.GetLeveledActorBase().GetName() + " is rewarding you!")
		If dcumenu.tm_nicerewards
			libs.playerref.addItem(dcumenu.dcur_luckycharm, 1)
		Else
			libs.playerref.addItem(dcumenu.gold001, 150)
		Endif
	elseif newcount < count
		libs.notify(akSpeaker.GetLeveledActorBase().GetName() + " is rewarding you!")
		dclibs.GiveRewards(leverage = (count - newcount) + 1)
	ElseIf newcount > count
		libs.notify("Since you put more restraints on " + akSpeaker.GetLeveledActorBase().GetName() + " instead of helping, you have been reported to the guard!", messagebox = true)		
		Faction akFaction = akSpeaker.GetCrimeFaction()
		akFaction.ModCrimeGold(dcumenu.pibounty, false)
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property alias_bondagetransfer Auto
dcur_library Property dclibs  Auto  
dcur_mcmconfig Property dcumenu  Auto 
zadlibs Property libs  Auto  