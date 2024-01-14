Scriptname dcur_lb_VPiercingScript extends zadRestraintScript  

dcur_lbquestScript Property lbqs Auto

string strFailEquipBelt =  "The belt you are wearing prevents you from inserting this piercing."
string strFailEquipHarness =  "The harness you are wearing prevents you from inserting this piercing."


int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor == none
		akActor == libs.PlayerRef
	EndIf
	if !akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Vaginal Piercings).")
			return 0
		EndIf
		if akActor.WornHasKeyword(libs.zad_DeviousHarness)
			if akActor == libs.PlayerRef && !silent
				libs.NotifyActor(strFailEquipHarness, akActor, true)
			ElseIf  !silent
				libs.NotifyActor("The harness " + akActor.GetLeveledActorBase().GetName() + " is wearing prevents you from inserting this piercing.", akActor, true)
			EndIf
			return 2
		Endif
		if akActor.WornHasKeyword(libs.zad_DeviousBelt)
			if akActor == libs.PlayerRef && !silent
				libs.NotifyActor(strFailEquipBelt, akActor, true)
			ElseIf  !silent
				libs.NotifyActor("The belt " + akActor.GetLeveledActorBase().GetName() + " is wearing prevents you from inserting this piercing.", akActor, true)
			EndIf
			return 2
		Endif

	Endif
	return 0
EndFunction


Function OnEquippedPre(actor akActor, bool silent=false)
	if !akActor.HasPerk(libs.PiercedClit)
		akActor.AddSpell(libs.PiercedClitSpell, true)
	Endif
	if !silent
		libs.NotifyActor("You carefully slip the piercing into "+GetMessageName(akActor)+" clitoris. A quiet 'Click' is heard as the band clicks together, now seemingly seamless. ", akActor, true)
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function SendSignal()	
	lbqs.removed_VPiercing = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)	
	parent.OnUnequipped(akActor)
endfunction



Function OnEquippedPost(actor akActor)
	libs.Log("RestraintScript OnEquippedPost PiercingVaginal")
	
EndFunction

Function DeviceMenu(Int msgChoice = 0)
        msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice==0 ; Not wearing a belt/harness, no piercing
		Debug.Notification("You choose to put the piercings in.")
		libs.EquipDevice(libs.PlayerRef, deviceInventory, deviceRendered, zad_DeviousDevice)
	elseif msgChoice==1 ; Wearing a harness, no piercings
		Debug.MessageBox(strFailEquipHarness)
	elseif msgChoice==2 ; Wearing a belt, no piercings
		Debug.MessageBox(strFailEquipBelt)
	elseif msgChoice==3 ; Not wearing a belt/harness, Remove piercings with tool
		if !lbqs.lb_hasremoved_Catsuit
			libs.Notify("You cannot remove the vaginal piercings while wearing a rubber suit!", messageBox=true)		
			return
		endif	
		if !lbqs.lb_hasremoved_Harness
			libs.Notify("You cannot remove the vaginal piercings while wearing a slave harness!", messageBox=true)		
			return
		endif		
		DeviceMenuRemoveWithKey()
		SendSignal()
	elseif msgChoice==4 ; Wearing a harness, piercings
		NoKeyFailMessageHarness(libs.PlayerRef)
	elseif msgChoice==5 ; Wearing a belt, piercings
		NoKeyFailMessageBelt(libs.PlayerRef)
	elseif msgChoice==6 ; Force them out
		if libs.playerRef.WornhasKeyword(libs.zad_DeviousBelt)
			NoKeyFailMessageBelt(libs.playerRef)
		ElseIf libs.playerRef.WornhasKeyword(libs.zad_DeviousHarness)
			NoKeyFailMessageHarness(libs.playerRef)
		Else
			DeviceMenuRemoveWithoutKey()
		EndIf
	Endif
	DeviceMenuExt(msgChoice)	
EndFunction
		

Function NoKeyFailMessageBelt(Actor akActor)
	if akActor == libs.PlayerRef
		libs.NotifyPlayer("Try as you might, the belt you are wearing prevents you from removing the piercing.", true)
	Else
		libs.NotifyNPC("The belt that "+akActor.GetLeveledActorBase().GetName() + " is wearing is securely locking the piercing in place. You must remove it prior to removing the piercing.", true)
	EndIf
EndFunction

Function NoKeyFailMessageHarness(Actor akActor)
	if akActor == libs.PlayerRef
		libs.NotifyPlayer("Try as you might, the harness you are wearing prevents you from removing the piercing.", true)
	Else
		libs.NotifyNPC("The harness that "+akActor.GetLeveledActorBase().GetName() + " is wearing is securely locking the piercing in place. You must remove it prior to removing the piercing.", true)
	EndIf
EndFunction
