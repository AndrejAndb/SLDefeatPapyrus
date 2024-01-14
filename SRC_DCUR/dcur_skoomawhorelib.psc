Scriptname dcur_skoomawhorelib

Function skoomawhorelib_setDevices() global
	SLSW_mcmConfig swlib = None 
	dcur_itemlib dci = None 
	swlib = Game.GetFormFromFile(0x00002863, "SexLabSkoomaWhore.esp") as SLSW_mcmConfig
	dci = Game.GetFormFromFile(0x0002194B, "Deviously Cursed Loot.esp") as dcur_itemlib
	dci.RoseOfAzura = swlib.RoseOfAzura
	dci.BoethiasDeception = swlib.BoethiasDeception
	dci.ThiefsDelight = swlib.ThiefsDelight
	dci.TheSecondBrain = swlib.TheSecondBrain
	dci.ElendrsFlask = swlib.ElendrsFlask
	dci.TheContortionist = swlib.TheContortionist
	dci.MorgulsTouch = swlib.MorgulsTouch
	dci.ToughFlesh = swlib.ToughFlesh
	dci.OcatosPallatine = swlib.OcatosPallatine
	dci.MagesFriend = swlib.MagesFriend
	dci.TheArchMage = swlib.TheArchMage
	dci.VerminasPrice = swlib.VerminasPrice
	dci.LeafSkooma = swlib.LeafSkooma
	dci.HerbTea = swlib.HerbTea
	dci.PurifingSolution = swlib.PurifingSolution
	dci.DDSkooma = swlib.DDSkooma
endfunction