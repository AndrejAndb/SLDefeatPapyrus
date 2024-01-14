Scriptname dcur_jackthebelterQuestScript extends Quest  

ReferenceAlias Property Jack  Auto  

dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
zadxLibs Property xlibs  Auto  
dcur_mcmconfig Property dcumenu  Auto  

Int Property JackLocation = 0 Auto

Armor Property dcur_jacksbelt Auto
Armor Property dcur_jacksbeltRendered Auto
Armor Property dcur_nofasttravelItem Auto
Key Property dcur_belterskey Auto

GlobalVariable Property dcur_belterquest_easymode Auto

Bool Property Hardcore = false Auto

Actor Function GetJack()
	Actor Jack_ref = Jack.GetReference() As Actor		
	return Jack_ref
EndFunction

Function EndQuest()
	UnregisterForUpdateGameTime()
	SetStage(1000)
	SetObjectiveCompleted(10)
	SetObjectiveDisplayed(1000)
	Stop()
	RemoveItems()
EndFunction

Function RemoveItems()
	libs.removeDevice(libs.playerref, xlibs.PlugsFilledSoulVag, xlibs.PlugsFilledSoulVagRendered, libs.Zad_Deviousplugvaginal, destroydevice = true, skipevents = false, skipmutex = true)	  
	libs.removeDevice(libs.playerref, xlibs.PlugsFilledSoulAnl, xlibs.PlugsFilledSoulAnlRendered, libs.Zad_Deviouspluganal, destroydevice = true, skipevents = false, skipmutex = true)		
	libs.removeQuestdevice(libs.playerref, dcur_JacksBelt, dcur_JacksBeltRendered, libs.zad_DeviousBelt, RemovalToken = dclibs.dcur_kw_QuestItem, destroydevice = true, skipmutex = true)
	; if libs.playerref.IsEquipped(dcur_nofasttravelItem)
		; libs.playerref.RemoveItem(dcur_nofasttravelItem, absilent = true)
	; Endif
EndFunction

String Function GetJackLocation()
	string retval = ""
	If JackLocation == 1
		retval = "Whiterun"
	elseif JackLocation == 3
		retval = "Windhelm"
	elseif JackLocation == 4
		retval = "Falkeath"	
	elseif JackLocation == 5
		retval = "Solitude"	
	elseif JackLocation == 6
		retval = "Morthal"	
	elseif JackLocation == 7
		retval = "Dawnstar"	
	elseif JackLocation == 8
		retval = "Markarth"	
	elseif JackLocation == 9
		retval = "Riften"	
	elseif JackLocation == 10
		retval = "Winterhold"	
	elseif JackLocation == 11
		retval = "Kynesgrove"	
	elseif JackLocation == 12
		retval = "Dragon Bridge"	
	elseif JackLocation == 13
		retval = "Nightgate"
	elseif JackLocation == 14
		retval = "Old Hroldan"
	elseif JackLocation == 15
		retval = "Ivarstead"
	elseif JackLocation == 16
		retval = "Rorikstead"
	elseif JackLocation == 17
		retval = "Riverwood"
	Endif
	return retval
EndFunction

Event OnUpdateGameTime()	
	int k = 2
	while k == 2 ; For some reason there is no inn #2 in CK.
		k = Utility.RandomInt(1, 17)		
	EndWhile
	JackLocation = k
	GetJack().moveto((dcumenu.GetAlias(k) As ReferenceAlias).GetReference())	
	;libs.notify("Moved Jack to Location " + JackLocation)
	If Hardcore		
		; if !libs.playerref.IsEquipped(dcur_nofasttravelItem)
			; libs.playerref.EquipItem(dcur_nofasttravelItem, absilent = true)
			dclibs.CheckFasttravel()
		; Endif
		RegisterForSingleUpdateGameTime(24*3) ; Three days of game time to find Jack before he moves.
	EndIf
EndEvent