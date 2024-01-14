;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_yoke_forcedrewardlockyoke Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	if libs.playerref.GetItemCount(dcumenu.dcur_yoke) > 0
		libs.equipDevice(Libs.PlayerRef, dcumenu.dcur_yoke, dcumenu.dcur_yokeRendered, Libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)								
	else
		libs.equipDevice(Libs.PlayerRef, dcumenu.dcur_heavyyoke, dcumenu.dcur_heavyyokeRendered, Libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)				
	endif
	if Utility.RandomInt(0,100) < dcumenu.losekeychance
		dclibs.dcur_removekeys(libs.playerref, thief = akSpeaker)
		dclibs.stealfollowerkeys(thief = akSpeaker) 		
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  

