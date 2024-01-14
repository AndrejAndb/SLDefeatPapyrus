Scriptname dcur_nonremovablebraScript extends dcur_nonremovablegenericitemScript 

Function OnEquippedPre(actor akActor, bool silent=false)	
	if akActor == libs.PlayerRef						
		applymessage = "You place the two heavy metal cups over your breasts and slip the bra around your chest. Probably an intended feature for these devices, the bra is borderline too small for you and sitting extremely tight on you, but you manage to press the shackle into the lock with a bit of force. When you hear an inaccessible locking mechanism click shut, you know that your breasts are now sealed away and out of reach for any caressing hands."				
	Else
		applymessage = "You slip the bra around "+GetMessageName(akActor)+" chest, and it locks in place with a soft click."
	EndIf	
EndFunction

Function OnRemoveDevice(actor akActor)	
	Parent.OnRemoveDevice(akActor)
EndFunction