Scriptname dcur_thewhipandchainQuestScript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
dcur_library Property dclibs  Auto
dcur_spankQuestScript Property spqs Auto
BardSongsScript Property BardSongs  Auto
dcur_sexfunctionslibrary Property sfl Auto  

Armor Property dcur_twac_strugglegame_dress_inventory Auto
Armor Property dcur_twac_strugglegame_dress_rendered Auto

ReferenceAlias Property alias_nadia Auto
ReferenceAlias Property alias_ingar Auto
ReferenceAlias Property alias_hailey Auto
ReferenceAlias Property alias_julian Auto
ReferenceAlias Property alias_bard_monica Auto
ReferenceAlias Property alias_portin Auto
ReferenceAlias Property alias_bouncer Auto
ReferenceAlias Property alias_emily Auto
ReferenceAlias Property alias_alex Auto
ReferenceAlias Property alias_belinda_s1 Auto
ReferenceAlias Property alias_lara_s2 Auto
ReferenceAlias Property alias_vivianne_s3 Auto
ReferenceAlias Property alias_siegfried_s1 Auto
ReferenceAlias Property alias_shaggy_s2 Auto
ReferenceAlias Property alias_tahir_s3 Auto
ReferenceAlias Property alias_elizabeth Auto
ReferenceAlias Property alias_meghan Auto
ReferenceAlias Property alias_abigail Auto
ReferenceAlias Property alias_christa Auto
ReferenceAlias Property alias_pos_elizabeth Auto
ReferenceAlias Property alias_pos_meghan Auto
ReferenceAlias Property alias_pos_abigail Auto
ReferenceAlias Property alias_pos_christa Auto

ReferenceAlias Property alias_kayleigh Auto
ReferenceAlias Property alias_amanda Auto
ReferenceAlias Property alias_christina Auto
ReferenceAlias Property alias_shannon Auto
ReferenceAlias Property alias_vendor1 Auto
ReferenceAlias Property alias_vendor2 Auto
ReferenceAlias Property alias_vendor3 Auto
ReferenceAlias Property alias_vendor4 Auto

FormList Property dcur_twac_escape_containerlist Auto
FormList Property dcur_twac_escape_containerlisttmp Auto
FormList Property dcur_twac_escape_containertypes Auto
FormList Property dcur_twac_escape_containerswithkeys Auto
FormList Property dcur_twac_appliedbondage Auto
FormList Property dcur_twac_furnitureplayroomlist Auto
LeveledItem Property dcur_twac_furnituregamereward Auto
FormList Property dcur_twac_actors Auto
Faction Property BardAudienceExcludedFaction Auto


GlobalVariable Property dcur_twac_highlow_result Auto
GlobalVariable Property dcur_twac_highlow_playerbet Auto
GlobalVariable Property dcur_twac_escape_done Auto

Message Property dcur_twac_msg_unlockservice Auto
Book Property dcur_twac_vipinvitation Auto

Outfit Property dcur_twac_outfit_latexdress Auto
Outfit Property dcur_outfitnaked Auto

Quest Property dcur_twac_questarc Auto
dcur_royalchastityQuestScript Property rcqs Auto

Armor Property dcur_twac_keypack_generic Auto
Armor Property dcur_twac_keypack_rare Auto

Armor Property dcur_nosleepitem  Auto

ReferenceAlias Property alias_escape_pillory Auto
ReferenceAlias Property alias_escape_bondagechair Auto
ReferenceAlias Property alias_escape_torturepole Auto
ReferenceAlias Property alias_escape_torturepole2 Auto
ReferenceAlias Property alias_escape_cagedoor Auto
ReferenceAlias Property alias_escape_cagemarker Auto
ReferenceAlias Property alias_escape_door Auto

Key Property dcur_twac_escape_containerkey Auto

Faction Property dcur_twac_faction Auto

Actor SexPartner
Actor SexPartner2
Actor SexPartner3
Actor Bound
Actor Spanked

bool consensual = true
string tag = ""

bool useSS = false

Int Property PilloryGamePlayerBet = 0 Auto Hidden
Int Property EscapeGamePlayerBet = 0 Auto Hidden

Float CageLockedAt = 0.0

Function PilloryGame()
	string[] anims = new string[2]
	anims[0] = "DDZapPillorySex01"
	anims[1] = "DDZapPillorySex02"
	anims[2] = "DDZapPillorySex03"		
	int i = 0
	int j
	string x
	; shuffle the anims
	while i <= (anims.length - 2)
		j = Utility.RandomInt(i, (anims.length - 1))
		x = anims[i]
		anims[i] = anims[j]
		anims[j] = x			
		i += 1			
	endwhile
	dcLibs.zadc.PlaySexScene(alias_belinda_s1.GetActorReference(), alias_siegfried_s1.GetActorReference(), anims[0])
	Utility.Wait(1)
	dcLibs.zadc.PlaySexScene(alias_lara_s2.GetActorReference(), alias_shaggy_s2.GetActorReference(), anims[1])
	Utility.Wait(1)
	dcLibs.zadc.PlaySexScene(alias_vivianne_s3.GetActorReference(), alias_tahir_s3.GetActorReference(), anims[2])
EndFunction

Function ActivateExitDoor()
	Game.GetPlayer().MoveTo(alias_bouncer.GetReference())
EndFunction

Function AdvanceArcQuest()
	If dcur_twac_questarc.IsRunning() && dcur_twac_questarc.GetStage() == 10
		dcur_twac_questarc.SetObjectiveCompleted(10)
		dcur_twac_questarc.SetStage(20)
		dcur_twac_questarc.SetObjectiveDisplayed(20)
	EndIf
EndFunction

Function AdvanceArcQuestBook()
	dcur_twac_questarc.SetObjectiveCompleted(20)
	dcur_twac_questarc.SetStage(30)
	dcur_twac_questarc.SetObjectiveDisplayed(30)	
EndFunction

