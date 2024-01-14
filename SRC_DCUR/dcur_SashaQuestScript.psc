Scriptname dcur_SashaQuestScript extends Quest  

ReferenceAlias Property sasha_ref  Auto  
Outfit Property dcur_outfit_sashaBikini  Auto  
Outfit Property dcur_outfit_sashaCatsuit  Auto  
Outfit Property dcur_outfit_sashaCorset  Auto  
Outfit Property dcur_outfit_sashaDress  Auto  
Outfit Property dcur_outfit_sashaSpandex  Auto  
Outfit Property dcur_outfit_sashaNaked  Auto  
Outfit Property dcur_outfit_sashaZipsuit Auto
Outfit Property dcur_outfit_sashaNakedTotally Auto

Armor Property dcur_SashaChastityBra Auto
Armor Property dcur_SashaChastityBraRendered Auto
Armor Property dcur_SashaChastityBelt Auto
Armor Property dcur_SashaChastityBeltRendered Auto
Armor Property dcur_sashaCollar Auto
Armor Property dcur_sashaCollarRendered Auto
Armor Property dcur_sashaArmCuffs Auto
Armor Property dcur_sashaArmCuffsRendered Auto
Armor Property dcur_sashaLegCuffs Auto
Armor Property dcur_sashaLegCuffsRendered Auto
Armor Property dcur_sashaBallGag Auto
Armor Property dcur_sashaBallGagRendered Auto
Armor Property dcur_sashaPenisGag Auto
Armor Property dcur_sashaPenisGagRendered Auto
Armor Property dcur_sashaAnkleChains Auto
Armor Property dcur_sashaAnkleChainsRendered Auto
Armor Property dcur_sashaArmbinder Auto
Armor Property dcur_sashaArmbinderRendered Auto
Armor Property dcur_sashaCorset Auto
Armor Property dcur_sashaBoots Auto
Armor Property dcur_sashaBootsRendered Auto
Armor Property dcur_sashaHarness Auto
Armor Property dcur_sashaHarnessRendered Auto
Armor Property dcur_sashaBlindfold Auto
Armor Property dcur_sashaBlindfoldRendered Auto
armor property dcur_SashaPlayerChastityBelt Auto
armor property dcur_SashaPlayerChastityBeltRendered Auto
Armor Property dcur_SashaPlayerYoke Auto
Armor Property dcur_SashaPlayerYokeRendered Auto
Armor Property dcur_Sasha_Vibrator Auto
Armor Property dcur_Sasha_VibratorRendered Auto
Armor Property dcur_Sasha_ButtPlug Auto
Armor Property dcur_Sasha_ButtPlugRendered Auto
Armor Property dcur_sasha_prisonerchains_Inventory Auto
Armor Property dcur_sasha_prisonerchains_Rendered Auto


Armor Property dcur_sashaPlayerCollar Auto
Armor Property dcur_sashaPlayerCollarRendered Auto
Keyword Property dcur_kw_sashaplayercollar Auto
Armor Property dcur_sashaPlayerGag Auto
Armor Property dcur_sashaPlayerGagRendered Auto
Keyword Property dcur_kw_sashaplayergag Auto
Armor Property dcur_sashaPlayerCatsuit Auto
Armor Property dcur_sashaPlayerCatsuitRendered Auto
Keyword Property dcur_kw_sashaplayercatsuit Auto
Armor Property dcur_SashaPlayerAnkleChains Auto
Armor Property dcur_SashaPlayerAnkleChainsRendered Auto
Keyword Property dcur_kw_sashaplayeranklechains Auto
Armor Property dcur_sashaPlayerBoots Auto
Armor Property dcur_sashaPlayerBootsRendered Auto
Armor Property dcur_sashaPlayerHobbleDressPunishingInventory Auto
Armor Property dcur_sashaPlayerHobbleDressPunishingRendered Auto

Armor Property dcur_Sashasremotecontrol Auto
Message Property dcur_sasharemotecontrolMSG Auto

GlobalVariable Property dcur_sasha_disposition Auto
GlobalVariable Property dcur_sasha_hasbeenshockedlasthour Auto
GlobalVariable Property dcur_sasha_arousal Auto
GlobalVariable Property dcur_sasha_candoerrand Auto
GlobalVariable Property dcur_sasha_cangetgift Auto
GlobalVariable Property dcur_sasha_canwhore Auto
GlobalVariable Property dcur_Sasha_canbekissed Auto
GlobalVariable Property dcur_sasha_canunbeltplayer Auto
GlobalVariable Property dcur_sasha_isdominating Auto
GlobalVariable Property dcur_sasha_dom_isKeyholder Auto
GlobalVariable Property dcur_sasha_dom_hardcore Auto

