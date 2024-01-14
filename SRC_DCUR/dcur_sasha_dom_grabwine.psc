;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_sasha_dom_grabwine Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	actor pl = libs.playerref	
	actor sa = saqs.GetSasha()
	saqs.dcur_sasha_hasdemand.SetValueInt(0)
	saqs.lastdemand = Utility.GetCurrentGameTime()
	saqs.notalkcounter = 0
	If pl.GetItemCount(FoodSolitudeSpicedWine) > 0
		pl.RemoveItem(FoodSolitudeSpicedWine)
		sa.equipitem(FoodSolitudeSpicedWine)
		libs.notify("Sasha grabs a bottle of wine and empties it in one go.")
	elseif pl.GetItemCount(FoodWineAlto) > 0
		pl.RemoveItem(FoodWineAlto)
		sa.equipitem(FoodWineAlto)
		libs.notify("Sasha grabs a bottle of wine and empties it in one go.")
	elseif pl.GetItemCount(FoodWineAltoA) > 0
		pl.RemoveItem(FoodWineAltoA)
		sa.equipitem(FoodWineAltoA)
		libs.notify("Sasha grabs a bottle of wine and empties it in one go.")
	elseif pl.GetItemCount(FoodWineBottle02) > 0
		pl.RemoveItem(FoodWineBottle02)
		sa.equipitem(FoodWineBottle02)
		libs.notify("Sasha grabs a bottle of wine and empties it in one go.")
	elseif pl.GetItemCount(FoodWineBottle02A) > 0
		pl.RemoveItem(FoodWineBottle02A)
		sa.equipitem(FoodWineBottle02A)
		libs.notify("Sasha grabs a bottle of wine and empties it in one go.")
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_SashaQuestScript Property saqs  Auto 
zadlibs Property libs Auto 

Potion Property FoodSolitudeSpicedWine Auto
Potion Property FoodWineAlto Auto
Potion Property FoodWineAltoA Auto
Potion Property FoodWineBottle02 Auto
Potion Property FoodWineBottle02A Auto

