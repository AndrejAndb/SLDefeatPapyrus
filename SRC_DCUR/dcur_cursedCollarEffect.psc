Scriptname dcur_cursedCollarEffect extends activemagiceffect  

dcur_cursedcollarquestscript ccqs = None

Event OnEffectStart(Actor akTarget, Actor akCaster)
	debug.trace("Cursed Collar Effect started")
	debug.notification("Cursed Collar Effect started")
	ccqs = Game.GetFormFromFile(0x000058CC, "Deviously Cursed Loot.esp") as dcur_cursedcollarquestscript
	Utility.Wait(0.1)
	ccqs.lastminorevent = Utility.GetCurrentGameTime()
	;Disabled for now
	;akTarget.modav("SpeedMult", -30)
	; Setting speedmult seems to be bugged. It seems to go into effect only after setting another AV. 
	;I borrowed that little trick from ZaZ's script:
	akTarget.ModAv("CarryWeight", -0.02)
	akTarget.ModAv("CarryWeight", 0.02)
endevent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	debug.trace("Cursed Collar Effect ended")
	debug.notification("Cursed Collar Effect ended")
	;akTarget.modav("SpeedMult", 30)
	akTarget.ModAv("CarryWeight", -0.02)
	akTarget.ModAv("CarryWeight", 0.02)
endevent