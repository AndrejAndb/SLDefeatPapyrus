;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname dcur_tiemeupquest_startup Extends Quest Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
	SetStage(10)
	SetObjectiveDisplayed(10)
	dcur_tiemequest_npcsbound.SetValueInt(0)
	UpdateCurrentInstanceGlobal(dcur_tiemequest_npcsbound)	
	Actor pl = Game.GetPlayer()
	If pl.GetItemCount(dcumenu.dcur_rubbersuitsimple) < 1
		pl.AddItem(dcumenu.dcur_rubbersuitsimple, 1)
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property dcur_tiemequest_npcsbound Auto
dcur_mcmconfig Property dcumenu  Auto  