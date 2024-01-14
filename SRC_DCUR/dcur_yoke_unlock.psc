;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_yoke_unlock Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	
	if libs.playerref.WornHasKeyword(dcumenu.dcur_kw_yoke) && libs.playerref.GetItemCount(libs.restraintskey) > 0
		libs.RemoveDevice(libs.PlayerRef, dcumenu.dcur_yoke, dcumenu.dcur_yokeRendered, libs.zad_DeviousHeavyBondage, false, false)					
	endif
	if libs.playerref.WornHasKeyword(dcumenu.dcur_kw_heavyyoke) && libs.playerref.GetItemCount(dcumenu.dcur_handrestraintskey) > 0
		libs.RemoveDevice(libs.PlayerRef, dcumenu.dcur_heavyyoke, dcumenu.dcur_heavyyokeRendered, libs.zad_DeviousHeavyBondage, false, false)							
	endif
	libs.SendDeviceRemovalEvent("Yoke", libs.PlayerRef)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  

zadlibs Property libs  Auto  