Function EndArcQuest()	
	If dcur_twac_questarc.IsRunning() && dcur_twac_questarc.GetStage() == 30
		dcur_twac_questarc.SetObjectiveCompleted(30)
		dcur_twac_questarc.Stop()			
		dclibs.dcur_boundinskyrimQuest.SetStage(60)
		dclibs.dcur_boundinskyrimQuest.SetObjectiveDisplayed(60)
		dcLibs.LevelUp("", 2)
	EndIf
EndFunction

Function Bard()
	; is called when the player enters the location from clocktickref.
	; It's useful for more than getting the bard singing, apparently.. :D 
	EscapeGame_ReapplyBindings()
	RestorePositions()
	RegisterForModEvent("AnimationEnd", "OnSexEnd")	
	; ok, now for the actual bard...
	BardSongs.PlaySong(alias_bard_monica.GetActorRef())	
	alias_escape_door.GetReference().Lock(True)
	alias_escape_door.GetReference().SetLockLevel(255)
	; we also give the boys a hardon. How couldn't they, with all these girls in kink clothing around?
	Utility.Wait(1)
	SOS_API sos = SOS_API.Get()
	if sos
		sos.SetSize(alias_julian.GetActorReference(), 10)
		sos.SetSize(alias_ingar.GetActorReference(), 10)
		sos.SetSize(alias_alex.GetActorReference(), 10)
		sos.SetSize(alias_siegfried_s1.GetActorReference(), 10)
		sos.SetSize(alias_shaggy_s2.GetActorReference(), 10)
		sos.SetSize(alias_tahir_s3.GetActorReference(), 10) 
	EndIf	
	Debug.SendAnimationEvent(alias_julian.GetActorReference(), "SOSFastErect")
	Debug.SendAnimationEvent(alias_ingar.GetActorReference(), "SOSFastErect")
	Debug.SendAnimationEvent(alias_alex.GetActorReference(), "SOSFastErect")
	Debug.SendAnimationEvent(alias_siegfried_s1.GetActorReference(), "SOSFastErect")
	Debug.SendAnimationEvent(alias_shaggy_s2.GetActorReference(), "SOSFastErect")
	Debug.SendAnimationEvent(alias_tahir_s3.GetActorReference(), "SOSFastErect")
	if !(dcur_twac_actors.GetAt(0) As Actor).IsInFaction(BardAudienceExcludedFaction)
		;no cheering for the bard. And yes, I was just too lazy to add that faction to more than two dozen actors in CK...
		int i = dcur_twac_actors.GetSize()
		While i > 0
			i -= 1
			(dcur_twac_actors.GetAt(i) As Actor).AddToFaction(BardAudienceExcludedFaction)
		EndWhile
	EndIf
	
	RegisterForSingleUpdate(2)
EndFunction

Function StartStruggleGame()
	libs.equipDevice(libs.PlayerRef, dcur_twac_strugglegame_dress_inventory, dcur_twac_strugglegame_dress_rendered, libs.zad_DeviousSuit, skipmutex = true)
EndFunction

Function StruggleGameGiveUp()
	libs.removeDevice(libs.PlayerRef, dcur_twac_strugglegame_dress_inventory, dcur_twac_strugglegame_dress_rendered, libs.zad_DeviousSuit, skipmutex = true, destroyDevice = true)
EndFunction

Function StruggleGameReward()
	libs.PlayerRef.RemoveItem(dcur_twac_strugglegame_dress_inventory)
	libs.playerref.AddItem(dcur_twac_furnituregamereward)
EndFunction

Bool Function SetEscapeCooldown(ObjectReference FurnitureDevice, Float Hours)
	zadcFurnitureScript fs = FurnitureDevice as zadcFurnitureScript
	if fs 		
		fs.EscapeCooldown = Hours		
	EndIf
EndFunction

Function StartFurnitureGame()
	ObjectReference furn
	Int i = dcur_twac_furnitureplayroomlist.GetSize()
	i -= 1
	Int rnd = Utility.RandomInt(0, i)
	furn = dcur_twac_furnitureplayroomlist.GetAt(rnd) As ObjectReference
	libs.playerref.AddItem(dcur_twac_furnituregamereward)
	Utility.Wait(1)
	dcLibs.zadc.LockActor(libs.PlayerRef, furn)
	Utility.Wait(1)
	SetEscapeCooldown(furn, 0.0)
	int hours = 2
	dcLibs.zadc.SetTimedRelease(furn, hours, ResetStartTime = true)
EndFunction

Int Function CountDevices()	
	int count = 0
	int i = dcumenu.dcur_devicekeywords.GetSize()
	Keyword kw	
	Actor a = libs.PlayerRef
	While i > 0		
		i -= 1
		kw = dcumenu.dcur_devicekeywords.GetAt(i) As Keyword		
		if a.wornhaskeyword(kw)
			count += 1			
		endif
	EndWhile
EndFunction

Int Function UnlockRestraints(actor a, bool destroyDevices = false)				
	int count = 0
	Keyword kw
	if !a.WornHasKeyword(libs.zad_Lockable)
		; no DD items equipped, can abort here
		return count
	endif	
	int i = dcumenu.dcur_devicekeywords.GetSize()
	While i > 0		
		i -= 1
		kw = dcumenu.dcur_devicekeywords.GetAt(i) As Keyword		
		if a.wornhaskeyword(kw)
			if libs.UnlockDeviceByKeyword(libs.playerref, zad_DeviousDevice = kw)				
				count += 1
			Endif							
		endif
	EndWhile
	return count	
EndFunction

int updateflag = 0

