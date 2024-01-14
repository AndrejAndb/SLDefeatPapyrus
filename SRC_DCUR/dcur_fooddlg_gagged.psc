;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_fooddlg_gagged Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	actor pl = Game.GetPlayer()
	Int i = Utility.RandomInt(0, dcumenu.dcur_food.GetSize() - 1)
	potion p = dcumenu.dcur_food.GetAt(i) as Potion
	pl.equipitem(p)
	Utility.Wait(1)
	i = Utility.RandomInt(0, dcumenu.dcur_drinks.GetSize() - 1)
	p = dcumenu.dcur_drinks.GetAt(i) as Potion
	pl.equipitem(p)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
