Scriptname dcur_lb_buttplugScript extends zadEquipScript
Keyword Property zad_DeviousBelt Auto
dcur_lbquestScript Property lbqs Auto

string strFailEquip =  "You cannot insert this plug while you are wearing a chastity belt."

int Function OnEquippedFilter(actor akActor, bool silent=false)
	; FTM optimization
	if silent && akActor != libs.PlayerRef
		return 0
	EndIf
	if akActor.WornHasKeyword(zad_DeviousBelt)
		if akActor == libs.PlayerRef && !silent
			libs.NotifyActor(strFailEquip, akActor, true)
		ElseIf  !silent
			libs.NotifyActor("The belt " + akActor.GetLeveledActorBase().GetName() + " is wearing prevents you from inserting this plug.", akActor, true)
		EndIf
		return 2
	Endif
	return 0
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef
		if Aroused.GetActorExposure(akActor) < libs.ArousalThreshold("Desire")
			msg = "Your butt is now filled, as is your desire for pleasure."
		elseif Aroused.GetActorExposure(akActor) < libs.ArousalThreshold("Horny")
			msg = "You slowly insert the vibrator inside your butt, your lust growing with every inch it slides in."
		elseif Aroused.GetActorExposure(akActor) < libs.ArousalThreshold("Desperate")
			msg = "You insert the vibrator inside your butt and take great delight in the resulting feelings of pleasure."
		else
			msg = "Barely in control of control your own body you thrust the vibrator almost forcefully into your butt."
		endif
	else
		msg = akActor.GetLeveledActorBase().GetName() + " shudders as you push the butt plug into her."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf
EndFunction

Function SendSignal()	
	lbqs.removed_APlug = True	
	lbqs.RegisterForSingleUpdate(0.1)
EndFunction

Function OnUnequipped(actor akActor)		
	parent.OnUnequipped(akActor)
endfunction

Function DeviceMenu(Int msgChoice = 0)
        msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice==0 ; Not wearing a belt, no plugs
		Debug.Notification("You choose to put the vibrator in.")
		libs.EquipDevice(libs.PlayerRef, deviceInventory, deviceRendered, zad_DeviousDevice)
	elseif msgChoice==1 ; Wearing a belt, no plugs
		Debug.MessageBox(strFailEquip)
	elseif msgChoice==2 ; Not wearing a belt, plugs		
		if !lbqs.lb_hasremoved_Catsuit
			libs.Notify("You cannot remove the nipple piercings while wearing a rubber suit!", messageBox=true)		
			return
		endif
		string msg = ""
		if Aroused.GetActorExposure(libs.PlayerRef) < libs.ArousalThreshold("Desire")
			msg = "You easily slide the vibrator out of your pussy and feel no regret."
		elseif Aroused.GetActorExposure(libs.PlayerRef) < libs.ArousalThreshold("Horny")
			msg = "Despite the pleasure it provides, you remove the vibrator from your pussy."
		elseif Aroused.GetActorExposure(libs.PlayerRef) < libs.ArousalThreshold("Desperate")
			msg = "Despite your body telling you otherwise, you reluctantly pull the vibrator from your now wet pussy."
		else
			msg = "It takes all the willpower that you can muster to relax your muscles enough to slide the vibrator out of your drippingly wet pussy."
		endif
		libs.NotifyPlayer(msg, true)
		DeviceMenuRemoveWithKey()	
		SendSignal()
	elseif msgChoice==3 ; Wearing a belt, plugs
		NoKeyFailMessage(libs.PlayerRef)
	Endif
	DeviceMenuExt(msgChoice)	
EndFunction
		

Function NoKeyFailMessage(Actor akActor)
	if akActor == libs.PlayerRef
		libs.NotifyPlayer("Try as you might, the belt you are wearing prevents you from removing the butt plug.", true)
	Else
		libs.NotifyNPC("The belt that "+akActor.GetLeveledActorBase().GetName() + " is wearing is securely locking the vibrator in place. You must remove it prior to removing it.", true)
	EndIf
EndFunction
