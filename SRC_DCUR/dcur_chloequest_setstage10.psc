Scriptname dcur_chloequest_setstage10 extends ObjectReference  

dcur_chloeQuestScript Property cqs Auto
Quest ARTHLALRumorsOfWarQuest = None
Quest Property CW02A Auto
Quest Property CW02B Auto

Event OnTriggerEnter(ObjectReference akActionRef)
	if akActionRef != Game.GetPlayer()
		return
	EndIf
	if cqs.GetStage() == 2
		cqs.SetObjectiveCompleted(2)
		cqs.SetStage(10)
		cqs.SetObjectiveDisplayed(10)
	EndIf
	if cqs.GetStage() == 5
		cqs.SetObjectiveCompleted(5)
		cqs.SetStage(10)
		cqs.SetObjectiveDisplayed(10)
	EndIf
	ARTHLALRumorsOfWarQuest = Game.GetFormFromFile(0x0007A334, "Alternate Start - Live Another Life.esp") As Quest
	; let's see if this is a LAL installation and set up Havar and Ralof if it is, as the player will enter their cave from the other side when playing the Chloe quest.
	If ARTHLALRumorsOfWarQuest 
		if( Game.GetPlayer() == akActionRef)
			if( ARTHLALRumorsOfWarQuest.GetStage() >= 200 && ARTHLALRumorsOfWarQuest.GetStage() <= 220 )
				;If the player has not yet been told to go to Korvunjund, execute moving Hadvar and Ralof into the cave.
				if( CW02A.GetStageDone(10) == 0 && CW02B.GetStageDone(10) == 0 )
					if( ARTHLALRumorsOfWarQuest.GetStageDone(206) == 0 )
						;ARTHLALRumorsOfWarQuest.PolygonTriggered = False
						ARTHLALRumorsOfWarQuest.SetStage(206)
					EndIf
					ARTHLALRumorsOfWarQuest.SetStage(221)
				EndIf
			EndIf
		EndIf
	EndIf	
EndEvent

Event OnTriggerLeave( ObjectReference akActionRef )
	If ARTHLALRumorsOfWarQuest 
		if( Game.GetPlayer() == akActionRef )
			if( ARTHLALRumorsOfWarQuest.GetStage() == 221 )
				ARTHLALRumorsOfWarQuest.SetStage(222)
			EndIf
		EndIf
	EndIf
EndEvent