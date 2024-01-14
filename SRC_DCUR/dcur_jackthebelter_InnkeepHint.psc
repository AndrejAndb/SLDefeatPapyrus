;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_jackthebelter_InnkeepHint Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	doit()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
dcur_jackthebelterQuestScript Property jbqs Auto

Function doit()
	Actor pl = libs.playerref	
	Int MaxItemsToTake = 11 
	Int i = pl.GetNumItems()	
	Int ItemsTaken = 0
	Form[] FirstTen = new Form[9]
	While i > 0 && MaxItemsToTake > 0 && ItemsTaken < 10
		i -= 1
		Form kForm = pl.GetNthForm(i)				
		int z = pl.GetItemCount(kForm)
		While z > 0 && MaxItemsToTake > 0 && ItemsTaken < 10 && kForm.HasKeyword(libs.zad_InventoryDevice) && !pl.IsEquipped(kForm) && !kForm.HasKeyword(libs.zad_BlockGeneric)
			z -= 1
			MaxItemsToTake -= 1
			If ItemsTaken < 10
				FirstTen[ItemsTaken] = kForm
			Endif
			Pl.RemoveItem(kForm, 1, true)		
			ItemsTaken += 1			
		EndWhile
	EndWhile	
	; if the player had less than 10 useable items, add them back.
	If ItemsTaken < 10
		i = ItemsTaken
		While i > 0
			pl.additem(FirstTen[i], 1, True)
			i -= 1
		EndWhile
		libs.notify("You did not have enough restraints the Innkeeper was interested in." + ItemsTaken, messagebox = true)
		return
	Endif
	libs.notify("The Innkeeper takes ten restrants from your inventory and slips you a note in exchange...", messagebox = true)
	Utility.Wait(0.5)
	libs.notify("It would seem that someone saw Jack The Belter in " + jbqs.GetJackLocation() + ". Hurry up before he moves on!", messagebox = true)	
EndFunction