;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_scquest_belther Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	string akSex
	if akSpeaker.GetActorBase().GetSex() == 0
		akSex = "him"
	else
		akSex = "her"
	endif
	libs.notify("Before you can do anything to stop " + akSex + ", " + akSpeaker.GetActorBase().GetName() + " snaps a metal chastity belt around your waist.\nYou gasp when you feel two huge plugs attached to the shield sliding into your aroused holes as the smooth metal belt slowly closes around your crotch. The last thought of resistance evaporates from you as the plugs fill you completely, sending waves of pleasure through your body.\nUnable to help it, you close your eyes and obediently wait until you hear the locks clicking shut.", messagebox = true)
	dclibs.strip(libs.playerRef, false)	
	libs.equipDevice(libs.playerref, dcumenu.dcur_customVagPlug, dcumenu.dcur_customVagPlugRendered, libs.Zad_DeviousPlug, skipevents = false, skipmutex = true)				
	libs.equipDevice(libs.playerref, dcumenu.dcur_customAnPlug, dcumenu.dcur_customAnPlugRendered, libs.Zad_DeviousPlug, skipevents = false, skipmutex = true)				
	dclibs.etl.equipbeltofshame()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  