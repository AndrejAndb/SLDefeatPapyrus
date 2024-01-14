;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_scquest_addpunishingitem Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	bool done = false
	int bailout = 0
	while !done
		int i = Utility.RandomInt(1,5)
		if i == 1
			if dclibs.etl.dcur_startslavecollarquest(true)
				done = true
			endif		
		elseif i == 2
			if dclibs.etl.dcur_startslavegagquest(true)
				done = true
			endif
		elseif i == 3
			if dclibs.etl.equipyokeofshame()
				done = true
			endif	
		elseif i == 4
			if dclibs.etl.dcur_startslutcollarquest(true)
				done = true
			endif
		elseif i == 5
			if dclibs.etl.equipchainharness()
				done = true
			endif
		endif		
		if !done
			bailout += 1
			if bailout > 20 			
				dclibs.dcur_equiprandomyoke(libs.playerref, dcumenu.equiptheme)				
				return
			endif
		endif
	endwhile
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto  
