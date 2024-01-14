Scriptname dcur_yokeerrandquestscript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto  

ReferenceAlias Property alias_yq_whiterun_belethor  Auto  
ReferenceAlias Property alias_yq_winterhold_barkeep Auto
ReferenceAlias Property alias_yq_windhelm_stables Auto
ReferenceAlias Property alias_yq_solitude_barkeep Auto
ReferenceAlias Property alias_yc_riften_blacksmith Auto
ReferenceAlias Property alias_yc_morthal_innkeep Auto
ReferenceAlias Property alias_yc_markath_stables Auto
ReferenceAlias Property alias_yc_dawnstar_innkeep Auto

GlobalVariable Property dcur_yokeerrandquestactive  Auto  
MiscObject Property dcur_yq_deliverytoken  Auto  

Function StartQuest()
	if GetStage() > 0	
		Reset()
	Endif
	if !IsRunning()
		if !Start() 
			debug.notification("[DCUR] Fatal Error: Couldn't start quest")
			dcur_yokeerrandquestactive.SetValueInt(0)
			return
		endif
	endif	
	int rnd = Utility.RandomInt(1,8)
	if rnd == 1
		SetObjectiveDisplayed(10)
		SetStage(10)					
		alias_yq_whiterun_belethor.GetReference().additem(dcur_yq_deliverytoken)
	elseif rnd == 2
		SetObjectiveDisplayed(20)
		SetStage(20)					
		alias_yq_winterhold_barkeep.GetReference().additem(dcur_yq_deliverytoken)
	elseif rnd == 3
		SetObjectiveDisplayed(30)
		SetStage(30)					
		alias_yq_windhelm_stables.GetReference().additem(dcur_yq_deliverytoken)
	elseif rnd == 4
		SetObjectiveDisplayed(40)
		SetStage(40)					
		alias_yq_solitude_barkeep.GetReference().additem(dcur_yq_deliverytoken)
	elseif rnd == 5
		SetObjectiveDisplayed(50)
		SetStage(50)					
		alias_yc_riften_blacksmith.GetReference().additem(dcur_yq_deliverytoken)
	elseif rnd == 6
		SetObjectiveDisplayed(60)
		SetStage(60)					
		alias_yc_morthal_innkeep.GetReference().additem(dcur_yq_deliverytoken)
	elseif rnd == 7
		SetObjectiveDisplayed(70)
		SetStage(70)					
		alias_yc_markath_stables.GetReference().additem(dcur_yq_deliverytoken)
	elseif rnd == 8
		SetObjectiveDisplayed(80)
		SetStage(80)					
		alias_yc_dawnstar_innkeep.GetReference().additem(dcur_yq_deliverytoken)
	endif	
	;debug.notification("Everything should be up now!")		
	dcur_yokeerrandquestactive.SetValueInt(1)	
EndFunction
	
Function terminatequest()
	armor device = libs.GetWornDevice(libs.playerref, libs.zad_DeviousHeavyBondage)
	armor deviceRendered = libs.GetRenderedDevice(device)
	libs.removeDevice(libs.playerref, device, deviceRendered, libs.zad_DeviousHeavyBondage, false, false, true)
	if GetStage() == 10
		alias_yq_whiterun_belethor.GetReference().removeitem(dcur_yq_deliverytoken)
	elseif GetStage() == 20
		alias_yq_winterhold_barkeep.GetReference().removeitem(dcur_yq_deliverytoken)
	elseif GetStage() == 30
		alias_yq_windhelm_stables.GetReference().removeitem(dcur_yq_deliverytoken)
	elseif GetStage() == 40
		alias_yq_solitude_barkeep.GetReference().removeitem(dcur_yq_deliverytoken)
	elseif GetStage() == 50
		alias_yc_riften_blacksmith.GetReference().removeitem(dcur_yq_deliverytoken)
	elseif GetStage() == 60
		alias_yc_morthal_innkeep.GetReference().removeitem(dcur_yq_deliverytoken)
	elseif GetStage() == 70
		alias_yc_markath_stables.GetReference().removeitem(dcur_yq_deliverytoken)
	elseif GetStage() == 80
		alias_yc_dawnstar_innkeep.GetReference().removeitem(dcur_yq_deliverytoken)
	endif
	SetObjectiveCompleted(GetStage())
	SetStage(100)	
	SetObjectiveCompleted(100)		
	dcur_yokeerrandquestactive.SetValueInt(0)
	CompleteQuest()
	reset()
	;stop()
	Game.EnableFastTravel(True)	
endfunction
