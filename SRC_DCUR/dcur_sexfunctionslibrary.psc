Scriptname dcur_sexfunctionslibrary extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto
SexLabFramework Property SexLab  Auto  
dcur_spankQuestScript Property spqs Auto

Actor MainPos
Actor SexPartner
Actor SexPartner2
Actor SexPartner3
Actor Bound
Actor Spanked
FormList Property dcur_sf_appliedbondage Auto
bool consensual = true
bool IsMainPosVictim = False
Bool RemoveDevicesAfterSex
Bool TieUp_PostScene
string tag = ""
Bool bedsok = true
Int devicetheme = 3

Function HaveSexNow(bool masturbateonly = false)
	Actor currenttest		
	currenttest = Game.FindRandomActorFromRef(libs.playerRef, 350.0)
	if !masturbateonly && currenttest && dclibs.testrapist(currenttest)
		libs.notify("You find " + currenttest.GetLeveledActorBase().GetName() + " irresistible!")					
		dclibs.sexwithplayer(currenttest, consensual = true, stages = 1, randomanim = true, nostrip = false, beds = false)						
	Else
		libs.notify("You find yourself irresistible!")					
		dclibs.strip(libs.playerref, false)		
		sslBaseAnimation[] tmpanims
		If !libs.playerref.WornHasKeyword(libs.zad_DeviousBelt)	&& !libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			tmpanims = SexLab.GetAnimationsByTag(1, "Solo", "F", requireAll=true)
		Elseif libs.playerref.WornHasKeyword(libs.zad_DeviousBelt)	&& !libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			;tmpanims = SexLab.GetAnimationsByTag(1, "Solo", "F", "DeviousDevice", requireAll=true)			
			tmpanims = New sslBaseAnimation[1]
			tmpanims[0] = SexLab.GetAnimationObject("DDBeltedSolo")
		Else 
			; we're bound - play device struggle
			libs.PlayHornyAnimation(libs.playerref)	
			return
		Endif
		actor[] tmp = new actor[1]
		tmp[0] = libs.PlayerRef
		dclibs.Aroused.UpdateActorExposure(libs.PlayerRef, 10)
		SexLab.StartSex(tmp, tmpanims)				
	Endif
EndFunction

Function sex()
	if Bound != none && Bound.GetActorBase().GetSex() == 1
		tieher_pre(Bound)	
	endif
	Actor[]	SexPartners		
	if SexPartner3 != None && !Bound	; no three and foursomes for bound actors. Just use a couple anim and ignore the other actors
		SexPartners = new actor[4]
		SexPartners[3] = SexPartner3		
	elseif SexPartner2 != None && !Bound
		SexPartners = new actor[3]
		SexPartners[2] = SexPartner2
	else
		SexPartners = new actor[2]
	endif	
	
	; let's set up proper positions
	if !consensual && IsMainPosVictim
		SexPartners[0] = MainPos
		SexPartners[1] = SexPartner
	elseif SexPartner.GetLeveledActorBase().GetSex() == 1 && consensual	
		; SexPartner is female and the scene is consensual
		if MainPos.GetLeveledActorBase().GetSex() == 0 || (!consensual && !IsMainPosVictim)
			SexPartners[1] = MainPos
			SexPartners[0] = SexPartner
		else
			SexPartners[0] = MainPos
			SexPartners[1] = SexPartner
		Endif
	else
		; standard positions
		SexPartners[0] = MainPos
		SexPartners[1] = SexPartner
	EndIf
			
	Int numsexactors = SexPartners.Length
	String suppresstag
	String selecttag = tag
	If selecttag != ""
		selecttag += ","
	EndIf
	If consensual && !Bound
		; filter all the stuff that doesn't fit here, including the bound animations some people register to SL for no good reason...
		suppresstag = "Aggressive,Bound,Futa,Guro,Necro,Molag,Amputee"
	else
		If !Bound
			selecttag += "Aggressive,"
		EndIf
		suppresstag = "Bound,Futa,Guro,Necro,Molag,Amputee"
	EndIf
	
	If !Bound
		; let's add the proper tag for the situation and hope that the animator tagged their stuff correctly...
		if SexPartner3 != None		
			; too many combos, just get whatever is available		
		elseif SexPartner2 != None					
			If (SexPartners[1].GetActorBase().GetSex() == 0 && SexPartners[2].GetActorBase().GetSex() == 0) 
				selecttag += "MMF"			
			elseIf (SexPartners[1].GetActorBase().GetSex() == 1 && SexPartners[2].GetActorBase().GetSex() == 1) 				
				selecttag += "FFF"
			ElseIf (SexPartners[1].GetActorBase().GetSex() == 0 && SexPartners[2].GetActorBase().GetSex() == 1) || (SexPartners[1].GetActorBase().GetSex() == 1 && SexPartners[2].GetActorBase().GetSex() == 0)
				selecttag += "MFF"
			EndIf			
		Else
			If SexPartners[1].GetActorBase().GetSex() == 0
				selecttag += "MF"
			Else
				selecttag += "FF"
			EndIf		
		EndIf		
	EndIf	
	sslBaseAnimation[] Sanims
	Sanims = libs.SelectValidDDAnimations(SexPartners, numsexactors, !consensual, selecttag, suppresstag)		
	if Sanims.Length == 0 && !consensual && (numsexactors > 2)
		; This could happen if a player doesn't have a lot of SLAL packs installed. Let's try again, and use consensual animations
		consensual = true		
		Sanims = libs.SelectValidDDAnimations(SexPartners, numsexactors, !consensual, selecttag, suppresstag)		
	EndIf
	If Sanims.Length == 0
		; Still not working...fallback to everything available, except misfit animations.
		Sanims = libs.SelectValidDDAnimations(SexPartners, numsexactors, False, "", suppresstag)
	EndIf
	If Sanims.Length > 0	
		RegisterForModEvent("AnimationEnd", "OnSexEnd")		
		SexLab.StartSex(Positions = SexPartners, anims = Sanims, allowbed = true) 		
	EndIf
