Scriptname dcur_rubberdollquestscript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto 
SexLabFramework Property SexLab  Auto  
slaFrameworkScr Property Aroused  Auto  

int property sexcounteratstart = 0 Auto
int property sexcounter = 0 Auto
float property lastitemadded = 0.0 Auto
float property lastdecay = 0.0 Auto


GlobalVariable Property dcur_rd_sexcounter Auto
GlobalVariable Property dcur_rd_sexcounterneeded Auto
GlobalVariable Property dcur_rubberdollquest_completedonce Auto
GlobalVariable Property dcur_disabledialoguerape Auto

Armor Property dcur_rd_Armbinder Auto
Armor Property dcur_rd_ArmbinderRendered Auto
Armor Property dcur_rd_rubberboots Auto
Armor Property dcur_rd_rubberbootsRendered Auto
Armor Property dcur_rd_rubbercollar Auto
Armor Property dcur_rd_rubbercollarRendered Auto
Armor Property dcur_rd_rubbergloves Auto
Armor Property dcur_rd_rubberglovesRendered Auto
Armor Property dcur_rd_rubberHood Auto
Armor Property dcur_rd_rubberHoodRendered Auto
Armor Property dcur_rd_rubberHoodOpenEyes Auto
Armor Property dcur_rd_rubberHoodOpenEyesRendered Auto
Armor Property dcur_rd_rubberSuit Auto
Armor Property dcur_rd_rubberSuitRendered Auto

bool property rdquestrunning = False Auto

Function rubberdollquestMC()	
	Actor pl = libs.playerref
	If (Utility.GetCurrentGameTime() - lastdecay) > 1 && GetStage() == 40
		if !dclibs.IsBelted(pl) ; do not add decay if the character is belted, as it will be neigh on impossible to get done.
			sexcounteratstart += dcumenu.rdsexactsdecayperday
		Endif
		if SexLab.SexCount(libs.playerref) - sexcounteratstart < 0
			sexcounteratstart = SexLab.SexCount(libs.playerref)
		endif
		UpdateCurrentInstanceGlobal(dcur_rd_sexcounter)
		lastdecay = Utility.GetCurrentGameTime()
	endif	
	if (Utility.GetCurrentGameTime() - lastitemadded) * 24 < dcumenu.rditemcooldownhours || GetStage() >= 40
		return
	endif
	If ((Utility.GetCurrentGameTime() - lastitemadded) * 24 > (dcumenu.rditemcooldownhours * dcumenu.rdfightoffmuliplier)) && (libs.aroused.GetActorArousal(pl) < (dcumenu.rdbasearousalthreshold - (pl.GetItemCount(dcumenu.dcur_kw_rditem) * dcumenu.rdarousalthresholdreduceperitem)))
		Bool itemwasremoved = false
		if pl.isEquipped(dcur_rd_ArmbinderRendered) 
			libs.removeDevice(pl, dcur_rd_Armbinder, dcur_rd_ArmbinderRendered, libs.zad_DeviousHeavyBondage, destroydevice = true, skipevents = false, skipmutex = true)			
			itemwasremoved = true
		elseif pl.isEquipped(dcur_rd_rubberHoodRendered)
			libs.removeDevice(pl, dcur_rd_rubberHood, dcur_rd_rubberHoodRendered, libs.Zad_DeviousHood, destroydevice = true, skipevents = false, skipmutex = true)
			itemwasremoved = true
		elseif pl.isEquipped(dcur_rd_rubberHoodOpenEyesRendered)
			libs.removeDevice(pl, dcur_rd_rubberHoodOpenEyes, dcur_rd_rubberHoodOpenEyesRendered, libs.Zad_DeviousHood, destroydevice = true, skipevents = false, skipmutex = true)
			itemwasremoved = true
		elseif pl.isEquipped(dcur_rd_rubberBootsRendered) 
			libs.removeDevice(pl, dcur_rd_rubberBoots, dcur_rd_rubberBootsRendered, libs.Zad_DeviousBoots, destroydevice = true, skipevents = false, skipmutex = true)						
			itemwasremoved = true
		elseif pl.isEquipped(dcur_rd_rubberGlovesRendered)
			libs.removeDevice(pl, dcur_rd_rubberGloves, dcur_rd_rubberGlovesRendered, libs.Zad_DeviousGloves, destroydevice = true, skipevents = false, skipmutex = true)					
			itemwasremoved = true
		elseif pl.isEquipped(dcur_rd_rubberSuitRendered) 
			libs.removeDevice(pl, dcur_rd_rubberSuit, dcur_rd_rubberSuitRendered, libs.Zad_DeviousSuit, destroydevice = true, skipevents = false, skipmutex = true)
			itemwasremoved = true
		else
			SetStage(100)
		Endif
		if itemwasremoved
			libs.notify("Your absense of sexual fantasies weakened the Rubber Doll collar...", messagebox = true)		
			lastitemadded = Utility.GetCurrentGameTime()
			return
		endif
	else	
		Bool itemwasequipped = false	
		if libs.aroused.GetActorArousal(pl)	> (dcumenu.rdbasearousalthreshold - pl.GetItemCount(dcumenu.dcur_kw_rditem) * dcumenu.rdarousalthresholdreduceperitem)		
			if !pl.isEquipped(dcur_rd_rubberSuitRendered) && !pl.WornHasKeyword(libs.zad_DeviousSuit)
				libs.equipDevice(pl, dcur_rd_rubberSuit, dcur_rd_rubberSuitRendered, libs.Zad_DeviousSuit, skipevents = false, skipmutex = true)
				itemwasequipped = true
			elseif !pl.isEquipped(dcur_rd_rubberBootsRendered) && !pl.WornHasKeyword(libs.zad_DeviousBoots)
				libs.equipDevice(pl, dcur_rd_rubberBoots, dcur_rd_rubberBootsRendered, libs.Zad_DeviousBoots, skipevents = false, skipmutex = true)
				itemwasequipped = true
			elseif !pl.isEquipped(dcur_rd_rubberGlovesRendered) && !pl.WornHasKeyword(libs.zad_DeviousGloves)
				libs.equipDevice(pl, dcur_rd_rubberGloves, dcur_rd_rubberGlovesRendered, libs.Zad_DeviousGloves, skipevents = false, skipmutex = true)
				itemwasequipped = true
			elseif !pl.isEquipped(dcur_rd_rubberHoodRendered) && !pl.WornHasKeyword(libs.zad_DeviousHood) && dcumenu.rdallowhood && Game.GetModByName("RealisticNeedsandDiseases.esp") == 255 && Game.GetModByName("iNeed.esp") == 255
				libs.equipDevice(pl, dcur_rd_rubberHood, dcur_rd_rubberHoodRendered, libs.Zad_DeviousHood, skipevents = false, skipmutex = true)
				itemwasequipped = true
			elseif !pl.isEquipped(dcur_rd_rubberHoodOpenEyesRendered) && !pl.WornHasKeyword(libs.zad_DeviousHood) && !dcumenu.rdallowhood && Game.GetModByName("RealisticNeedsandDiseases.esp") == 255 && Game.GetModByName("iNeed.esp") == 255
				libs.equipDevice(pl, dcur_rd_rubberHoodOpenEyes, dcur_rd_rubberHoodOpenEyesRendered, libs.Zad_DeviousHood, skipevents = false, skipmutex = true)
				itemwasequipped = true
			elseif !pl.isEquipped(dcur_rd_ArmbinderRendered) && !pl.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				libs.equipDevice(pl, dcur_rd_Armbinder, dcur_rd_ArmbinderRendered, libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)
				itemwasequipped = true
			Endif
			if itemwasequipped
				If !pl.isEquipped(dcur_rd_Armbinder)
					if GetStage() != 20
						SetStage(20)
						SetObjectiveCompleted(10)
						SetObjectiveDisplayed(20)
					Endif
				else
					SetObjectiveCompleted(20)
					SetStage(30)
					SetObjectiveDisplayed(30)					
				endif
				lastitemadded = Utility.GetCurrentGameTime()
				libs.notify("The Rubber Doll Collar is feeding off your erotic fantasies and encases parts of your body in rubber...", messagebox = true)		
			endif
		else 
			libs.notify("The Rubber Doll Collar tries to feed from your arousal without success...")		
		endif
	Endif
