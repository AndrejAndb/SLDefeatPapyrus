Scriptname dcur_lb_NPiercingScript extends zadEquipScript

dcur_lbquestScript Property lbqs Auto

string strFailEquip =  "The bra you are wearing prevents you from inserting these piercings."

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor == none
		akActor == libs.PlayerRef
	EndIf
	if !akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Nipple Piercings).")
			return 0
		EndIf		
	Endif
	return 0
EndFunction


Function OnEquippedPre(actor akActor, bool silent=false)
	if !akActor.HasPerk(libs.PiercedNipples)
		akActor.AddSpell(libs.PiercedNipplesSpell, true)
	Endif
	if !silent
		libs.NotifyActor("You carefully slip the piercings into "+GetMessageName(akActor)+" nipples. A quiet 'Click' is heard as the band clicks together, now seemingly seamless. ", akActor, true)
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function SendSignal()	
	lbqs.removed_NPiercing = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)	
	parent.OnUnequipped(akActor)
endfunction

Function OnEquippedPost(actor akActor)
	libs.Log("RestraintScript OnEquippedPost PiercingNipples")
	
EndFunction

Function DeviceMenu(Int msgChoice = 0)
        msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice==0 ; Not wearing a bra, no piercings
		Debug.Notification("You choose to put the piercings in.")
		libs.EquipDevice(libs.PlayerRef, deviceInventory, deviceRendered, zad_DeviousDevice)
	elseif msgChoice==1 ; Wearing a bra, no piercings
		Debug.MessageBox(strFailEquip)
	elseif msgChoice==2 ; Not wearing a bra, Remove piercings with tool		
		if !lbqs.lb_hasremoved_Catsuit
			libs.Notify("You cannot remove the nipple piercings while wearing a rubber suit!", messageBox=true)		
			return
		endif	
		if !lbqs.lb_hasremoved_Harness
			libs.Notify("You cannot remove the nipple piercings while wearing a slave harness!", messageBox=true)		
			return
		endif		
		DeviceMenuRemoveWithKey()
		SendSignal()
	elseif msgChoice==3 ; Wearing a bra, piercings
		NoKeyFailMessage(libs.PlayerRef)
	elseif msgChoice==4 ; Force them out
		if libs.playerRef.WornhasKeyword(libs.zad_DeviousBra)
			NoKeyFailMessage(libs.playerRef)
		Else
			DeviceMenuRemoveWithoutKey()
		EndIf
	Endif
	DeviceMenuExt(msgChoice)	
EndFunction
		
Function NoKeyFailMessage(Actor akActor)
	if akActor == libs.PlayerRef
		libs.NotifyPlayer("Try as you might, the bra you are wearing prevents you from removing the piercings.", true)
	Else
		libs.NotifyNPC("The bra that "+akActor.GetLeveledActorBase().GetName() + " is wearing is securely locking the piercings in place. You must remove it prior to removing them.", true)
	EndIf
EndFunction
