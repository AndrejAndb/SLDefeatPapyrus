;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_npcbondageDlg_Light Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dcur_lastdevicecommenttime.SetValue(Utility.GetCurrentGameTime())
	dcur_devicecommentallowed.SetValue(0)
	; remove all keys
	dclibs.dcur_removekeys(dclibs.libs.playerref, thief = akSpeaker)
	dclibs.stealfollowerkeys(thief = akSpeaker) 	
	dclibs.GiveBondageRewards(leverage = 1)
	dclibs.dcur_equiprandomarmcuffs(dclibs.libs.playerref, theme = dcumenu.equiptheme)
	dclibs.dcur_equiprandomcollar(dclibs.libs.playerref, theme = dcumenu.equiptheme)
	dclibs.dcur_equiprandomgloves(dclibs.libs.playerref, theme = dcumenu.equiptheme)
	dclibs.dcur_equiplegcuffs(dclibs.libs.playerref, theme = dcumenu.equiptheme)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property dcur_lastdevicecommenttime  Auto  
GlobalVariable Property dcur_devicecommentallowed  Auto 
dcur_library Property dclibs  Auto  
dcur_mcmconfig Property dcumenu  Auto  