EndFunction

Function Spank()	
	RegisterForModEvent("dcur_USS_finished", "OnUSSFinished")
	Utility.Wait(1)
	If Spanked == libs.PlayerRef
		StorageUtil.SetFormValue(libs.PlayerRef, "dcur_uss_whipper", SexPartner)
		StorageUtil.SetFormValue(libs.PlayerRef, "dcur_uss_spankee", Libs.PlayerRef)
	Else
		StorageUtil.SetFormValue(libs.PlayerRef, "dcur_uss_whipper", libs.PlayerRef)
		StorageUtil.SetFormValue(libs.PlayerRef, "dcur_uss_spankee", SexPartner)
	EndIf
	StorageUtil.SetIntValue(libs.PlayerRef, "dcur_uss_nosubmit", 1)
	spqs.Start()
EndFunction	

Event OnUSSFinished(string eventName, string strArg, float numArg, Form sender)
	UnRegisterForModEvent("dcur_USS_finished")	
	sex()	
EndEvent

; fire and forget sex scene. Does not process after-scene events.
Function SexWrapperAndGo(actor who, actor who2 = none, actor who3 = none, Actor MainPosition = None, bool consensualscene = true, Bool MainPositionIsVictim = False, Bool usebeds = true, string sextag = "")	
	If !MainPosition
		MainPosition = libs.PlayerRef
	Else
		MainPosition = MainPosition
	EndIf	
	if (libs.playerref.GetWornForm(0x00000004) != None)
		If consensualscene
			dclibs.strip(libs.playerref, true)
		else
			dclibs.strip(libs.playerref, false)
		EndIf
	endif		
	if (who.GetWornForm(0x00000004) != None)
		If consensualscene
			dclibs.strip(who, true)
		else
			dclibs.strip(who, false)
		EndIf
	endif
	if who2 && (who2.GetWornForm(0x00000004) != None)
		If consensualscene
			dclibs.strip(who2, true)
		else
			dclibs.strip(who2, false)
		EndIf
	endif
	if who3 && (who3.GetWornForm(0x00000004) != None)
		If consensualscene
			dclibs.strip(who3, true)
		else
			dclibs.strip(who3, false)
		EndIf
	endif	
	Utility.Wait(2)
	Actor[]	SexPartners		
	if who3 != None && !who3.WornHasKeyWord(libs.zad_DeviousHeavyBondage)
		SexPartners = new actor[4]
		SexPartners[3] = who3
	elseif who2 != None && !who2.WornHasKeyWord(libs.zad_DeviousHeavyBondage)
		SexPartners = new actor[3]
		SexPartners[2] = who2
	else
		SexPartners = new actor[2]
	endif		
	; let's set up proper positions
	if !consensualscene && IsMainPosVictim
		SexPartners[0] = MainPosition
		SexPartners[1] = who
	elseif SexPartner.GetLeveledActorBase().GetSex() == 1 && consensualscene	
		; SexPartner is female and the scene is consensualscene
		if MainPosition.GetLeveledActorBase().GetSex() == 0 || (!consensualscene && !IsMainPosVictim)
			SexPartners[1] = MainPosition
			SexPartners[0] = who
		else
			SexPartners[0] = MainPosition
			SexPartners[1] = who
		Endif
	else
		; standard positions
		SexPartners[0] = MainPosition
		SexPartners[1] = who
	EndIf			
	Int numsexactors = SexPartners.Length
	String suppresstag
	String selecttag = sextag
	If selecttag != ""
		selecttag += ","
	EndIf
	If consensualscene
		; filter all the stuff that doesn't fit here, including the bound animations some people register to SL for no good reason...
		suppresstag = "Aggressive,Bound,Futa,Guro,Necro,Molag,Amputee"
	else		
		suppresstag = "Bound,Futa,Guro,Necro,Molag,Amputee"
	EndIf	
	; let's add the proper tag for the situation and hope that the animator tagged their stuff correctly...
	if who3 != None		
		; too many combos, just get whatever is available		
	elseif who2 != None					
		If (SexPartners[1].GetActorBase().GetSex() == 0 && SexPartners[2].GetActorBase().GetSex() == 0) 
			selecttag += "MMF"			
		elseIf (SexPartners[1].GetActorBase().GetSex() == 1 && SexPartners[2].GetActorBase().GetSex() == 1) 				
			selecttag += "FFF"
		ElseIf (SexPartners[1].GetActorBase().GetSex() == 0 && SexPartners[2].GetActorBase().GetSex() == 1) || (SexPartners[1].GetActorBase().GetSex() == 1 && SexPartners[2].GetActorBase().GetSex() == 0)
			selecttag += "MFF"
		EndIf			
	Else
		If SexPartners[1].GetActorBase().GetSex() == 0
			selecttag += "MF"
		Else
			selecttag += "FF"
		EndIf		
	EndIf			
	sslBaseAnimation[] Sanims
	Sanims = libs.SelectValidDDAnimations(SexPartners, numsexactors, !consensualscene, selecttag, suppresstag)		
	if Sanims.Length == 0 && !consensualscene && (numsexactors > 2)
		; This could happen if a player doesn't have a lot of SLAL packs installed. Let's try again, and use consensualscene animations
		consensualscene = true		
		Sanims = libs.SelectValidDDAnimations(SexPartners, numsexactors, !consensualscene, selecttag, suppresstag)		
	EndIf
	If Sanims.Length == 0
		; Still not working...fallback to everything available, except misfit animations.
		Sanims = libs.SelectValidDDAnimations(SexPartners, numsexactors, False, "", suppresstag)
	EndIf
	If Sanims.Length > 0			
		SexLab.StartSex(Positions = SexPartners, anims = Sanims, allowbed = true) 		
	EndIf
