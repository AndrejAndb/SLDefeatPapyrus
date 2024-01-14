Scriptname dcur_onactivatecrystal extends ObjectReference  

SPELL Property dcur_electricblastspell  Auto  
dcur_mastercontrollerscript Property mcs Auto
dcur_cursedcollarquestscript Property ccqs Auto

event OnActivate(ObjectReference aRef)	
	debug.messagebox("When you touch the crystal, arcane energy flows through you and into the restraints you are wearing...")	
	Actor player = Game.GetPlayer()
	dcur_electricblastspell.remoteCast(player, player, player)	
	ccqs.SetObjectiveCompleted(100)
	ccqs.Alias_dcur_alias_ddd_crystal.GetReference().disable(true)
	ccqs.Alias_dcur_alias_ddd_sheogorathssack.GetReference().enable(true)
	ccqs.Alias_dcur_alias_ddd_ladder.GetReference().enable(true)
	ccqs.Alias_dcur_alias_ddd_maingate.GetReference().lock(false)
	mcs.isworn_cursedcollar = 0
	ccqs.terminatequest()
endevent