EndFunction

Event OnSleepStart(float afSleepStartTime, float afDesiredSleepEndTime)	
	float naplength = afDesiredSleepEndTime - afSleepStartTime
	lastitemadded += naplength	
EndEvent

Function UpdateSexCounter()
	Actor pl = libs.playerref
	dcur_rd_sexcounter.SetValueInt(SexLab.SexCount(libs.playerref) - sexcounteratstart)
	UpdateCurrentInstanceGlobal(dcur_rd_sexcounter)
	UpdateCurrentInstanceGlobal(dcur_rd_sexcounterneeded)
	if GetStage() == 40
		If dcur_rd_sexcounter.GetValueInt() >= dcur_rd_sexcounterneeded.GetValueInt()
			Bool itemwasremoved = false
			if pl.isEquipped(dcur_rd_ArmbinderRendered) 
				libs.removeDevice(pl, dcur_rd_Armbinder, dcur_rd_ArmbinderRendered, libs.zad_DeviousHeavyBondage, destroydevice = true, skipevents = false, skipmutex = true)			
				itemwasremoved = true
			elseif pl.isEquipped(dcur_rd_rubberHoodRendered)
				libs.removeDevice(pl, dcur_rd_rubberHood, dcur_rd_rubberHoodRendered, libs.Zad_DeviousHood, destroydevice = true, skipevents = false, skipmutex = true)
				itemwasremoved = true
			elseif pl.isEquipped(dcur_rd_rubberHoodOpenEyesRendered)
				libs.removeDevice(pl, dcur_rd_rubberHoodOpenEyes, dcur_rd_rubberHoodOpenEyesRendered, libs.Zad_DeviousHood, destroydevice = true, skipevents = false, skipmutex = true)
				itemwasremoved = true
			elseif pl.isEquipped(dcur_rd_rubberBootsRendered) 
				libs.removeDevice(pl, dcur_rd_rubberBoots, dcur_rd_rubberBootsRendered, libs.Zad_DeviousBoots, destroydevice = true, skipevents = false, skipmutex = true)						
				itemwasremoved = true
			elseif pl.isEquipped(dcur_rd_rubberGlovesRendered)
				libs.removeDevice(pl, dcur_rd_rubberGloves, dcur_rd_rubberGlovesRendered, libs.Zad_DeviousGloves, destroydevice = true, skipevents = false, skipmutex = true)					
				itemwasremoved = true
			elseif pl.isEquipped(dcur_rd_rubberSuitRendered) 
				libs.removeDevice(pl, dcur_rd_rubberSuit, dcur_rd_rubberSuitRendered, libs.Zad_DeviousSuit, destroydevice = true, skipevents = false, skipmutex = true)
				itemwasremoved = true
			else
				SetStage(100)
			Endif
			if itemwasremoved
				libs.notify("Your sexual activites weakened the Rubber Doll collar...", messagebox = true)		
			endif
			sexcounteratstart = SexLab.SexCount(pl)
		Endif
	Endif