GlobalVariable Property dcur_sasha_hasdemand Auto
GlobalVariable Property dcur_sasha_dom_keystolen Auto
Key Property dcur_sashaMasterKey Auto
Int Property Combination = 5555 Auto
Float Property LastKeyTick = 0.0 Auto
Float Property KeyTickLen = 0.2 Auto ; hours
Int Property CombinationsTried = 0 Auto
Int Property MaxCombinations = 9999 Auto
FormList Property dcur_DDKeys Auto

FormList Property dcur_DDsashaitems Auto
Formlist Property dcur_sasha_BondageSexList Auto

ReferenceAlias Property alias_sashaFrozen Auto
ReferenceAlias Property alias_dcur_storagecell  Auto  
ReferenceAlias Property dcur_sashaquest_sashasStorageBox  Auto  

Keyword Property dcur_kw_sashaPlayerBelt Auto

Armor Property currentcityrestraint Auto

zadlibs Property libs Auto 
dcur_library Property dclibs Auto
dcur_mcmconfig Property dcumenu  Auto  

package Property activepackage Auto
float Property dancetimerstart Auto

float Property lastshock Auto
float Property lastsexwithplayer Auto
float Property lastunfriendlyact Auto
float Property lastfriendlyact Auto
float Property lastgiftgiven Auto
float Property lasterrand Auto
float Property lastwhoredout Auto
float Property lastkissed Auto
float Property lastplayerbelted Auto
float solicitationatstart = 0.0

; domination control values
float Property lastdemand Auto
float Property lasttease Auto
int Property notalkcounter Auto

float Property playerbeltduration Auto

float Property errandEnd Auto
Int Property errandType Auto
Int Property errand_lookforkeys = 1 Auto
Int Property errand_lookfortreasure = 2 Auto
Int Property errand_lookforgold = 3 Auto
Int Property errand_lookforsoulgem = 4 Auto

bool Property hadBondageSexSasha = False Auto

int property hornylevel = 0 Auto
int property hornycounter = 0 Auto

Function ResetOutfit(Outfit newoutfit)	
	Actor sasha = GetSasha()
	sasha.SetOutfit(newoutfit)	
EndFunction

Actor Function GetSasha()
	Actor sasha = sasha_ref.GetReference() As Actor		
	return sasha
EndFunction

Function CalculateSashaArousal()
	Int SA = libs.aroused.GetActorArousal(GetSasha())
	Int newHornyLevel
	If SA < 20
		newHornyLevel = 0
	elseif SA < 40
		newHornyLevel = 1
	elseif SA < 60
		newHornyLevel = 2
	elseif SA < 80
		newHornyLevel = 3
	else
		newHornyLevel = 4
	Endif	
	If (newhornylevel > hornylevel) || (newhornylevel < hornylevel)
		if newHornyLevel == 0
			libs.notify("Sasha is no longer horny.")		
		elseif newHornyLevel == 1
			libs.notify("Sasha is a bit horny.")		
		elseif newHornyLevel == 2
			libs.notify("Sasha is horny.")		
		elseif newHornyLevel == 3
			libs.notify("Sasha is very horny.")		
		elseif newHornyLevel == 4
			libs.notify("Sasha is extremely horny.")
		Endif	
		hornylevel = newHornyLevel
	Endif
	if newHornyLevel < 4
		hornycounter = 0
	elseif newHornyLevel == 4
		hornycounter += 1
	Endif	
	; player hasn't taken care of Sasha's arousal for a while...
	If hornycounter > 5 ;&& !(GetSasha().WornHasKeyword(libs.zad_DeviousBelt) || GetSasha().WornHasKeyword(libs.zad_DeviousHarness))
		If Utility.RandomInt(0,99) < (10 + (hornycounter * 10))
			hornycounter = 0
			; if she is in charge she will just take the player.
			If (dcur_sasha_isdominating.GetValueInt() == 1) && libs.playerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
				libs.notify("Sasha needs sex and she's in control of you...")
				dclibs.sexwithplayer(GetSasha(), consensual = true, stages = 1, randomanim = true, nostrip = false)
			Else
				dclibs.Masturbate(GetSasha())
			Endif
		Else
			libs.notify("Sasha can barely control herself anymore...")
		Endif
	Endif