Event OnUpdate()
	if libs.PlayerRef.GetParentCell() == alias_alex.GetActorReference().GetParentCell()
		; reregister only if the player is still in the area.
		RegisterForSingleUpdate(15)		
	Else
		UnRegisterForModEvent("AnimationEnd")
	EndIf
	If CageLockedAt > 0.0
		if (Utility.GetCurrentGameTime() - dclibs.LastSexAttackTime) * 24 > 2.0
			UnlockCageDoor()
			CageLockedAt = 0.0
		EndIf
	EndIf
	if updateflag == 1
		int priceperdevice = 25
		int numofdevices = CountDevices()
		int price = numofdevices * libs.PlayerRef.GetLevel() * priceperdevice
		if price > libs.PlayerRef.GetItemCount(dcumenu.gold001)
			libs.Notify("You don't have enough gold to pay for Laura's services. It would cost " + price + " gold to unlock your restraints.", messagebox = true)
			return
		else
			libs.Notify("Laura would charge you " + price + " gold to unlock your " + numofdevices + " restraints. If she fails to unlock any, she will not charge you for the attempt.", messagebox = true)
			Utility.Wait(0.1)
		EndIf
		if dcur_twac_msg_unlockservice.Show() == 0 ; yes			
			Game.DisablePlayerControls()
			int count = UnlockRestraints(libs.playerref)
			price = count * libs.PlayerRef.GetLevel() * priceperdevice
			libs.PlayerRef.RemoveItem(dcumenu.gold001, price)
			Game.EnablePlayerControls()
		EndIf	
	EndIf
	if updateflag == 2
		Reset_Christa()
	EndIf
	if updateflag == 3
		Game.DisablePlayerControls()
		int count = UnlockRestraints(libs.playerref)		
		Game.EnablePlayerControls()		
	EndIf
	updateflag = 0
	; Disabled for the time being, as people have reported performance issues with these two and their constant fun. Can re-enable that when people now longer use C64s to run Skyrim! :D
	return
	If !dclibs.zadc.IsAnimating(alias_alex.GetActorReference()) && !dclibs.zadc.IsAnimating(alias_emily.GetActorReference())
		sslBaseAnimation[] Sanims		
		Actor[]	sexActors = new actor[2]		
		sexactors[0] = alias_emily.GetActorReference()
		sexactors[1] = alias_alex.GetActorReference()
		Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "MF", "Aggressive,Bound,Futa", true)						
		If Sanims.Length == 0		
			Sanims = dcLibs.SexLab.GetAnimationsByTags(2, "", "Aggressive,Bound,Futa", true)			
		EndIf		
		If Sanims.Length > 0		
			dclibs.SexLab.StartSex(Positions = sexActors, anims = Sanims, allowbed = true) 		
		EndIf
	EndIf	
EndEvent

Function UnlockService()
	SetUpdateFlag(1)
	RegisterForSingleUpdate(1)
EndFunction

Function UnlockServiceVoucher()
	libs.PlayerRef.RemoveItem(dcLibs.dcur_twac_lauravoucher, 1)
	SetUpdateFlag(3)
	RegisterForSingleUpdate(1)
EndFunction

Function TieupForReward()
	; getting tied up in the inn is pretty harsh as only Laura can unlock the player and she's pricey, so let's make the reward good.
	GameRoomRewards(3)	
	dclibs.EquipSet(libs.playerref, dcumenu.equiptheme, MinDifficulty = 0, MaxDifficulty = 100)
EndFunction

Function GameRoomRewards(Int numrewards = 1)	
	libs.playerref.Additem(dcLibs.dcl_LL_all, 1)
	dcLibs.GiveBondageRewards(3)
	Int n = numrewards
	while n > 0
		n -= 1
		Int i = Utility.RandomInt(0,99)
		if i < 7
			libs.playerref.Additem(dcLibs.dcur_universalkey, 1)
		elseif i < 12
			libs.playerref.Additem(dcur_twac_keypack_generic, 1)
		elseif i < 17
			libs.playerref.Additem(dcur_twac_keypack_rare, 1)
		elseif i < 25
			libs.playerref.Additem(dcLibs.dcur_twac_lauravoucher, 1)
		elseif i < 35
			int amount = Utility.RandomInt(5,10) * libs.PlayerRef.GetLevel()
			libs.playerref.Additem(dcumenu.gold001, amount)
		elseif i < 45
			dcLibs.FindAnyUsefulKey(libs.PlayerRef)
		elseif i < 60
			libs.PlayerRef.AddItem(dcLibs.dcur_darepack, Utility.RandomInt(1,2))
		elseif i < 75
			libs.PlayerRef.AddItem(dcLibs.dcur_dq_damnbox, Utility.RandomInt(1,2))
		else
			dcLibs.GiveBondageRewards(3)		
		EndIf	
	EndWhile
EndFunction

Function Check_PilloryGame(Int who)
	String Winner = ""
	if who == 1
		; siegfried finished
		If !libs.IsAnimating(alias_shaggy_s2.GetActorReference()) && !libs.IsAnimating(alias_tahir_s3.GetActorReference())
			; siegfried won 
			libs.notify("Siegfried lasted the longest!")
			Winner = "Siegfried"
		EndIf
	EndIf
	if who == 2
		; shaggy finished
		If !libs.IsAnimating(alias_siegfried_s1.GetActorReference()) && !libs.IsAnimating(alias_tahir_s3.GetActorReference())			
			libs.notify("Shaggy lasted the longest!")
			Winner = "Shaggy"
		EndIf
	EndIf
	if who == 3
		; tahir finished
		If !libs.IsAnimating(alias_siegfried_s1.GetActorReference()) && !libs.IsAnimating(alias_shaggy_s2.GetActorReference())			
			libs.notify("Tahir lasted the longest!")
			Winner = "Tahir"
		EndIf
	EndIf
	if Winner != "" && PilloryGamePlayerBet == who
		libs.notify(Winner + " has won the competition and has earned the title of Greatest Lover of Skyrim! You win a prize!", messagebox = true)
		Utility.Wait(0.1)
		GameRoomRewards(1)
	Elseif Winner != "" && PilloryGamePlayerBet != who
		libs.notify(Winner + " has won the competition and has earned the title of Greatest Lover of Skyrim! Unfortunately you did not place your bet on him! Christa locks a retraint on you.", messagebox = true)
		Utility.Wait(0.1)
		progressivebondage(libs.PlayerRef, 0, 1)
	EndIf
EndFunction

