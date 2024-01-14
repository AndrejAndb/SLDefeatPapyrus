;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_yoke_rewardtip Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	dcur_dialogswitch.SetValueInt(0)
	Actor pl = Game.GetPlayer()
	int playergold = pl.GetItemCount(gold001)
	int tip = pl.GetLevel() * 50
	if tip > playergold		
		if tip > playergold * 2 
			dcur_dialogswitch.SetValueInt(2)
		else
			dcur_dialogswitch.SetValueInt(3)			
		endif
		tip = playergold
	else
		dcur_dialogswitch.SetValueInt(1)
	endif
	pl.RemoveItem(gold001, tip)	
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001  Auto  

GlobalVariable Property dcur_dialogswitch  Auto  