EndFunction

Function addpackage(actor a, package akpackage, bool standstill = false)
	If a == libs.PlayerRef
		Game.ForceThirdPerson()
		Game.SetPlayerAIDriven(True)
	Elseif standstill
		a.SetRestrained(True)
		a.SetDontMove(True)
	EndIf		
	ActorUtil.AddPackageOverride(a, akpackage ,99)
	a.EvaluatePackage()	
endFunction

Function removepackage(actor a, package akpackage)
	ActorUtil.RemovePackageOverride(a, akpackage)	
	a.EvaluatePackage()
	If a == libs.playerRef
		Game.SetPlayerAIDriven(False)
	endif
	a.SetRestrained(False)
	a.SetDontMove(False)	
	Debug.SendAnimationEvent(a, "IdleForceDefaultState")			
endFunction

Function Dance(package akdance)
	addpackage(GetSasha(), akdance, true)
	activepackage = akdance
	dancetimerstart = Utility.GetCurrentGameTime()
EndFunction

Function UpdateDisposition(Int value)
	if value < 0
		libs.notify("Sasha hangs her head.")
	Elseif value > 0
		libs.notify("Sasha smiles at you.")
	Endif
	dcur_sasha_disposition.SetValueInt(dcur_sasha_disposition.GetValueInt() + value)
EndFunction

function punish()
	Actor s = GetSasha()
	float currentHealth = s.GetActorValue("Health") 
	float maxHealth = s.GetBaseActorValue("Health") 
	Debug.SendAnimationEvent(s, "BleedOutStart")		
	dcumenu.dcur_electricblastspell.remoteCast(s, s, s)	
	s.DamageActorValue("Health", maxHealth * 0.6)	
	Utility.Wait(2.0)
	Debug.SendAnimationEvent(s, "BleedOutStop")	
	lastshock = Utility.GetCurrentGameTime()
	dcur_sasha_hasbeenshockedlasthour.SetValueInt(1)
endfunction

Bool Function GetIsOutdoors()
	Return dclibs.GetIsOutdoors()
EndFunction

Function TiePlayer()
	if !currentcityrestraint && !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		libs.notify("Sasha locks you in a heavy yoke!")
		libs.equipDevice(Libs.PlayerRef, dcur_SashaPlayerYoke, dcur_SashaPlayerYokeRendered, Libs.zad_DeviousHeavyBondage, skipevents = false, skipmutex = true)
		currentcityrestraint = dcur_SashaPlayerYoke
	EndIf
EndFunction

Function UnlockPlayer(Bool force = False)
	if libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage) && (currentcityrestraint == dcur_SashaPlayerYoke || Force)
		libs.notify("Sasha unlocks your yoke!")
		libs.removeDevice(Libs.PlayerRef, dcur_SashaPlayerYoke, dcur_SashaPlayerYokeRendered, Libs.zad_DeviousHeavyBondage, destroydevice = true, skipevents = false, skipmutex = true)		
	EndIf
	If libs.playerRef.IsEquipped(dcur_SashaPlayerAnkleChainsRendered) && (currentcityrestraint == dcur_SashaPlayerAnkleChains || Force)
		libs.notify("Sasha unlocks your leg restraints!")		
		libs.removeDevice(Libs.PlayerRef, dcur_SashaPlayerAnkleChains, dcur_SashaPlayerAnkleChainsRendered, Libs.zad_DeviousLegCuffs, destroydevice = true, skipevents = false, skipmutex = true)
		If libs.playerRef.isEquipped(dcur_SashaPlayerBoots)
			libs.removeDevice(Libs.PlayerRef, dcur_SashaPlayerBoots, dcur_SashaPlayerBootsRendered, Libs.zad_DeviousBoots, destroydevice = true, skipevents = false, skipmutex = true)
		EndIf		
	EndIf
	If libs.PlayerRef.isEquipped(dcur_sashaPlayerHobbleDressPunishingRendered) && (currentcityrestraint == dcur_sashaPlayerHobbleDressPunishingRendered || Force)
		libs.notify("Sasha unlocks your hobble skirt!")		
		libs.removedevice(libs.playerRef, dcur_sashaPlayerHobbleDressPunishingInventory, dcur_sashaPlayerHobbleDressPunishingRendered, libs.zad_DeviousSuit, destroydevice = true, skipevents = false, skipmutex = true)		
	EndIf
	currentcityrestraint = None
