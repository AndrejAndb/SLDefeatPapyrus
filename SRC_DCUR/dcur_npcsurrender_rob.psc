;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_npcsurrender_rob Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	Actor pl = akSpeaker
	; always steal the armor:
	Armor a = (pl.GetWornForm(0x00000004) As Armor)
	Pl.RemoveItem(a, 1, false, libs.playerref)					
	Int i = pl.GetNumItems()	
	While i > 0 
		i -= 1
		Form kForm = pl.GetNthForm(i)		
		Pl.RemoveItem(kForm, pl.GetItemCount(kForm), false, libs.playerref)					
	EndWhile	
	RestraintsToLoot(libs.playerref)	
	If Utility.RandomFloat() < dcumenu.keydropchance		
		dclibs.FindAnyUsefulKey()
	EndIf
	dclibs.GiveBondageRewards(leverage = 1)
	dclibs.DeleteEvilPerson(akSpeaker)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto
zadlibs Property libs  Auto  
dcur_mcmconfig Property dcumenu  Auto  

function RestraintsToLoot(ObjectReference addto)	
	Int i = 0
	If Utility.RandomFloat(0.0, 99.9) < dcumenu.restraintsdropchance
		Int r = Utility.RandomInt(1, 3)
		While r > 0
			If Utility.RandomInt(1, 2) == 1
				i = Utility.RandomInt(0, dcumenu.dcur_DDFrameworkItemList.GetSize())
				addto.AddItem(dcumenu.dcur_DDFrameworkItemList.GetAt(i), 1) 
			Else
				i = Utility.RandomInt(0, dcumenu.dcur_DDSimpleItems.GetSize())
				addto.AddItem(dcumenu.dcur_DDSimpleItems.GetAt(i), 1) 
			EndIf
			r -= 1
		Endwhile
	Endif	
Endfunction