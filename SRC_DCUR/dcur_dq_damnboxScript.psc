Scriptname dcur_dq_damnboxScript extends ObjectReference  

Event OnEquipped(Actor akActor)	
	; there is always some small stuff in there:
	dclibs.GiveBondageRewards(1)
	; and either a mediocre or good reward:
	If Utility.RandomInt() < 50
		dclibs.GiveBondageRewards(2)
	Else
		dclibs.GiveBondageRewards(3)
	EndIf
	; And sometimes there is a rubber item in there, too!
	If Utility.RandomInt() < 67
		libs.playerref.Additem(dclibs.dcl_LL_all, 1)					
	EndIf	
	int icount
	if HasKeyword(dcur_kw_damnbox_shop)
		icount = Libs.PlayerRef.GetItemCount(dcur_dq_damnbox_shopversion)
		Libs.PlayerRef.removeitem(dcur_dq_damnbox_shopversion,icount,true)
		if icount > 1
			icount = icount - 1
			Libs.PlayerRef.additem(dcur_dq_damnbox_shopversion,icount,true)
		endif
	else
		icount = Libs.PlayerRef.GetItemCount(dcur_dq_damnbox)
		Libs.PlayerRef.removeitem(dcur_dq_damnbox,icount,true)
		if icount > 1
			icount = icount - 1
			Libs.PlayerRef.additem(dcur_dq_damnbox,icount,true)
		EndIf	
    endif
EndEvent

Keyword Property dcur_kw_damnbox_shop Auto
Armor property dcur_dq_damnbox Auto
Armor property dcur_dq_damnbox_shopversion Auto
dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto 
zadxlibs Property xlibs  Auto 