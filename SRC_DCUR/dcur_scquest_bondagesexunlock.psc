;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_scquest_bondagesexunlock Extends TopicInfo Hidden

Formlist Property dcur_solicitationbondageapplied Auto

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Armor device 
	Keyword kw
	int z = dcur_solicitationbondageapplied.GetSize()
	while z > 0
		z -= 1
		kw = dcur_solicitationbondageapplied.GetAt(z) As Keyword		
		if libs.playerref.WornHasKeyword(kw)
			; make sure the device is still worn
			device = libs.GetWornDevice(libs.playerref, kw)		
			if device != None 			
				; we can mercilessly wipe off devices without checking for BlockGeneric etc. because the item wouldn't be in the FormList if not applied by the bondage sex scene.			
				libs.UnlockDevice(libs.playerref, device, zad_DeviousDevice = kw, destroyDevice = true)
			endif		
		endif
	endwhile
	dcur_solicitationbondageapplied.Revert()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
