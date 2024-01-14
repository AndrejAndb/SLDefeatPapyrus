Scriptname dcur_cursedArmbinderScript extends zadRestraintScript

dcur_library Property dclibs  Auto  
dcur_cursedcollarquestscript Property ccqs Auto

int Function OnEquippedFilter(actor akActor, bool silent=false)	
	if ! akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Armbinder).")
			return 0
		EndIf		
	EndIf	
	if !silent && !dclibs.checknaked()
		libs.NotifyPlayer("You must be naked before equipping the armbinder!")
		return 2
	endif	
    return 0
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You slip into the loose straps and arrange them across your shoulders and chest before you slide your arms inside the sturdy leather glove. As soon as your hands reach the end of the glove, the straps suddenly pull tight until they uncomfortably cut into your soft skin. When you probe the armbinder you find that it is sitting so tight on you that you can't even separate your wrists inside the glove and the straps won't move even a fraction of an inch. You are now completely helpless and there is no way you will be able to struggle out of the armbinder any time soon."		
	Else
		msg = "You slide the armbinder over "+GetMessageName(akActor)+"'s arms and pull the straps tight."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnEquippedPost(actor akActor)
	ccqs.SetNextStage()
EndFunction