Function EscapeGame_ReapplyBindings()
	if !alias_abigail.GetActorReference().WornHasKeyword(libs.zad_DeviousBelt)
		libs.equipDevice(alias_abigail.GetActorReference(), dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Inventory, dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Rendered, libs.zad_DeviousBelt, skipmutex = true)
	EndIf
	if !alias_meghan.GetActorReference().WornHasKeyword(libs.zad_DeviousBelt)
		libs.equipDevice(alias_meghan.GetActorReference(), dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Inventory, dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Rendered, libs.zad_DeviousBelt, skipmutex = true)
	EndIf
	Utility.Wait(1)
	if !alias_elizabeth.GetActorReference().WornHasKeyword(libs.zad_DeviousBelt)
		libs.equipDevice(alias_elizabeth.GetActorReference(), dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Inventory, dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Rendered, libs.zad_DeviousBelt, skipmutex = true)
	EndIf
	if !alias_abigail.GetActorReference().WornHasKeyword(libs.zad_DeviousHeavyBondage)
		libs.equipDevice(alias_abigail.GetActorReference(), dclibs.xlibs.zadx_ElbowbinderEboniteInventory, dclibs.xlibs.zadx_ElbowbinderEboniteRendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	EndIf
	Utility.Wait(1)
	if !alias_meghan.GetActorReference().WornHasKeyword(libs.zad_DeviousHeavyBondage)
		libs.equipDevice(alias_meghan.GetActorReference(), dclibs.xlibs.zadx_ElbowbinderEboniteInventory, dclibs.xlibs.zadx_ElbowbinderEboniteRendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	EndIf
	if !alias_elizabeth.GetActorReference().WornHasKeyword(libs.zad_DeviousHeavyBondage)
		libs.equipDevice(alias_elizabeth.GetActorReference(), dclibs.xlibs.zadx_ElbowbinderEboniteInventory, dclibs.xlibs.zadx_ElbowbinderEboniteRendered, libs.zad_DeviousHeavyBondage, skipmutex = true)
	EndIf
	RestorePositions()
EndFunction

Function RestorePositions()
	alias_elizabeth.GetActorReference().MoveTo(alias_pos_elizabeth.GetReference())
	alias_christa.GetActorReference().MoveTo(alias_pos_christa.GetReference())
	alias_meghan.GetActorReference().MoveTo(alias_pos_meghan.GetReference())
	alias_abigail.GetActorReference().MoveTo(alias_pos_abigail.GetReference())
	; vendors
	alias_kayleigh.GetActorReference().MoveTo(alias_vendor1.GetReference())
	alias_amanda.GetActorReference().MoveTo(alias_vendor2.GetReference())
	alias_christina.GetActorReference().MoveTo(alias_vendor3.GetReference())
	alias_shannon.GetActorReference().MoveTo(alias_vendor4.GetReference())
EndFunction

Int Function StruggleScene()	
	String[] struggleArray = new string[5]
	struggleArray[0] = "DDRegElbStruggle01"
	struggleArray[1] = "DDRegElbStruggle02"
	struggleArray[2] = "DDRegElbStruggle03"
	struggleArray[3] = "DDRegElbStruggle04"
	struggleArray[4] = "DDRegElbStruggle05"
	int len = struggleArray.Length - 1
	bool[] cameraState1 = libs.StartThirdPersonAnimation(alias_abigail.GetActorReference(), struggleArray[Utility.RandomInt(0, len)], true)
	bool[] cameraState2 = libs.StartThirdPersonAnimation(alias_meghan.GetActorReference(), struggleArray[Utility.RandomInt(0, len)], true)
	bool[] cameraState3 = libs.StartThirdPersonAnimation(alias_elizabeth.GetActorReference(), struggleArray[Utility.RandomInt(0, len)], true)
	int w = 25 ; seconds
	while w > 0
		w -= 1
		Utility.Wait(1)
		int x = Utility.RandomInt(1,6)
		if x == 1
			libs.Pant(alias_abigail.GetActorReference())
		elseif x == 2
			libs.Pant(alias_meghan.GetActorReference())
		elseif x == 3
			libs.Pant(alias_elizabeth.GetActorReference())
		elseif x == 4
			libs.SexLabMoan(alias_elizabeth.GetActorReference())
		elseif x == 5
			libs.SexLabMoan(alias_abigail.GetActorReference())
		elseif x == 6
			libs.SexLabMoan(alias_meghan.GetActorReference())
		Endif
	EndWhile			
	libs.EndThirdPersonAnimation(alias_abigail.GetActorReference(), cameraState1, true)	
	libs.EndThirdPersonAnimation(alias_meghan.GetActorReference(), cameraState2, true)	
	libs.EndThirdPersonAnimation(alias_elizabeth.GetActorReference(), cameraState3, true)	
	if Utility.RandomInt() < 25
		return Utility.RandomInt(1,3)
	EndIf
	return 0
EndFunction

Function EscapeStruggle()
	int winner = 0
	while winner == 0
		winner = StruggleScene()
	EndWhile	
	String WinnerStr = ""
	if winner == 1
		WinnerStr = "Abigail"
		libs.notify("Abigail has escaped her bindings!")
		libs.RemoveDevice(alias_abigail.GetActorReference(), dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Inventory, dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Rendered, libs.zad_DeviousBelt, skipmutex = true, destroyDevice = true)
		Utility.Wait(0.5)
		libs.RemoveDevice(alias_abigail.GetActorReference(), dclibs.xlibs.zadx_ElbowbinderEboniteInventory, dclibs.xlibs.zadx_ElbowbinderEboniteRendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroyDevice = true)
		Utility.Wait(0.5)
		dclibs.Masturbate(alias_abigail.GetActorReference(), feedback = false)	
	Endif
	if winner == 2
		WinnerStr = "Meghan"
		libs.notify("Meghan has escaped her bindings!")
		libs.RemoveDevice(alias_meghan.GetActorReference(), dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Inventory, dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Rendered, libs.zad_DeviousBelt, skipmutex = true, destroyDevice = true)
		Utility.Wait(0.5)
		libs.RemoveDevice(alias_meghan.GetActorReference(), dclibs.xlibs.zadx_ElbowbinderEboniteInventory, dclibs.xlibs.zadx_ElbowbinderEboniteRendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroyDevice = true)
		Utility.Wait(0.5)
		dclibs.Masturbate(alias_meghan.GetActorReference(), feedback = false)	
	Endif
	if winner == 3
		WinnerStr = "Elizabeth"
		libs.notify("Elizabeth has escaped her bindings!")
		libs.RemoveDevice(alias_elizabeth.GetActorReference(), dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Inventory, dclibs.xlibs.zadx_chastitybelt_Padded_Silver_Rendered, libs.zad_DeviousBelt, skipmutex = true, destroyDevice = true)
		Utility.Wait(0.5)
		libs.RemoveDevice(alias_elizabeth.GetActorReference(), dclibs.xlibs.zadx_ElbowbinderEboniteInventory, dclibs.xlibs.zadx_ElbowbinderEboniteRendered, libs.zad_DeviousHeavyBondage, skipmutex = true, destroyDevice = true)
		Utility.Wait(0.5)
		dclibs.Masturbate(alias_elizabeth.GetActorReference(), feedback = false)	
	Endif
	if EscapeGamePlayerBet == winner
		libs.notify(WinnerStr + " has won the competition and has earned the title of Struggle Queen of Skyrim! Since she was your bet, you win a prize!", messagebox = true)
		Utility.Wait(0.1)
		GameRoomRewards(1)
	elseif EscapeGamePlayerBet != winner
		libs.notify(WinnerStr + " has won the competition and has earned the title of Struggle Queen of Skyrim! Unfortunately you did not place your bet on her! Christa locks a restraint on you!", messagebox = true)
		Utility.Wait(0.1)
		progressivebondage(libs.PlayerRef, 0, 1)
	EndIf
EndFunction

Event OnSexEnd(string eventName, string argString, float argNum, form sender)				
	sslThreadController SLcontroller = libs.SexLab.HookController(argString)	
	Actor[] actors = SLcontroller.Positions
	int numactors = actors.Length
	int i = 0	
	Bool Playerfound = false	
	Bool GL_1 = false
	Bool GL_2 = false	
	Bool GL_3 = false	
	; let's check if one participant is the player
	While i < numactors		
		If actors[i] == libs.PlayerRef
			Playerfound = true
		Endif
		If actors[i] == alias_siegfried_s1.GetActorReference()
			GL_1 = true
			libs.notify("Siegfried empties his load into Belinda")
			Utility.Wait(0.5)
			Check_PilloryGame(1)
		Endif
		If actors[i] == alias_shaggy_s2.GetActorReference()
			GL_2 = true
			libs.notify("Shaggy empties his load into Lara")
			Utility.Wait(0.5)
			Check_PilloryGame(2)
		Endif
		If actors[i] == alias_tahir_s3.GetActorReference()
			GL_3 = true
			libs.notify("Tahir empties his load into Vivianne")
			Utility.Wait(0.5)
			Check_PilloryGame(3)
		Endif
		If actors[i] == alias_abigail.GetActorReference() || actors[i] == alias_meghan.GetActorReference() || actors[i] == alias_elizabeth.GetActorReference()
			EscapeGame_ReapplyBindings()
			return
		Endif		
		i += 1
	EndWhile
	If GL_1 || GL_2 || GL_3
		; nothing else left to do here
		Return
	EndIf	
	Debug.SendAnimationEvent(alias_julian.GetActorReference(), "SOSFastErect")
	Debug.SendAnimationEvent(alias_ingar.GetActorReference(), "SOSFastErect")
	Debug.SendAnimationEvent(alias_alex.GetActorReference(), "SOSFastErect")
	Debug.SendAnimationEvent(alias_siegfried_s1.GetActorReference(), "SOSFastErect")
	Debug.SendAnimationEvent(alias_shaggy_s2.GetActorReference(), "SOSFastErect")
	Debug.SendAnimationEvent(alias_tahir_s3.GetActorReference(), "SOSFastErect")	
	; don't process any further for scenes not involving the player
	if !Playerfound
		return
	endif	
EndEvent

Function HighLow_Start()
	alias_christa.GetActorReference().SetOutfit(dcur_outfitnaked)
	dcLibs.Strip(libs.PlayerRef, false)
	dcLibs.Strip(alias_christa.GetActorReference(), false)
EndFunction

Function HighLow_Roll()
	dcur_twac_highlow_result.SetValueInt(Utility.RandomInt(2,12))
EndFunction

Function HighLow_BetLow()
	dcur_twac_highlow_playerbet.SetValueInt(1)	
EndFunction

Function HighLow_BetSeven()
	dcur_twac_highlow_playerbet.SetValueInt(2)	
EndFunction

Function HighLow_BetHigh()
	dcur_twac_highlow_playerbet.SetValueInt(3)	
EndFunction

Function HighLow_PlayerWin()
	if dcur_twac_highlow_result.GetValueInt() == 7
		progressivebondage(alias_christa.GetActorReference(), 0, 4)
	else
		progressivebondage(alias_christa.GetActorReference(), 0, 1)
	EndIf
EndFunction

Function HighLow_PlayerLoss()
	if dcur_twac_highlow_result.GetValueInt() == 7
		progressivebondage(libs.PlayerRef, 0, 4)
	else
		progressivebondage(libs.PlayerRef, 0, 1)
	EndIf
EndFunction

Function HighLow_Announce()
	libs.notify("The result is " + dcur_twac_highlow_result.GetValueInt())
EndFunction

Function HighLow_Walkaway()	
	Reset_Christa()
EndFunction

Function HighLow_PlayerWinGame()
	SetUpdateFlag(2)
	GameRoomRewards(3)	
	dcLibs.WipeRestraints(libs.PlayerRef, genericonly = true, removeDCURquestitems = false, destroyDevices = true)	
EndFunction

Function HighLow_PlayerLossGame()
	SetUpdateFlag(2)
	If (libs.PlayerRef.GetItemCount(dcLibs.dcur_twac_lauravoucher) < 1) && Utility.RandomInt() < 50
		libs.Notify("Christa takes pity on your tied up self and hands you a voucher for Laura's blacksmith services.", messagebox = true)
		libs.PlayerRef.AddItem(dcLibs.dcur_twac_lauravoucher)
	EndIf
EndFunction

Function Reset_Christa()	
	dcLibs.WipeRestraints(alias_christa.GetActorReference(), genericonly = true, removeDCURquestitems = false, destroyDevices = true)	
	alias_christa.GetActorReference().SetOutfit(dcur_twac_outfit_latexdress)
EndFunction

Function SetUpdateFlag(Int newflag)
	if updateflag > 0
		; if there is a flag already, execute the update right now, or it would get overwritten!
		OnUpdate()
	EndIf
	updateflag = newflag
EndFunction

Bool Function progressivebondage(actor a, int theme, int itemstoadd = 1)
	int i = 1
	Bool doneanything = false
	while i <= itemstoadd		
		if !a.WornHasKeyword(libs.zad_DeviousLegCuffs)			
			if dclibs.dcur_equiprandomlegcuffs(a, theme)		
				doneanything = true
			endif
		elseif !a.WornHasKeyword(libs.zad_DeviousArmCuffs)
			if dclibs.dcur_equiprandomarmcuffs(a, theme)						
				doneanything = true
			endif
		elseif !a.WornHasKeyword(libs.zad_DeviousCollar)
			if dclibs.dcur_equiprandomcollar(a, theme)								
				doneanything = true
			endif			
		elseif !a.WornHasKeyword(libs.zad_DeviousBra)
			if dclibs.dcur_equiprandombra(a, theme)
				doneanything = true
			endif
		elseif !a.WornHasKeyword(libs.zad_DeviousBelt)
			if dclibs.dcur_equiprandombelt(a, theme)
				doneanything = true
			endif			
		elseif !a.WornHasKeyword(libs.zad_DeviousHarness) && !a.WornHasKeyword(libs.zad_DeviousCorset)
			if Utility.RandomInt(0,99) < 30
				if dclibs.dcur_equiprandomRopeHarness(a, theme)
					doneanything = true
				endif
			else
				if dclibs.dcur_equiprandomcollarharness(a, theme)			
					doneanything = true
				endif
			Endif
		elseif !a.WornHasKeyword(libs.zad_DeviousGloves)
			if dclibs.dcur_equiprandomgloves(a, theme)					
				doneanything = true
			endif
		elseif !a.WornHasKeyword(libs.zad_DeviousSuit)
			if dclibs.dcur_equiprandomsuit(a, theme)						
				doneanything = true
			endif
		elseif !a.WornHasKeyword(libs.zad_DeviousBoots)
			if dclibs.dcur_equiprandomboots(a, theme) 			
				doneanything = true
			endif
		elseif !a.WornHasKeyword(libs.zad_DeviousGag)
			if dclibs.dcur_equiprandomgag(a, theme) 			
				doneanything = true
			endif
		elseif !a.WornHasKeyword(libs.zad_DeviousBlindfold)
			if dclibs.dcur_equiprandomblindfold(a, theme)			
				doneanything = true
			endif
		elseif !a.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			if dclibs.dcur_equiprandomarmbinder(a, theme)	
				doneanything = true
			endif
		endif
		if !doneanything && i == 1
			; didn't do anything at all!
			return false
		elseif !doneanything
			; didn't do anything this round but equipped one item => considered success
			return true
		EndIf
		Utility.Wait(1)
		i += 1
	endwhile    	
	return true
EndFunction

Bool Function HasGenericDeviceInSlot(actor a, keyword kw)
	Armor arm = libs.GetWornRenderedDeviceByKeyword(a, kw)
	if arm && !arm.HasKeyword(libs.zad_QuestItem) && !arm.HasKeyword(libs.zad_BlockGeneric)
		return true
	EndIf
	return false
EndFunction

Bool Function progressiveunlock(actor a, int itemstoremove = 1)	
	int i = 1
	while i <= itemstoremove		
		if HasGenericDeviceInSlot(a, libs.zad_DeviousBlindfold)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousBlindfold)
			libs.notify("You are glad to be rid of your blindfold!", messagebox = true)
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousCollar)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousCollar)
			libs.notify("With a collar locked around your neck, you can breathe much easier!", messagebox = true)
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousGloves)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousGloves)
			libs.notify("The gloves fall off your hands.", messagebox = true)
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousSuit)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousSuit)
			libs.notify("You step out of the suit, glad to be rid of it.", messagebox = true)
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousLegCuffs)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousLegCuffs)
			libs.notify("Your legs feel much more comfortable without the leg cuffs!", messagebox = true)
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousArmCuffs)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousArmCuffs)
			libs.notify("Your arms are no longer weighed down by arm cuffs!", messagebox = true)
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousBra)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousBra)
			libs.notify("No longer locked inside a chastity bra, your breasts long for getting played with again!", messagebox = true)
			if a.WornHasKeyword(libs.zad_DeviousPiercingsNipple)				
				libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousPiercingsNipple)
			EndIf
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousBelt)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousBelt)
			libs.notify("With a sigh of your relief, the chastity belt comes off, releasing your wet and longing pussy from comfinement.", messagebox = true)
			if a.WornHasKeyword(libs.zad_DeviousPlugAnal)				
				libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousPlugAnal)
			EndIf
			if a.WornHasKeyword(libs.zad_DeviousPlugVaginal)				
				libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousPlugVaginal)
			EndIf
			if a.WornHasKeyword(libs.zad_DeviousPiercingsVaginal)				
				libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousPiercingsVaginal)
			EndIf
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousHarness)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousHarness)
			libs.notify("The straps of your slave harness no longer bite into your flesh.", messagebox = true)
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousCorset)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousCorset)
			libs.notify("With the corset releasing its tight grip on your waist, you can finally breathe again!", messagebox = true)		
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousBoots)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousBoots)
			libs.notify("Unlocking the boots you can finally walk normally again!", messagebox = true)
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousGag)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousGag)
			libs.notify("Accompanied by a large gush of your saliva, the gag comes off your mouth and for the first time in forever you can close your aching mouth again!", messagebox = true)		
		elseif HasGenericDeviceInSlot(a, libs.zad_DeviousHeavyBondage)
			libs.UnlockDeviceByKeyword(libs.playerref, libs.zad_DeviousHeavyBondage)
			libs.notify("Finally you can remove the wrist restraints and regain your freedom!", messagebox = true)
		elseif i == 1
			; didn't do anything!
			return false
		endif		
		i += 1
	endwhile    	
	return true
