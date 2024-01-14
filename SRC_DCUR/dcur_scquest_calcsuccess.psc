;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname dcur_scquest_calcsuccess Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	soqs.calcsuccess(akSpeaker, soqs.offertype_standard)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_solicitationquestscript Property soqs Auto
dcur_mcmconfig Property dcumenu  Auto  
slaFrameworkScr Property Aroused  Auto  
dcur_slavecollarquestscript Property scqs Auto
GlobalVariable Property dcur_solicitationacts  Auto  
dcur_library Property dclibs  Auto  
