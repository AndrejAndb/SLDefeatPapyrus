Scriptname dcur_solicitationquestscript extends Quest  

ReferenceAlias Property dcur_solicitationcustomer Auto

zadlibs Property libs Auto
dcur_mcmconfig Property dcumenu  Auto  
SexLabFramework Property SexLab Auto
dcur_library Property dclibs Auto
dcur_genericlib Property dglib Auto
slaFrameworkScr Property Aroused  Auto  
dcur_WorkingGirlQuestScript Property wgs Auto
GlobalVariable Property dcur_solicitationacts  Auto  
FormList Property dcur_solicitationcustomers  Auto  
Formlist Property dcur_solicitationbondageapplied Auto
GlobalVariable Property dcur_bondagesexoutcome  Auto  
GlobalVariable Property dcur_scquest_offersuccess Auto
GlobalVariable Property dcur_scquest_hasrestraintstoremove  Auto  

Armor Property dcur_workinggirlcollar_Inventory Auto
Armor Property dcur_workinggirlcollar_Rendered Auto

int sex_type_consensual = 1
int sex_type_rape = 2
int sex_type_bondage = 3

bool consensual = true
bool bondage = true
bool notip = true
string tag = ""

int property offertype_standard = 1 Auto
int property offertype_sfk_blowjob = 2 Auto
int property offertype_sfk_vaginal = 3 Auto
int property offertype_sfk_anal = 4 Auto
int property offertype_sfk_anything = 5 Auto
int property offertype_sfk_rough = 6 Auto

Bool Function isWorkingGirl()
	Return Libs.PlayerRef.IsEquipped(dcur_workinggirlcollar_Rendered) && wgs.GetStage() == 10
EndFunction

