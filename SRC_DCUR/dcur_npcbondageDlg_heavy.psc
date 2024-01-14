;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_npcbondageDlg_heavy Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dcur_lastdevicecommenttime.SetValue(Utility.GetCurrentGameTime())
	dcur_devicecommentallowed.SetValue(0)
	dclibs.GiveBondageRewards(leverage = 3)
	; remove all keys
	dclibs.dcur_removekeys(dclibs.libs.playerref, thief = akSpeaker)
	dclibs.stealfollowerkeys(thief = akSpeaker) 	
	if dcumenu.usegag
		dclibs.dcur_equiprandomgag(dclibs.libs.playerref, theme = dcumenu.equiptheme)
	Endif
	if dcumenu.usearmbinder
		dclibs.dcur_equiprandomarmbinder(dclibs.libs.playerref, theme = dcumenu.equiptheme)
	Endif
	if dcumenu.useblindfold
		dclibs.dcur_equiprandomblindfold(dclibs.libs.playerref, theme = dcumenu.equiptheme)
	Endif
	dclibs.libs.equipDevice(dclibs.libs.playerref, dcumenu.dcur_anklechains, dcumenu.dcur_anklechainsRendered, dclibs.libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)			
	dclibs.dcur_equiprandomcollar(dclibs.libs.playerref, theme = dcumenu.equiptheme)	
	dclibs.dcur_equiprandomsuit(dclibs.libs.playerref, theme = dcumenu.equiptheme)	
	dclibs.dcur_equiprandomgloves(dclibs.libs.playerref, theme = dcumenu.equiptheme)	
	dclibs.dcur_equiprandomboots(dclibs.libs.playerref, theme = dcumenu.equiptheme)	
	Utility.Wait(3)
	dclibs.sexwithplayer(akSpeaker, consensual = false, stages = 1, randomanim = true)		
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property dcur_lastdevicecommenttime  Auto  
GlobalVariable Property dcur_devicecommentallowed  Auto 
dcur_library Property dclibs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