EndFunction

Bool Function fillslots(actor a, int theme)	
		if !a.WornHasKeyword(libs.zad_DeviousLegCuffs)			
			dclibs.dcur_equiprandomlegcuffs(a, theme)					
		EndIf
		if !a.WornHasKeyword(libs.zad_DeviousArmCuffs)
			dclibs.dcur_equiprandomarmcuffs(a, theme)										
		endif
		;if !a.WornHasKeyword(libs.zad_DeviousCollar)
		;	dclibs.dcur_equiprandomcollar(a, theme)								
		;endif			
		if !a.WornHasKeyword(libs.zad_DeviousBra)
			dclibs.dcur_equiprandombra(a, theme)			
		endif
		if !a.WornHasKeyword(libs.zad_DeviousBelt)
			dclibs.dcur_equiprandombelt(a, theme)			
		endif			
		if !a.WornHasKeyword(libs.zad_DeviousHarness) && !a.WornHasKeyword(libs.zad_DeviousCorset)
			if Utility.RandomInt(0,99) < 30
				dclibs.dcur_equiprandomRopeHarness(a, theme)				
			else
				dclibs.dcur_equiprandomcollarharness(a, theme)							
			Endif
		EndIf
		if !a.WornHasKeyword(libs.zad_DeviousGloves)
			dclibs.dcur_equiprandomgloves(a, theme)						
		endif
		if !a.WornHasKeyword(libs.zad_DeviousSuit)
			dclibs.dcur_equiprandomsuit(a, theme)
		endif
		if !a.WornHasKeyword(libs.zad_DeviousBoots)
			dclibs.dcur_equiprandomboots(a, theme) 						
		endif
		if !a.WornHasKeyword(libs.zad_DeviousGag)
			dclibs.dcur_equiprandomballgag(a, theme) 						
		endif
		if !a.WornHasKeyword(libs.zad_DeviousBlindfold)
			dclibs.dcur_equiprandomblindfold(a, theme)						
		endif
		if !a.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			dclibs.dcur_equiprandomarmbinder(a, theme)
		endif		