Function CalcSuccess(actor client, int offertype)
	Actor pl = Game.GetPlayer()
	If !client
		debug.trace("[DCUR] - Warning: Solicitation attempt with empty client variable!")
	Endif	
	if !isWorkingGirl() && dcumenu.solicitationenforceclothing && (pl.wornhaskeyword(dglib.ArmorBoots) || pl.wornhaskeyword(dglib.ArmorCuirass) || pl.wornhaskeyword(dglib.ArmorDarkBrotherhood) || pl.wornhaskeyword(dglib.ArmorGauntlets) || pl.wornhaskeyword(dglib.ArmorHeavy) || pl.wornhaskeyword(dglib.ArmorHelmet) || pl.wornhaskeyword(dglib.ArmorLight)) 
		dcur_scquest_offersuccess.SetValueInt(13)				
		return
	endif
	int chance = dcumenu.slavecollarsolicitationsuccesschance
	if Aroused.GetActorArousal(client) > 25 
		chance = chance * 1.2 As Int
	endif
	if Aroused.GetActorArousal(client) > 50 
		chance = chance * 1.2 As Int
	endif
	if Aroused.GetActorArousal(client) > 75
		chance = chance * 1.2 As Int
	endif
	if Aroused.GetActorArousal(client) > 90
		chance = chance * 1.2 As Int
	endif
	if Aroused.GetActorArousal(pl) > 50 
		chance = chance * 1.1 As Int
	endif	
	; Lower morale means higher success chance
	if client.GetActorValue("Morality") <= 2
		chance = chance * 1.2 As Int
	endif
	; If the person prefers males, they are less likely to want sex with the player
	; If Aroused.GetGenderPreference(client) == 0 		
		; chance = chance * 0.75 As Int
	; endif 		
	int sa = dcur_solicitationacts.GetValueInt()
	if sa > 500
		chance += 1
	endif
	if sa > 350
		chance += 1
	endif
	if sa > 200
		chance += 1
	endif
	if sa > 100
		chance += 1
	endif
	if sa > 75
		chance += 1
	endif
	if sa > 50
		chance += 1
	endif
	if sa > 25
		chance += 1
	endif
	if sa > 10
		chance += 1
	endif				
	if sa > 1
		chance += 1
	endif	
	if offertype == offertype_sfk_blowjob
		chance += 1
	endif
	if offertype == offertype_sfk_vaginal
		chance += 5
	endif
	if offertype == offertype_sfk_anal
		chance += 10
	endif
	if offertype == offertype_sfk_anything
		chance += 15
	endif
	if offertype == offertype_sfk_rough
		chance += 20
	endif
	; better chances in inns!
	if pl.GetCurrentLocation().haskeyword(dclibs.dglib.loctypeinn)		
		chance += (chance * dcumenu.solicitationinnchancebonus / 100) As Int
	endif	
	If isWorkingGirl()
		; officially licensed whores sell faster!
		chance *= 2
		If chance > 85
			chance = 85
		EndIf
	EndIf
	If Utility.RandomInt() < chance && Aroused.GetActorArousal(client) >= dcumenu.solicitationminNPCarousal
		dcur_solicitationacts.SetValueInt(dcur_solicitationacts.GetValueInt() + 1)
		if Utility.RandomInt(0, 99) < 50				
			;wants rough sex even when the player asks for gentle
			dcumenu.dcur_scquest_demandsroughsex.SetValueInt(1)
		else
			dcumenu.dcur_scquest_demandsroughsex.SetValueInt(0)
		endif
		if offertype == offertype_standard
			if !isWorkingGirl() && Utility.RandomInt(0,99) < dcumenu.solicitationbondagesexchance
				; bondage sex			
				dcur_scquest_offersuccess.SetValueInt(11)		
			else
				; regular sex
				dcur_scquest_offersuccess.SetValueInt(1)		
			endif
		else
			; player is wearing restraints to unlock
			if dcur_scquest_hasrestraintstoremove.GetValueInt() == 1
				; will unlock 
				dcur_scquest_offersuccess.SetValueInt(14)		
			else
				; would unlock but there is nothing to unlock
				dcur_scquest_offersuccess.SetValueInt(15)		
			endif
		endif
	else
		; guards arrest the player if guard gamble is active
		If !isWorkingGirl() && client.IsGuard() && dcumenu.solicitationguardgamble
			dcur_scquest_offersuccess.SetValueInt(16)		
			return
		Endif
		; critical failure means the character will get belted or reported
		If !isWorkingGirl() && Utility.RandomInt(0,100) < dcumenu.slavecollarsolicitationcriticalfailurechance
			int grandtotalweight = dcumenu.slavecollarbeltweight + dcumenu.slavecollarcrimeweight + dcumenu.solicitationadditemsweight + dcumenu.solicitationaddpunishingitemweight + dcumenu.solicitationslutcollarweight + dcumenu.solicitationchainharnessweight
			int Select = 0			
			bool done = false
				Select = Utility.RandomInt(1, grandtotalweight)		
				if Select < dcumenu.slavecollarbeltweight
					dcur_scquest_offersuccess.SetValueInt(4)				
					done = true									
				endIf
				Select = Select - dcumenu.slavecollarbeltweight									
				if !done && Select < dcumenu.solicitationadditemsweight
					dcur_scquest_offersuccess.SetValueInt(9)				
					done = true					
				endIf
				Select = Select - dcumenu.solicitationadditemsweight									
				if !done && Select < dcumenu.solicitationslutcollarweight && !Game.GetPlayer().isequipped(dcumenu.dcur_slutcollar)
					dcur_scquest_offersuccess.SetValueInt(12)				
					done = true					
				endIf
				Select = Select - dcumenu.solicitationslutcollarweight									
				if !done && Select < dcumenu.solicitationaddpunishingitemweight
					dcur_scquest_offersuccess.SetValueInt(10)				
					done = true					
				endIf
				Select = Select - dcumenu.solicitationaddpunishingitemweight									
				if !done && Select < dcumenu.solicitationchainharnessweight
					dcur_scquest_offersuccess.SetValueInt(17)				
					done = true					
				endIf
				Select = Select - dcumenu.solicitationchainharnessweight
				if !done && Select < dcumenu.slavecollarcrimeweight
					dcur_scquest_offersuccess.SetValueInt(8)					
					done = true					
				endIf				
				if !done
					dcur_scquest_offersuccess.SetValueInt(8)										
				endif			
		else			
			; If Aroused.GetGenderPreference(client) == 0 
				; dcur_scquest_offersuccess.SetValueInt(2)		
				; return
			; endif 	
			if Aroused.GetActorArousal(client) < 30
				dcur_scquest_offersuccess.SetValueInt(3)		
				return
			endif	
			; else pick a random decline
			int i = Utility.RandomInt(1,3) 
			If i == 1
				dcur_scquest_offersuccess.SetValueInt(5)				
			elseif i == 2
				dcur_scquest_offersuccess.SetValueInt(7)				
			else
				dcur_scquest_offersuccess.SetValueInt(6)				
			endif
		endif		
	endif
EndFunction
	
Function SexWrapper(bool consensualsex = true, bool bondagesex = false, bool notipsex = false, string sextag = "")
	consensual = consensualsex
	bondage = bondagesex
	notip = notipsex
	tag = sextag
	if dcumenu.installed_SerialStrip && !libs.playerref.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		RegisterForModEvent("SerialStripStop", "OnSSEnd")		
		If isWorkingGirl()
			wgs.isStripping = True
		EndIf
		dclibs.serialstrip(libs.playerref)
	else
		if (libs.playerref.GetWornForm(0x00000004) != None)
			dclibs.strip(libs.playerref, false)
		endif		
		sex()
	endif
EndFunction

Event OnSSEnd(Form sender, Form a)
	If isWorkingGirl()
		wgs.isStripping = False
	EndIf
	sex()	
	UnRegisterForModEvent("SerialStripStop")		
