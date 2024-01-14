;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname dcur_tif_hisec_blacksmith_calc Extends TopicInfo Hidden

MiscObject Property Gold  Auto  
GlobalVariable Property dcur_hisec_hascash  Auto  
GlobalVariable Property dcur_hisec_removeselector  Auto  
dcur_mcmconfig Property dcumenu  Auto  


;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor pl = Game.GetPlayer()
	int costperitem = dcumenu.hisecremovalgoldperlevel * pl.GetLevel()
	int totalcost = CountHiSecItems(pl) * costperitem	
	if dcur_hisec_removeselector.GetValueInt() == 0
		debug.notification("The blacksmith wants " + totalcost + " gold for removing all your chains.")
	endif
	if pl.GetItemCount(gold) > totalcost
		dcur_hisec_hascash.SetValueInt(1)
		; signal the remove script to get rid of them all
		dcur_hisec_removeselector.SetValueInt(99)
	; check of player can afford at least one item
	elseif pl.GetItemCount(gold) > costperitem
		dcur_hisec_hascash.SetValueInt(2)
	else
		dcur_hisec_hascash.SetValueInt(0)
	endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

int Function CountHiSecItems(actor a)
	int itemcount = 0
	if a.isequipped(dcumenu.dcur_hisecBelt)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecBra)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecLegCuffs)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecArmCuffs)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecCollar)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecBoots)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecArmbinder)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecBallGag)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecPanelGag)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecHarness)	
		itemcount +=1
	endif
	if a.isequipped(dcumenu.dcur_hisecYoke)	
		itemcount +=1
	endif
	return itemcount
endfunction




