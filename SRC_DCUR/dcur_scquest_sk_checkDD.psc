;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_scquest_sk_checkDD Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	MakeList()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Function MakeList()	
	Armor idevice	
	Actor a = libs.playerref
	Keyword kw	
	dcur_restraintstoremovelist.Revert()
	int i = dcumenu.dcur_devicekeywords.GetSize() - 1
	While i >= 0		
		kw = dcumenu.dcur_devicekeywords.GetAt(i) As Keyword		
		if a.wornhaskeyword(kw) && kw != libs.zad_DeviousCorset	&& kw != libs.zad_DeviousPlugAnal && kw != libs.zad_DeviousPlugVaginal					
			idevice = libs.GetWornDevice(a, kw)			
			if idevice && (!idevice.HasKeyword(libs.zad_BlockGeneric) || dcumenu.dcur_DDSimpleItems.HasForm(idevice))				
				dcur_restraintstoremovelist.AddForm(idevice)				
			endif		
		endif
		i -= 1
	EndWhile		
	dcur_scquest_sfk_offeredsex.SetValueInt(0)
	if dcur_restraintstoremovelist.GetSize() == 0
		dcur_scquest_hasrestraintstoremove.SetValueInt(0)
	Else
		dcur_scquest_hasrestraintstoremove.SetValueInt(1)
	endif
EndFunction

FormList Property dcur_restraintstoremovelist  Auto  
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto  
dcur_mcmconfig Property dcumenu  Auto  

GlobalVariable Property dcur_scquest_hasrestraintstoremove  Auto  
GlobalVariable Property dcur_scquest_sfk_offeredsex  Auto  