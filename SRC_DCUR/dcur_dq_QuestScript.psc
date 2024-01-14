Scriptname dcur_dq_QuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto 
zadxlibs Property xlibs  Auto 

ReferenceAlias Property dcur_dq_startmarker Auto
ReferenceAlias Property dcur_dq_startmarker2 Auto
ReferenceAlias Property dcur_dq_startmarker3 Auto
ReferenceAlias Property dcur_dq_startmarker4 Auto
ReferenceAlias Property dcur_dq_cagemarker Auto
ReferenceAlias Property dcur_ref_dq_customer Auto
ReferenceAlias Property dcur_ref_dq_customerHit Auto
ReferenceAlias Property dcur_ref_dq_customerFollow Auto
ReferenceAlias Property dcur_ref_dq_customerStop Auto

ActorBase Property dcur_dq_customer1 Auto
ActorBase Property dcur_dq_customer2 Auto
ActorBase Property dcur_dq_customer3 Auto
MiscObject Property dcur_dq_highsecurityPack Auto
MiscObject Property dcur_dq_MedsecurityPack Auto
MiscObject Property dcur_dq_LowsecurityPack Auto
Armor Property dcur_dq_dollmakercollarInventory Auto
Armor Property dcur_dq_dollmakercollarRendered Auto
Armor Property dcur_dq_dollmakerhint Auto
Armor Property dcur_dq_dollmakerYokeInventory Auto
Armor Property dcur_dq_dollmakerYokeRendered Auto
Armor Property dcur_dq_HobbleDressLatexInventory Auto
Armor Property dcur_dq_HobbleDressLatexRendered Auto
Armor Property dcur_dq_damnbox Auto

Weapon Property dcur_dq_zapper Auto

GlobalVariable Property dcur_dq_firsttime Auto
GlobalVariable Property dcur_dq_restraintset Auto
GlobalVariable Property dcur_dq_girlstopflag Auto
String[] Property GirlNames  Auto  
Outfit[] Property GirlOutfits  Auto  
Outfit Property dcur_outfitnaked Auto

Float Property QuestStartedAt Auto Hidden
String Property GirlName Auto Hidden
String Property CityName Auto Hidden
String Property CityNameFake1 Auto Hidden
String Property CityNameFake2 Auto Hidden

Bool Startflag = true
Int EscapeChecks = 0

Actor CagedGirl

Function StartQuest()	
	
EndFunction

Function CleanupItems(Actor pl)
	If pl.GetItemCount(dcur_dq_highsecurityPack) > 0
		pl.RemoveItem(dcur_dq_highsecurityPack, pl.GetItemCount(dcur_dq_highsecurityPack))
	EndIf
	If pl.GetItemCount(dcur_dq_MedsecurityPack) > 0
		pl.RemoveItem(dcur_dq_MedsecurityPack, pl.GetItemCount(dcur_dq_MedsecurityPack))
	EndIf
	If pl.GetItemCount(dcur_dq_LowsecurityPack) > 0
		pl.RemoveItem(dcur_dq_LowsecurityPack, pl.GetItemCount(dcur_dq_LowsecurityPack))
	EndIf
EndFunction

Function AcceptQuest()
	; let's see if there is still a girl in the cage
	If CagedGirl			
		debug.trace("[DCUR] Rubber Arrears Quest: Caged Girl found - deleting.")
		dcur_ref_dq_customer.Clear()
		dcur_ref_dq_customerStop.Clear()				
		CagedGirl.Delete()	
		CagedGirl.SetCriticalStage(CagedGirl.CritStage_DisintegrateEnd)				
	EndIf
	Start()	
	Actor pl = libs.playerref
	CleanupItems(pl)
	If dcur_dq_restraintset.GetValueInt() == 1
		pl.Additem(dcur_dq_LowsecurityPack)
	ElseIf dcur_dq_restraintset.GetValueInt() == 2
		pl.Additem(dcur_dq_MedsecurityPack)
	ElseIf dcur_dq_restraintset.GetValueInt() == 3
		pl.Additem(dcur_dq_highsecurityPack)
	EndIf
	pl.Additem(dcur_dq_zapper)	
	libs.equipdevice(pl, dcur_dq_dollmakercollarInventory, dcur_dq_dollmakercollarRendered, libs.zad_DeviousCollar, skipmutex = true, skipevents = false)
	libs.equipdevice(pl, dcur_dq_HobbleDressLatexInventory, dcur_dq_HobbleDressLatexRendered, libs.zad_DeviousSuit, skipmutex = true, skipevents = false)
	Startflag = true
	EscapeChecks = 0
	RegisterForSingleUpdate(1)