EndFunction

; This is a more powerful and flexible version of SexWithPlayer that can handle more actors per scene, and spank and/or tie up one of the actors. However, only one instance of this should run at the same time. For a Fire-and-Forget version, use SexWrapperAndGo()
Function SexWrapper(actor who, actor who2 = none, actor who3 = none, Actor MainPosition = None, bool consensualscene = true, Bool MainPositionIsVictim = False, Actor BoundActor = none, Int theme = 3, Bool ApplyDevicesPostScene = False, Bool RemoveDevicesOnEnd = True, Actor SpankedActor = none, Bool usebeds = true, string sextag = "")
	consensual = consensualscene
	tag = sextag
	bedsok = usebeds
	SexPartner = who
	SexPartner2 = who2
	SexPartner3 = who3
	devicetheme = theme
	IsMainPosVictim = MainPositionIsVictim
	RemoveDevicesAfterSex = RemoveDevicesOnEnd
	TieUp_PostScene = ApplyDevicesPostScene
	If !MainPosition
		MainPos = libs.PlayerRef
	Else
		MainPos = MainPosition
	EndIf
	Bound = BoundActor
	Spanked = SpankedActor	
	if (libs.playerref.GetWornForm(0x00000004) != None)
		If consensualscene
			dclibs.strip(libs.playerref, true)
		else
			dclibs.strip(libs.playerref, false)
		EndIf
	endif		
	if (who.GetWornForm(0x00000004) != None)
		If consensualscene
			dclibs.strip(who, true)
		else
			dclibs.strip(who, false)
		EndIf
	endif
	if who2 && (who2.GetWornForm(0x00000004) != None)
		If consensualscene
			dclibs.strip(who2, true)
		else
			dclibs.strip(who2, false)
		EndIf
	endif
	if who3 && (who3.GetWornForm(0x00000004) != None)
		If consensualscene
			dclibs.strip(who3, true)
		else
			dclibs.strip(who3, false)
		EndIf
	endif	
	if Spanked != none
		Spank()
	else
		sex()	
	EndIf
EndFunction

