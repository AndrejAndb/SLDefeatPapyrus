;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_dom_unlockrestraint Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Armor idevice
	Armor rdevice
	Keyword kw		
	int bailout = 0
	int i = dcumenu.dcur_devicekeywords.GetSize() - 1	
	bool done = false
	While bailout < 20 && !done
		kw = dcumenu.dcur_devicekeywords.GetAt(Utility.RandomInt(0, i)) As Keyword			
		if libs.playerref.wornhaskeyword(kw) && kw != libs.zad_DeviousPlugAnal && kw != libs.zad_DeviousPlugVaginal			
			idevice = libs.GetWornDevice(libs.playerref, kw)					
			if idevice && (!idevice.HasKeyword(libs.zad_BlockGeneric) || dcumenu.dcur_DDSimpleItems.HasForm(idevice)) && !idevice.HasKeyword(libs.zad_Questitem)
				rDevice = libs.GetRenderedDevice(idevice)
				if rdevice && (!rdevice.HasKeyword(libs.zad_BlockGeneric) || dcumenu.dcur_DDSimpleItems.HasForm(rdevice))
					libs.notify(akSpeaker.GetLeveledActorBase().GetName() + " unlocks your " + idevice.GetName())
					libs.removeDevice(libs.playerref, idevice, rDevice, kw, destroyDevice = false, skipevents = false, skipmutex = true)							
				endif
			endif
			done = true			
		endif
		bailout += 1
	EndWhile				
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
FormList Property dcur_randomstufflist Auto