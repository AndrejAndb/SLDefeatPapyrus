;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_tieme_tieNPC Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	int count = dclibs.getDDitemCount(akSpeaker)
	alias_bondagetransfer.ForceRefTo(akspeaker)
	akSpeaker.OpenInventory(TRUE)
	Utility.Wait(0.5)
	alias_bondagetransfer.Clear()
	EquipRestraints(akSpeaker)
	Utility.Wait(1)
	if !akSpeaker.WornHasKeyword(dclibs.libs.zad_DeviousGag)
		akSpeaker.ClearExpressionOverride()
		;ResetPhonemeModifier(akSpeaker)
	EndIf
		
	int newcount = dclibs.getDDitemCount(akSpeaker)
	if newcount < count
		libs.notify("Since you removed more restraints from " + akSpeaker.GetLeveledActorBase().GetName() + " than you put on, you have been reported to the guard for theft!", messagebox = true)		
		Faction akFaction = akSpeaker.GetCrimeFaction()
		akFaction.ModCrimeGold(dcumenu.pibounty, false)		
	ElseIf newcount > count
		libs.notify(akSpeaker.GetLeveledActorBase().GetName() + " is happy to be tied up and rewards you for giving her want she wanted!", messagebox = true)
		dclibs.GiveRewards(leverage = (count - newcount) + 1)
	Endif
	
	If tmqs.GetStage() == 10		
		; need to wait a bit longer because equipping the items takes time, so the check could fail.
		Utility.Wait(3)
		If akSpeaker.WornHasKeyword(libs.zad_DeviousGag) && akSpeaker.WornHasKeyword(libs.zad_DeviousHeavyBondage) && (libs.playerref.WornHasKeyword(dcur_kw_isrubbersuit) || libs.playerref.WornHasKeyword(libs.zad_DeviousSuit) || libs.PlayerRef.GetWornForm(Armor.GetMaskForSlot(32)).HasKeyWordString("dcur_kw_dollmaker_rubber"))
			libs.notify("You bound someone for the Dollmaker!")
			dcur_tiemequest_npcsbound.SetValueInt(dcur_tiemequest_npcsbound.GetValueInt() + 1)
			tmqs.UpdateCurrentInstanceGlobal(dcur_tiemequest_npcsbound)
			tmqs.SetObjectiveDisplayed(10, false)
			tmqs.SetObjectiveDisplayed(10, true)
			Utility.Wait(1)
			If dcur_tiemequest_npcsbound.GetValueInt() == 5				
				tmqs.SetStage(20)
				tmqs.SetObjectiveCompleted(10)
				tmqs.SetObjectiveDisplayed(20)
			Endif		
		Endif
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Function EquipRestraints(Actor a)
	int i = a.GetNumItems()
	While i > 0
		i -= 1
		Form kForm = a.GetNthForm(i)
		If kForm.GetType() == 26 && kForm.HasKeyword(libs.zad_InventoryDevice) && !a.Isequipped(kForm) 
			libs.LockDevice(a, kForm As Armor)
		EndIf
	EndWhile
	
EndFunction

ReferenceAlias Property alias_bondagetransfer Auto
dcur_library Property dclibs  Auto
zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto 
dcur_tiemeupQuestScript Property tmqs Auto  
GlobalVariable Property dcur_tiemequest_npcsbound Auto
Keyword Property dcur_kw_isrubbersuit Auto