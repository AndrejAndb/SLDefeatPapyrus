;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname dcur_hq_startquest Extends Quest Hidden

;BEGIN ALIAS PROPERTY ref_hq_customer
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_hq_customer Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_deadslaver3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaver3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_trapdoorriften
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_trapdoorriften Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_deadslaver5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaver5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_deadslaverboss
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaverboss Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_dcur_hq_telrav
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_dcur_hq_telrav Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_shchest2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_shchest2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ref_hq_rewardsack
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_hq_rewardsack Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ref_hq_teleportHelgen
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_hq_teleportHelgen Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_bosschest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_bosschest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ref_hq_littleluke
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_hq_littleluke Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_deadslaver4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaver4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_slaverofficedoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_slaverofficedoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_teleportRiften
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_teleportRiften Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_hq_banditcagemarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_hq_banditcagemarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ref_hq_sexslave
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_hq_sexslave Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_deadslaver
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaver Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_shchest3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_shchest3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_hq_startmarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_hq_startmarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ref_hq_slavehideout_trapdoorEntrance
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_hq_slavehideout_trapdoorEntrance Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_hq_cagemarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_hq_cagemarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_hq_player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_hq_player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_shchest5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_shchest5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_shchest6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_shchest6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_deadslaver2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_deadslaver2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ref_dcur_hq_farmer
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_dcur_hq_farmer Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_shchest1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_shchest1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ref_hq_slavehideout_trapdoorTunnelExit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_hq_slavehideout_trapdoorTunnelExit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_ref_dcur_hq_shchest4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_ref_dcur_hq_shchest4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ref_hq_keerava
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_hq_keerava Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ref_hq_slavehideout_trapdoorexit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_hq_slavehideout_trapdoorexit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ref_hq_sexslave2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ref_hq_sexslave2 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
hqqs.StartQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
hqqs.StartQuestLAL()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_hq_QuestScript Property hqqs Auto
ReferenceAlias Property alias_ref_hq_startmarker  Auto  
