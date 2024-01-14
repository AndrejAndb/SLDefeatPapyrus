Scriptname dcur_hq_sexslave2script extends ReferenceAlias  

dcur_hq_QuestScript Property hqqs Auto
zadlibs Property libs  Auto 

Event OnCellAttach()
	Actor a = GetActorReference()
	If a && !a.WornHasKeyword(libs.zad_DeviousGag)
		libs.equipdevice(a, libs.gagStrapBall, libs.gagStrapBallRendered, libs.zad_DeviousGag, skipmutex = true, skipevents = false)
	EndIf
endEvent