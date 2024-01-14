Scriptname dcur_sasha_vibratorremotecontrol extends ObjectReference  

Event OnEquipped(Actor akActor)
	Actor Player = Game.GetPlayer()
	Actor Sasha = saqs.GetSasha()	
	If (Sasha.GetItemCount(saqs.dcur_SashaChastityBelt) > 0) && (Sasha.GetItemCount(saqs.dcur_Sasha_vibrator) > 0)
		; she is belted and plugged
		int msgChoice = saqs.dcur_sasharemotecontrolMSG.Show() ; display menu
		Utility.Wait(0.5)
		if msgChoice == 0 
			saqs.libs.VibrateEffect(Sasha, 1, 10, teaseOnly = true)
		elseif msgChoice == 1	
			saqs.libs.VibrateEffect(Sasha, 2, 20, teaseOnly = true)
		elseif msgChoice == 2
			saqs.libs.VibrateEffect(Sasha, 3, 30, teaseOnly = true)
		elseif msgChoice == 3
			saqs.libs.VibrateEffect(Sasha, 4, 40, teaseOnly = false)
		elseif msgChoice == 4
			saqs.libs.VibrateEffect(Sasha, 5, 300, teaseOnly = false)
		Endif
	Else
		saqs.libs.notify("Press buttons on your remote control as you wish, but Sasha's vibrator is not inside her.", messagebox = true)
	Endif
	Player.UnEquipItem(saqs.dcur_Sashasremotecontrol, false, true)
EndEvent

dcur_SashaQuestScript Property saqs  Auto  
