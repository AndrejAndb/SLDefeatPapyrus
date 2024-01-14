Scriptname dcur_lockedGlovesScript extends zadRestraintScript

Armor Property dcur_rubberGlovesSimple Auto
Armor Property dcur_rubberGlovesSimpleRendered Auto

dcur_mastercontrollerscript Property mcs Auto

Function OnRemoveDevice(actor akActor)
	mcs.UnlockRubberGloves = True
	mcs.RegisterForSingleUpdate(0.1)
EndFunction
