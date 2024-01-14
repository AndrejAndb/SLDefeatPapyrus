;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname dcur_dq_quest_startup Extends Quest Hidden

;BEGIN ALIAS PROPERTY dcur_dq_startmarker3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_dq_startmarker3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_dq_startmarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_dq_startmarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_dq_startmarker4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_dq_startmarker4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_ref_dq_customer
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_ref_dq_customer Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_ref_dq_customerFollow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_ref_dq_customerFollow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_dq_startmarker2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_dq_startmarker2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_ref_dq_customerStop
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_ref_dq_customerStop Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_ref_dq_customerHit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_ref_dq_customerHit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_dq_cagemarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_dq_cagemarker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
dqqs.StartQuest()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_dq_QuestScript Property dqqs Auto
