;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_dia_remove100gold Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Actor pl = Game.Getplayer()
pl.removeitem(gold001, 100)
pl.additem(dcur_partyclothes,1)
; port claudis to the BM, to prevent the teleport CTD.
dcslave.alias_dcur_claudius.GetReference().moveto(dcslave.dcur_ref_leon.GetReference()) 	
Utility.Wait(1)	
GetOwningQuest().SetObjectiveCompleted(20)
GetOwningQuest().SetStage(30)
GetOwningQuest().SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001  Auto  

MiscObject Property dcur_partyclothes  Auto  
dcur_leon_enslaveScript Property dcslave  Auto  