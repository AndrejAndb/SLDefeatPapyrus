;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname dcur_jackthebelterQuest_startup Extends Quest Hidden

;BEGIN ALIAS PROPERTY dcur_al_jackthebelter
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_al_jackthebelter Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE	
	SetStage(10)
	SetObjectiveDisplayed(10)
	libs.equipDevice(libs.playerref, xlibs.PlugsFilledSoulVag, xlibs.PlugsFilledSoulVagRendered, libs.Zad_Deviousplugvaginal, skipevents = false, skipmutex = true)	  
	libs.equipDevice(libs.playerref, xlibs.PlugsFilledSoulAnl, xlibs.PlugsFilledSoulAnlRendered, libs.Zad_Deviouspluganal, skipevents = false, skipmutex = true)		
	libs.equipdevice(libs.playerref, jbqs.dcur_JacksBelt, jbqs.dcur_JacksBeltRendered, libs.zad_DeviousBelt, skipevents = false, skipmutex = true)
	Utility.Wait(1)
	libs.notify("You have no idea what just happened, but you have been locked in a very secure looking steel chastity belt. And not only that, but whoever locked you in that belt also filled your pussy and rear end with two large vibrators...", messagebox = true)
	Utility.Wait(0.1)
	libs.notify("You can't help but wonder if this was the work of the infamous bandit Jack the Belter. He pries only on the most beautiful women in Skyrim, locking chastity belts on them in their sleep or sometimes even in a brazen assault. Nobody ever caught him, and none of his poor female victims ever managed to escape their belt. Some have been belted for years, with no hope to escape and have sex again.", messagebox = true)
	Utility.Wait(0.1)	
	libs.notify("You better go look for Jack. According to rumour, he's lurking in Skyrim's taverns, looking for more victims. But he's never staying long in the same place!", messagebox = true)
	Utility.Wait(0.1)	
	jbqs.Hardcore = True	
	; this control enables the innkeeper dialogue
	If jbqs.Hardcore
		jbqs.dcur_belterquest_easymode.SetValueInt(0)
	Else
		jbqs.dcur_belterquest_easymode.SetValueInt(1)
	Endif
	jbqs.RegisterForSingleUpdateGameTime(0.01)	
	;Jack.GetReference().AddItem(dcumenu.gold001, 1000)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property Jack  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
zadxLibs Property xlibs  Auto  
dcur_mcmconfig Property dcumenu  Auto  
dcur_jackthebelterQuestScript Property jbqs Auto