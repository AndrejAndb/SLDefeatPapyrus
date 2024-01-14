Scriptname dcur_tomeoftesting extends ObjectReference  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto 
Quest Property dcur_mastercontroller Auto

Event onread()
	dcumenu.dothetest = true
	(dcur_mastercontroller As dcur_mastercontrollerscript).UnregisterForUpdate()
	(dcur_mastercontroller As dcur_mastercontrollerscript).RegisterForSingleUpdate(1)	
EndEvent