EndFunction

Function ExchangeYoke()
	if libs.PlayerRef.isEquipped(dcur_SashaPlayerYokeRendered)
		libs.removeDevice(Libs.PlayerRef, dcur_SashaPlayerYoke, dcur_SashaPlayerYokeRendered, Libs.zad_DeviousHeavyBondage, destroydevice = true, skipevents = false, skipmutex = true)
		If libs.PlayerRef.WornHasKeyword(libs.zad_DeviousSuit)
			libs.notify("Sasha removes your yoke and locks leg restraints on you!")
			libs.equipDevice(Libs.PlayerRef, dcur_SashaPlayerAnkleChains, dcur_SashaPlayerAnkleChainsRendered, Libs.zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
			libs.equipDevice(Libs.PlayerRef, dcur_SashaPlayerBoots, dcur_SashaPlayerBootsRendered, Libs.zad_DeviousBoots, skipevents = false, skipmutex = true)
			currentcityrestraint = dcur_SashaPlayerAnkleChains
		Else
			libs.notify("Sasha removes your yoke and puts a hobble skirt on you!")			
			;libs.equipDevice(Libs.PlayerRef, dcur_SashaPlayerAnkleChains, dcur_SashaPlayerAnkleChainsRendered, Libs.zad_DeviousLegCuffs, skipevents = false, skipmutex = true)			
			libs.equipDevice(Libs.PlayerRef, dcur_sashaPlayerHobbleDressPunishingInventory, dcur_sashaPlayerHobbleDressPunishingRendered, libs.zad_DeviousSuit, skipevents = false, skipmutex = true)
			currentcityrestraint = dcur_sashaPlayerHobbleDressPunishingRendered
		EndIf		
		int gamount = Utility.RandomInt(Math.Floor(libs.playerref.GetItemCount(dcumenu.gold001)*0.01), Math.Floor(libs.playerref.GetItemCount(dcumenu.gold001)*0.1))		
		libs.playerRef.RemoveItem(dcumenu.gold001, gamount)
	EndIf
EndFunction

int Function getSashaitemcount(actor a)
	int DDcount = 0
	If a.GetItemCount(dcur_SashaChastityBelt) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaChastityBra) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaHarness) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaBoots) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaArmCuffs) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaLegCuffs) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaAnkleChains) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaBallGag) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaPenisGag) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaBlindfold) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaCollar) > 0
		DDcount = DDcount + 1
	EndIf 
	If a.GetItemCount(dcur_SashaArmbinder) > 0
		DDcount = DDcount + 1
	EndIf 
	return DDcount
endfunction

Function CalculateDisposition()
	Int Value = 50	
	; is happier if she had sex with the player within the last 24 hoyrs
	If (Utility.GetCurrentGameTime() - lastsexwithplayer) * 24.0 < 24.0
		Value += 15
	Endif
	; is happy if the player did something nice to her (e.g. unlocking non-Sasha restraints)
	If (Utility.GetCurrentGameTime() - lastfriendlyact) * 24.0 < 24.0
		Value += 10
	Endif
	; is happy if the player gave her a gift
	If (Utility.GetCurrentGameTime() - lastgiftgiven) * 24.0 < 24.0
		Value += 10
	Endif
	; is really unhappy if she got zapped
	If (Utility.GetCurrentGameTime() - lastshock) * 24.0 < 24.0
		Value -= 20
	Endif
	; is really unhappy if she is collared
	If GetSasha().GetItemCount(dcur_SashaCollar) > 0
		Value -= 10
	EndIf
	; is unhappy if she got forced to do undesireable things.
	If (Utility.GetCurrentGameTime() - lastunfriendlyact) * 24.0 < 24.0
		Value -= 10
	Endif
	; points less for every restraint you locked on her
	Value -= (getSashaitemcount(GetSasha()) * 3)
	; cap value range
	If Value < 0 
		Value = 0
	ElseIf Value > 100
		Value = 100
	EndIf
	dcur_sasha_disposition.SetValueInt(Value)
EndFunction

