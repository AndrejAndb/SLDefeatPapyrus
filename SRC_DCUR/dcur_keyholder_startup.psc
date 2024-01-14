;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 10
Scriptname dcur_keyholder_startup Extends Quest Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
	khqs.StartQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;code
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
	khqs.EndQuest()
;END CODE
EndFunction
;END FRAGMENT


;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_KeyholderQuestScript Property khqs Auto
