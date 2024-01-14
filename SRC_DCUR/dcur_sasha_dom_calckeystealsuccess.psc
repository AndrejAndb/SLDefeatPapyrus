;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_dom_calckeystealsuccess Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Float chance = dcumenu.KeyStealBaseChance	
	If Utility.RandomFloat(0.0, 99.9) < chance
		saqs.dcur_sasha_dom_keystolen.SetValueInt(1)
	Else
		saqs.dcur_sasha_dom_keystolen.SetValueInt(0)
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs Auto 
dcur_mcmconfig Property dcumenu  Auto 
dcur_SashaQuestScript Property saqs  Auto 