;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_tif_removeslavegagplug Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.UnPlugPanelGag(libs.PlayerRef)
	dcur_slavegagplugged.SetValueInt(0)
	libs.playerRef.RemoveItem(dcumenu.dcur_headrestraintskey,1, true)
	(dcur_slavegagQuest As dcur_slavegagQuestScript).RegisterForSingleUpdate(1)
	(dcur_slavegagQuest As dcur_slavegagQuestScript).firststart = true
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_mcmconfig Property dcumenu  Auto  
GlobalVariable Property dcur_slavegagplugged  Auto  
Quest Property dcur_slavegagQuest  Auto  
zadlibs Property libs  Auto  