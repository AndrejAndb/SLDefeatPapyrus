;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname dcur_workinggirlquest_frag Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY InnKeep
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_InnKeep Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY customer
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_customer Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
wgs.EndQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
wgs.StartQuest()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_WorkingGirlQuestScript Property wgs Auto
