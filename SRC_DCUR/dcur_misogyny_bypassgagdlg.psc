;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname dcur_misogyny_bypassgagdlg Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	;libs.Moan(libs.PlayerRef)
	gag.enableTalk()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	if dcur_talkedtolist.GetSize() > 9 
		dcur_talkedtolist.revert()
		; Seems RemoveAddedForm is bugged, so we just wipe the list after adding the 10th person. Every other solution would take a lot of time.
		;dcur_talkedtolist.RemoveAddedForm(dcur_talkedtolist.GetAt(10))
	endif
	dcur_talkedtolist.addform(akspeaker.GetBaseObject())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
zadGagQuestScript property gag Auto
dcur_library Property dclibs  Auto  
FormList Property dcur_talkedtolist  Auto  