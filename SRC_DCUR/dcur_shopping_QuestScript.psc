Scriptname dcur_shopping_QuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
dcur_SashaQuestScript Property saqs  Auto 

Bool Property sqqsQuestRunning = false Auto

GlobalVariable Property dcur_sqqs_effectivestage Auto

Int Property StagesDone = 0 Auto
ReferenceAlias Property QuestGiver Auto
ReferenceAlias Property aliases_QuestGiver Auto
FormList Property dcur_shopping_itemsremoved Auto
FormList Property dcur_shopping_itemsadded Auto

Function QuestStartup()
	sqqsQuestRunning = true
	dcur_shopping_itemsremoved.Revert()
	dcur_shopping_itemsadded.Revert()
	SetStage(15)
	Int i = Utility.RandomInt(10,13)	
	dcur_sqqs_effectivestage.SetValueInt(i)
	SetObjectiveDisplayed(i)
	Utility.Wait(1)	
	; this quest shouldn't be done with items that make...access...hard.
	if libs.playerref.WornHasKeyword(libs.zad_DeviousBelt)
		Armor Belt = libs.GetWornDevice(libs.playerref, libs.zad_DeviousBelt)
		if libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousBelt)
			dcur_shopping_itemsremoved.AddForm(Belt)
		Endif
	Endif
	if libs.playerref.WornHasKeyword(libs.zad_DeviousGag)
		Armor Gag = libs.GetWornDevice(libs.playerref, libs.zad_DeviousGag)
		if libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousGag)
			dcur_shopping_itemsremoved.AddForm(Gag)
		Endif
	Endif
	; decorate her if she isn't already
	If !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousSuit) && !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		dclibs.dcur_equiprandomStraitJacket(libs.PlayerRef, dclibs.dcumenu.equiptheme)
		dcur_shopping_itemsadded.AddForm(libs.zad_DeviousHeavyBondage)
	Else
		If !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			dclibs.dcur_equiprandomArmbinder(libs.PlayerRef, dclibs.dcumenu.equiptheme)
			dcur_shopping_itemsadded.AddForm(libs.zad_DeviousHeavyBondage)
		EndIf		
		;If !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousSuit)
		;	dclibs.dcur_equiprandomHobbleDress(libs.PlayerRef, dclibs.dcumenu.equiptheme)
		;	dcur_shopping_itemsadded.AddForm(libs.zad_DeviousSuit)
		;EndIf		
	EndIf
	If !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousArmCuffs)
		dclibs.dcur_equiprandomarmcuffs(libs.PlayerRef, dclibs.dcumenu.equiptheme)
		dcur_shopping_itemsadded.AddForm(libs.zad_DeviousArmCuffs)
	EndIf
	If !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousLegCuffs)
		dclibs.dcur_equiprandomLegcuffs(libs.PlayerRef, dclibs.dcumenu.equiptheme)
		dcur_shopping_itemsadded.AddForm(libs.zad_DeviousLegCuffs)
	EndIf
	If !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousCollar)
		dclibs.dcur_equiprandomCollar(libs.PlayerRef, dclibs.dcumenu.equiptheme)
		dcur_shopping_itemsadded.AddForm(libs.zad_DeviousCollar)
	EndIf
EndFunction

Function QuestFinish()
	sqqsQuestRunning = false
	SetStage(30)
	SetObjectiveDisplayed(30)		
	String QGName = QuestGiver.GetActorReference().GetName()	
	int i = dcur_shopping_itemsremoved.GetSize() - 1
	If i >= 0
		libs.notify(QGName + " is unlocking your 'uniform'")
	EndIf
	While i >= 0
		armor a = dcur_shopping_itemsadded.GetAt(i) As Armor
		libs.removeDevice(libs.Playerref, a, libs.GetRenderedDevice(a), libs.GetDeviceKeyword(a), destroyDevice = true, skipevents = false, skipmutex = true)			
		i -= 1
	EndWhile	
	; if it's a standard wrist restraint and was not equipped by the quest, remove it as "reward"
	if libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		if libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousHeavyBondage)
			libs.notify(QGName + " is unlocking your wrist restraints as reward for completing the task.")
		Endif
	Endif	
	; put the stuff back on she was wearing when starting the quest.
	i = dcur_shopping_itemsremoved.GetSize() - 1
	While i >= 0
		armor a = dcur_shopping_itemsremoved.GetAt(i) As Armor
		libs.equipDevice(libs.Playerref, a, libs.GetRenderedDevice(a), libs.GetDeviceKeyword(a), skipevents = false, skipmutex = true)			
		i -= 1
	EndWhile	
	Utility.Wait(1)
	If QuestGiver.GetActorReference() == saqs.GetSasha() && saqs.IsSashaDominating()
		; she will remove up to three devices
		If dclibs.RemoveGenericRestraints(saqs.GetSasha(), 3) == 0
			; she didn't find any			
		EndIf
	Else
		dclibs.GiveRewards(leverage = libs.Playerref.GetLevel())
	EndIf
	dcur_sqqs_effectivestage.SetValueInt(0)
	QuestGiver.Clear()
	aliases_QuestGiver.Clear()	
	Stop()
EndFunction