Scriptname dcur_slaveBeltScript extends zadEquipScript  

dcur_mcmconfig Property dcumenu  Auto  

; Frameworks
SexLabFramework property SexLab auto

; Keywords
Keyword Property zad_DeviousPlug Auto 

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key
		if libs.playerref.getItemCount(dcumenu.dcur_bodyrestraintskey) >= 5
			DeviceMenuRemoveWithKey()
		else
			libs.Notify("To make escape highly difficult, this chastity belt is fitted with five different locks - three on the belt and two more on the shield. You cannot unlock this device unless you are in possession of all five keys!", messageBox=true)			
		endif		
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction

Function DeviceMenuExt(Int msgChoice)
; Masturbate
	if msgChoice == 3
		BeltMenuMasturbate()	
; probe locks	
	elseif msgChoice == 4
		libs.Notify("You probe the five high security locks keeping the tight-sitting chastity belt locked shut on you. Your fingers run across the smooth metal of the shield. Your wet pussy is burning with desire under the belt's merciless embrace, but the steel shield keeps your fingers from reaching it and giving it what it so desperately craves. Frustrated, you forcefully tuck at the belt - of course to no avail. Your efforts had no effect except making you even more horny then you already were.", messageBox=true)	
		Aroused.UpdateActorExposure(libs.PlayerRef, 20)
	endif
EndFunction

function DeviceMenuRemoveWithKey()
    if RemoveDeviceWithKey()    
		if Aroused.GetActorExposure(libs.PlayerRef) < libs.ArousalThreshold("Horny")
			libs.Notify("You insert the five keys into their respective locks and turn them, one after the other. When you turn the last key, the chastity belt clicks open and loosens its tight grip around your waist and crotch.", messageBox=true)	
	     else
		    libs.Notify("With trembling fingers you insert the five keys into their respective locks and somehow manage to turn them, one after the other. When you turn the last key, the chastity belt clicks open and loosens its tight grip around your waist and crotch. You let the chastity belt fall to the ground while your hand reaches for your wet and finally free pussy, caressing it gently while your aroused mind is already planning your first sexual encounter in a while...", messageBox=true)	
	    endif		
		;libs.playerref.RemoveItem(dcumenu.dcur_slavebelt, 1, true) 
		libs.playerref.RemoveItem(dcumenu.dcur_bodyrestraintskey, 5, true) 
    Endif
EndFunction

function BeltMenuMasturbate()
	libs.NotifyPlayer("You attempt to seek relief from the burning desire that fills you...")
	sslBaseAnimation[] anims = SexLab.GetAnimationsByTag(1, "Solo", "F", "DeviousDevice", requireAll=true)
	actor[] tmp = new actor[1]
	tmp[0] = libs.PlayerRef
    Aroused.UpdateActorExposure(libs.PlayerRef, 25)
	SexLab.StartSex(tmp, anims)
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)		
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "Reluctantly you wrap the metal bands around your body. You wonder if its just bad luck or cruel magic at work, but the belt is sitting so extremely tight on your hips that you have to use considerable force to press the lock shut. A shiver runs through your body as you finally hear the mechanism click inside the belt. You probe the belt by trying to slide a finger underneath it and reach your already wet pussy, but soon you sigh in frustration at the utter futility of the task. You won't be able to satisfy your desires anytime soon."		
	Else
		msg = akActor.GetLeveledActorBase().GetName() + " blushes as you lock the belt around her hips."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf
EndFunction
