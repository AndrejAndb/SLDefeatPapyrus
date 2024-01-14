;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_scquest_payment Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	actor pl = Game.GetPlayer()
	int sa = dcur_solicitationacts.GetValueInt()
	int lmargin = dcumenu.solicitationmintip * (1 + (pl.GetLevel() / 2) As Int)
	int hmargin = dcumenu.solicitationmaxtip * (1 + (pl.GetLevel() / 2) As Int)
	If lmargin > hmargin
		lmargin = hmargin		
	EndIf
	int reward = Utility.RandomInt(lmargin,hmargin)		
	Int deducted = 0
	int mult = dcumenu.dcur_solicitationbonus.GetValueInt()
	;if mult > 0
		reward = (reward As Float * (mult As Float / 100)) As Int
	;endif
	if reward == 0		
		reward = 10
	endif
	if sa > 500
		reward = reward * 1.05 As Int
	endif
	if sa > 350
		reward = reward * 1.05 As Int
	endif
	if sa > 200
		reward = reward * 1.05 As Int
	endif
	if sa > 100
		reward = reward * 1.05 As Int
	endif
	if sa > 75
		reward = reward * 1.05 As Int
	endif
	if sa > 50
		reward = reward * 1.05 As Int
	endif
	if sa > 25
		reward = reward * 1.05 As Int
	endif
	if sa > 10
		reward = reward * 1.05 As Int
	endif			
	if sa > 1
		reward = reward * 1.05 As Int
	endif				
	if akSpeaker.IsGuard() && dcumenu.solicitationguardgamble
		reward *= 3
	Endif
	pl.additem(dcumenu.gold001, reward)
	if pl.GetCurrentLocation().haskeyword(dclibs.dglib.loctypeinn) && !dclibs.mcs.soqs.IsWorkingGirl()
		debug.notification("The innkeeper deducts their share from your tip!")
		deducted = (reward * (dcumenu.solicitationinnkeepershare / 100)) As Int
		pl.removeitem(dcumenu.gold001, deducted)
	endif
	; tell the entire world how much gold the player made by whoring herself out!
	SendSolitationPaymentEvent(reward - deducted)	
	dcur_solicitationoutcome.SetValueInt(0)
	dclibs.mcs.soqs.dcur_solicitationcustomer.Clear()
	;dcur_solicitationcustomers.Revert()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001  Auto  
GlobalVariable Property dcur_solicitationacts  Auto  
dcur_mcmconfig Property dcumenu  Auto  
GlobalVariable Property dcur_solicitationoutcome  Auto  
FormList Property dcur_solicitationcustomers  Auto 
dcur_library Property dclibs Auto 

Function SendSolitationPaymentEvent(Int amount)	
	Int Handle = ModEvent.Create("DCL_SOLICITATIONPAYMENT")
	If (Handle)		
		ModEvent.PushInt(Handle, amount)		
		ModEvent.Send(Handle)
	Endif	
EndFunction