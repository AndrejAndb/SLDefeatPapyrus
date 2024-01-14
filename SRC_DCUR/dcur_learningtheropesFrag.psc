;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname dcur_learningtheropesFrag Extends Quest Hidden

;BEGIN ALIAS PROPERTY alias_ltr_dibellapriestess
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ltr_dibellapriestess Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ltr_orc_chief
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ltr_orc_chief Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_markath_stablemaster
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_markath_stablemaster Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ltr_chloe
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ltr_chloe Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY janineREF
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_janineREF Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ltr_dollmaker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ltr_dollmaker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ltr_orcgirl2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ltr_orcgirl2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ltr_orcgirl1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ltr_orcgirl1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ltr_orcgirl3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ltr_orcgirl3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ltr_redguardgirl
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ltr_redguardgirl Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_ltr_dawnstarmarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_ltr_dawnstarmarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ltr_followplayer
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ltr_followplayer Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
ltrqs.StartQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
ltrqs.StopQuest()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_learningtheropesQuestScript Property ltrqs Auto
