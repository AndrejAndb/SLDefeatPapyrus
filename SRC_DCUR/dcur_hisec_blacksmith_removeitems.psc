;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_hisec_blacksmith_removeitems Extends TopicInfo Hidden

MiscObject Property Gold  Auto  
dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
GlobalVariable Property dcur_hisec_removeselector  Auto 
SexLabFramework Property SexLab  Auto  

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dcumenu.dclibs.strip(libs.playerref,true)
	int cost
	if dcur_hisec_removeselector.GetValueInt() == 99
		cost = CountHiSecItems(libs.PlayerRef) * dcumenu.hisecremovalgoldperlevel * libs.PlayerRef.GetLevel()
	else
		cost = dcumenu.hisecremovalgoldperlevel * libs.PlayerRef.GetLevel()
	endif
	libs.PlayerRef.RemoveItem(gold, cost)
	if dcur_hisec_removeselector.GetValueInt() == 99
		RemoveHiSecItems(libs.PlayerRef)
	elseif dcur_hisec_removeselector.GetValueInt() == 1
		RemoveHiSecArmbinder(libs.PlayerRef)
	elseif dcur_hisec_removeselector.GetValueInt() == 2
		RemoveHiSecGag(libs.PlayerRef)
	elseif dcur_hisec_removeselector.GetValueInt() == 3
		RemoveHiSecBelt(libs.PlayerRef)
	elseif dcur_hisec_removeselector.GetValueInt() == 4
		RemoveHiSecBra(libs.PlayerRef)
	elseif dcur_hisec_removeselector.GetValueInt() == 5
		RemoveHiSecBoots(libs.PlayerRef)
	elseif dcur_hisec_removeselector.GetValueInt() == 6
		RemoveHiSecCollar(libs.PlayerRef)
	elseif dcur_hisec_removeselector.GetValueInt() == 7
		RemoveHiSecArmCuffs(libs.PlayerRef)
	elseif dcur_hisec_removeselector.GetValueInt() == 8
		RemoveHiSecLegCuffs(libs.PlayerRef)
	elseif dcur_hisec_removeselector.GetValueInt() == 9
		RemoveHiSecHarness(libs.PlayerRef)
	elseif dcur_hisec_removeselector.GetValueInt() == 10
		RemoveHiSecYoke(libs.PlayerRef)
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

int Function CountHiSecItems(actor a)
	int itemcount = 0
	if a.isequipped(dcumenu.dcur_hisecBelt)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecBra)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecLegCuffs)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecArmCuffs)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecCollar)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecBoots)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecArmbinder)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecBallGag)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecPanelGag)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecHarness)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecYoke)	
		itemcount +=1
	endif
	return itemcount
endfunction

function RemoveHiSecArmbinder(actor a)
	if a.isequipped(dcumenu.dcur_hisecArmbinder)	
		libs.removeDevice(a, dcumenu.dcur_hisecArmbinder, dcumenu.dcur_hisecArmbinderRendered, Libs.zad_DeviousHeavyBondage, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
endfunction

function RemoveHiSecYoke(actor a)
	if a.isequipped(dcumenu.dcur_hisecYoke)	
		libs.removeDevice(a, dcumenu.dcur_hisecYoke, dcumenu.dcur_hisecYokeRendered, Libs.zad_DeviousHeavyBondage, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
endfunction

function RemoveHiSecBelt(actor a)
	if a.isequipped(dcumenu.dcur_hisecBelt)	
		libs.removeDevice(a, dcumenu.dcur_hisecBelt, dcumenu.dcur_hisecBeltRendered, Libs.zad_DeviousBelt, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
endfunction

function RemoveHiSecBra(actor a)
	if a.isequipped(dcumenu.dcur_hisecBra)			
		libs.removeDevice(a, dcumenu.dcur_hisecBra, dcumenu.dcur_hisecBraRendered, Libs.zad_DeviousBra, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
endfunction

function RemoveHiSecLegCuffs(actor a)
	if a.isequipped(dcumenu.dcur_hisecLegCuffs)	
		libs.removeDevice(a, dcumenu.dcur_hisecLegCuffs, dcumenu.dcur_hisecLegCuffsRendered, Libs.zad_DeviousLegCuffs, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
endfunction

function RemoveHiSecArmCuffs(actor a)
	if a.isequipped(dcumenu.dcur_hisecArmCuffs)	
		libs.removeDevice(a, dcumenu.dcur_hisecArmCuffs, dcumenu.dcur_hisecArmCuffsRendered, Libs.zad_DeviousArmCuffs, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
endfunction

function RemoveHiSecCollar(actor a)
	if a.isequipped(dcumenu.dcur_hisecCollar)	
		libs.removeDevice(a, dcumenu.dcur_hisecCollar, dcumenu.dcur_hisecCollarRendered, Libs.zad_DeviousCollar, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
endfunction

function RemoveHiSecBoots(actor a)
	if a.isequipped(dcumenu.dcur_hisecBoots)	
		libs.removeDevice(a, dcumenu.dcur_hisecBoots, dcumenu.dcur_hisecBootsRendered, Libs.zad_DeviousBoots, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
endfunction

function RemoveHiSecGag(actor a)
	if a.isequipped(dcumenu.dcur_hisecBallGag)	
		libs.removeDevice(a, dcumenu.dcur_hisecBallGag, dcumenu.dcur_hisecBallGagRendered, Libs.zad_DeviousGag, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
	if a.isequipped(dcumenu.dcur_hisecPanelGag)	
		libs.removeDevice(a, dcumenu.dcur_hisecPanelGag, dcumenu.dcur_hisecPanelGagRendered, Libs.zad_DeviousGag, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
endfunction

function RemoveHiSecHarness(actor a)
	if a.isequipped(dcumenu.dcur_hisecHarness)	
		libs.removeDevice(a, dcumenu.dcur_hisecHarness, dcumenu.dcur_hisecHarnessRendered, Libs.zad_DeviousBoots, destroyDevice = true, skipevents = false, skipmutex = true)
	endif
endfunction

function RemoveHiSecItems(actor a)
	RemoveHiSecBelt(a)
	RemoveHiSecBra(a)
	RemoveHiSecLegCuffs(a)
	RemoveHiSecArmcuffs(a)
	RemoveHiSecCollar(a)
	RemoveHiSecBoots(a)
	RemoveHiSecArmbinder(a)
	RemoveHiSecGag(a)
	RemoveHiSecHarness(a)
	RemoveHiSecYoke(a)
endfunction
 


