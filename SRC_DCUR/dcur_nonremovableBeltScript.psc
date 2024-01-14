Scriptname dcur_nonremovableBeltScript extends dcur_nonremovablegenericitemScript

dcur_mcmconfig Property dcumenu  Auto  

; Frameworks
SexLabFramework property SexLab auto

; Keywords
Keyword Property zad_DeviousPlug Auto 

Function DeviceMenuExt(Int msgChoice)
; Masturbate
	if msgChoice == 3
		BeltMenuMasturbate()	
; probe locks	
	elseif msgChoice == 4
		libs.Notify("You probe the high security lock keeping the tight-sitting chastity belt locked shut on you. Your fingers run across the smooth metal of the shield. Your wet pussy is burning with desire under the belt's merciless embrace, but the steel shield keeps your fingers from reaching it and giving yourself what you so desperately crave. Frustrated, you forcefully tuck at the belt - of course to no avail. Your efforts had no effect except making you even more horny then you already were.", messageBox=true)	
		Aroused.UpdateActorExposure(libs.PlayerRef, 20)
	endif
EndFunction

function DeviceMenuRemoveWithKey()
    if RemoveDeviceWithKey()    
		if Aroused.GetActorExposure(libs.PlayerRef) < libs.ArousalThreshold("Horny")
			libs.Notify("You insert the keys into the lock and turn it. The chastity belt clicks open and loosens its tight grip around your waist and crotch.", messageBox=true)	
	     else
		    libs.Notify("With trembling fingers you insert the key into the lock and somehow manage to turn it. The chastity belt clicks open and loosens its tight grip around your waist and crotch. You let the chastity belt fall to the ground while your hand reaches for your wet and finally free pussy, caressing it gently while your aroused mind is already planning your first sexual encounter in a while...", messageBox=true)	
	    endif		
    Endif
EndFunction

function BeltMenuMasturbate()
	libs.NotifyPlayer("You attempt to seek relief from the burning desire that fills you...")
	sslBaseAnimation[] anims = SexLab.GetAnimationsByTag(1, "Solo", "F", "DeviousDevice", requireAll=true)
	actor[] tmp = new actor[1]
	tmp[0] = libs.PlayerRef
    Aroused.UpdateActorExposure(libs.PlayerRef, 5)
	SexLab.StartSex(tmp, anims)
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)		
	libs.StoreExposureRate(akActor)
	If applymessage == ""
		if akActor == libs.PlayerRef						
			applymessage = "Reluctantly you wrap the metal bands around your body. You wonder if its just bad luck or cruel magic at work, but the belt is sitting so extremely tight on your hips that you have to use considerable force to press the lock shut. A shiver runs through your body as you finally hear the mechanism click inside the belt. You probe the belt by trying to slide a finger underneath it and reach your already wet pussy, but soon you sigh in frustration at the utter futility of the task. You won't be able to satisfy your desires anytime soon."		
		Else
			applymessage = akActor.GetLeveledActorBase().GetName() + " blushes as you lock the belt around her hips."
		EndIf	
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnEquippedPost(actor akActor)
	float modRate = libs.GetModifiedRate(akActor)
    libs.Log("original exposure rate was " + libs.GetOriginalRate(akActor) + ". Setting to " + modRate + ".")
    Aroused.SetActorExposureRate(akActor, modRate)	
EndFunction
 
int Function OnContainerChangedFilter(ObjectReference akNewContainer, ObjectReference akOldContainer)
	return 0
EndFunction

Function OnContainerChangedPre(ObjectReference akNewContainer, ObjectReference akOldContainer)
	libs.NotifyPlayer("The belt remains firmly locked around your hips.")
EndFunction

Function OnRemoveDevice(actor akActor)
	RestoreSettings(akActor)	
EndFunction

Function RestoreSettings(actor akActor)
	float originalExposureRate = libs.GetOriginalRate(akActor)
    libs.Log("Restoring original exposure rate to " + originalExposureRate)
    Aroused.SetActorExposureRate(akActor, originalExposureRate)
	StorageUtil.UnSetFloatValue(akActor, "zad.StoredExposureRate")
EndFunction
