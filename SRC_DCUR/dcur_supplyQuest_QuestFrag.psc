;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname dcur_supplyQuest_QuestFrag Extends Quest Hidden

;BEGIN ALIAS PROPERTY dcur_sadq_Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_sadq_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_sadq_Dollmaker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_sadq_Dollmaker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_sadq_Vekel
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_sadq_Vekel Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(90)
SetStage(1001)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetStage(10)
SetObjectiveDisplayed(10)
sadqs.StartQuest()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_SupplyQuestScript Property sadqs Auto