function ParkSasha()
	Actor Sasha = GetSasha()
	alias_sashaFrozen.ForceRefTo(Sasha)
	debug.trace("[DCUR] - Sasha has been quarantined!")		
	Sasha.moveto(alias_dcur_storagecell.GetReference())
	Sasha.SetRestrained(True)
	Sasha.SetDontMove(True)	
endfunction

Function ReleaseSasha()
	if alias_sashaFrozen.GetReference()
		debug.trace("[DCUR] - Sasha has been released from quarantine!")
		Actor Sasha = alias_sashaFrozen.GetActorReference()			
		Sasha.moveto(libs.playerref)
		Sasha.SetRestrained(False)
		Sasha.SetDontMove(False)		
		alias_sashaFrozen.Clear()		
	Endif
EndFunction

Function GiveGift(Actor pTarget)
	FormList giftFilter = pTarget.GetActorBase().GetGiftFilter()	
	if pTarget.ShowGiftMenu(true, giftFilter) > 0
		libs.notify("Sasha smiles at you!")
		lastgiftgiven = Utility.GetCurrentGameTime()
		dcur_sasha_cangetgift.SetValueInt(0)
	Endif	
endFunction

Function TransferKeys()
	Actor pl = libs.playerref
	Key k
	Int i = dcur_DDKeys.GetSize()
	int num
	libs.notify("Sasha takes away your keys...")
	While i > 0
		i -= 1
		k = dcur_DDKeys.GetAt(i) As Key
		num = pl.GetItemCount(k)
		If num > 0
			pl.RemoveItem(k, num, true, dcur_sashaquest_sashasStorageBox.GetReference())
		Endif
	EndWhile
EndFunction

Function StartDomination()	
	dcur_sasha_isdominating.SetValueInt(1)
	dcur_sasha_dom_isKeyholder.SetValueInt(1)
	lastdemand = Utility.GetCurrentGameTime()
	libs.PlayerRef.RemoveItem(dcur_sashaMasterKey, libs.PlayerRef.GetItemCount(dcur_sashaMasterKey))
	Combination = Utility.RandomInt(1, dclibs.dcumenu.MaxCombinations)
	CombinationsTried = 0	
	dcur_sasha_dom_keystolen.SetValueInt(0)
	libs.equipDevice(Libs.PlayerRef, dcur_SashaPlayerCollar, dcur_SashaPlayerCollarRendered, Libs.zad_DeviousCollar, skipevents = false, skipmutex = true)
	TiePlayer()	
	RegisterForModEvent("AnimationEnd", "end_sex")	
	RegisterForModEvent("AnimationStart", "start_sex")	
	TransferKeys()
EndFunction

Function UnregisterEvents()	
	UnRegisterForModEvent("AnimationEnd")	
	UnRegisterForModEvent("AnimationStart")
EndFunction

Bool Function IsSashaDominating()	
	Return (dcur_sasha_isdominating.GetValueInt() == 1)
EndFunction

Function StopDomination()	
	dcur_sasha_isdominating.SetValueInt(0)
	dcur_sasha_dom_isKeyholder.SetValueInt(0)
	UnlockPlayer(Force = True)
	Actor pl = libs.playerref
	libs.removeDevice(pl, dcur_SashaPlayerCollar, dcur_SashaPlayerCollarRendered, Libs.zad_DeviousCollar, destroydevice = true, skipevents = false, skipmutex = true)
	if pl.isEquipped(dcur_SashaPlayerChastityBeltRendered)
		libs.removedevice(pl, dcur_Sasha_Vibrator, dcur_Sasha_VibratorRendered, libs.zad_DeviousPlugVaginal, destroydevice = true, skipevents = false, skipmutex = true)
		libs.removedevice(pl, dcur_Sasha_ButtPlug, dcur_Sasha_ButtPlugRendered, libs.zad_DeviousPlugAnal, destroydevice = true, skipevents = false, skipmutex = true)
		libs.removedevice(pl, dcur_SashaPlayerChastityBelt, dcur_SashaPlayerChastityBeltRendered, libs.zad_DeviousBelt, destroydevice = true, skipevents = false, skipmutex = true)
	Endif
	if pl.isEquipped(dcur_SashaPlayerGagRendered)
		libs.removedevice(pl, dcur_SashaPlayerGag, dcur_SashaPlayerGagRendered, libs.zad_DeviousGag, destroydevice = true, skipevents = false, skipmutex = true)
	Endif
	if pl.isEquipped(dcur_SashaPlayerCatsuitRendered)
		libs.removedevice(pl, dcur_SashaPlayerCatsuit, dcur_SashaPlayerCatsuitRendered, libs.zad_DeviousSuit, destroydevice = true, skipevents = false, skipmutex = true)
	Endif
	if pl.isEquipped(dcur_sashaPlayerHobbleDressPunishingRendered)
		libs.removedevice(pl, dcur_sashaPlayerHobbleDressPunishingInventory, dcur_sashaPlayerHobbleDressPunishingRendered, libs.zad_DeviousSuit, destroydevice = true, skipevents = false, skipmutex = true)
	Endif
	UnregisterEvents()
	dcur_sashaquest_sashasStorageBox.GetReference().RemoveAllItems(akTransferTo = libs.playerRef, abKeepOwnership = false, abRemoveQuestItems = true)
