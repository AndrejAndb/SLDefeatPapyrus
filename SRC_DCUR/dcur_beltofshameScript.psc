Scriptname dcur_beltofshameScript extends zadEquipScript  

; Frameworks
SexLabFramework property SexLab auto

; Keywords
Keyword Property zad_DeviousPlug Auto 

dcur_publicindecencyQuestScript Property piqs Auto

Float Property mindays = 1.0 Auto
Float Property maxdays = 2.0 Auto

int Function OnEquippedFilter(actor akActor, bool silent=false)	
	if silent
		return 0 ; Proceed.
	EndIf
        int interaction = zad_DeviceMsg.Show()
        if interaction == 0 ; Equip Device		
			return 0 ; Proceed
		ElseIf interaction == 5 ; Put it away
			return 2
		EndIf	
	return 0
EndFunction

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key		
		DeviceMenuRemoveWithKey()
		;libs.Notify("This " + deviceName + " has a no visible lock at all.", messageBox=true)
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)		
EndFunction


function DeviceMenuExt(Int msgChoice)
	if msgChoice == 3
		self.BeltMenuMasturbate()
	endIf
	if msgChoice == 4
		libs.Notify("With the timer released, you can freely access the chasity belt's locking mechanism and open it. You finally remove the tight metal straps from your waist and groin.", true)
		armor device = deviceInventory		
		if !deviceRendered.HasKeyword(libs.zad_QuestItem) && !device.HasKeyword(libs.zad_QuestItem)
			libs.removeDevice(libs.playerref, device, deviceRendered, libs.zad_DeviousBelt, false, false, true)
		else
			libs.RemoveQuestDevice(libs.playerref, device, deviceRendered, libs.zad_DeviousBelt, piqs.dclibs.dcur_kw_QuestItem, false, true)
		endIf
	endIf
endFunction

string Function DeviceMenuPickLockFail()
	libs.PlayerRef.RemoveItem(Lockpick)
	Aroused.UpdateActorExposure(libs.PlayerRef, 5)
	return "In addition, your struggles with the lock have left you even more aroused. "
EndFunction

string function ReturnMagicAroused()
	Aroused.UpdateActorExposure(libs.PlayerRef, 5)
	return "Furthermore, the tingling magical energies so near your groin leave you feeling aroused. "
EndFunction

string Function DeviceMenuDestructionModerate()
	return ReturnMagicAroused()
EndFunction

string Function DeviceMenuAlterationSuccess()
	return ReturnMagicAroused()
EndFunction

string Function DeviceMenuAlterationFail()
	return ReturnMagicAroused()
EndFunction

string Function DeviceMenuRestorationFail()
	return ReturnMagicAroused()
EndFunction
string Function DeviceMenuIllusionFail()
	return ReturnMagicAroused()
EndFunction

string Function DeviceMenuBruteForceFail()
	Aroused.UpdateActorExposure(libs.PlayerRef, 5, "Brute force fail")
	return "Your efforts leave you both exhausted, and aroused."
EndFunction

function BeltMenuMasturbate()
	libs.NotifyPlayer("You attempt to seek relief from the burning desire that fills you...")
	sslBaseAnimation[] anims = SexLab.GetAnimationsByTag(1, "Solo", "F", "DeviousDevice", requireAll=true)
	actor[] tmp = new actor[1]
	tmp[0] = libs.PlayerRef
    Aroused.UpdateActorExposure(libs.PlayerRef, 10)
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

Function OnEquippedPost(actor akActor)		
	piqs.LockBelt(mindays, maxdays)
EndFunction
 
int Function OnContainerChangedFilter(ObjectReference akNewContainer, ObjectReference akOldContainer)
	return 0
EndFunction

Function OnContainerChangedPre(ObjectReference akNewContainer, ObjectReference akOldContainer)
	libs.NotifyPlayer("The belt remains firmly locked around your hips.")
EndFunction

Function OnRemoveDevice(actor akActor)			
	piqs.UnLockBelt()
EndFunction