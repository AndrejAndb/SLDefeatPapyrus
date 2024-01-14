;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_scquest_sfkunlock Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	; Armor idevice
	; Armor rdevice
	; Keyword kw			
	int i = dcur_restraintstoremovelist.GetSize() - 1		
	dclibs.mcs.soqs.dcur_solicitationcustomer.Clear()
	dclibs.mcs.soqs.dcur_solicitationcustomer.ForceRefTo(akSpeaker)	
	dclibs.FindAnyUsefulKey(libs.playerref)
	Utility.Wait(1)
	i = dcur_scquest_sfk_offeredsex.GetValueInt()
	if i == 1
		dclibs.mcs.soqs.SexWrapper(notipsex = true, sextag = "Oral")
	elseif i == 2
		dclibs.mcs.soqs.SexWrapper(notipsex = true, sextag = "Vaginal")
	elseif i == 3
		dclibs.mcs.soqs.SexWrapper(notipsex = true, sextag = "Anal")	
	elseif i == 5
		dclibs.mcs.soqs.SexWrapper(consensualsex = false, notipsex = true)
	else
		dclibs.mcs.soqs.SexWrapper(notipsex = true)
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

FormList Property dcur_restraintstoremovelist  Auto  
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
GlobalVariable Property dcur_scquest_sfk_offeredsex  Auto  