EndFunction

Function Punish_Chastity(float time = 1.0)
	libs.equipDevice(libs.PlayerRef, dcur_Sasha_ButtPlug, dcur_Sasha_ButtPlugRendered, libs.zad_DeviousPlugAnal, skipevents = false, skipmutex = true)				
	libs.equipDevice(libs.PlayerRef, dcur_Sasha_Vibrator, dcur_Sasha_VibratorRendered, libs.zad_DeviousPlugVaginal, skipevents = false, skipmutex = true)				
	libs.equipDevice(libs.PlayerRef, dcur_SashaPlayerChastityBelt, dcur_SashaPlayerChastityBeltRendered, libs.zad_DeviousBelt, skipevents = false, skipmutex = true)				
EndFunction

Function Start_Sex(string eventName, string argString, float argNum, form sender)			
	;solicitationatstart = dcur_solicitationacts.GetValueInt()
EndFunction

Function End_Sex(string eventName, string argString, float argNum, form sender)			
	sslThreadController SLcontroller = libs.SexLab.HookController(argString)	
	Actor[] actors = SLcontroller.Positions
	int numactors = actors.Length
	int i = 0
	Bool SashaFound = false
	Bool playerfound = false
	; let's check if one participant is Sasha or the player
	While i < numactors
		If actors[i] == GetSasha()
			Sashafound = true
		Endif
		If actors[i] == libs.PlayerRef
			playerfound = true
		Endif
		i += 1
	EndWhile
	; don't process scenes not involving the player
	if !Playerfound
		return
	endif
	if !Sashafound ; && dcumenu.EnforceSexRule
		if numactors == 1 && !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousBelt) && Utility.RandomInt() < 20
			If dcumenu.debuglogenabled
				debug.trace("[DCUR] Sasha quest: Punishing for masturbation.")
			Endif
			; player has masturbated while not belted
			libs.notify("Sasha is not amused to catch you with your fingers in your pussy. You are not supposed to play with yourself!", messagebox = true)
			libs.notify("You let your head hang in shame as Sasha reaches for your chastity belt and locks it tight on you. There will be no way for you to touch yourself again anytime soon.", messagebox = true)
			Utility.Wait(1)
			Punish_Chastity()					
			return
		Endif
		
		return
		
		; if player was whoring herself out, we're not punishing her (yet)
		; if dcur_solicitationacts.GetValueInt() == solicitationatstart
			; If dcumenu.debuglogenabled
				; debug.trace("[DCUR] Sasha quest: Player has been whoring out herself.")
			; Endif
			; return
		; Endif
		; if player got raped we're not punishing her
		Actor victim = libs.SexLab.HookVictim(argString)
		if (victim && victim == libs.playerref) || dclibs.gangbangmutex
			If dcumenu.debuglogenabled
				debug.trace("[DCUR] Sasha quest: Player has been raped. Not punishing")
			Endif
		Else
			If dcumenu.debuglogenabled
				debug.trace("[DCUR] Sasha quest: Punishing for sex.")
			Endif
			libs.notify("Sasha is not amused to catch you in the act. You are not allowed to have sex with anyone but her!", messagebox = true)
			if !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousBelt)						
				libs.notify("You let your head hang in shame as Sasha reaches for your chastity belt and locks it tight on you. There will be no way for you to touch yourself again anytime soon.", messagebox = true)
				Utility.Wait(1)
				Punish_Chastity()								
			endif
		Endif	
		return
	Endif
	if SashaFound
		; lastsex = Utility.GetCurrentGameTime()
		; dcur_leonslavery_leonwantssex.SetValueInt(0)
		; If beltremoved
			; If dcumenu.debuglogenabled
				; debug.trace("[DCUR] Slavery quest: Reapplying chastity belt")
			; Endif
			; If !Player.WornHasKeyword(libs.zad_DeviousHeavyBondage)		
				; libs.notify("As " + Master.GetLeveledActorBase().Getname() + " is done with you, you obediently reach for the chastity belt and wrap it around your waist and crotch as tight as possible. You click the locks shut, once again locking away your pussy until the next time your master desires it.", messagebox = true)
			; Else
				; libs.notify("As " + Master.GetLeveledActorBase().Getname() + " is done with you, you get locked in a chastity belt once again, locking away your pussy until the next time your master desires it.", messagebox = true)
			; Endif
			; if aplugremoved
				; libs.equipDevice(libs.playerref, aplugremoved, libs.GetRenderedDevice(aplugremoved), libs.zad_DeviousPlugAnal)		
			; Endif
			; if vplugremoved
				; libs.equipDevice(libs.playerref, vplugremoved, libs.GetRenderedDevice(vplugremoved), libs.zad_DeviousPlugVaginal)		
			; Endif
			; Utility.Wait(1)
			; libs.equipDevice(libs.playerref, beltremoved, libs.GetRenderedDevice(beltremoved), libs.zad_DeviousBelt)		
		; Endif
		; If gagremoved
			; If dcumenu.debuglogenabled
				; debug.trace("[DCUR] Slavery quest: Reapplying gag")
			; Endif
			; libs.notify("As your mouth is no longer required to service " + Master.GetLeveledActorBase().Getname() + ", your master shoves the gag back deep inside and locks it tight.", messagebox = true)
			; Utility.Wait(1)
			; libs.equipDevice(libs.playerref, gagremoved, libs.GetRenderedDevice(gagremoved), libs.zad_DeviousGag)		
		; Endif
		; beltremoved = None
		; aplugremoved = None
		; vplugremoved = None
		; gagremoved = None
	EndIf