EndFunction

Bool Function IsWearingGenericDevices(Actor a)
	int i = dcumenu.dcur_devicekeywords.GetSize() - 1		
	while i > 0	
		Keyword kw = dcumenu.dcur_devicekeywords.GetAt(i) As Keyword
		if a.WornHasKeyword(kw) && libs.IsGenericDevice(a, kw)
			return true
		EndIf
		i -= 1
	EndWhile
	Return False
EndFunction

Function StartEscapeGame()	
	PopulateContainers()
	libs.PlayerRef.AddItem(dcur_twac_escape_containerkey, 1)	
	FreshGame = True
	dcur_twac_escape_done.SetValueInt(0)
	libs.PlayerRef.AddToFaction(dcur_twac_faction)
	fillslots(libs.PlayerRef, 3)	
	alias_escape_door.GetReference().Lock(False)
	alias_escape_door.GetReference().SetOpen(True)
	CageLockedAt = 0.0
EndFunction

Function FinishEscapeGame()
	libs.PlayerRef.RemoveItem(dcur_twac_escape_containerkey, 1)
	dcur_twac_escape_done.SetValueInt(0)
	alias_escape_door.GetReference().Lock(True)
	alias_escape_door.GetReference().SetLockLevel(255)
	GameRoomRewards(2)
