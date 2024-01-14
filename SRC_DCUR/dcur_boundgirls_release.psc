;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_boundgirls_release Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE			
	if Utility.RandomInt() < 50
		dclibs.GiveBondageRewards(leverage = 3)
		dclibs.GiveBondageRewards(leverage = 3)
		libs.playerref.Additem(dclibs.dcumenu.dcur_luckycharm, 1)
		libs.PlayerRef.AddItem(dcLibs.dcur_darepack, Utility.RandomInt(1,2))
	Else
		dclibs.GiveRewards(leverage = 2)
		dclibs.GiveRewards(leverage = 2)
		libs.playerref.Additem(dclibs.dcumenu.dcur_luckycharm, 1)
	EndIf	
	If Utility.RandomInt() < 25
		libs.notify("As you unlock the girl's restraints, their devious magic triggers and makes them lock on YOU!!!", messagebox = true)
		Utility.Wait(0.1)
		if Utility.RandomInt(0,100) < dcumenu.losekeychance
			dclibs.dcur_removekeys(libs.playerref)
			dclibs.stealfollowerkeys() 	
		else
			dclibs.dcur_removekeys(libs.playerref, standardkeysonly = true)
		endif	
		Armor a
		Armor b
		Armor c
		Armor d
		a = libs.GetWornDevice(akSpeaker, libs.zad_DeviousHeavyBondage)
		b = libs.GetWornDevice(akSpeaker, libs.zad_DeviousBoots)
		c = libs.GetWornDevice(akSpeaker, libs.zad_DeviousGag)
		d = libs.GetWornDevice(akSpeaker, libs.zad_DeviousBelt)
		; we remove this item first, to make room for the clothing
		libs.UnlockDevice(akSpeaker, a, zad_DeviousDevice = libs.zad_DeviousHeavyBondage, destroyDevice = true)			
		Utility.Wait(1)
		
		dclibs.WipeRestraints(akSpeaker, genericonly = true, removeDCURquestitems = false, destroyDevices = true)
		Utility.Wait(1)
		If a
			libs.LockDevice(libs.PlayerRef, a)
			Utility.Wait(1)
		EndIf
		If b
			libs.LockDevice(libs.PlayerRef, b)
			Utility.Wait(1)
		EndIf
		If c
			libs.LockDevice(libs.PlayerRef, c)
			Utility.Wait(1)		
		EndIf
		If d
			libs.LockDevice(libs.PlayerRef, d)
			Utility.Wait(1)		
		EndIf
	Else
		dclibs.WipeRestraints(akSpeaker, genericonly = true, removeDCURquestitems = false, destroyDevices = true)
	EndIf	
	
	Int i = dclibs.dcur_boundgirl_outfits.GetSize() - 1
	Outfit o = dclibs.dcur_boundgirl_outfits.GetAt(Utility.RandomInt(0, i)) As Outfit
	akSpeaker.SetOutfit(o)	
	dclibs.MarkBoundGirlDone(akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_library Property dclibs  Auto  
dcur_mcmconfig Property dcumenu  Auto 
zadlibs Property libs  Auto 