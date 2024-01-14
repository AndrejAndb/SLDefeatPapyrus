;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname dcur_cic_fragmentstop Extends Quest Hidden

;BEGIN ALIAS PROPERTY alias_yq_whiterun_belethor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_yq_whiterun_belethor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_yc_riften_blacksmith
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_yc_riften_blacksmith Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_yc_markath_stables
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_yc_markath_stables Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_yq_winterhold_barkeep
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_yq_winterhold_barkeep Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_cic_rifteninn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_cic_rifteninn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_cic_dollmaker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_cic_dollmaker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_yc_morthal_innkeep
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_yc_morthal_innkeep Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_yc_dawnstar_innkeep
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_yc_dawnstar_innkeep Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_yq_solitude_barkeep
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_yq_solitude_barkeep Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_cic_windhelminn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_cic_windhelminn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_yq_windhelm_stables
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_yq_windhelm_stables Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_cic_chloe
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_cic_chloe Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY alias_cic_whiteruntemple
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_alias_cic_whiteruntemple Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
cicqs.StartQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
cicqs.StopQuest()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_cic_questscript Property cicqs Auto