EndFunction

Bool FreshGame

Function DoorTrigger()
	If !FreshGame
		return
	EndIf
	alias_escape_door.GetReference().Lock(True)
	alias_escape_door.GetReference().SetLockLevel(255)
	FreshGame = False	
EndFunction

Function PopulateContainers()
	LastContainer = none
	dcur_twac_escape_containerlist.Revert()
	dcur_twac_escape_containerlisttmp.Revert()
	dcur_twac_escape_containerswithkeys.Revert()
	Cell kCell = Libs.PlayerRef.GetParentCell()
	ObjectReference o
	Int i = kCell.GetNumRefs(28) ; Containers	
	While i > 0
		i -= 1
		o = kCell.GetNthRef(i, 28)
		If dcur_twac_escape_containertypes.HasForm(o.GetBaseObject())
			dcur_twac_escape_containerlist.AddForm(o)
			dcur_twac_escape_containerlisttmp.AddForm(o)			
			o.SetLockLevel(255)
			o.Lock(True)
			o.BlockActivation(True)
			Int n = o.GetNumItems()
			While (n > 0)
				n -= 1
				Form Item = o.GetNthForm(n)
				o.RemoveItem(Item, o.GetItemCount(Item), True)
			EndWhile			
			o.AddItem(dcumenu.gold001, 1)
		EndIf
	EndWhile	
	int maxdevices = dcumenu.dcur_devicekeywords.GetSize()		; There are more devices in that list than needed, because we're removing plugs and piercings with other devices.
	while maxdevices > 0
		maxdevices -= 1
		int s = dcur_twac_escape_containerlisttmp.GetSize() - 1
		int r = Utility.RandomInt(0,s)
		dcur_twac_escape_containerswithkeys.AddForm(dcur_twac_escape_containerlisttmp.GetAt(r))
		dcur_twac_escape_containerlisttmp.RemoveAddedForm(dcur_twac_escape_containerlisttmp.GetAt(r))
	EndWhile	
