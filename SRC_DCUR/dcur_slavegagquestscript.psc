Scriptname dcur_slavegagquestscript extends Quest  

dcur_mcmconfig Property dcumenu  Auto  
zadlibs Property libs  Auto  
GlobalVariable Property dcur_slavegagplugged  Auto  
float property plugremovedtime Auto
bool property firststart = true Auto
bool property slavegagquestactive = false Auto

Event OnUpdate()		
	if dcumenu.slavegagreleasetime == 0 || !slavegagquestactive
		; plug never relocks
		UnregisterForUpdate()
		return
	endif
	if firststart
		plugremovedtime = Utility.GetCurrentGameTime()				
		firststart = false
		RegisterForSingleUpdate(30)
		return
	endif	
	If (Utility.GetCurrentGameTime() - plugremovedtime) * 24 > dcumenu.slavegagreleasetime
		libs.PlugPanelgag(libs.playerRef)
		dcur_slavegagplugged.SetValueInt(1)
		libs.NotifyPlayer("The Slave Gag's magic timer triggers, re-inflating the ball plug inside your mouth. After forcing your lips wide open, the plug locks itself shut. Your mouth is once again completely filled, making speaking absolutely impossible.", messagebox=true)
		Utility.Wait(1)
		firststart = false
		UnregisterForUpdate()
		return
	endif
	RegisterForSingleUpdate(30)
EndEvent

