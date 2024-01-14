Scriptname dcur_slavetrader_portal extends ObjectReference  

dcur_mcmconfig Property dcumenu  Auto  
dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto 

Message Property dcur_slavetrader_portal_msg Auto
Location Property RiverwoodSleepingGiantInnLocation Auto

Event onread()	
	Actor Follower
	if dcur_slavetrader_portal_msg.Show() == 0
		; need to remember what cell the player was in
		cell playercell = libs.PlayerRef.GetParentCell()
		If libs.playerref.IsInLocation(RiverwoodSleepingGiantInnLocation)			
			; we're in Riverwood, lets port the player back to where she was
			libs.playerref.moveto(dclibs.dcur_storeplayerpos.GetReference())			
			int i = dclibs.dcur_followerlist.GetSize() - 1
			while i >= 0
				Follower = dclibs.dcur_followerlist.GetAt(i) As Actor					
				If Follower.GetParentCell() == playercell
					; failsafe for parked followers
					Follower.moveto(dclibs.dcur_storeplayerpos.GetReference())			
				EndIf
				i -= 1
			EndWhile
			return
		EndIf
		If !HasPrisoners()
			Libs.Notify("You cannot use this scroll without having captured females to sell", messagebox = true)
			return
		EndIf
		; remember where the player was, so we can port her back
		dclibs.dcur_storeplayerpos.GetReference().moveto(libs.playerref)
		; move the group
		libs.playerref.moveto((dcumenu.GetAlias(17) As ReferenceAlias).GetReference())			
		int i = dclibs.dcur_followerlist.GetSize() - 1
		while i >= 0
			Follower = dclibs.dcur_followerlist.GetAt(i) As Actor					
			If Follower.GetParentCell() == playercell
				; failsafe for parked followers
				Follower.moveto((dcumenu.GetAlias(17) As ReferenceAlias).GetReference())	
			EndIf
			i -= 1
		EndWhile
		; now port the prisoners
		i = dclibs.StartSurrenderAliases ; start of aliases
		int counter = 0
		While i <= dclibs.EndSurrenderAliases ; end of aliases
			If (dclibs.dcur_aliases.GetAlias(i) As ReferenceAlias).GetReference() != None			
				Actor a = (dclibs.dcur_aliases.GetAlias(i) As ReferenceAlias).GetActorReference()
				If a.GetItemCount(dclibs.dcur_slavefollowertoken) > 0 
					a.moveto((dcumenu.GetAlias(17) As ReferenceAlias).GetReference())	
				EndIf
			EndIf
			i += 1
		Endwhile
	EndIf
EndEvent

Bool Function HasPrisoners()
	int i = dclibs.StartSurrenderAliases ; start of aliases
	int counter = 0
	While i <= dclibs.EndSurrenderAliases ; end of aliases
		If (dclibs.dcur_aliases.GetAlias(i) As ReferenceAlias).GetReference() != None 
			Actor a = (dclibs.dcur_aliases.GetAlias(i) As ReferenceAlias).GetActorReference()
			If a.GetItemCount(dclibs.dcur_slavefollowertoken) > 0 
				Return True
			EndIf				
		EndIf
		i += 1
	Endwhile
	Return False
EndFunction