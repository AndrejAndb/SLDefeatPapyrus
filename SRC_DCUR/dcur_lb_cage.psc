Scriptname dcur_lb_cage extends ObjectReference  

dcur_lbquestScript Property lbqs Auto
dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
Message Property dcur_lb_cagemsg  Auto  

Event OnActivate(ObjectReference akActionRef)
	if !lbqs.lb_hasremoved_Armbinder
		libs.notify("There is no way you can open this door with your hands sealed inside the armbinder.", messagebox = true)
		return
	endif
	if dcur_lb_cagemsg.Show() == 0
		;libs.playerref.PlayIdle(ZazAPC017)
		Utility.Wait(5)
		if Utility.RandomInt(1,5) == 1
			libs.notify("After blindly rummaging in the dirt with your bound hands for a while, you find a little metal pick and carefully probe the cage door's lock...", messagebox = true)
			if IsLocked()
				Lock(false)
				SetOpen(true)
				RegisterForSingleUpdate(10)
			endif
		else
			libs.notify("You search the ground but can't find anything useful. Maybe you need to try again...", messagebox = true)
		endif
	endif
EndEvent

Event OnUpdate()
	Lock()
	SetLockLevel(255)
EndEvent



