Scriptname dcur_cursedBeltScript extends zadEquipScript  

dcur_mcmconfig Property dcumenu Auto

; Frameworks
SexLabFramework property SexLab auto

; Keywords
Keyword Property zad_DeviousPlug Auto 

int Function OnEquippedFilter(actor akActor, bool silent=false)	
	if !silent && (!libs.IsWearingDevice(libs.PlayerRef, dcumenu.dcur_customVagPlugRendered, libs.zad_DeviousPlug) || !libs.IsWearingDevice(libs.PlayerRef, dcumenu.dcur_customAnPlugRendered, libs.zad_DeviousPlug) || !Libs.PlayerRef.WornHasKeyword(libs.zad_DeviousPiercingsVaginal))	
		libs.NotifyPlayer("The Cursed Chastity Belt wants you to plug yourself with the cursed plugs and wear a vaginal piercing before it will allow you to lock yourself into it!", messageBox = true)
		return 2
	endif	
    return 0
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)	
	libs.StoreExposureRate(akActor)
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
	dcur_cursedcollarquestscript ccqs = None
	
	float modRate = libs.GetModifiedRate(akActor)
    libs.Log("original exposure rate was " + libs.GetOriginalRate(akActor) + ". Setting to " + modRate + ".")
    Aroused.SetActorExposureRate(akActor, modRate)
	ccqs = Game.GetFormFromFile(0x000058CC, "Deviously Cursed Loot.esp") as dcur_cursedcollarquestscript		
	; failsafe in case the player equips the belt without reading the note	
	ccqs.SetNextStage()
EndFunction

