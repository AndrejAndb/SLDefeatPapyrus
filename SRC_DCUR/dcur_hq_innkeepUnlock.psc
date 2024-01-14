;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_hq_innkeepUnlock Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	hqqs.libs.Moan(hqqs.libs.PlayerRef)
	hqqs.libs.removequestdevice(hqqs.libs.playerref, hqqs.dcur_hq_armbinderInventory, hqqs.dcur_hq_armbinderRendered, hqqs.libs.zad_DeviousHeavyBondage, removaltoken = hqqs.dclibs.dcur_kw_QuestItem, destroydevice = true, skipmutex = true)
	hqqs.libs.playerref.RemoveItem(hqqs.dcur_hq_armbinderkey)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_hq_QuestScript Property hqqs Auto