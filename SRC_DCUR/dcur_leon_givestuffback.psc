;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname dcur_leon_givestuffback Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.moan(libs.playerref)
	ObjectReference chest = alias_ustolf_guestlocker.GetReference()
	Actor player = libs.playerref
	chest.RemoveAllItems(akTransferTo = player, abKeepOwnership = false, abRemoveQuestItems = true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.equipDevice(libs.playerref, leqs.dcur_leon_blindfold, leqs.dcur_leon_blindfoldRendered, libs.zad_DeviousBlindfold, skipevents = false, skipmutex = true)	
	libs.notify("Since you are unable to resist anyway, you just comply and let Claudius lock a blindfold on you, plunging your world into darkness.", messagebox = true)	
	Utility.Wait(0.1)
	akSpeakerRef.moveto(leqs.alias_dcur_whiterunmarket.GetReference()) 
	alias_ref_claudiusinustolf.Clear()
	libs.playerref.moveto(leqs.alias_dcur_leonshousemarker.GetReference()) 		
	leqs.dcur_ref_leon.GetActorReference().moveto(leqs.alias_dcur_leonshouseleonmarker.GetReference()) 		
	;leqs.dcur_ref_leon.GetActorReference().SetRestrained(True)
	;leqs.dcur_ref_leon.GetActorReference().SetDontMove(True)
	Utility.Wait(2)
	GetOwningQuest().SetObjectiveCompleted(230)
	GetOwningQuest().SetObjectiveDisplayed(230)
	GetOwningQuest().SetStage(240)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
ReferenceAlias Property alias_ustolf_guestlocker  Auto  
dcur_leon_enslaveScript Property leqs Auto 
ReferenceAlias Property alias_ref_claudiusinustolf Auto