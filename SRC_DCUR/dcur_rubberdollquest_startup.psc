;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname dcur_rubberdollquest_startup Extends Quest Hidden

;BEGIN ALIAS PROPERTY dcur_rd_dollmaker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_rd_dollmaker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
	rdqs.EndQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
	rdqs.StartQuest()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_rubberdollquestscript Property rdqs Auto
