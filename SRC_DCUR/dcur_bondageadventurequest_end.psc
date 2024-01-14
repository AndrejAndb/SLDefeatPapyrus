;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_bondageadventurequest_end Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	baqs.SetObjectiveCompleted(10)	
	baqs.SetStage(1000)	
	baqs.SetObjectiveDisplayed(1000)	
	baqs.dcur_bondageadventurequestactive.SetValueInt(0)
	akSpeaker.removeitem(baqs.dcur_baq_deliverytoken, 1, true)
	baqs.releasefollowers()
	; remove most DD items, but no quest items, including DCUR's
	libs.removeDevice(libs.playerref, dcumenu.dcur_questArmbinder, dcumenu.dcur_questArmbinderRendered, Libs.zad_DeviousHeavyBondage, destroyDevice = true, skipevents = false, skipmutex = true)	
	Utility.Wait(1)
	dclibs.WipeRestraints(libs.playerref, genericonly = false, removeDCURquestitems = false, destroyDevices = false)		
	if libs.playerref.GetItemCount(dcumenu.dcur_questArmbinder) > 0
		libs.playerref.removeitem(dcumenu.dcur_questArmbinder, libs.playerref.GetItemCount(dcumenu.dcur_questArmbinder), True)
	endif	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_bondageadventurequestScript Property baqs Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  