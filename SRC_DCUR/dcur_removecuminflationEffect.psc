Scriptname dcur_removecuminflationEffect extends activemagiceffect  

dcur_clocktickScript Property cts Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Actor pl = akTarget
	if pl != cts.dclibs.libs.playerref
		return
	Endif
	cts.dcur_cuminflation.SetValueInt(0)
EndEvent