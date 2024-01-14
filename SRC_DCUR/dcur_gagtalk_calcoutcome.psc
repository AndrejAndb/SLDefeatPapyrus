;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname dcur_gagtalk_calcoutcome Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.Moan(libs.PlayerRef)
;END CODE
EndFunction
;END FRAGMENT

zadlibs Property libs  Auto 

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Actor pl = Game.GetPlayer()
	Float chance = dcumenu.gagtalksuccesschance
	If !Pl.WornHasKeyword(dcumenu.libs.zad_DeviousHeavyBondage)
		dcumenu.libs.notify("You use your hands to gesticulate!")
		chance += 10.0
	EndIf
	If (Utility.RandomFloat(0.0, 99.9) < chance) || dcur_gagtalk_lasttalkedto.HasForm(akSpeaker) || dcumenu.dclibs.mcs.isDCURQuestRunning
		dcur_gagtalk_success.SetValueInt(1)
	Else
		dcur_gagtalk_success.SetValueInt(0)
	Endif
	 dcur_gagtalk_lasttalkedto.Revert()
	 dcur_gagtalk_lasttalkedto.AddForm(akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

FormList Property dcur_gagtalk_lasttalkedto Auto
GlobalVariable Property dcur_gagtalk_success Auto
dcur_mcmconfig Property dcumenu Auto
