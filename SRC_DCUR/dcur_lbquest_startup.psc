;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname dcur_lbquest_startup Extends Quest Hidden

;BEGIN ALIAS PROPERTY dcur_queststartmarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_queststartmarker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
	lbqs.StartQuest()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_lbquestScript Property lbqs Auto