Scriptname dcur_leon_ustolf_cellonactivate extends ObjectReference  

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
dcur_leon_enslaveScript Property dcslave  Auto  

event onActivate(ObjectReference akActionref)
	if dcslave.GetStage() != 60
		return
	endif
	if libs.IsWearingDevice(libs.PlayerRef, dcumenu.dclibs.mcs.leqs.dcur_leon_Armcuffs, libs.zad_DeviousArmCuffs) == 1 && libs.IsWearingDevice(libs.PlayerRef, dcumenu.dclibs.mcs.leqs.dcur_leon_anklechains, libs.zad_DeviousLegCuffs) == 1 && libs.IsWearingDevice(libs.PlayerRef, dcumenu.dclibs.mcs.leqs.dcur_leon_corset, libs.zad_DeviousCorset) == 1
		lock(false)
		libs.notify("The door unlocks.")
		libs.equipDevice(dcslave.Kayleigh.GetActorReference(), dcumenu.dclibs.mcs.leqs.dcur_leon_chastitybelt, dcumenu.dclibs.mcs.leqs.dcur_leon_chastitybeltRendered, libs.zad_DeviousBelt, skipevents = false, skipmutex = true)
		libs.equipDevice(dcslave.Nadia.GetActorReference(), dcumenu.dclibs.mcs.leqs.dcur_leon_ballgag, dcumenu.dclibs.mcs.leqs.dcur_leon_ballgagRendered, libs.zad_DeviousGag, skipevents = false, skipmutex = true)
	else
		libs.notify("The door is safely locked. You will need to lock the party gear on you before it will open.", messagebox = true)
	endif
endEvent


