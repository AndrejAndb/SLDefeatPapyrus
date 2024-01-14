;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname dcur_shopping_startup Extends Quest Hidden

;BEGIN ALIAS PROPERTY sqqs_questgiver
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_sqqs_questgiver Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE	
	sqqs.QuestStartup()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_shopping_QuestScript Property sqqs Auto 