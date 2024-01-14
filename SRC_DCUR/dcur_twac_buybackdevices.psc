;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_twac_buybackdevices Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	doit(akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Function doit(Actor dm)
	Actor pl = libs.playerref	
	Int MaxItemsToTake = 100 ;sanity limit for packrat-sized inventories	
	Int i = pl.GetNumItems()	
	Int ItemsTaken = 0
	Form[] FirstFive = new Form[4]
	While i > 0 && MaxItemsToTake > 0
		i -= 1
		Form kForm = pl.GetNthForm(i)		
		int z = pl.GetItemCount(kForm)
		While z > 0 && MaxItemsToTake > 0 && kForm.HasKeyword(libs.zad_InventoryDevice) && !pl.IsEquipped(kForm) && !kForm.HasKeyword(libs.zad_BlockGeneric)
			z -= 1
			MaxItemsToTake -= 1
			If ItemsTaken < 5
				FirstFive[ItemsTaken] = kForm
			Endif
			Pl.RemoveItem(kForm, 1, true)		
			ItemsTaken += 1			
		EndWhile		
	EndWhile	
	; if the player had less than 5 useable items, add them back.
	If ItemsTaken < 5
		i = ItemsTaken
		While i > 0
			pl.additem(FirstFive[i], 1, True)
			i -= 1
		EndWhile
		libs.notify("You did not have enough used restraints Melanie was interested in.", messagebox = true)
		return
	Endif
	libs.notify("Melanie found " + ItemsTaken + " restraints she wants to buy from you.", messagebox = true)
	Int numkeys = Math.Floor(ItemsTaken / 5.0)	
	While numkeys > 0
		float dropchance = dcumenu.rarekeydropchance + dcumenu.keydropchance
		If (Utility.RandomFloat(0.0, dropchance) < dcumenu.rarekeydropchance) 
			dclibs.FindUsefulRareKey(pl)
			numkeys -= 2
		Else
			dclibs.FindUsefulKey(pl)
			numkeys -= 1
		Endif
	EndWhile
EndFunction

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  