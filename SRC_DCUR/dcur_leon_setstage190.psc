;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_leon_setstage190 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE	
	libs.equipDevice(Game.GetPlayer(), leqs.dcur_leon_ballgag, leqs.dcur_leon_ballgagRendered, libs.zad_DeviousGag, skipevents = false, skipmutex = true)
	libs.notify("As promised, you put Nadia's ball gag into your mouth. As you insert it, it feels even larger than you thought it was, filling your mouth completely and forcing it wide open. Staying faithful to your promise, you pull the straps as tight as you can, shoving the giant ball even deeper into your mouth. You would not admit it to Andre, but when you click the padlocks shut the area between your legs starts to burn...", messagebox = true)
	libs.notify("You return the key to Andre, who checks your gag and nods in approval as he finds it to be locked tight on you.", messagebox = true)
	Game.GetPlayer().removeitem(leqs.dcur_leon_nadiaskey)
	GetOwningQuest().SetObjectiveCompleted(180)
	GetOwningQuest().SetObjectiveDisplayed(190)
	GetOwningQuest().SetStage(190)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
dcur_leon_enslaveScript Property leqs Auto