EndFunction

Function EndQuest()
	libs.removeDevice(libs.playerref, dcur_rd_rubberCollar, dcur_rd_rubberCollarRendered, libs.Zad_DeviousCollar, destroydevice = true, skipevents = false, skipmutex = true)
	SetObjectiveCompleted(40)
	SetObjectiveCompleted(100)
	;CompleteQuest()
	Stop()
	;Reset()
	rdquestrunning = False
	UnRegisterForSleep()
	dcur_rubberdollquest_completedonce.SetValue(1)
EndFunction

Function terminatequest()
	Actor pl = libs.playerref
	if pl.isEquipped(dcur_rd_ArmbinderRendered) 
		libs.removeDevice(pl, dcur_rd_Armbinder, dcur_rd_ArmbinderRendered, libs.zad_DeviousHeavyBondage, destroydevice = true, skipevents = false, skipmutex = true)			
	Endif
	Utility.Wait(1)
	if pl.isEquipped(dcur_rd_rubberHoodRendered)
		libs.removeDevice(pl, dcur_rd_rubberHood, dcur_rd_rubberHoodRendered, libs.Zad_DeviousHood, destroydevice = true, skipevents = false, skipmutex = true)
	Endif
	if pl.isEquipped(dcur_rd_rubberHoodOpenEyesRendered)
		libs.removeDevice(pl, dcur_rd_rubberHoodOpenEyes, dcur_rd_rubberHoodOpenEyesRendered, libs.Zad_DeviousHood, destroydevice = true, skipevents = false, skipmutex = true)
	Endif
	Utility.Wait(1)
	if pl.isEquipped(dcur_rd_rubberBootsRendered) 
		libs.removeDevice(pl, dcur_rd_rubberBoots, dcur_rd_rubberBootsRendered, libs.Zad_DeviousBoots, destroydevice = true, skipevents = false, skipmutex = true)						
	Endif
	if pl.isEquipped(dcur_rd_rubberGlovesRendered)
		libs.removeDevice(pl, dcur_rd_rubberGloves, dcur_rd_rubberGlovesRendered, libs.Zad_DeviousGloves, destroydevice = true, skipevents = false, skipmutex = true)					
	Endif	
	Utility.Wait(1)
	if pl.isEquipped(dcur_rd_rubberSuitRendered) 
		libs.removeDevice(pl, dcur_rd_rubberSuit, dcur_rd_rubberSuitRendered, libs.Zad_DeviousSuit, destroydevice = true, skipevents = false, skipmutex = true)		
	Endif
	if pl.isEquipped(dcur_rd_rubberCollarRendered) 
		libs.removeDevice(libs.playerref, dcur_rd_rubberCollar, dcur_rd_rubberCollarRendered, libs.Zad_DeviousCollar, destroydevice = true, skipevents = false, skipmutex = true)
	Endif
	SetObjectiveCompleted(GetStage())
	CompleteQuest()
	;Stop()
	Reset()
	rdquestrunning = False
	UnRegisterForSleep()
EndFunction

Function StartQuest()	
	SetStage(10)
	SetObjectiveDisplayed(10)
	lastitemadded = Utility.GetCurrentGameTime()
	dcur_rd_sexcounterneeded.SetValueInt(dcumenu.rdsexactsneeded)
	rdquestrunning = True	
	RegisterForSleep()	
EndFunction

Bool Function StartQuestWrapper()
	Actor pl = libs.playerref
	if pl.WornHasKeyword(libs.zad_Deviouscollar)
		if libs.UnlockDeviceByKeyword(libs.playerref, Libs.zad_DeviousCollar)
			libs.equipDevice(pl, dcur_rd_rubberCollar, dcur_rd_rubberCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)
			Start()
			return true
		endif
	else
		libs.equipDevice(pl, dcur_rd_rubberCollar, dcur_rd_rubberCollarRendered, libs.Zad_DeviousCollar, skipevents = false, skipmutex = true)
		Start()
		return true
	endif
	return false
EndFunction