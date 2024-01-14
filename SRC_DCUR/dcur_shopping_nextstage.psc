;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_shopping_nextstage Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	sqqs.StagesDone += 1
	int s = sqqs.dcur_sqqs_effectivestage.GetValueInt()
	sqqs.SetObjectiveCompleted(s)	
	sqqs.SetObjectiveDisplayed(s, False)	
	If sqqs.StagesDone < 4	
		Int i = Utility.RandomInt(10,13)		
		;sqqs.Reset()
		;sqqs.SetStage(i)
		sqqs.dcur_sqqs_effectivestage.SetValueInt(i)
		sqqs.SetObjectiveCompleted(i, False)
		sqqs.SetObjectiveDisplayed(i)			
		dclibs.sexwithplayer(akspeaker, consensual = true, stages = 1, randomanim = true, nostrip = true)
	Else
		sqqs.SetStage(20)
		sqqs.SetObjectiveDisplayed(20)
		dclibs.sexwithplayer(akspeaker, consensual = true, stages = 1, randomanim = true, nostrip = true)
	Endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_shopping_QuestScript Property sqqs Auto 
dcur_library Property dclibs  Auto  

int function getactualstage()
	; we need this because Papyrus is silly and GetStage() always returns the highest completed stage, no matter which one is actually active
	int teststage = 10	
	while teststage < 20
		if sqqs.IsObjectiveDisplayed(teststage)
			return teststage
		else
			teststage += 1
		endif
	endwhile
	return 0
endfunction