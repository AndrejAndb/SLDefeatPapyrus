Scriptname dcur_royalchastityQuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  

Book Property dcur_royalchastity_bookstart  Auto  
Book Property dcur_royalchastity_diaryfragment Auto
Book Property dcur_royalchastity_kingsnote Auto
GlobalVariable Property dcur_royalchastity_fragmentsfound Auto
GlobalVariable Property dcur_royalchastity_keyholdertimeup Auto

ReferenceAlias Property dcur_royalchastity_trapdoor Auto
ReferenceAlias Property alias_royalchastity_pushbutton Auto
ReferenceAlias Property alias_royalchastity_LoverStone Auto
ReferenceAlias Property alias_royalchastity_HotSpring Auto
ReferenceAlias Property dcur_al_royalchastity_barrel Auto
ReferenceAlias Property dcur_al_royalchastity_Hadring Auto
ReferenceAlias Property dcur_al_royalchastity_keyloc5 Auto
ReferenceAlias Property dcur_al_royalchastity_julius Auto
ReferenceAlias Property dcur_al_royalchastity_endbookcase Auto
ReferenceAlias Property dcur_al_royalchastity_Jendchest Auto
ReferenceAlias Property alias_cursedcollar Auto

Key Property dcur_royalchastity_key Auto
Key Property dcur_royalchastity_Juliuskey Auto
Key Property dcur_royalchastity_KeyFragment1 Auto
Key Property dcur_royalchastity_KeyFragment2 Auto
Key Property dcur_royalchastity_KeyFragment3 Auto
Key Property dcur_royalchastity_KeyFragment4 Auto
Key Property dcur_royalchastity_KeyFragment5 Auto

GlobalVariable Property dcur_bis_cursedcollararcactive Auto

Int Property ItemsFound = 0 Auto

Function FullSetFound()
	SetStage(30)
	SetObjectiveDisplayed(30)
	Actor a = libs.playerref		
	dclibs.strip(a, false)
	Utility.Wait(0.1)
	libs.equipDevice(a, dcumenu.dcur_royalchastity_belt, dcumenu.dcur_royalchastity_beltRendered, Libs.zad_DeviousBelt, skipevents = false, skipmutex = true)																
	Utility.Wait(0.5)
	libs.equipDevice(a, dcumenu.dcur_royalchastity_bra, dcumenu.dcur_royalchastity_braRendered, Libs.zad_DeviousBra, skipevents = false, skipmutex = true)																
	Utility.Wait(0.5)
	libs.equipDevice(a, dcumenu.dcur_royalchastity_collar, dcumenu.dcur_royalchastity_collarRendered, Libs.zad_DeviousCollar, skipevents = false, skipmutex = true)																
	Utility.Wait(0.5)
	libs.equipDevice(a, dcumenu.dcur_royalchastity_armcuffs, dcumenu.dcur_royalchastity_armcuffsRendered, Libs.zad_DeviousArmCuffs, skipevents = false, skipmutex = true)															
	Utility.Wait(0.5)
	libs.equipDevice(a, dcumenu.dcur_royalchastity_legcuffs, dcumenu.dcur_royalchastity_legcuffsRendered, Libs.zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
	Utility.Wait(0.5)	
	libs.notify("As soon as you touch the last piece of Queen Sarah's chastity set, a strong shock temporarily stuns you. When you regain your sense, you find Queen Sarah's chastity belt locked tight on you - along with the rest of her restraints. The devices seem to have compelled you to lock yourself into them. You give the restraints a strong tug, but they are firmly locked shut...", messagebox = true)	
	Utility.Wait(0.1)
EndFunction

Function KeyholderSex(Actor partner)
	RegisterForModEvent("AnimationEnd", "RC_SexLabAnimationEnd")
	libs.removeQuestDevice(libs.playerref, dcumenu.dcur_royalchastity_belt, dcumenu.dcur_royalchastity_beltRendered, Libs.zad_DeviousBelt, RemovalToken = dclibs.dcur_kw_QuestItem, skipmutex = true)																
	Utility.Wait(1)
	dclibs.sexwithplayer(partner, consensual = true, stages = 1, randomanim = true, preferredtag = "vaginal")		
EndFunction

Event RC_SexLabAnimationEnd(string eventname, string argString, float argNum, form sender)		
	; we need all this code to make sure we trigger on the correct animation as there might be more SL anims going on.
	sslThreadController SLcontroller = dclibs.SexLab.HookController(argString)		
	Actor[] actors = SLcontroller.Positions		
	bool playerInScene = SLcontroller.HasPlayer	
	bool JuliusInScene = false
	If !playerInScene
		return
	Endif		
	int numactors = actors.Length		
	int i
	While i < numactors		
		if actors[i] == dcur_al_royalchastity_julius.GetActorReference()
			JuliusInScene = true
		Endif
		i += 1
	EndWhile
	If !JuliusInScene
		return
	Endif		
	libs.equipDevice(libs.playerref, dcumenu.dcur_royalchastity_belt, dcumenu.dcur_royalchastity_beltRendered, Libs.zad_DeviousBelt, skipevents = false, skipmutex = true)																
	UnRegisterForModEvent("AnimationEnd")
EndEvent

Function KeyholderTimer()
	dcur_royalchastity_keyholdertimeup.SetValueInt(0)	
	UnregisterForUpdateGameTime()
	RegisterForSingleUpdateGameTime(24*21) ; 21 days
EndFunction

Event OnUpdateGameTime()
	libs.notify("You have the feeling that Julius might be willing to release you now. Maybe return to him and find out?", true)
	dcur_royalchastity_keyholdertimeup.SetValueInt(1)
EndEvent

Function EnableCollar()
	alias_cursedcollar.GetReference().Enable(True)
	SetObjectiveCompleted(410)
	SetStage(420)	
	SetObjectiveDisplayed(430)	
EndFunction

Function CheckQuestEnd()
	; this is called from the cursed collar activator
	if GetStage() == 420
		dcur_bis_cursedcollararcactive.SetValueInt(1)
		StopQuest()
	EndIf
EndFunction

Function StopQuest()
	SetObjectiveCompleted(420)
	SetStage(500)	
	dcLibs.LevelUp("", 3)	 
	dclibs.dcur_boundinskyrimQuest.SetStage(70)
	dclibs.dcur_boundinskyrimQuest.SetObjectiveDisplayed(70)	
	stop()
EndFunction

