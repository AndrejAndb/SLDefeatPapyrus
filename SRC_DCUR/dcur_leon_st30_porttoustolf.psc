;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_st30_porttoustolf Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	dcslave.SetStage(40)
	dcslave.SetObjectiveDisplayed(40)
	dcslave.SetObjectiveCompleted(30)
	;Utility.Wait(1)
	Game.GetPlayer().removeitem(Gold001, 250)
	akSpeakerRef.moveto(dcslave.dcur_ustolf_claudiusmarker.GetReference()) 
	alias_ref_claudiusinustolf.ForceRefTo(akSpeakerRef)
	Game.GetPlayer().moveto(dcslave.alias_ref_ustolf_entrance.GetReference()) 		
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_leon_enslaveScript Property dcslave  Auto  
MiscObject Property Gold001  Auto  
dcur_mcmconfig Property dcumenu  Auto  

ReferenceAlias Property alias_ref_claudiusinustolf Auto