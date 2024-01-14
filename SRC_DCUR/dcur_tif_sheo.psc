;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_tif_sheo Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
GetOwningQuest().SetObjectiveCompleted(95)
GetOwningQuest().SetStage(100)
GetOwningQuest().SetObjectiveDisplayed(100)
dcur_cursedcollarquestscript ccqs = None
zadlibs libs = None
zadxlibs xlibs = None
libs = Game.GetFormFromFile(0x0000F624, "Devious Devices - Integration.esm") as zadLibs
xlibs = Game.GetFormFromFile(0x0000CA01, "Devious Devices - Expansion.esm") as zadxLibs
libs.equipDevice(libs.playerref, xlibs.eboniteBlindfold, xlibs.eboniteBlindfoldRendered, libs.Zad_DeviousBlindfold, skipevents = false, skipmutex = true)			

ccqs = Game.GetFormFromFile(0x000058CC, "Deviously Cursed Loot.esp") as dcur_cursedcollarquestscript
ccqs.Alias_dcur_alias_ddd_crystal.GetReference().enable(true)
ccqs.Alias_dcur_alias_ddd_maingate.GetReference().lock()
ccqs.Alias_dcur_alias_ddd_maingate.GetReference().SetLockLevel(255)		


ccqs.Alias_dcur_alias_ddd_jailkeylocation_1.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_alias_ddd_jailkeylocation_2.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_alias_ddd_jailkeylocation_3.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
int i = Utility.RandomInt(1,3)
if i == 1
	ccqs.Alias_dcur_alias_ddd_jailkeylocation_1.GetReference().additem(ccqs.dcur_jailkey)	
elseif i == 2
	ccqs.Alias_dcur_alias_ddd_jailkeylocation_2.GetReference().additem(ccqs.dcur_jailkey)	
elseif i == 3
	ccqs.Alias_dcur_alias_ddd_jailkeylocation_3.GetReference().additem(ccqs.dcur_jailkey)
endif


ccqs.Alias_dcur_alias_ddd_trapdoorlocation_1.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_alias_ddd_trapdoorlocation_2.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_alias_ddd_trapdoorlocation_3.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_alias_ddd_trapdoorlocation_4.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_alias_ddd_trapdoorlocation_5.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))

i = Utility.RandomInt(1,5)
if i == 1
	ccqs.Alias_dcur_alias_ddd_trapdoorlocation_1.GetReference().additem(ccqs.dcur_trapdoorkey)	
elseif i == 2
	ccqs.Alias_dcur_alias_ddd_trapdoorlocation_2.GetReference().additem(ccqs.dcur_trapdoorkey)
elseif i == 3
	ccqs.Alias_dcur_alias_ddd_trapdoorlocation_3.GetReference().additem(ccqs.dcur_trapdoorkey)
elseif i == 4
	ccqs.Alias_dcur_alias_ddd_trapdoorlocation_4.GetReference().additem(ccqs.dcur_trapdoorkey)
elseif i == 5
	ccqs.Alias_dcur_alias_ddd_trapdoorlocation_5.GetReference().additem(ccqs.dcur_trapdoorkey)	
endif

ccqs.Alias_dcur_ddd_keylocation_1.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_2.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_3.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_4.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_5.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_6.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_7.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_8.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_9.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_10.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_11.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_12.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_13.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_14.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_15.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_16.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_17.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_18.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_19.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))
ccqs.Alias_dcur_ddd_keylocation_20.GetReference().additem(ccqs.gold01,Utility.RandomInt(1,20))

i = Utility.RandomInt(1,20)
if i == 1
	ccqs.Alias_dcur_ddd_keylocation_1.GetReference().additem(ccqs.dcur_prisonkey,1)	
elseif i == 2
	ccqs.Alias_dcur_ddd_keylocation_2.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 3
	ccqs.Alias_dcur_ddd_keylocation_3.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 4
	ccqs.Alias_dcur_ddd_keylocation_4.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 5
	ccqs.Alias_dcur_ddd_keylocation_5.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 6
	ccqs.Alias_dcur_ddd_keylocation_6.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 7
	ccqs.Alias_dcur_ddd_keylocation_7.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 8
	ccqs.Alias_dcur_ddd_keylocation_8.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 9
	ccqs.Alias_dcur_ddd_keylocation_9.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 10
	ccqs.Alias_dcur_ddd_keylocation_10.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 11
	ccqs.Alias_dcur_ddd_keylocation_11.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 12
	ccqs.Alias_dcur_ddd_keylocation_12.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 13
	ccqs.Alias_dcur_ddd_keylocation_13.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 14
	ccqs.Alias_dcur_ddd_keylocation_14.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 15
	ccqs.Alias_dcur_ddd_keylocation_15.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 16
	ccqs.Alias_dcur_ddd_keylocation_16.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 17
	ccqs.Alias_dcur_ddd_keylocation_17.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 18
	ccqs.Alias_dcur_ddd_keylocation_18.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 19
	ccqs.Alias_dcur_ddd_keylocation_19.GetReference().additem(ccqs.dcur_prisonkey,1)
elseif i == 20
	ccqs.Alias_dcur_ddd_keylocation_20.GetReference().additem(ccqs.dcur_prisonkey,1)	
endif

akSpeaker.disable(true)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