EndEvent

Function tieher()
	Actor pl = libs.playerref
	Utility.Wait(4)	
	dcur_solicitationbondageapplied.Revert()
	if Utility.RandomInt(0, 99) < 30 && dcumenu.usegag && !pl.WornHasKeyword(libs.zad_DeviousBelt)
		if dclibs.dcur_equiprandomgag(pl, dcumenu.equiptheme)	
			dcur_solicitationbondageapplied.AddForm(libs.zad_DeviousGag)
		endif
	endif
	if dcumenu.usearmbinder && !pl.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		If Utility.RandomInt(0,1) == 1			
			dcur_solicitationbondageapplied.AddForm(libs.zad_DeviousHeavyBondage)			
		Else			
			dcur_solicitationbondageapplied.AddForm(libs.zad_DeviousHeavyBondage)			
		EndIf
	endif
	if Utility.RandomInt(0, 99) < 20 && dcumenu.useblindfold
		if dclibs.dcur_equiprandomblindfold(pl, dcumenu.equiptheme)
			dcur_solicitationbondageapplied.AddForm(libs.zad_DeviousBlindfold)
		endif
	endif
	if Utility.RandomInt(0, 99) < 30 && dcumenu.useboots
		if dclibs.dcur_equiprandomboots(pl, dcumenu.equiptheme)
			dcur_solicitationbondageapplied.AddForm(libs.zad_DeviousBoots)
		endif
	endif
	if dclibs.dcur_equiprandomarmcuffs(pl, dcumenu.equiptheme)
		dcur_solicitationbondageapplied.AddForm(libs.zad_DeviousArmCuffs)
	endif
	if dclibs.dcur_equiprandomlegcuffs(pl, dcumenu.equiptheme)
		dcur_solicitationbondageapplied.AddForm(libs.zad_DeviousLegCuffs)
	endif
	if Utility.RandomInt(0, 99) < 60 
		if dclibs.dcur_equiprandomgloves(pl, dcumenu.equiptheme)
			dcur_solicitationbondageapplied.AddForm(libs.zad_DeviousGloves)
		endif
	endif	
	if Utility.RandomInt(0,99) < dcumenu.solicitationbondagesexremovalchance		
		;if Utility.RandomInt(0,99) < 25 && dcumenu.yokeweight > 0
			; lock a yoke on her, but only if the player didn't completely disable them in MCM
		;	dcur_bondagesexoutcome.SetValueInt(3)
		;else	
			; leave items locked on
			dcur_bondagesexoutcome.SetValueInt(1)
		;endif
	else
		dcur_bondagesexoutcome.SetValueInt(2)
	endif
EndFunction

Function sex()
	if bondage
		tieher()
	else
		dcur_bondagesexoutcome.SetValueInt(0)
	endif
	Actor[]	sexActors		
	Actor partner = dcur_solicitationcustomer.GetReference() As Actor	
	sexActors = new actor[3]	
	If Utility.RandomInt(0,99) < dcumenu.solicitationthreesomechance && !bondage && !libs.PlayerRef.WornHasKeyword(libs.zad_DeviousHeavyBondage)
		actor a = dclibs.getnextclosestsexpartner(partner)
		if a != None
			libs.notify(partner.GetLeveledActorBase().GetName() + " invites a friend to share you with!")					
			sexactors[2] = a
			a.MoveTo(libs.playerref)
			Utility.Wait(0.5)					
		endif
	endif
	sexactors[0] = libs.playerref
	sexactors[1] = partner			
	If Utility.RandomInt(0,99) < dcumenu.solicitationdrugchance	&& !isWorkingGirl()
		libs.notify(partner.GetLeveledActorBase().GetName() + " forces you to use a drug!")
		if dclibs.hasSkoomaWhore()
			dclibs.drugher(libs.playerref)
		else
			libs.playerref.equipitem(dcumenu.skooma, true, true)	
		endif
		dcumenu.dcur_solicitationbonus.SetValueInt((dcumenu.dcur_solicitationbonus.GetValueInt() * 1.5) As Int)		
	endif
	if notip
		dcur_solicitationcustomer.Clear()
	endif
	if sexactors[2] != None
		; no rape anims for threesomes.
		dclibs.sexwithplayer(sexactors[1], sexactors[2], consensual = true, stages = 1, randomanim = true, nostrip = true, beds = true, preferredtag = tag)				
	else
		if consensual
			dclibs.sexwithplayer(sexactors[1], consensual = consensual, stages = 1, randomanim = true, nostrip = true, beds = true, preferredtag = tag)		
		else
			dclibs.sexwithplayer(sexactors[1], consensual = consensual, stages = 1, randomanim = true, nostrip = true, preferredtag = tag)		
		endif
	endif	
EndFunction	
FormList Property dcur_restraintstoremovelist  Auto  