Event OnSexEnd(string eventName, string argString, float argNum, form sender)				
	sslThreadController SLcontroller = libs.SexLab.HookController(argString)	
	Actor[] actors = SLcontroller.Positions
	int numactors = actors.Length
	int i = 0	
	Bool ParticipantFound = false		
	; let's check for the correct scene
	While i < numactors		
		If (actors[i] == MainPos) || (actors[i] == SexPartner) || (actors[i] == SexPartner2) || (actors[i] == SexPartner3)
			ParticipantFound = true
		Endif		
		i += 1
	EndWhile	
	UnRegisterForModEvent("AnimationEnd")	
	; don't process scenes not involving a participant of this scene
	if !ParticipantFound
		return
	endif
	If RemoveDevicesAfterSex
		UnlockActor()		
	ElseIf TieUp_PostScene && (Bound == libs.PlayerRef || dclibs.dcur_followerlist.HasForm(Bound))
		; not sure it's smart to perma-equip devices on random NPCs, so we're blocking that for now
		tieher_post(Bound)
	EndIf
EndEvent

Function tieher_pre(Actor who)
	Actor pl = who	
	dcur_sf_appliedbondage.Revert()
	if !pl.WornHasKeyword(libs.zad_DeviousGag)
		; we don't always use a gag, because that blocks quite a few animations. But occassionally, that's fine
		if Utility.RandomInt(0, 99) < 30
			if dclibs.dcur_equiprandomgag(pl, devicetheme)	
				dcur_sf_appliedbondage.AddForm(libs.zad_DeviousGag)
			endif
		endif
	endif
	if !pl.WornHasKeyword(libs.zad_DeviousHeavyBondage) && !SexPartner2
		; no wrist restraints for three and foursomes		
		int i = Utility.RandomInt(1,3)
		if i == 1
			dclibs.dcur_equiprandomleatherarmbinder(pl, devicetheme)
		elseif i == 2
			dclibs.dcur_equiprandomstraitjacket(pl, devicetheme)
		elseif i == 3
			dclibs.dcur_equiprandomyoke(pl, devicetheme)
		EndIf		
		dcur_sf_appliedbondage.AddForm(libs.zad_DeviousHeavyBondage)		
	endif
	if !pl.WornHasKeyword(libs.zad_DeviousBlindfold) && Utility.RandomInt(0, 99) < 20
		if dclibs.dcur_equiprandomblindfold(pl, devicetheme)
			dcur_sf_appliedbondage.AddForm(libs.zad_DeviousBlindfold)
		endif
	endif
	if !pl.WornHasKeyword(libs.zad_DeviousBoots) && Utility.RandomInt(0, 99) < 30
		if dclibs.dcur_equiprandomboots(pl, devicetheme)
			dcur_sf_appliedbondage.AddForm(libs.zad_DeviousBoots)
		endif
	endif
	if dclibs.dcur_equiprandomarmcuffs(pl, devicetheme)
		dcur_sf_appliedbondage.AddForm(libs.zad_DeviousArmCuffs)
	endif
	if dclibs.dcur_equiprandomlegcuffs(pl, devicetheme)
		dcur_sf_appliedbondage.AddForm(libs.zad_DeviousLegCuffs)
	endif
	if dclibs.dcur_equiprandomcollar(pl, devicetheme)
		dcur_sf_appliedbondage.AddForm(libs.zad_DeviousCollar)
	endif
	if Utility.RandomInt(0, 99) < 60 
		if dclibs.dcur_equiprandomgloves(pl, devicetheme)
			dcur_sf_appliedbondage.AddForm(libs.zad_DeviousGloves)
		endif
	endif		
EndFunction

Function tieher_post(Actor who)
	Actor pl = who	
	if !pl.WornHasKeyword(libs.zad_DeviousBelt)		
			dclibs.dcur_equiprandombelt(pl, devicetheme)						
	endif
	if !pl.WornHasKeyword(libs.zad_DeviousBra)		
			dclibs.dcur_equiprandombra(pl, devicetheme)						
	endif	
	if !pl.WornHasKeyword(libs.zad_DeviousBoots)
		dclibs.dcur_equiprandomboots(pl, devicetheme)		
	endif
	if !pl.WornHasKeyword(libs.zad_DeviousSuit)
		dclibs.dcur_equiprandomsuit(pl, devicetheme)		
	endif
	if !pl.WornHasKeyword(libs.zad_DeviousGloves)
		dclibs.dcur_equiprandomgloves(pl, devicetheme)		
	endif
	if !pl.WornHasKeyword(libs.zad_DeviousGag)
		dclibs.dcur_equiprandomgag(pl, devicetheme)		
	endif
	if !pl.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		dclibs.dcur_equiprandomarmbinder(pl, devicetheme)		
	endif
EndFunction

Function UnlockActor()
	Armor device 
	Keyword kw
	int z = dcur_sf_appliedbondage.GetSize()
	while z > 0
		z -= 1
		kw = dcur_sf_appliedbondage.GetAt(z) As Keyword		
		; we can mercilessly wipe off devices without checking for BlockGeneric etc. because the item wouldn't be in the FormList if not applied by the bondage sex scene.			
		libs.UnlockDeviceByKeyword(Bound, zad_DeviousDevice = kw, destroyDevice = true)		
	endwhile
EndFunction
