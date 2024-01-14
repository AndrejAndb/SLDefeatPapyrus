Scriptname dcur_bondageadventurequestScript extends Quest  

GlobalVariable Property dcur_bondageadventurequestactive  Auto  
Actor Property questgiver Auto
MiscObject Property dcur_baq_deliverytoken  Auto  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  

ReferenceAlias[] Property FrozenFollowers  Auto  
ReferenceAlias Property alias_dcur_storagecell  Auto  

Function tieherup()
	int numitems = dclibs.maxDDslotsXlib - dclibs.getDDitemcount(libs.playerref) 	
	Actor a = libs.playerref
	; we want an inescapable armbinder if possible
	libs.LockDevice(libs.playerref, dcumenu.dcur_questArmbinder, force = true)
	Int PlayerTheme = dcumenu.equiptheme
	if PlayerTheme == 0 && dcumenu.consistenttheme
		playertheme = Utility.RandomInt(1, dcumenu.ThemeList.Length - 1)
	endif	
	dclibs.dcur_equiprandomlegcuffs(a, Playertheme)			
	dclibs.dcur_equiprandomarmcuffs(a, Playertheme)							
	dclibs.dcur_equiprandomcollar(a, Playertheme)						
	dclibs.dcur_equiprandomvpiercing(a)		
	dclibs.dcur_equiprandomnpiercing(a)		
	dclibs.dcur_equiprandombra(a, PlayerTheme)							
	dclibs.dcur_equiprandombelt(a, PlayerTheme)				
	dclibs.dcur_equiprandomcorset(a, PlayerTheme)					
	dclibs.dcur_equiprandomgloves(a, PlayerTheme)						
	dclibs.dcur_equiprandomsuit(a, PlayerTheme)							
	dclibs.dcur_equiprandomboots(a, PlayerTheme) 			
	dclibs.dcur_equiprandomgag(a, PlayerTheme) 					
EndFunction

function abductfollowers()
	Actor currenttest	
	int i = 0
	while i <= (dclibs.dcur_followerlist.GetSize() - 1) && i < 5
		currenttest = dclibs.dcur_followerlist.GetAt(i) As Actor		
		;currenttest.RemoveFromFaction(dcumenu.currentfollowerfaction)
		FrozenFollowers[i].ForceRefTo(currenttest)
		debug.trace("[DCUR] - " + FrozenFollowers[i].GetActorReference().GetLeveledActorBase().GetName() + " has been quarantined!")
		currenttest.moveto(alias_dcur_storagecell.GetReference())
		currenttest.SetRestrained(True)
		currenttest.SetDontMove(True)
		i += 1
	EndWhile
endfunction

Function releasefollowers()
	int i = 0
	while i < 5
		if FrozenFollowers[i].GetReference()
			Actor a = FrozenFollowers[i].GetActorReference()
			;a.AddToFaction(dcumenu.currentfollowerfaction)
			a.moveto(libs.playerref)
			a.SetRestrained(False)
			a.SetDontMove(False)
		endif
		FrozenFollowers[i].Clear()
		i += 1
	EndWhile
EndFunction