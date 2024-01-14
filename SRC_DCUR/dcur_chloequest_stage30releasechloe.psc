;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_chloequest_stage30releasechloe Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	;cqs.libs.RemoveDevice(cqs.GetChloe(), cqs.dcur_chloe_yoke_Inventory, cqs.dcur_chloe_yoke_Rendered, cqs.libs.zad_DeviousHeavyBondage, skipmutex = true)
	;cqs.libs.RemoveDevice(cqs.GetChloe(), cqs.dclibs.xlibs.zadx_HR_ChainHarnessFullInventory, cqs.dclibs.xlibs.zadx_HR_ChainHarnessFullRendered, cqs.libs.zad_DeviousHarness, skipmutex = true)		
	;Utility.Wait(1)	
	;Utility.Wait(1)

;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_chloeQuestScript Property cqs Auto
MiscObject Property Gold001  Auto  