EndFunction

Function SetStageZapHer(Actor akSpeaker)
	SetObjectiveCompleted(10)
	SetStage(20)
	SetObjectiveDisplayed(20)
EndFunction

Function TieHer(Actor akSpeaker)
	SetObjectiveCompleted(30)
	SetStage(40)
	SetObjectiveDisplayed(40)
	akSpeaker.SetOutFit(dcur_outfitnaked)
	dcur_ref_dq_customerHit.Clear()
	dcur_ref_dq_customerFollow.ForceRefTo(akSpeaker)
	dcur_ref_dq_customer.GetActorReference().EvaluatePackage()
	Actor pl = libs.playerref
	If dcur_dq_restraintset.GetValueInt() == 1
		pl.RemoveItem(dcur_dq_LowsecurityPack)
		libs.equipdevice(akSpeaker, xlibs.eboniteArmbinder, xlibs.eboniteArmbinderRendered, libs.zad_DeviousHeavyBondage, skipmutex = true, skipevents = false)
		libs.equipdevice(akSpeaker, xlibs.gagEboniteStrapBall, xlibs.gagEboniteStrapBallRendered, libs.zad_DeviousGag, skipmutex = true, skipevents = false)
		libs.equipdevice(akSpeaker, xlibs.bootslocking, xlibs.bootslockingRendered, libs.zad_DeviousBoots, skipmutex = true, skipevents = false)
	ElseIf dcur_dq_restraintset.GetValueInt() == 2
		;med
		pl.RemoveItem(dcur_dq_MedsecurityPack)
		libs.equipdevice(akSpeaker, dcumenu.dcur_shackles, dcumenu.dcur_shacklesRendered, libs.zad_DeviousHeavyBondage, skipmutex = true, skipevents = false)
		libs.equipdevice(akSpeaker, xlibs.zadx_HobbleDressLatexRedRelaxedInventory, xlibs.zadx_HobbleDressLatexRedRelaxedRendered, libs.zad_DeviousSuit, skipmutex = true, skipevents = false)
		libs.equipdevice(akSpeaker, xlibs.gagEboniteBall, xlibs.gagEboniteBallRendered, libs.zad_DeviousGag, skipmutex = true, skipevents = false)
	ElseIf dcur_dq_restraintset.GetValueInt() == 3
		;high
		pl.RemoveItem(dcur_dq_highsecurityPack)		
		If Utility.RandomInt() < 50
			libs.equipDevice(akSpeaker, dclibs.dci.dcur_silencerGagSimple, dclibs.dci.dcur_silencerGagSimpleRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)
		Else
			libs.equipdevice(akSpeaker, xlibs.gagEboniteBall, xlibs.gagEboniteBallRendered, libs.zad_DeviousGag, skipmutex = true, skipevents = false)
		EndIf
		;If Utility.RandomInt() > -1 
			libs.equipdevice(akSpeaker, dcumenu.dcur_heavyyoke, dcumenu.dcur_heavyyokeRendered, libs.zad_DeviousHeavyBondage, skipmutex = true, skipevents = false)
			libs.equipDevice(akSpeaker, xlibs.zadx_HR_ChainHarnessBodyInventory, xlibs.zadx_HR_ChainHarnessBodyRendered, Libs.zad_DeviousHarness, skipevents = false, skipmutex = true)
			libs.equipDevice(akSpeaker, xlibs.zadx_HR_ChainHarnessLegsInventory, xlibs.zadx_HR_ChainHarnessLegsRendered, Libs.zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
			libs.equipDevice(akSpeaker, xlibs.zadx_HR_ChainHarnessArmsInventory, xlibs.zadx_HR_ChainHarnessArmsRendered, Libs.zad_DeviousArmCuffs, skipevents = false, skipmutex = true)
			libs.equipDevice(akSpeaker, xlibs.zadx_HR_ChainHarnessBootsInventory, xlibs.zadx_HR_ChainHarnessBootsRendered, Libs.zad_DeviousBoots, skipevents = false, skipmutex = true)
			libs.equipDevice(akSpeaker, xlibs.zadx_HR_ChainHarnessBraInventory, xlibs.zadx_HR_ChainHarnessBraRendered, Libs.zad_DeviousBra, skipevents = false, skipmutex = true)
			libs.equipDevice(akSpeaker, xlibs.zadx_HR_ChainHarnessNippleInventory, xlibs.zadx_HR_ChainHarnessNippleRendered, Libs.zad_DeviousPiercingsNipple, skipevents = false, skipmutex = true)
		; Else
			; libs.equipDevice(akSpeaker, xlibs.zadx_SlaveHighHeelsInventory, xlibs.zadx_SlaveHighHeelsRendered, Libs.zad_DeviousBoots, skipevents = false, skipmutex = true)			
			; libs.equipdevice(akSpeaker, xlibs.zadx_StraitJacketLeatherLegsBlackInventory, xlibs.zadx_StraitJacketLeatherLegsBlackRendered, libs.zad_DeviousSuit, skipmutex = true, skipevents = false)
		; EndIf
	EndIf	
EndFunction

Function ZapHer(Actor akSpeaker)	
	dcumenu.dcur_electricblastspell.remoteCast(akSpeaker, akSpeaker, akSpeaker)
	SetObjectiveCompleted(20)
	SetStage(30)
	SetObjectiveDisplayed(30)	
EndFunction

Function Travel()		
	Int i = Utility.RandomInt(1,4)
	If i == 1
		libs.playerref.moveto(dcur_dq_startmarker.GetReference())
	Elseif i == 2
		libs.playerref.moveto(dcur_dq_startmarker2.GetReference())
	Elseif i == 3
		libs.playerref.moveto(dcur_dq_startmarker3.GetReference())
	Elseif i == 4
		libs.playerref.moveto(dcur_dq_startmarker4.GetReference())
	EndIf
	Utility.Wait(4)
	If i == 1
		dcur_ref_dq_customer.GetActorReference().moveto(dcur_dq_startmarker.GetReference())
	Elseif i == 2
		dcur_ref_dq_customer.GetActorReference().moveto(dcur_dq_startmarker2.GetReference())
	Elseif i == 3
		dcur_ref_dq_customer.GetActorReference().moveto(dcur_dq_startmarker3.GetReference())
	Elseif i == 4
		dcur_ref_dq_customer.GetActorReference().moveto(dcur_dq_startmarker4.GetReference())			
	EndIf
	Utility.Wait(3)
	SetObjectiveCompleted(40)
	SetStage(50)
	SetObjectiveDisplayed(50)	
EndFunction

Function DeleteGirl()
	Actor girl = dcur_ref_dq_customer.GetActorReference()
	dcur_ref_dq_customer.Clear()
	dcur_ref_dq_customerHit.Clear()
	dcur_ref_dq_customerFollow.Clear()
	dcur_ref_dq_customerStop.Clear()
	girl.Delete()	
	girl.SetCriticalStage(girl.CritStage_DisintegrateEnd)	
EndFunction

Function MoveGirl()
	Actor girl = dcur_ref_dq_customer.GetActorReference()	
	CagedGirl = girl
	dcur_ref_dq_customerHit.Clear()
	dcur_ref_dq_customerFollow.Clear()
	dcur_ref_dq_customerStop.ForceRefTo(girl)
	girl.moveto(dcur_dq_cagemarker.GetReference())
EndFunction

Function DeleteQuestItems()
	Actor pl = libs.playerref
	pl.Removeitem(dcur_dq_dollmakerhint, 1, true)
	pl.RemoveItem(dcur_dq_LowsecurityPack, pl.GetItemCount(dcur_dq_LowsecurityPack))
	pl.RemoveItem(dcur_dq_MedsecurityPack, pl.GetItemCount(dcur_dq_MedsecurityPack))
	pl.RemoveItem(dcur_dq_highsecurityPack, pl.GetItemCount(dcur_dq_highsecurityPack))
	pl.RemoveItem(dcur_dq_zapper)
EndFunction

Function GirlEscapes()
	DeleteGirl()
	DeleteQuestItems()
	If dcur_dq_restraintset.GetValueInt() > 0
		libs.notify("Oh no! You thought you were watching the girl all the time, but she is gone! " + GirlName + " must have used your temporary inattention to struggle out of her bindings and run away! The Dollmaker will not be pleased. You better return to her and tell her what happened!", true)
	Else
		libs.notify("Oh no! You thought you were watching the girl all the time, but she is gone! " + GirlName + " must have used your temporary inattention to run away! The Dollmaker will not be pleased. You better return to her and tell her what happened!", true)
	EndIf
	SetObjectiveFailed(GetStage())
	SetStage(1050)
	SetObjectiveDisplayed(1050)
EndFunction

Event OnUpdateGameTime()
	; quest failure
	libs.removeQuestdevice(libs.playerref, dcur_dq_dollmakercollarInventory, dcur_dq_dollmakercollarRendered, libs.zad_DeviousCollar, RemovalToken = dclibs.dcur_kw_QuestItem, destroydevice = true, skipmutex = true)
	libs.notify("Oh no, you failed to return to the Dollmaker in time! The Dollmaker's collar suddenly triggers its magic. With a snap, it expands into a yoke and before you can react, your hands are securely locked in it. You will have no option other than returning to the Dollmaker and asking her to unlock you...", true)	
	Utility.Wait(1)
	libs.equipdevice(libs.playerref, dcur_dq_dollmakerYokeInventory, dcur_dq_dollmakerYokeRendered, libs.zad_DeviousHeavyBondage, skipmutex = true, skipevents = false)	
	DeleteQuestItems()
	DeleteGirl()
	SetObjectiveFailed(GetStage())
	SetStage(1100)
	SetObjectiveDisplayed(1100)
EndEvent

String Function GetCityName(Int i)	
	If i == 18
		return "Whiterun"
	ElseIf i == 19
		return "Markarth"
	ElseIf i == 20
		return "Riften"
	ElseIf i == 21
		return "Solitude"
	ElseIf i == 22
		return "Winterhold"
	ElseIf i == 23
		return "Windhelm"
	ElseIf i == 25
		return "Morthal"
	EndIf
	Return "ERROR"
EndFunction

Function DisplayHint()
	Int k = Utility.RandomInt(1, 6)
	If k == 1
		libs.notify("The girl you are looking for is named " + GirlName + ". She has been seen in " + CityName + ", " + CityNameFake1 + ", and " + CityNameFake2 + " lately.", true)
	Elseif k ==2
		libs.notify("The girl you are looking for is named " + GirlName + ". She has been seen in " + CityNameFake1 + ", " + CityName + ", and " + CityNameFake2 + " lately.", true)
	Elseif k ==3
		libs.notify("The girl you are looking for is named " + GirlName + ". She has been seen in " + CityName + ", " + CityNameFake2 + ", and " + CityNameFake1 + " lately.", true)
	Elseif k ==4
		libs.notify("The girl you are looking for is named " + GirlName + ". She has been seen in " + CityNameFake1 + ", " + CityNameFake2 + ", and " + CityName + " lately.", true)
	Elseif k ==5
		libs.notify("The girl you are looking for is named " + GirlName + ". She has been seen in " + CityNameFake2 + ", " + CityNameFake1 + ", and " + CityName + " lately.", true)
	Else
		libs.notify("The girl you are looking for is named " + GirlName + ". She has been seen in " + CityNameFake2 + ", " + CityName + ", and " + CityNameFake1 + " lately.", true)
	EndIf
EndFunction

Function FailQuestEscape()
	libs.removeQuestdevice(libs.playerref, dcur_dq_HobbleDressLatexInventory, dcur_dq_HobbleDressLatexRendered, libs.zad_DeviousSuit, RemovalToken = dclibs.dcur_kw_QuestItem, destroydevice = true, skipmutex = true)
	libs.removeQuestdevice(libs.playerref, dcur_dq_dollmakercollarInventory, dcur_dq_dollmakercollarRendered, libs.zad_DeviousCollar, RemovalToken = dclibs.dcur_kw_QuestItem, destroydevice = true, skipmutex = true)
	libs.equipDevice(libs.playerref, dclibs.dci.dcur_silencerGagSimple, dclibs.dci.dcur_silencerGagSimpleRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessBodyInventory, xlibs.zadx_HR_ChainHarnessBodyRendered, Libs.zad_DeviousHarness, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessLegsInventory, xlibs.zadx_HR_ChainHarnessLegsRendered, Libs.zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessArmsInventory, xlibs.zadx_HR_ChainHarnessArmsRendered, Libs.zad_DeviousArmCuffs, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessBootsInventory, xlibs.zadx_HR_ChainHarnessBootsRendered, Libs.zad_DeviousBoots, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessBraInventory, xlibs.zadx_HR_ChainHarnessBraRendered, Libs.zad_DeviousBra, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessNippleInventory, xlibs.zadx_HR_ChainHarnessNippleRendered, Libs.zad_DeviousPiercingsNipple, skipevents = false, skipmutex = true)
	libs.equipdevice(libs.playerref, xlibs.eboniteArmbinder, xlibs.eboniteArmbinderRendered, libs.zad_DeviousHeavyBondage, skipmutex = true, skipevents = false)
	Utility.Wait(1)
	libs.equipdevice(libs.playerref, xlibs.zadx_HobbleDressLatexRedRelaxedInventory, xlibs.zadx_HobbleDressLatexRedRelaxedRendered, libs.zad_DeviousSuit, skipmutex = true, skipevents = false)
	dclibs.dcur_removekeys(libs.playerref)
	dclibs.stealfollowerkeys() 	
	UnRegisterForUpdate()
	SetObjectiveCompleted(1050)
	SetObjectiveDisplayed(1051)
	SetStage(1051)	
	Stop()
EndFunction

Function FailQuestTimer()		
	libs.removeQuestdevice(libs.playerref, dcur_dq_HobbleDressLatexInventory, dcur_dq_HobbleDressLatexRendered, libs.zad_DeviousSuit, RemovalToken = dclibs.dcur_kw_QuestItem, destroydevice = true, skipmutex = true)
	libs.removeQuestdevice(libs.playerref, dcur_dq_dollmakerYokeInventory, dcur_dq_dollmakerYokeRendered, libs.zad_DeviousHeavyBondage, RemovalToken = dclibs.dcur_kw_QuestItem, destroydevice = true, skipmutex = true)
	libs.equipDevice(libs.playerref, dclibs.dci.dcur_silencerGagSimple, dclibs.dci.dcur_silencerGagSimpleRendered, Libs.zad_DeviousGag, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessBodyInventory, xlibs.zadx_HR_ChainHarnessBodyRendered, Libs.zad_DeviousHarness, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessLegsInventory, xlibs.zadx_HR_ChainHarnessLegsRendered, Libs.zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessArmsInventory, xlibs.zadx_HR_ChainHarnessArmsRendered, Libs.zad_DeviousArmCuffs, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessBootsInventory, xlibs.zadx_HR_ChainHarnessBootsRendered, Libs.zad_DeviousBoots, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessBraInventory, xlibs.zadx_HR_ChainHarnessBraRendered, Libs.zad_DeviousBra, skipevents = false, skipmutex = true)
	libs.equipDevice(libs.playerref, xlibs.zadx_HR_ChainHarnessNippleInventory, xlibs.zadx_HR_ChainHarnessNippleRendered, Libs.zad_DeviousPiercingsNipple, skipevents = false, skipmutex = true)
	libs.equipdevice(libs.playerref, xlibs.eboniteArmbinder, xlibs.eboniteArmbinderRendered, libs.zad_DeviousHeavyBondage, skipmutex = true, skipevents = false)
	Utility.Wait(1)
	libs.equipdevice(libs.playerref, xlibs.zadx_HobbleDressLatexRedRelaxedInventory, xlibs.zadx_HobbleDressLatexRedRelaxedRendered, libs.zad_DeviousSuit, skipmutex = true, skipevents = false)
	dclibs.dcur_removekeys(libs.playerref)
	dclibs.stealfollowerkeys() 	
	UnRegisterForUpdate()
	SetObjectiveCompleted(1100)
	SetObjectiveDisplayed(1101)
	SetStage(1101)	
	Stop()
EndFunction

Function QuestSuccess()
	libs.removeQuestdevice(libs.playerref, dcur_dq_dollmakercollarInventory, dcur_dq_dollmakercollarRendered, libs.zad_DeviousCollar, RemovalToken = dclibs.dcur_kw_QuestItem, destroydevice = true, skipmutex = true)
	libs.removeQuestdevice(libs.playerref, dcur_dq_HobbleDressLatexInventory, dcur_dq_HobbleDressLatexRendered, libs.zad_DeviousSuit, RemovalToken = dclibs.dcur_kw_QuestItem, destroydevice = true, skipmutex = true)
	If dcur_dq_restraintset.GetValueInt() == 3
		libs.playerref.addItem(dcumenu.gold001, 10 * libs.playerref.GetLevel())
		libs.playerref.AddItem(dcur_dq_damnbox, 1)
	ElseIf dcur_dq_restraintset.GetValueInt() == 2
		libs.playerref.addItem(dcumenu.gold001, 25 * libs.playerref.GetLevel())
		libs.playerref.AddItem(dcur_dq_damnbox, 2)
	ElseIf dcur_dq_restraintset.GetValueInt() == 1
		libs.playerref.addItem(dcumenu.gold001, 50 * libs.playerref.GetLevel())
		libs.playerref.AddItem(dcur_dq_damnbox, 2)
	ElseIf dcur_dq_restraintset.GetValueInt() == 0
		libs.playerref.addItem(dcumenu.gold001, 75 * libs.playerref.GetLevel())
		libs.playerref.AddItem(dcur_dq_damnbox, 3)
	EndIf
	dcur_dq_firsttime.SetValueInt(0)
	MoveGirl()
	DeleteQuestItems()
	UnRegisterForUpdate()
	SetObjectiveCompleted(50)
	SetObjectiveDisplayed(1000)
	SetStage(1000)	
	Stop()
EndFunction

Event OnUpdate()
	If StartFlag
		debug.trace("[DCUR] Started Rubber Arrears quest.")
		int i = Utility.RandomInt(0, (GirlNames.Length - 1))
		GirlName = GirlNames[i]
		i = Utility.RandomInt(18, 25)  ; in order: 18 Whiterun, 19 Markath, 20 Riften, 21 Solitude, 22 Winterhold, 23 Windhelm, 24 Dawnstar, 25 Morthal
		If i == 24
			; don't put her right at the quest start
			i = 18
		EndIf		
		CityName = GetCityName(i)
		debug.trace("[DCUR] Customer is at " + CityName)
		Int r = 0
		While r == 0 || r == 24 || r == i
			r = Utility.RandomInt(18, 25)
		EndWhile
		CityNameFake1 = GetCityName(r)
		Int s = 0
		While s == 0 || s == 24 || s == i || s == r
			s = Utility.RandomInt(18, 25)
		EndWhile
		CityNameFake2 = GetCityName(s)	
		ReferenceAlias marker = dcumenu.GetAlias(i) As ReferenceAlias
		Actor a
		i = Utility.RandomInt(1,3)
		If i == 1
			a = marker.GetReference().PlaceAtMe(dcur_dq_customer1) As Actor
		ElseIf i == 2
			a = marker.GetReference().PlaceAtMe(dcur_dq_customer2) As Actor
		ElseIf i == 3
			a = marker.GetReference().PlaceAtMe(dcur_dq_customer3) As Actor
		EndIf				
		If !a
			debug.trace("[DCUR] Error: Indebted Customer was not created.")
		EndIf
		dclibs.CheckFastTravel()
		Utility.Wait(1)				
		dcur_ref_dq_customerStop.Clear()				
		dcur_ref_dq_customer.ForceRefTo(a)
		a.SetDisplayName(GirlName)	
		a.setav("SpeedMult", 70)
		i = Utility.RandomInt(0, (GirlOutfits.Length - 1))
		a.SetOutFit(GirlOutfits[i])	
		QuestStartedAt = Utility.GetCurrentGameTime()
		RegisterForSingleUpdateGameTime(7*24) ; give her 7 days to solve the quest
		SetStage(10)
		SetObjectiveDisplayed(10)
		libs.playerref.additem(dcur_dq_dollmakerhint, 1, true)
		DisplayHint()
		RegisterForSingleUpdate(30)
		StartFlag = false
	Else
		debug.trace("[DCUR] Rubber Arrears quest periodic update.")
		If GetStage() == 50 && EscapeChecks < 10
			Bool EscapeSuccess = False
			If dcur_dq_restraintset.GetValueInt() == 3
				; no escape chance with high sec restraints
			ElseIf dcur_dq_restraintset.GetValueInt() == 2
				If Utility.RandomFloat(0.0, 99.9) < 2.5
					EscapeSuccess = True
				EndIf
			ElseIf dcur_dq_restraintset.GetValueInt() == 1
				If Utility.RandomFloat(0.0, 99.9) < 5.0
					EscapeSuccess = True
				EndIf
			ElseIf dcur_dq_restraintset.GetValueInt() == 0
				If Utility.RandomFloat(0.0, 99.9) < 7.5
					EscapeSuccess = True
				EndIf
			EndIf
			If EscapeSuccess
				GirlEscapes()
			Else
				Bool Resists = False
				If dcur_dq_restraintset.GetValueInt() == 3
					Resists = (Utility.RandomInt() < 10)
				Elseif dcur_dq_restraintset.GetValueInt() == 2
					Resists = (Utility.RandomInt() < 25)
				Elseif dcur_dq_restraintset.GetValueInt() == 1
					Resists = (Utility.RandomInt() < 50)
				Elseif dcur_dq_restraintset.GetValueInt() == 0
					Resists = (Utility.RandomInt() < 75)
				EndIf
				If Resists && dcur_ref_dq_customerFollow.GetReference() != None
					dcur_ref_dq_customerFollow.Clear()
					dcur_ref_dq_customerStop.ForceRefTo(dcur_ref_dq_customer.GetReference())
					libs.notify(GirlName + " refuses to walk. She needs a slap with The Zapper!")
				EndIf
			EndIf
			EscapeChecks += 1
		EndIf
		RegisterForSingleUpdate(30)
	EndIf
EndEvent



