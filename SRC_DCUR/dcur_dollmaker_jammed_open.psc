;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_dollmaker_jammed_open Extends TopicInfo Hidden

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
	Int i = dcumenu.dcur_devicekeywords.GetSize()
	Int price = pl.GetLevel() * dcumenu.hisecremovalgoldperlevel
	Bool DidAnything = False
	While i > 0
		i -= 1
		Keyword k = dcumenu.dcur_devicekeywords.GetAt(i) As Keyword
		if pl.WornHasKeyword(k)
			If libs.IsLockJammed(pl, k)				
				DidAnything = True
				If pl.GetItemCount(dcumenu.Gold001) > price
					libs.Notify("The Dollmaker removes the broken key from your " + libs.LookupDeviceType(k), messagebox = true)
					pl.RemoveItem(dcumenu.Gold001, price)
					libs.UnJamLock(pl, k)
				Else
					libs.Notify("Your " + libs.LookupDeviceType(k) + " is jammed, but you can't pay the Dollmaker the " + price + " gold she demands, so she won't fix the lock.", messagebox = true)
				Endif			
			Endif
		Endif
	EndWhile
	If !DidAnything
		libs.Notify("The Dollmaker inspects your restraints, but no lock is jammed.", messagebox = true)
	Else
		libs.Notify("The Dollmaker is done with inspecting your restraints.", messagebox = true)
	Endif
EndFunction

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
