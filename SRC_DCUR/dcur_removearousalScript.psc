Scriptname dcur_removearousalScript extends activemagiceffect  

dcur_clocktickScript Property cts Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Actor pl = akTarget
	if pl != cts.dclibs.libs.playerref
		return
	Endif
	cts.libs.aroused.SetActorExposure(pl, 0)
	cts.libs.aroused.SetActorExposureRate(pl, 2)
EndEvent