;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_Sasha_Whoreout Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor pl = Game.GetPlayer()
	int lmargin = dcumenu.solicitationmintip * pl.GetLevel() As Int
	int hmargin = dcumenu.solicitationmaxtip * pl.GetLevel() As Int
	int reward = Utility.RandomInt(lmargin,hmargin)		
	pl.AddItem(Gold001, reward)
	dclibs.SexLab.QuickStart(saqs.GetSasha(), akSpeaker)
	saqs.lastwhoredout = Utility.GetCurrentGameTime()
	saqs.lastunfriendlyact = Utility.GetCurrentGameTime()
	saqs.dcur_sasha_canwhore.SetValueInt(0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001 Auto
dcur_SashaQuestScript Property saqs  Auto  
zadlibs Property libs Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
