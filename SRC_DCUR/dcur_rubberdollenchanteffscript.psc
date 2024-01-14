Scriptname dcur_rubberdollenchanteffscript extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	debug.notification("You look irresistible in your tight rubber...")		
	Utility.Wait(0.1)	
endevent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	debug.notification("You're no longer wearing tight rubber.")			
endevent