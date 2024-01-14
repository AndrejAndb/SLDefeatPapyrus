Scriptname dcur_cdlib 

Function cdlib_setDevices() global
	cdxframework cdx = None 
	dcur_itemlib dci = None 
	cdx = Game.GetFormFromFile(0x000402BD, "Captured Dreams.esp") as cdxframework  
	dci = Game.GetFormFromFile(0x0002194B, "Deviously Cursed Loot.esp") as dcur_itemlib
	
	dci.CDxPTormentor = cdx.CDxPTormentor
	dci.CDxPTormentorRend = cdx.CDxPTormentorRend
	dci.CDxPAssassin = cdx.CDxPAssassin
	dci.CDxPAssassinRend = cdx.CDxPAssassinRend
	dci.CDxPThief = cdx.CDxPThief
	dci.CDxPThiefRend = cdx.CDxPThiefRend
	dci.CDxPMage = cdx.CDxPMage
	dci.CDxPMageRend = cdx.CDxPMageRend
	dci.CDxPFighter = cdx.CDxPFighter
	dci.CDxPFighterRend = cdx.CDxPFighterRend
	dci.CDxPExciter = cdx.CDxPExciter
	dci.CDxPExciterRend = cdx.CDxPExciterRend
	dci.CDxPOrgasmo = cdx.CDxPOrgasmo
	dci.CDxPOrgasmo = cdx.CDxPOrgasmo
	dci.CDxPSpoiler = cdx.CDxPSpoiler
	dci.CDxPSpoilerRend = cdx.CDxPSpoilerRend
	dci.CDxPPunisher = cdx.CDxPPunisher
	dci.CDxPPunisherRend = cdx.CDxPPunisherRend

	dci.SilveredBeltPadded = cdx.SilveredBeltPadded 
	dci.SilveredBeltPaddedRend = cdx.SilveredBeltPaddedRend
	dci.SilveredBeltPOpen  = cdx.SilveredBeltPOpen
	dci.SilveredBeltPOpenRend  = cdx.SilveredBeltPOpenRend
	dci.SilveredCollarPadded = cdx.SilveredCollarPadded
	dci.SilveredCollarPaddedRend = cdx.SilveredCollarPaddedRend
	dci.SilveredCollarPosture = cdx.SilveredCollarPosture
	dci.SilveredCollarPostureRend = cdx.SilveredCollarPostureRend
	dci.SilveredCuffPArm = cdx.SilveredCuffPArm
	dci.SilveredCuffPArmRend = cdx.SilveredCuffPArmRend
	dci.SilveredCuffPLeg = cdx.SilveredCuffPLeg
	dci.SilveredCuffPLegRend = cdx.SilveredCuffPLegRend
	dci.SilveredPadBra = cdx.SilveredPadBra
	dci.SilveredPadBraRend = cdx.SilveredPadBraRend

	dci.BronzeBeltPadded = cdx.BronzeBeltPadded
	dci.BronzeBeltPaddedRend = cdx.BronzeBeltPaddedRend
	dci.BronzeBeltPOpen = cdx. BronzeBeltPOpen
	dci.BronzeBeltPOpenRend  = cdx.BronzeBeltPOpenRend 
	dci.BronzeCollarPadded = cdx.BronzeCollarPadded
	dci.BronzeCollarPaddedRend = cdx.BronzeCollarPaddedRend
	dci.BronzeCollarPosture = cdx.BronzeCollarPosture
	dci.BronzeCollarPostureRend = cdx.BronzeCollarPostureRend
	dci.BronzeCuffPArm = cdx.BronzeCuffPArm
	dci.BronzeCuffPArmRend = cdx.BronzeCuffPArmRend
	dci.BronzeCuffPLeg = cdx.BronzeCuffPLeg
	dci.BronzeCuffPLegRend = cdx.BronzeCuffPLegRend
	dci.BronzePadBra = cdx.BronzePadBra
	dci.BronzePadBraRend = cdx.BronzePadBraRend
endfunction