EndFunction

ObjectReference LastContainer
Function HasActivatedContainer(ObjectReference cont)
	if cont == LastContainer
		; prevent people accidently double-clicking a container for twice the trap chance but no reward chance
		return
	EndIf
	LastContainer = cont
	if dcur_twac_escape_containerswithkeys.GetAt(0) As ObjectReference == cont || dcur_twac_escape_containerswithkeys.GetAt(1) As ObjectReference == cont || dcur_twac_escape_containerswithkeys.GetAt(2) As ObjectReference == cont
		; this seems to be a reasonable compromise between boring grind and completing the challenge too fast.
	;if dcur_twac_escape_containerswithkeys.HasForm(cont)
		;libs.PlayerRef.RemoveItem(dcur_twac_escape_containerkey, 1)
		Bool w = IsWearingGenericDevices(libs.PlayerRef)
		If w
			libs.notify("Your key fits this container. You have found a restraints key and use it to remove one of your restraints. You also found a key for the next container.", messagebox = true)
			Utility.Wait(0.1)		
			;libs.PlayerRef.AddItem(dcur_twac_escape_containerkey, 1)
		Else
			libs.notify("Your key fits this container. You have found a restraints key and use it to remove one of your restraints.", messagebox = true)
		EndIf
		Utility.Wait(0.1)		
		progressiveunlock(libs.PlayerRef, 1)	
		dcur_twac_escape_containerswithkeys.RemoveAddedForm(cont)
		; lets add back this container in case we need them. This will make sure we never run out of containers, even if the player is really unlucky with getting devices relocked.
		dcur_twac_escape_containerlisttmp.AddForm(cont)
		w = IsWearingGenericDevices(libs.PlayerRef)		; check again if this was the last device
		if !w
			libs.notify("You are no longer wearing restraints. Congratulations, you have mastered the escape room challenge! Report back to Christa for your reward!", messagebox = true)
			alias_escape_door.GetReference().Lock(false)	
			libs.PlayerRef.RemoveFromFaction(dcur_twac_faction)
			dcur_twac_escape_done.SetValueInt(1)
		EndIf
	Else
		libs.notify("Your key does not fit this container.")
		CheckforTrap()
	EndIf	
EndFunction

Function AddContainerToList()		
	int s = dcur_twac_escape_containerlisttmp.GetSize() - 1
	int r = Utility.RandomInt(0,s)
	dcur_twac_escape_containerswithkeys.AddForm(dcur_twac_escape_containerlisttmp.GetAt(r))
	dcur_twac_escape_containerlisttmp.RemoveAddedForm(dcur_twac_escape_containerlisttmp.GetAt(r))
EndFunction

Function PutInCage()
	libs.PlayerRef.MoveTo(alias_escape_cagemarker.GetReference())
	alias_escape_cagedoor.GetReference().Lock(True)
	alias_escape_cagedoor.GetReference().SetLockLevel(255)
	CageLockedAt = Utility.GetCurrentGameTime()
EndFunction

Function UnlockCageDoor()
	alias_escape_cagedoor.GetReference().Lock(False)
	alias_escape_cagedoor.GetReference().SetOpen(True)
	libs.notify("The cage door has opened...", true)
EndFunction

Function CheckforTrap()
	Bool hasaccess = !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousBelt) ; || (libs.IsGenericDevice(libs.PlayerRef, libs.zad_DeviousBelt) && dcumenu.stripbeltsonrape)
	int i 
	if hasaccess
		i = Utility.RandomInt(0, 200)	
	else
		i = Utility.RandomInt(0, 175)
	endif
	If i < 3
		libs.notify("Oh no! This container was trapped! You suddenly feel very dizzy...", messagebox = true)
		Utility.Wait(0.1)
		dcLibs.zadc.LockActor(libs.PlayerRef, (alias_escape_pillory.GetReference() As ObjectReference))
	Elseif i < 6
		libs.notify("Oh no! This container was trapped! You suddenly feel very dizzy...", messagebox = true)
		Utility.Wait(0.1)
		dcLibs.zadc.LockActor(libs.PlayerRef, (alias_escape_torturepole.GetReference() As ObjectReference))
	Elseif i < 9
		libs.notify("Oh no! This container was trapped! You suddenly feel very dizzy...", messagebox = true)
		Utility.Wait(0.1)
		dcLibs.zadc.LockActor(libs.PlayerRef, (alias_escape_bondagechair.GetReference() As ObjectReference))
	Elseif i < 12
		libs.notify("Oh no! This container was trapped! You suddenly feel very dizzy...", messagebox = true)
		Utility.Wait(0.1)
		dcLibs.zadc.LockActor(libs.PlayerRef, (alias_escape_torturepole2.GetReference() As ObjectReference))
	Elseif i < 15
		libs.notify("Oh no! This container was trapped! Some of your gold is lost!", messagebox = true)
		Utility.Wait(0.1)
		int sum = libs.PlayerRef.GetLevel() * 25
		if sum > libs.PlayerRef.GetItemCount(dcumenu.gold001)
			sum = libs.PlayerRef.GetItemCount(dcumenu.gold001)
		EndIf
		libs.PlayerRef.RemoveItem(dcumenu.gold001, sum)
	Elseif i < 25		
		if progressivebondage(libs.PlayerRef, 3, 1)
			libs.notify("Oh no! This container was trapped! Another restraint locks shut on you!", messagebox = true)
			Utility.Wait(0.1)
			; we might need more key containers, so let's pick one more
			AddContainerToList()	
		EndIf
	Elseif i < 35
		libs.notify("Oh no! This container was trapped! You suddenly feel very dizzy, as if you'd get carried away...", messagebox = true)
		Utility.Wait(0.1)
		PutInCage()
	Elseif i < 45 && hasaccess
		libs.notify("Oh no! This container was trapped! You suddenly feel very dizzy. And you hear steps approaching...", messagebox = true)
		Utility.Wait(0.1)
		dcLibs.rape()		
	EndIf	
EndFunction