EndFunction
	
Function PunishPlayer()
	dclibs.strip(libs.playerref, false)
	int theme = 0
	if dcumenu.equiptheme == 0
		theme = Utility.RandomInt(1, dcumenu.ThemeList.Length - 1)
	Else
		theme = dcumenu.equiptheme
	EndIf
	dclibs.dcur_equiprandomarmbinder(libs.playerref, theme)
	dclibs.dcur_equiprandomballgag(libs.playerref, theme)	
	dclibs.dcur_equiprandomboots(libs.playerref, theme)	
	if !libs.playerref.WornHasKeyword(Libs.zad_DeviousLegCuffs)		
		libs.equipDevice(libs.playerref, dcumenu.dcur_anklechains, dcumenu.dcur_anklechainsRendered, libs.Zad_DeviousLegCuffs, skipevents = false, skipmutex = true)
	EndIf
	dclibs.dcur_equiprandombelt(libs.playerref, theme)
	dclibs.dcur_equiprandombra(libs.playerref, theme)
EndFunction
	
Function KeyAction()	
	CombinationsTried += dcumenu.NumbersPerTick
	If CombinationsTried > Combination
		;got it!
		libs.notify("Trying the latest combination makes the lock inside the collar click open! You remove the collar and are free again. Including to do with Sasha what you want...", messagebox = true)
		libs.PlayerRef.RemoveItem(dcur_sashaMasterKey, libs.PlayerRef.GetItemCount(dcur_sashaMasterKey))
		StopDomination()
		;she escapes		
		return
	Endif
	If Utility.RandomFloat(0.0, 99.9) < dcumenu.SpotChancePerTick
		libs.notify("You try another combination as you suddenly feel Sasha's cold gaze, staring daggers at you. She rips the key out of your hands and locks the slave collar again. Then she reaches into the bag where she keeps her restraints...", messagebox = true)
		libs.PlayerRef.RemoveItem(dcur_sashaMasterKey, libs.PlayerRef.GetItemCount(dcur_sashaMasterKey))
		PunishPlayer()
		; punish her		
		return		
	Endif
	libs.notify("Slave collar combinations tried: " + CombinationsTried)
EndFunction

